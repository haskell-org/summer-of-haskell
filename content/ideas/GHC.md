---
title: Improving GHC
---

GHC is a large project with many avenues where a student could apply himself.

Below is a list of a few of these. However should you have other project proposals
feel free to reach out to Andreas Klebinger and maybe we can make it happen.

# Array related proposals

## Construct byte arrays from Literals

This project would get GHC closer to have ByteArray literals by implementing a prototype for 
[ByteArray Literals proposal](https://github.com/ghc-proposals/ghc-proposals/pull/292).

This would touch the following topics:
* Extending Haskell Syntax (Parsing)
* Adding new types of literals - Core, Stg
* Extending code generation to support these literals

## Potential Mentors:

- Andrew Martin
- Andreas Klebinger
- chessai

**Difficulty**: Intermediate - Advanced

## Add primitives to construct (boxed) arrays from existing ones

Combining (subsets) of arrays into a new one. A proposal towards this has
been [made in the past](https://github.com/treeowl/ghc-proposals/blob/array-creation/proposals/0000-array-creation.rst)
but stalled.

The main work of this project would be to learn about how arrays are currently implemented and
creating efficient primop implementations for the missing functionality.

## Potential Mentors:

- Andrew Martin
- Andreas Klebinger
- chessai

**Difficulty**: Advanced

# Finish the implementation of SIMD in the native code generator

An earlier SoC project started to work on adding SIMD support to GHC.

This project would consist of picking up the existing work and fix the
remaining issues preventing the patch from being merged.

In particular the register allocator currently does not support spilling
of multiple-word sized variables.

The main work would consist of extending the register allocator with the
required functionality.

This would touch the following topics:
* Code Generation
* Register allocation

## Potential Mentors:

- Andrew Martin
- Andreas Klebinger
- chessai
