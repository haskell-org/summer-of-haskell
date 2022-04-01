---
title: Implementing a GPU backend for advanced machine learning algorithms
---

The goal of this project is to provide a collection of high-performance, GPU-accelerated machine learning algorithms to the Haskell community. To do this, we would combine two existing, well-developed libraries: The first is [Hasktorch](http://hasktorch.org/), which provides industry-grade GPU-accelerated performance through bindings to [pytorch/libtorch](https://pytorch.org/). The second is [Goal](https://gitlab.com/sacha-sokoloski/goal), which are a collection of machine learning libraries that I maintain for my research (https://elifesciences.org/articles/64615 and http://cognet.mit.edu/node/57955 are two examples of my research where all simulations were implemented based on Goal). Goal provides not only research-specific machine learning models, but also a suite of fundamental and widely used models such as mixture models, Kalman filters, hidden Markov models, and factor analysis.

Goal is high-performance, but ultimately CPU-bound. Nevertheless, the Goal type-system is built on a backend of newtype wrappers around [hmatrix](https://hackage.haskell.org/package/hmatrix) and [vector](https://hackage.haskell.org/package/vector) types. As such, if the backend could be replaced by newtypes around Hasktorch primitives, the large collection of models and algorithms that Goal provides could easily take advantage of GPU-acceleration. The principle work of this project would thus be to develop a backend for Goal based on Hasktorch, and propogate the changes up through the rest of the Goal libraries.

Although this project is focused on my own libraries, I see it as fulfilling a broader need in the Haskell community. Users have long lamented the lack of data science tools in Haskell, even though Haskell's strong type-system would appear to be a natural fit for describing advanced machine learning models and algorithms. A critical part of progress is simply trying, and therefore even if the particular approach of Hasktorch + Goal that we propose does not satisfy all the needs of the wider community, it will serve as an important, yet also achievable and well-defined exploration of the space of Haskell-driven data science.

**Potential Mentors**: [Sacha Sokoloski](https://gitlab.com/sacha-sokoloski), [Junji Hashimoto](https://github.com/junjihashimoto)

**Difficulty**: Medium

**Size**: 350 hours
features)
