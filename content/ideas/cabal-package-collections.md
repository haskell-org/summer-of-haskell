---
title: Package collections for `cabal-install`
---

The goal of this project is to design and implement the [curated
package collections](https://github.com/haskell/cabal/issues/2861)
feature for Hackage/`cabal-install`. The idea here is to support
package collections like Stackage snapshots directly in our
infrastructure, so that, for example, one could write
`package-collection: stackage-lts-10.3` in `cabal.project` to restrict
the solver to package versions specified by [Stackage LTS
10.3](https://www.stackage.org/lts-10.3).

This project will require a significant amount of design work. Herbert
Valerio Riedel is the most knowledgeable one about the design
challenges.

To support Stackage interop `cabal-install` constraint syntax will
have to be made aware of Hackage revisions, and `cabal new-freeze`
will have to be extended to support them. This is a really nice
feature to have on its own.

Package collections will also require server-side support in the
Hackage server.

The project is likely too difficult for a single student to complete
in three months. A detailed design document, implementation of the
extended constraint syntax for `cabal-install`, and a prototype
implementation of the remaining parts would be an acceptable outcome.

**Potential Mentors**: Herbert Valerio Riedel, Duncan Coutts, Mikhail Glushenkov.

**Difficulty**: Advanced.
