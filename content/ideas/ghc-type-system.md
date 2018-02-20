---
title: Implement aspects of Dependent Haskell
---

The design of GHC/Haskell has been steadily marching toward support for dependent types for a long time, debatably starting with the addition of `-XFunctionalDependencies`, as proposed in 2000. With the `-XTypeInType` extension in GHC 8.0 (2016), we're as close as ever. However, much more work remains to be done. This Summer of Haskell idea is to slice off a chunk of that work and implement it!

Precisely *which* chunk(s) are up to you, the proposer of the project. Good starting places if you're looking for inspiration can
be found in
[one](https://github.com/ghc-proposals/ghc-proposals/pull/54)
[of](https://github.com/ghc-proposals/ghc-proposals/pull/81) [several](https://github.com/ghc-proposals/ghc-proposals/pull/83)
[related](https://github.com/ghc-proposals/ghc-proposals/pull/80)
[proposals](https://github.com/ghc-proposals/ghc-proposals/pull/99) [posted](https://github.com/ghc-proposals/ghc-proposals/pull/102) [recently](https://github.com/ghc-proposals/ghc-proposals/pull/103). Ideas beyond those proposals includes merging
the parsers for types and terms, as well as to sort out The Namespace Problem (GHC allows declarations like `data T = T`. How would that
work in a dependently typed language where terms are not syntactically distinct from types?). A student more versed in type theory
(e.g., having experience with [Types and Programming Languages](https://www.cis.upenn.edu/~bcpierce/tapl/), among [other](http://www.cs.cmu.edu/~rwh/pfpl.html) introductions) might even attempt implementing a dependently typed Core replacement. If you like, you can
see [Richard Eisenberg's thesis](https://repository.brynmawr.edu/cgi/viewcontent.cgi?article=1074&context=compsci_pubs) for
inspiration. That thesis aims to describe both the surface language and Core language for Dependent Haskell.

If you can relocate to the Philadelphia, PA, USA, area for the summer, there will be office space you can use, and you'll
be able to work in a space with several other people hacking on GHC. Unfortunately, there is no extra funding to support
this relocation. Remote mentorship is also possible, of course.

**Mentor**: [Richard Eisenberg](mailto:rae@cs.brynmawr.edu) (feel free to email to discuss ideas for your proposal)

**Difficulty**: Advanced
