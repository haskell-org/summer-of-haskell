---
title: 'A format-preserving YAML library for Haskell'
---

A growing number of (Haskell) applications and libraries rely on [YAML] as a
configuration format.  One of the motivating applications that uses YAML a lot
is [stack].

YAML is meant to be a human-friendly language, so files are often written by
hand and contain many comments.  However, given the number of YAML files that
stack users need to deal with, it would be useful to be able to modify the YAML
files programatically from within Haskell.

The existing [Haskell YAML library](https://hackage.haskell.org/package/yaml)
supports parsing and rendering YAML files, but because it uses the efficient C
library under the hood, metadata like file layout and comments are not
preserved.

Thus, there is a clear niche for a new library that provides a pure Haskell
format-preserving YAML parser and renderer library.  The focus of this project
will be correctness, complying with the YAML specification and providing a clean
API.  Micro-optimizations are less important, and we don't expect this parser to
be as fast as other YAML parsers, since it needs to do extra bookkeeping for the
metadata.

**Difficulty**: Beginner to Intermediate
**Mentor**: Tom Sydney Kerckhove, Jasper Van der Jeugt

[YAML]: http://yaml.org/
[stack]: https://haskellstack.org/
