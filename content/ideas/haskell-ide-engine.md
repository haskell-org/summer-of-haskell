---
title: Improvements to Haskell IDE Engine
---

[Haskell IDE engine](https://github.com/haskell/haskell-ide-engine) is starting
to be useful, largely due to the work done in the 2017 HSOC by [Zubin
Duggal](https://github.com/wz1000/)

But there is still plenty to be done to bring it closer to its potential.

## Possible goals for a HIE project:

- Rewriting the completion system
- - Take advantage of the new async system, making it much faster
- - Complete for module names, ghc pragmas, .cabal files, syntax(if/case/let/where etc.)
- - Smart templates for case splitting,
- - Make completions include local definitions(possibly making it scope aware)
- - - Making completions scope aware would involve traversing the AST and collecting all the symbols defined until reaching the cursor position
- - Less bugs
- Case splitting
- Expanding Template Haskell in place
- More extensive testing, testing a full LSP session from beginning to end.
- Making find definition work for symbols defined in dependencies
- Sharing build cache between HaRe and GHC, to drastically improve refactoring speed.
- Implementing support for project-wide/cross file references.
- (ghc-mod) Support for more build types(new-build, hpack, nix etc.)
- Anything - Haskell tooling could support your favourite ide feature
- Come up with a way to match the running hie server GHC version with the project GHC version.  See https://github.com/haskell/haskell-ide-engine/issues/439
- Add a command to build the project
- Bring in `cabal new-build` support, via updates to `ghc-mod`.

Some of the above may not be substantial enough to fill up the entire summer. In
that case, you may target multiple goals.

**Mentors**: Alan Zimmerman, Zubin Duggal
