---
title: Goto dependency definition
---

Haskell-Language-Server (HLS) supports goto definition for locally implemented functions.
But, Haskellers often also want to know the implementation of functions when using a library from an external dependency.
This project will implement `goto dependency definition`, allowing programmers to inspect the implementation of dependencies from the comfort of their Ide, without having to google them or find them on hackage.

GHC versions can produce [`.hie` files](https://gitlab.haskell.org/ghc/ghc-wiki-mirror/-/blob/master/hie-files.md) at compilation time,
which contain detailed information, as well as the sources.
These files can be indexed, for example by [`hiedb`](https://github.com/wz1000/HieDb/), to provide source locations for third-party libraries,
which can then be used by HLS for the 'Goto Definition' feature.

This project will require participants to work with the notoriously difficult GHC API in HLS.

This project already has a prototype implementation in [PR #3749](https://github.com/haskell/haskell-language-server/pull/3749).
However, before the PR can be finished, HLS needs to be taught to ignore files from dependencies, i.e., must not try to type check them, but rather only serve LSP requests from hiedb. The PRs [#4406](https://github.com/haskell/haskell-language-server/pull/4406) and [#4449](https://github.com/haskell/haskell-language-server/pull/4449) implement new rule types that shall ensure HLS never accidentally tries to load modules from dependencies.

Issue: https://github.com/haskell/haskell-language-server/issues/708

This project requires strong Haskell skills, especially with type level programming concepts such as type families.
As the implementation will touch many places within HLS, prior knowledge of HLS, its rule system and plugin system is highly recommended.

This project will only accept participants with prior contributions to HLS.

Mentors: fendor, wz1000

Project size: 350hrs, 175hrs if experienced

Difficulty: Hard
