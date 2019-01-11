---
title: Specification of or-patterns
---

Or-patterns is a new syntax extension for GHC to allow matching multiple
patterns that share the same right-hand side. A simple example is:

```haskell
f :: Either Int Int -> Int
f (Left x ; Right x) = x
```

Here the two patterns `Left x` and `Right x` bind same set of variables, and
they share the right-hand side. The main motivation is to reduce redundancy
(when right-hand sides are duplicated) and reduce uses of catch-all patterns
(e.g. `_`) which makes the code more fragile in the presence of modifications.

As the mentor of this project I did some of the work and submitted [a GHC
proposal][1] in 2017. Since then it got a lot of useful feedback and revised
many times, and we realized that some of the interactions with other extensions
like scoped type variables and view patterns are quite tricky to get right
without a good formalism. There are various formalisms of GHC's pattern language
in different papers, but to my knowledge there isn't a formalism that includes
all the details we need (namely, specifications of scoped type variables and
view patterns).

The main task is to define GHC's pattern matching semantics, including view
patterns and scoped type variables. This should include both static and dynamic
semantics. Then the semantics will then be extended with or-patterns.

After that the proposal will be submitted to the committee, and if there's still
time the student can start working on the implementation.

The specification may be done in a plain-text using ASCII-art for the typing
rules and dynamic semantics, or it could be done in LaTeX, or may even be a Coq
or Agda program.

**Mentor**: Ömer Sinan Ağacan

**Difficulty**: Intermediate to Advanced

[1]: https://github.com/ghc-proposals/ghc-proposals/pull/43
