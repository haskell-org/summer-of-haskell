---
title: Improve the Hackage matrix builder.
---

This project is to help with the development and exploitation of the [Hackage
matrix builder]. This is an existing project. For an idea of what this does, see
a page for an [example package].

[Hackage matrix builder]: http://matrix.hackage.haskell.org/
[example package]: http://matrix.hackage.haskell.org/package/postgresql-simple

The Hackage matrix builder provides a build compatibility test service to the
Haskell community for all the packages published on Hackage. Currently it
answers the question "which versions of GHC does this package build with", which
includes checking the Cabal solver can find a solution and have that solution
build successfully. It works by building all versions of all packages with
several GHC versions. It relies on clever nix-style caching to make this
reasonably efficient. So this is a kind of QA or CI service for everyone. There
is also a lot of potential to use this kind of infrastructure for additional
purposes.

The matrix builder project is run by Herbert Valerio Riedel [hvr] who is happy
to act as a project mentor and help direct a student to useful tasks that fit
with the student's interests and skills. This might involve making improvements
to the build toolchain, web programming or better integration with the main
Hackage website to better exploit the information gathered. The student would
also have the opportunity to work with volunteers who work on the Hackage and
Cabal projects.

[hvr]: https://github.com/hvr

**Mentors**: Herbert Valerio Riedel
