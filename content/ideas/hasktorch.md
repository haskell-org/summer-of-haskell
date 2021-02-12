---
title: Practical Machine Learning with Hasktorch
---

Hasktorch is a library for neural networks and tensor math in Haskell.
It is leveraging the C++ backend of PyTorch for fast numerical computation with GPU support.
Our goal with Hasktorch is to provide a platform for machine learning using typed functional programming.

This summer, we have selected two exciting projects for GSoC contributors:

### Integration between Hasktorch and Huggingface

The [Huggingface Open-Source Python libraries](https://github.com/huggingface/) have become the de-facto standard for deep-learning based Natural Language Processing (NLP) for researchers, practitioners, and educators.

We aim to unlock a number of features and capabilities for Haskellers that Huggingface provides:

* Access to general-purpose, [Transformer](https://en.wikipedia.org/wiki/Transformer_(machine_learning_model))-based reference implementations ([BERT](https://en.wikipedia.org/wiki/BERT_(language_model)), [GPT-2](https://en.wikipedia.org/wiki/GPT-2), [RoBERTa](https://arxiv.org/abs/1907.11692), [T5](https://arxiv.org/abs/1910.10683), etc.) for Natural Language Understanding (NLU) and Natural Language Generation (NLG).
* Fine-tuning of Transformer models.
* Sharing of pretrained and/or fine-tuned state-of-the-art models for the aforementioned model architectures. Huggingface maintains a [model hub](https://huggingface.co/models) where users can share and download models that have been trained or fine-tuned on new data.
* Deployment of models.

The goal is to not only provide this functionalitity as frictionless as it is in Python, but also to add type safety and idiomatic functional abstractions. For instance, generating natural language from a pre-trained T5 model in Haskell can look like this:

```Haskell
λ> type GPU = 'Device ('CUDA 0)
λ> model <-
    initialize
      @(T5Large 'WithLMHead GPU)
      "t5-large.pt"
λ> g <- mkGenerator @GPU 0
λ> type BatchSize = 1
λ> type MaxSeqSize = 64
λ> input <-
    mkT5Input
      @GPU @BatchSize @MaxSeqSize
      ["translate English to German: Monads are monoids in the category of endofunctors."]
λ> runBeamSearch 1 model input g
["Monaden sind Monoide in der Kategorie der Endofunktoren."]
```

A [proof of concept](https://twitter.com/tscholak/status/1356772217883869184?s=21) for language generation from a T5 model already exists, but it misses an essential component: a tokenizer. A natural language tokenizer encodes input text like the above as lists of integers that the model has learned to interpret. To this end, Huggingface provides a [tokenization library written in Rust](https://github.com/huggingface/tokenizers). One potential GSoC project is to create Haskell bindings for this library. For this project, the student should be proficient in both Haskell and Rust. Of course, other projects in service of the Huggingface integration agenda can be pursued, too.

### Model Monitoring And Data Version Control

Haskell support for DVC (data version control https://github.com/iterative/dvc) - a library that defines cross-language protocols supporting versioning datasets for machine learning and tracking/persistence of ML experiments.

Wandb: A central dashboard to keep track of your hyperparameters, system metrics, and predictions so you can compare models live, and share your findings.

## Potential Mentors:

- Junji Hashimoto
- Austin Huang
- Torsten Scholak
- Adam Paszke
- Sam Stites

**Difficulty**: Intermediate