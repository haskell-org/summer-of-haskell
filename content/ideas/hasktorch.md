---
title: Functional Machine Learning with Hasktorch
---

Machine learning with neural network can be viewed as a method of computation defined by optimization over function composition. In spite of the use of pure functions, composability,function transformations (such as differentiation), most available frameworks target imperative dynamically-typed languages. 

[Hasktorch](https://github.com/hasktorch/hasktorch) is a library for tensors and neural networks in Haskell. It is an independent open source project which leverages PyTorch's C / C++ backend implementation and provides low-level bindings as well as higher-level abstractions for math and building models. 

For the GSOC project, there would be two main areas to contribute -

## Target Libtorch 1.0 and Overhaul the Foreign Function Bindings

The next release's FFI will undergo a substantial overhaul, tracking major developments with libtorch/pytorch 1.0. With these changes, we will change the low level parts of the stack. Code generation will be updated to be derived from a yaml spec (instead of parsing the C source) and target the new libtorch C++ backend (which subsumes the ATen/C functions). As new development, a second yaml spec defining function derivatives will be used to auto-generate a large set of composable differentiable functions that will be usable from Haskell.

Skills Used: C++, systems programming, FFI, parsers

## Produce Functional Machine Learning Model Reference Implementations

At a higher level, we want to demonstrate proof-of-concept implementations of machine learning models for a variety of use cases including structured data, natural language processing, and image data. The goal would be to provide reference examples using variational auteoncoders, RNNs, CNNs, and graph neural networks. This will also require writing supporting high-level operations like reusable optimizers and model interpretation/visualization modules.

We will explore how language capabilities such as dependent types and typeclasses combined with functional data transformation concepts such as lenses and pipes affect the representation and implementation of modern machine learning systems.

Skills Used: Machine learning, basic type-level programming, typeclasses

**Homepage**: https://github.com/hasktorch/hasktorch

**Mentors**: Sam Stites, Austin Huang

**Difficulty**: Advanced

