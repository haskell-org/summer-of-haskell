---
title: 'Goto Definition for third-party libraries in HLS'
---

In [Haskell Language Server](https://github.com/haskell/haskell-language-server)(HLS), we can jump to the definition of functions, types and local variables.
It is a crucial feature for Language Servers to have, and an invaluable tool to explore unknown projects, and efficiently write code.

However, we have the limitation that we cannot jump to definitions for identifiers and functions that have been defined in third-party libraries.
For example, it is not possible to jump to the definition of `Data.Map.lookup`, defined in the `containers` library.

Luckily, recent GHC versions can produce [`.hie` files](https://gitlab.haskell.org/ghc/ghc-wiki-mirror/-/blob/master/hie-files.md) at compilation time,
which contain detailed information, as well as the sources.
These files can be indexed, for example by [`hiedb`](https://github.com/wz1000/HieDb/), to provide source locations for third-party libraries,
which can then be used by HLS for the 'Goto Definition' feature.

This project will require you to work with the notoriously difficult GHC API in HLS, as well as making `cabal` generate `.hie` files in a location
where HLS can find them again.

See:
- https://github.com/haskell/haskell-language-server/issues/708
- https://github.com/haskell/cabal/issues/8685

**Mentor**: *tbd*

**Difficulty**: Hard

**Size**: 350 hours
