---
title: Functional Machine Learning with Hasktorch
---

Modern deep learning methods can be viewed as an emerging method of computation defined by optimization over function composition. In spite of the deep connection between composability and modern machine learning, most available tools target imperative dynamically-typed languages. This gap in the design space has motivated the development of the Hasktorch library. 

For the GSOC project, there would be two broad areas to contribute:

## Target Libtorch 1.0, Overhaul the Foreign Function Bindings

The next release's FFI will undergo a substantial overhaul, tracking major developments with libtorch/pytorch 1.0. With these changes, we will change the low level parts of the stack. Code generation will be updated to be derived from a yaml spec (instead of parsing the C source) and target the new libtorch C++ backend (which subsumes the ATen/C functions). As a new development, a second yaml spec defining function derivatives will be used to auto-generate a large set of differentiable composable functions that will be usable from Haskell.

Skills Used: C++, systems programming, FFI, parsers

## Functional Machine Learning Model Reference Implementations

At a higher level, we want to demonstrate proof-of-concept implementations of machine learning models for a variety of use cases including structured data, natural language processing, and image data. Variational auteoncoder implementations, RNNs, and graph neural networks. We want to explore how language capabilities such as dependent types, typeclasses and functional data manipulation patterns such as lenses and pipes translate to implementing modern machine learning systems.

Skills Used: Machine learning, basic type-level programming, typeclasses

**Difficulty**: Intermediate

**Mentors**: Sam Stites, Austin Huang
