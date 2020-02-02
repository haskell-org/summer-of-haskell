---
title: Update stylish-haskell to use ghc-lib-parser
---

[stylish-haskell] is a Haskell prettifier that currently uses
[haskell-src-exts] as parser workhorse to parse Haskell code into an AST.

Unfortunately, `haskell-src-exts` is not actively
[maintained][haskell-src-exts-maintenance] at this point
and it can not keep up with the de-facto standard compiler, GHC.

[ghc-lib-parser] is a newer parsing library that packages the parser from GHC
itself, and as such, is always up to date.

The main objective for the summer would be to do the port to `ghc-lib-parser`,
but a strong student should be able to fit in other improvements as well.

**Mentors**: Jasper Van der Jeugt, Łukasz Gołębiewski, Pawel Szulc.

**Difficulty**: Beginner to intermediate.

[stylish-haskell]: https://github.com/jaspervdj/stylish-haskell/
[haskell-src-exts]: http://hackage.haskell.org/package/haskell-src-exts
[haskell-src-exts-maintenance]: https://github.com/haskell-suite/haskell-src-exts/blob/a83d97c95e3ed813415edd3d768f768bc2f083e9/README.md#maintenance
[ghc-lib-parser]: http://hackage.haskell.org/package/ghc-lib-parser
