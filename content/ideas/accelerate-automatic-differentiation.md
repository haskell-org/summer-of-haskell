---
title: Implementing Automatic Differentiation in Accelerate
---

[Accelerate](https://github.com/AccelerateHS) is a domain specific language for defining abstract
array computations in Haskell, which can then be executed by different computational architectures
including parallel processors and GPUs. Automatic Differentation is a technique for taking numerical
functions and analytically computing their derivatives by careful application of the chain rule. The
Haskell library [ad](https://github.com/ekmett/ad) is a comprehensive implementation of automatic
differentation based on standard Haskell types. However, because Accelerate reimplements much of
the Haskell type ecosystem, ad cannot be applied to numerical functions based on Accelerate arrays.

The goal of this project is to implement automatic differentiation within the Accelerate framework.
The combination of massively parallel/GPU combination and automatic differentation is one of the
core technical advances which is driving the ongoing deep learning revolution, and the success of
this project would allow Haskell to stake out territory in this ever expanding area.

From the standpoint of the `ad` package, there are a couple of paths forward.

One approach would be to apply changes similar to those that would required to allow, say, the
`Data.Complex` or the quaternions from `linear` to hold and work on values computed by `accelerate`.
Out of the box, those types do a lot of branching based on the values contained in the real or
imaginary parts, but a `Data.Quaternion.Simple` could be provided that was less careful about
definedness when dividing by zero, near branch cuts, or dealing with other barely defined edge-cases.

This would allow a simple Quaternion holding accelerate expressions for the parts to compute an accelerate
expression that works with the real and imaginary parts more or less abstractly. Similarly, producing
variants of AD modes that have had the value-dependent branchy edge-case handling removed would likely
allow taking the automatic derivative of accelerate expressions. The downside is that this edge-case
handling may be significant for some workloads.

Alternatively, more work could be provided on encoding this branchy logic in a form that could be
exposed to accelerate, rather than removing it entirely. This would require more work, but would allow
duplication of the current semantics at the cost of throughput, and a more complicated embedding.

**Mentor**: Trevor McDonell, Edward Kmett, Sacha Sokoloski

**Difficulty**: Advanced
