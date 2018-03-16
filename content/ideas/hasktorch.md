---
title: Finalize the Hasktorch Library for Hackage Release
---

There are deep connections between functional programming and machine learning computation. Such links can yield new algorithms, as in some recent papers [1,2], while the field of neural networks can be recast as an emerging model of computation based on differentiable function composition [3,4,5]. Furthermore, as machine learning is deployed in diverse fields ranging from technology to healthcare to finance, ensuring the correctness and reliability of these systems is increasingly critical. Given this intersection of ideas and needs, Haskell's powerful type system and composition mechanisms have the potential to advance the field in important new directions.

To explore this design space, [Hasktorch](https://github.com/hasktorch/hasktorch) builds on a tensor-based scientific computing C library that has been undergoing development for over a decade and is the foundation of the PyTorch/Torch neural network libraries. It makes available hundreds of mathematical operations including vectorized linear algebra, GPU computation, non-linear transformations, probability functions and sampling operations.

Initial development has been done to comprehensively bind the the core Torch API via code generation, write dependently-typed memory managed abstractions around core tensor operations, and implement a backpack layer for module-level polymorphism. The goal of this proposal is to finalize the library for its first hackage release, which includes:

1. Migrate any high-level python code from pytorch and torchvision into haskell
1. Write interfaces to libraries which abstract automatic differentiation procedures (e.g. backprop and diffhask libraries)
1. Add high-level optimization routines such as stochastic gradient descent and ADAM. This would be a subset of the previous two points.
1. Automated testing and benchmarking with continuous integration.
1. Write examples and documentation.

*References*

1. Brendan Fong, David I. Spivak, Rémy Tuyéras. Backprop as Functor: A compositional perspective on supervised learning
2. Leland McInnes, John Healy. UMAP: Uniform Manifold Approximation and Projection for Dimension Reduction
3. Chris Olah. <https://colah.github.io/posts/2015-09-NN-Types-FP/>
4. Yann Lecun. <https://www.facebook.com/yann.lecun/posts/10155003011462143>
5. Atilim Gunes Baydin, Barak A. Pearlmutter, Alexey Andreyevich Radul, Jeffrey Mark Siskind. Automatic differentiation in machine learning: a survey

**Difficulty**: Advanced

**Mentors**: Sam Stites, Tim Pierson, Austin Huang
