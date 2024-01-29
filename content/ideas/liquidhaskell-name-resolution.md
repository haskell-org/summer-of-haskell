---
title: Improve name resolution in Liquid Haskell
---

Liquid Haskell is a tool to verify Haskell programs. The programmer supplies
specifications for functions and data types in special comments, and the tool
produces error messages when it cannot automatically prove that the program
behaves as specified. The programmer can then improve the specifications or the
program until the tool reports no errors. More information is available on the
[Liquid Haskell website](https://ucsd-progsys.github.io/liquidhaskell/).
Similar to a type system in spirit, Liquid Haskell enrols the computer
in the effort to discover
[programming mistakes](https://www.tweag.io/blog/2022-01-19-why-liquid-haskell/).

Liquid Haskell has been around for a decade and is a versatile tool, but it
still has a few issues which hinder the user experience. This project is to
address one of these shortcomings.

When analyzing a program, Liquid Haskell needs to link identifiers that appear
in specifications to the entities they refer to, much in the same way that a
compiler needs to link identifiers in the text of a function to the language
entities that they represent. We refer to this task as name resolution.

The identifiers in a specification can refer to other specifications, or they
can refer to Haskell entities like functions and types. The output of name
resolution tells for each identifier the module in which the referred entity is
defined and the package it comes from.

At the moment, name resolution in Liquid Haskell is done twice for the same
specifications, and the outcomes of both passes do not always yield the same
result, leading to confusing errors and tedious workarounds. This project is
about having name resolution done only once. For more details please see
[the github issue](https://github.com/ucsd-progsys/liquidhaskell/issues/2169).
The project involves both the implementation of a solution and the writing of
a blog post summarizing the achievements.

As a stretch goal, this project might specify and fix the scope rules
and mechanisms to use in Liquid Haskell specifications.
While the intention of Liquid Haskell maintainers over time has been to
imitate GHC scoping rules as much as possible, there are cases where Liquid
Haskell just deviates from them.
As part of attaining this supplementary stretch goal, one would need to answer
questions like the following.

* What names are in scope when writing the specifications of a module?

* How should ambiguities be resolved when imports offer definitions with the same Liquid Haskell names?

* What Liquid Haskell names are exported from modules and when?

**Potential Mentors**: Facundo Domínguez

**Difficulty**: Medium

**Size**: 350 hours but they are flexible by adjusting the scope
