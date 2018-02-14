---
title: Implementing Automatic Differentiation in Accelerate
---

[Automatic Differentiation][wiki-ad] (AD) is a technique for automatically
calculating the derivatives of numerical functions, and its implementation on
massively parallel processors is one of the core technical advances driving the
ongoing deep learning revolution. Within the Haskell ecosystem, the
[`ad`][hackage-ad] library provides a comprehensive and intuitive implementation
of automatic differentiation, while [`accelerate`][hackage-accelerate] is a
library for parallel array computations which can be executed on GPUs and
multicore CPUs. Unfortunately, these libraries cannot be easily combined;
`ad` works with standard Haskell types, whereas `accelerate` is implemented as
an _embedded language_ with a distinct type system.

The goal of this project is to implement automatic differentiation on
the GPU (and by extension, other supported architectures) using `accelerate`. We
propose to implement this as a new package, drawing inspiration from the design
of the existing `ad`. The success of this project would allow Haskell to stake
out territory in the ever expanding field of machine learning, as a language
capable of providing both high-performance numerics, as well as the safety of a
strong typesystem.

### Implementation Strategies

Basic automatic differentiation is relatively straightforward to implement, but
a general implementation requires managing edge-cases for functions defined by
branching and/or loops. Given this, there are two principal ways to approach
implementing automatic differentiation within the `accelerate` framework:

  1. Implement a simple form of AD without edge-case handling for simple
  automatic differentiation of `accelerate` expressions, and build edge-case
  handling on top. The downside of this approach is that the edge-case handling
  may be costly for some workloads.

  2. Alternatively, one could attempt to encode the edge-case logic in types
  that could be exposed to `accelerate`. This would require more work, but would
  allow a duplication of the robust semantics and functionally of the `ad`
  library.

The first strategy is likely easier, and which strategy we choose can be based
on the exprience of the student.

<!--
### Proposed implementation

This proposal can be broken into two largely distinct phases:

  1. Update the `ad` library to work with a vectored representation, as
     described in [ad#2]. This would enable the library functions to operate
     using more traditional array representations for the AD variables, such as
     unboxed vectors, and, in particular, should enable us to use the GPU-backed
     arrays from `accelerate`.

  2. Using this new API as a base, add any necessary functions and instances
     required to execute operations from the `ad` library using `accelerate`.
     Since `accelerate` is implemented as an embedded language, it does not
     manipulate regular Haskell data types directly. Instead, we must specify
     how manipulating the AD variables corresponds to terms in the Accelerate
     language, so that these operations can be compiled into GPU code.
-->

### Future work / possible extensions

The use of BLAS libraries, such as via the bindings provided in
[accelerate-blas][hackage-accelerate-blas], could further improve performance of
the library.

<!--
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
-->


**Mentor**: Trevor McDonell, Edward Kmett, Sacha Sokoloski

**Difficulty**: Advanced

[wiki-ad]:                 https://en.wikipedia.org/wiki/Automatic_differentiation
[hackage-ad]:              http://hackage.haskell.org/package/ad
[hackage-accelerate]:      http://hackage.haskell.org/package/accelerate
[hackage-accelerate-blas]: https://hackage.haskell.org/package/accelerate-blas
[ad#2]:                    https://github.com/ekmett/ad/issues/2

