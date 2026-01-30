---
title: Case split plugin
---

This project will extend the Haskell Ide, HLS, by introducing a new plugin, the case split plugin.

When writing some snippet of code on variables that can be one of a finite number of types, for example since it is an enum or algebraic datatype, we sometimes want to do different things, depending on the constructor of the variable.

See the simple code example below:

```haskell
data Foo = A | B

prettyFoo :: Foo -> String
prettyFoo foo =
    case foo of
```

Here the programmer would like a completion option which inserts all the possible types of foo instead of having to type them out themselves.
The case split plugin will then offer to complete the above code snippet as shown below:

```haskell
data Foo = A | B

prettyFoo :: Foo -> String
prettyFoo foo =
    case foo of
        A -> _
        B -> _
```

This plugin should work on enums as well as algebraic data types and also work on incomplete `case` expressions, i.e. in the above example if there was already an implementation for the case of type `A` but the other possible types of foo would still need to be handled.
Unfortunately, implementing this functionality is complex, as it requires parsing existing code using exact printing.
The current idea is to use the [exact printing library](https://github.com/alanz/ghc-exactprint).

This project requires strong Haskell skills as the participant needs to gain a deep understanding of the above library, the GHC AST and the HLS codebase. Therefore they should have a good understanding of type level programming concepts such as type families.
Ideally, the participant should already have experience with the GHC AST, otherwise this project will be very difficult to achieve within the timeframe.

Issue: https://github.com/haskell/haskell-language-server/issues/3525

Context:

- https://github.com/haskell/haskell-language-server/issues/2437
- https://github.com/haskell/haskell-language-server/pull/3338
- https://github.com/alanz/ghc-exactprint/pull/116

**Goals**

- New plugin `hls-case-split-plugin`
- Support GHC 9.14.1
- Can casesplit on enum types
- Can casesplit on arbitrary algebraic datatypes

This project will only accept participants with prior contributions to HLS or GHC.

Mentors: TBD

Project size: 350hrs

Difficulty: Hard
