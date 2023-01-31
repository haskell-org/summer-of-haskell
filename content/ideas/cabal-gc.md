---
title: Cabal Garbage Collect Command
---

Currently cabal new-build will place all packages at all versions it builds into a store, and then select the correct packages from the store for individual builds. This works great, but there's no way to garbage-collect the store to keep only the "in use" libraries made use of by e.g. installed executables, while deleting the unused binaries that are no longer linked against by any existing projects. Doing so requires some way of keeping track of "roots", and then pruning the store based on preserving those roots, as well as figuring out what other features users may want (e.g. preserve latest version of each package, etc).

A fair amount of existing work an discussion is documented at: https://github.com/haskell/cabal/issues/3333

**Potential Mentors**: Gershom Bazerman, Francesco Gazzetta

**Difficulty**: Medium

**Size**: 350 hours, possibly 175 hours for a strong, experienced contributor
