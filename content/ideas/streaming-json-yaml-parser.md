---
title: Streaming JSON/YAML parser
---

The `aeson` library is the de facto standard JSON library in the Haskell
ecosystem today. Both parsing and rendering have historically been
performed via an intermediate datatype, `Value`, which represents all
possible raw JSON values.

``` haskell
> :i Value
data Value
  = Object !Object
  | Array !Array
  | String !Data.Text.Internal.Text
  | Number !Data.Scientific.Scientific
  | Bool !Bool
  | Null
```

This type forms a tree.

Of particular interest is the `Object` constructor, whose type is
defined as:

``` haskell
type Object = Object (HashMap Text Value)
```

For example,

``` haskell
> import Data.Aeson
> decode "{\"a\": 1, \"b\": true }" :: Maybe Value
Just (Object (fromList [("a",Number 1.0),("b",Bool True)]))
```

This type is what you get when you parse JSON, and what you give to
the printer when you want to generate JSON.

The `yaml` library builds on top of `aeson`'s data type with its
primary API, providing support for a common subset of YAML in both
parsing and rendering. By reusing the same data type, `yaml` users can
reuse existing parsing and rendering functionality from `aeson`,
simplifying implementations. For example,

``` haskell
> import Data.Yaml
> :i decode
decode ::
  FromJSON a => Data.ByteString.Internal.ByteString -> Maybe a
  	-- Defined in ‘Data.Yaml’
> decode "a: 1\nb: true" :: Maybe Value
Just (Object (fromList [("a",Number 1.0),("b",Bool True)]))
```

However, the `aeson` authors have already discovered and addressed *one
limitation in this approach*: **it is a significant overhead to create an
intermediate `Value` value when rendering**. Instead, `aeson` now
supports encoding directly to a bytestring `Builder`. (`yaml`'s
primary interface does not support this, though the `Text.Libyaml` API
does provide a streaming interface for rendering.)

## Streaming parsing

On the parsing side, however, all data still flows through the
intermediate `Value` type. This is not only inefficient, but leads to
vulnerability to maliciously formed object inputs: **you have to
consume the whole object, no matter how many keys, before you can do
anything else**. This causes a weakness for any web services accepting
JSON or YAML from untrusted sources. Additionally, the current parsing
mechanism makes it difficult to perform some common activities, like
provide warnings for unused fields.

For example, if your parser only needs two fields `foo` and `bar`, but
I send:

```json
{ "a": .., "b": .., "c": .., "d": .., "e": .., "f": .., "g": .., "h":
.., "i": .., "j": .., "k": .., "l": .., "m": .., "n": .., "o": ..,
"p": .., "q": .., "r": .., "s": .., "t": .., "u": .., "v": .., "w":
.., "x": .., "y": .., "z": .. }
```

Then you had to consume and allocate 26 fields into an `Object`, only
to discover that `foo` and `bar` weren't even in the object. Imagine
if the user submitted one million, or sent specially crafted keys to
exploit a weakness in the hashing algorithm of the hashtable used to
contain the `Object`. There is no way to manage that.

This is why we need streaming parsing to consume input incrementally.

## Self-describing parsers

Meanwhile, for YAML (and to some extent JSON), you often want a
description of what the parser is capable of parsing, for
user-documentation (or in the case of JSON, API docs). For that, the
parser should be built as an `Applicative` data type. For example:

``` haskell
data MappingParser a where
  MPPure :: a -> MappingParser a
  MPLiftA2
    :: (a -> b -> c)
    -> MappingParser a
    -> MappingParser b
    -> MappingParser c
  MPAlt :: MappingParser a -> MappingParser a -> MappingParser a
  MPField :: Doc -> Text -> ValueParser a -> MappingParser a

data ValueParser a where
  VPScalar :: Doc -> (ByteString -> Maybe a) -> ValueParser a
  VPArray :: ([a] -> b) -> ValueParser a -> ValueParser b
  VPMapping :: MappingParser a -> ValueParser a
```

Give it an `Applicative` instance and a `Semigroup` instance (for
alternation`, and this would let you write something like:

``` haskell
stackParser :: ValueParser StackConfig
stackParser = mapping $ StackConfig
  <$> field "The stackage resolver e.g. lts-123." "resolver" scalarText
  <*> (field "Project packages." "packages" (array scalarText) <> pure ["."])
  <*> ((Just <$> field "GHC compiler to use." "compiler" scalarText) <> pure Nothing)
```

And then generate a `--help` for your program, such as:

``` yaml
resolver: <resolver> # text - The stackage resolver e.g. lts-123.
packages: <package> # array - Project packages.
- <package-name> # text
- etc.
compiler: <compiler> # text - optional - GHC compiler to use.
```

Many projects use YAML as their configuration file format, and could
benefit from having a parser capable of generating documentation.

Meanwhile, some web services could benefit from a trivially-generated
documentation/schema of their JSON parser.

## Goals

The goal of this project is to implement a new parsing mechanism which
works on a stream of data instead of a full `Value`-style type, and
permit automatic generating of documentation. Initially, this will be
for parsing YAML, with the goal of using the same machinery for JSON
data as well.

Potential goal: if possible to do without introducing a lot of
complexity, it would be a bonus to have the parser double up as both a
printer and parser as a kind of profunctor or "bimap" (as featured in
[`tomland`](https://www.stackage.org/haddock/lts-13.4/tomland-0.5.0/src/Toml.BiMap.html#BiMap)). However,
not all data types that you want to parse neccessarily need to be
printed, and vise-versa. So care would have to be taken to allow for
defining parsers without printers, and the opposite. If this seems to
be too difficult, it's not a neccessary part of the project.

**Potential Mentors**: Chris Done

**Difficulty**: Advanced
