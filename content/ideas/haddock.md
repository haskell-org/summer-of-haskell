---
title: 'Maximally decoupling Haddock and the Glasgow Haskell Compiler'
---

[Haddock](https://github.com/haskell/haddock) is the standard tool for rendering documentation of Haskell code. It parses Haskell source files and generates documentation in a few formats, most notably HTML ([example](https://hackage.haskell.org/package/aeson-2.1.1.0)). 

In practice, development and usage of Haddock is strongly coupled to the internals of the Glasgow Haskell Compiler (GHC). One concrete example of this coupling is the fact that Haddock makes use of the GHC parser itself. Therefore, if Haddock was compiled using GHC version X, it might not be able to parse the source code of a Haskell program written for GHC version Y > X. 

This strong coupling between GHC and Haddock slows down Haddock development and prevents Haddock from being better integrated in other tools, such as [Hackage](https://hackage.haskell.org), the [Haskell Language Server](https://github.com/haskell/haskell-language-server), or [Hoogle](https://hoogle.haskell.org/).

A project idea for the Summer of Haskell is to decouple GHC from Haddock as much as possible, as detailed in the [Haskell Foundation Technical Proposal #44](https://github.com/haskellfoundation/tech-proposals/pull/44) (*Maximally decoupling Haddock and GHC*). As an example, a non-exhaustive list of datatypes shared by GHC and Haddock in the HTML rendering code -- which should not, in principle, depend on anything GHC-specific -- has been [compiled here](https://github.com/haskellfoundation/tech-proposals/pull/44#issuecomment-1384155147). Any progress towards separating GHC-specific and GHC-agnostic parts of Haddock will be considered a success. 

This project requires some Haskell knowledge, in order to hit the ground running. Familiarity with GHC or Haddock internals is not required.

For more details on the motivation behind this project, take a look at the [Haskell Foundation Technical Proposal #44](https://github.com/haskellfoundation/tech-proposals/pull/44). If you have questions, do not hesitate to e-mail me at [laurent.decotret@outlook.com](mailto:laurent.decotret@outlook.com).

**Mentor**: [Laurent P. René de Cotret](https://laurentrdc.xyz)

**Difficulty**: Medium/Hard

**Size**: 350 hours
