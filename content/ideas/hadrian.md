---
title: Help Hadrian
---

[Hadrian](https://github.com/snowleopard/hadrian) is a new build system for the Glasgow Haskell Compiler.
It is based on the [Shake library](https://github.com/ndmitchell/shake) and we hope that it will soon
replace the current Make-based build system.

There are [many issues](https://github.com/snowleopard/hadrian/issues) that need to be addressed before
Hadrian can take over. Help Hadrian by solving some of them! Two specific issues that you will need to
solve as part of your summer project are:

* Although Hadrian can build GHC, the resulting binary [does not pass the
validation](https://github.com/snowleopard/hadrian/issues/299). To solve this issue you will need to
analyse failing tests and find a way to fix them -- in most cases this will be a matter of finding a
command line flag that will need to be added to or removed from a GHC build command.

* There is currently no support for [binary distribution](https://github.com/snowleopard/hadrian/issues/219).
You will need to implement the corresponding build rule in Hadrian.

* Help integrating the [relocatable GHC branch](https://github.com/snowleopard/hadrian/pull/445) into master.

_Warning: build systems are messy, even those that are written in Haskell._ This is not a very glamorous
project but it is a very important one: you have a chance to increase the productivity of GHC
developers, and hence help the whole community!

**Mentor**: [Andrey Mokhov](mailto:andrey.mokhov@ncl.ac.uk) (feel free to email to discuss the project)

**Difficulty**: Intermediate.
