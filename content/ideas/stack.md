---
title: Stack
---

[Stack] is a build system for building, installing, testing and benchmarking
Haskell applications.  There are several suggestions for students:

 -  Garbage collection: Stack downloads and builds, and then stores, large files
    such as programs and artifacts. These large files take up disk space and
    can often be removed after a period of time, since they are no longer in
    use.  A new `stack gc` command could be added to clean up unused files
    automatically.

 -  Configuration improvements: Stack uses YAML as a configuration language.
    Using newer libraries would allow Stack to drastically improve error
    messages and even automatically generate documentation.

 -  `.hi` files: Stack relies on information in `.hi` files in order to
    determine recompilation needs without running GHC. Importantly, this tracks
    Template Haskell dependent files. This is mediated via the [hi-file-parser]
    package. This package needs to be updated for newer GHC versions. And
    ideally, a more long-term solution would work with upstream GHC features to
    avoid needing to maintain a separate binary parser.

 -  Internal libraries: add support for [internal libraries] to Stack.

**Mentors**: the Stack team

[Stack]: http://haskellstack.org/
[internal libraries]: https://cabal.readthedocs.io/en/3.4/cabal-package.html#sublibs
