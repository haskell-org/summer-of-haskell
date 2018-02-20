---
title: 'A format-preserving YAML library for Haskell'
---

A growing number of (Haskell) applications and libraries rely on [YAML] as a
configuration format.  One of the motivating applications that uses YAML a lot
is [stack].

Given the number of YAML files that stack users need to deal with, it would be
useful to be able to modify the YAML files from within Haskell.

A good YAML library in Haskell [already
exists](https://hackage.haskell.org/package/yaml).  And indeed, you can use the
Haskell `yaml` library to load data from YAML and write it back to the disk.
However, you'll notice that the exact formatting might not be the same.  This is
because the datatype the library uses to represent YAML data does not include
comment or formatting information.

This is problematic.  YAML is meant to be a human-friendly language, so files
are often written by hand and contain many comments.

The goal of this project is to write a new library that allows manipulating the
YAML AST, but that preserves all comment and formatting information.

**Difficulty**: Beginner to Intermediate
**Mentor**: Jasper Van der Jeugt

[YAML]: http://yaml.org/
[stack]: https://haskellstack.org/
