---
title: Hasktorch library for neural networks and tensor math
---

Hasktorch is a library for neural networks and tensor math in Haskell leveraging the C++ backend of PyTorch for fast numerical computation with GPU support. Our goal with Hasktorch is to provide a platform for machine learning using typed functional programming.

As a summer project, there are a number of potential areas to contribute:

# Write an in-depth tutorial series

Port a tutorial series on neural networks such as tensor2tensor or fastai. Alongside code, write detailed comments/notes as well as adding to/improving//debugging the library when needed. 

Relevant Links:

- [FastAI](https://course.fast.ai/) - Practical Deep Learning for Coders course
- [Trax](https://github.com/google/trax) - Example neural network implementations from Google Brain


# PyTorch Interop

Implement saving/loading serialized representations of models so that models can be transferred between PyTorch and Hasktorch.

Relevant Links:

- [torchscript](https://pytorch.org/docs/stable/jit.html) - an intermediate representation target for PyTorch models
- [Hasktorch PR 268](https://github.com/hasktorch/hasktorch/pull/268) supporting torchscript types

# Expand ecosystem around higher-level functionality

Implement/improve modules for data loading, vision/text libraries, model visualization and interpretability, probabilistic modeling, etc.

Relevant Links:

- [torchvision](https://pytorch.org/docs/stable/torchvision/index.html) and [torchtext](https://pytorch.org/text/) documentation
- [tf lucid](https://github.com/tensorflow/lucid) - a collection of infrastructure and tools for research in neural network interpretability.

# Contribute to Foundational Low-level Code

Help refine/debug foundational C++ foreign-function interface and code generation implementation. Improve resource management, help with migrations tracking upstream libtorch/PyTorch releases.

Relevant Links:

- [Hasktorch wiki docs on FFI](https://github.com/hasktorch/hasktorch/wiki/FFI-bindings-for-libtorch-library)
- [Hasktorch wiki docs on resource management checking](https://github.com/hasktorch/hasktorch/wiki/How-to-show-resource-usage)

# Potential Mentors:

- Junji Hashimoto
- Austin Huang
- Adam Paszke
- Torsten Scholak
- Sam Stites

**Difficulty**: Intermediate
