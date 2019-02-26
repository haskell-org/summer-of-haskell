---
title: Hadrian Optimisation
---

[Hadrian](https://gitlab.haskell.org/ghc/ghc/blob/master/hadrian/README.md) is a new build
system for the Glasgow Haskell Compiler. Hadrian is written in Haskell and will hopefully
become the default build system around GHC 8.8. Right now both Hadrian and the current 
Make-based build system peacefully co-exist in the GHC tree, and Hadrian jobs are run
alongside the Make ones in our CI pipelines since the recent move to GitLab.

GHC is a large project. It takes a long time to build it, which slows down GHC development
and is a bottleneck for the CI infrastructure. The goal of this project is to reduce the
time it takes Hadrian to build GHC on various platforms.

The project comprises two parts:

* Profiling: you will need to find and prioritise optimisation opportunities in Hadrian
  itself, in the [Shake library](http://hackage.haskell.org/package/shake) that powers
  Hadrian, and in the GHC dependency graph (i.e. analyse the critical path of the build
  graph and figure out potential GHC refactoring that could reduce it).
  
* Implementation and evaluation: you will pick the most promising optimisation opportunities
  and implement them, measuring and reporting on the resulting improvements.
  
We have already identified several promising opportunities for optimisation, and several 
profiling techniques that are certain to uncover others, so there are plenty of paths to
follow. 

The project is a great way to familiarise yourself with the GHC codebase, and make a 
concrete and measurable impact on the productivity of all GHC developers.

**Mentors**: Andrey Mokhov, Alp Mestanogullari, Neil Mitchell

**Difficulty**: Intermediate
