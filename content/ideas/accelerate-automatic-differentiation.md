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
of the existing `ad` package. The success of this project would allow Haskell to stake
out territory in the ever expanding field of machine learning, as a language
capable of providing both high-performance numerics, as well as the safety of a
strong static type system.

### Implementation Strategies

Basic sequential automatic differentiation is relatively straightforward to
implement (as in, for example, the `ad` package) but obtaining code which can be
executed in parallel is trickier. Recent work by Fritz Henglein and Garbiele
Keller provides a general framework for how to differentiate linear functions;
implementing this framework in `accelerate` would be the best path towards
vectorised automatic differentiation.


### Future work / possible extensions

The use of BLAS libraries, such as via the bindings provided in
[accelerate-blas][hackage-accelerate-blas], could further improve performance of
the library.


**Mentor**: Fritz Henglein, Gabriele Keller, Trevor McDonell, Edward Kmett, Sacha Sokoloski

**Difficulty**: Advanced

[wiki-ad]:                 https://en.wikipedia.org/wiki/Automatic_differentiation
[hackage-ad]:              http://hackage.haskell.org/package/ad
[hackage-accelerate]:      http://hackage.haskell.org/package/accelerate
[hackage-accelerate-blas]: https://hackage.haskell.org/package/accelerate-blas
[ad#2]:                    https://github.com/ekmett/ad/issues/2

