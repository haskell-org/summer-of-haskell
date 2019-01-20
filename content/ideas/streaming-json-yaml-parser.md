---
title: Streaming JSON/YAML parser
---

The `aeson` library is the de facto standard JSON library in the Haskell
ecosystem today. Both parsing and rendering have historically been
performed via an intermediate datatype, `Value`, which represents all
possible raw JSON values. In particular, it has a data constructor
`Object (HashMap Text Value)`.

The `yaml` library builds on top of `aeson`'s data type with its
primary API, providing support for a common subset of YAML in both
parsing and rendering. By reusing the same data type, `yaml` users can
reuse existing parsing and rendering functionality from `aeson`,
simplifying implementations.

The `aeson` authors have already discovered and addressed one
limitation in this approach: it is a significant overhead to create an
intermediate `Value` value when rendering. Instead, `aeson` now
supports encoding directly to a bytestring `Builder`. (`yaml`'s
primary interface does not support this, though the `Text.Libyaml` API
does provide a streaming interface for rendering.)

On the parsing side, however, all data still flows through the
intermediate `Value` type. This is not only inefficient, but given a
weakness in the hash algorithm for a `HashMap` would lead to a Denial
of Service attack for services accepting JSON or YAML from untrusted
sources. Additionally, the current parsing mechanism makes it
difficult to perform some common activities, like provide warnings for
unused fields.

The goal of this project is to implement a new parsing mechanism which
works on a stream of data instead of a full `Value`-style
type. Initially, this will be for parsing YAML, with the goal of using
the same machinery for JSON data as well.

**Potential Mentors**: **FIXME**

**Difficulty**: Advanced
