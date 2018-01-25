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

**Mentor**: Trevor McDonell, Edward Kmett, Sacha Sokoloski

**Difficulty**: Advanced
