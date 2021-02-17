---
title: Practical Machine Learning with Hasktorch
---

Hasktorch is a library for neural networks and tensor math in Haskell. It is leveraging the C++ backend of PyTorch for fast numerical computation with GPU support. Our goal with Hasktorch is to provide a platform for machine learning using typed functional programming.

This summer, we have selected three exciting projects for GSoC contributors:

### Integration between Hasktorch and Huggingface

Make State-of-the-art pre-trained neural network language models in Haskell.

The [Huggingface Open-Source Python libraries](https://github.com/huggingface/) have become the de-facto standard for deep-learning based Natural Language Processing (NLP) for researchers, practitioners, and educators.

We aim to unlock a number of NLP features and capabilities for Haskellers that Huggingface provides:

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

A [proof of concept](https://twitter.com/tscholak/status/1356772217883869184?s=21) for NLG from a T5 model already exists, but it misses an essential component: a tokenizer. A natural language tokenizer encodes input text like the above as lists of integers that the model has learned to interpret. To this end, Huggingface provides a [tokenization library written in Rust](https://github.com/huggingface/tokenizers). One potential GSoC project is to create Haskell bindings for this library. For this project, the student should be proficient in both Haskell and Rust. Of course, other projects in service of the Huggingface integration agenda can be pursued, too.

**Potential mentors**: Austin Huang, Torsten Scholak

**Difficulty**: Intermediate


### Model Monitoring And Data Version Control

Haskell support for DVC (data version control https://github.com/iterative/dvc) - a library that defines cross-language protocols supporting versioning datasets for machine learning and tracking/persistence of ML experiments.

Wandb: A central dashboard to keep track of your hyperparameters, system metrics, and predictions so you can compare models live, and share your findings.

**Potential mentors**: Austin Huang, Torsten Scholak

**Difficulty**: Intermediate


### Gradually Typed Hasktorch

Gradually typed Hasktorch, `Torch.GraduallyTyped`, is a new API for tensors and neural networks that interpolates between the already existing unchecked (untyped) and checked (typed) Hasktorch APIs, `Torch` and `Torch.Typed`, respectively. Thus far, users have to choose whether they want to commit fully to either typed or untyped tensors and models. The new gradually typed API relaxes this black-and-white tradeoff and makes the decision more granular. In `Torch.GraduallyTyped`, users can choose whether or not they want type checking for every individual type variable, like a tensor's compute device (e.g. the CPU or a GPU), its precision (`Bool`, `Int64`, `Float`, etc.), or its shape (the names and sizes of its dimensions). Thus, users can enjoy the flexibility of an unchecked API for rapid prototyping, while they can also add as much type checking as they want later on. Alternatively, users can start with fully checked tensor and model types and relax them when and where they get in the way. Thus, `Torch.GraduallyTyped` combines the best of both worlds, of checked and of unchecked Hasktorch.

More concretely, consider the existing unchecked and checked APIs. `Torch.Tensor` is an untyped wrapper around a reference to a libtorch tensor. None of its properties are tracked by Haskell's type system. A `Torch.Typed.Tensor`, on the other hand, has three type annotations: a static device (of kind `(DeviceType, Nat)`), a precision (of kind `DType`), and a shape (of kind `[Nat]`). By contrast, in the gradually typed API, all these types become optional:

* `(DeviceType, Nat)` becomes `Device (DeviceType Nat)` where `Device a ~ Maybe a` (i.e. `data Device a = UncheckedDevice | Device a`).
* `DType` becomes `DataType DType` where `DataType a ~ Maybe a`.
* `[Nat]` becomes `Shape [Dim (Name Symbol) (Size Nat)]` where `Shape a ~ Maybe a`, `Name a ~ Maybe a`, and `Size a ~ Maybe a`.

The existing unchecked and checked APIs are thus special cases of the new gradually typed API. Indeed, one could define:

```haskell
type UncheckedTensor = Tensor 'UncheckedDevice 'UncheckedDataType 'UncheckedShape
type CheckedTensor deviceType dtype dims = Tensor ('Device deviceType) ('DataType dtype) ('Shape (ToGradualDims dims))
```

(Here, `ToGradualDims` is a helper type family that converts types of kind `[(Symbol, Nat)]` to those of kind `[Dim (Name Symbol) (Size Nat)]`.) `UncheckedTensor` is the equivalent to the fully unchecked `Torch.Tensor`, and `CheckedTensor` is equivalent to the fully checked `Torch.Typed.Tensor`. Beyond these two limit cases, one can see that there are many more configurations of partial checking. For instance, a compute device could be statically known but the shape could be statically unknown. We can even represent the case in which the number of dimensions is statically known but only some dimensions have a statically known size or name.

Extending the tensor types in the above way has some interesting consequences. Signatures of functions that operate on gradually typed tensors now depend on the information that is statically available, and they have to propagate and process the information in a way that is compatible with their function. For example, the `nonzero` function returns a tensor where each row contains a list of indices of all non-zero elements of the input tensor. Since the number of non-zero elements is not known at compile time, the output tensor has an unknown number of rows. It cannot be checked, and hence the output shape is `'Shape '[ 'Dim ('Name "*") UncheckedSize, 'Dim ('Name "*") inputDimNum]`, where `inputDimNum` is the (potentially unknown) number of dimensions of the input tensor.

Gradually typed hasktorch has been developed steadily in its own branch, https://github.com/hasktorch/hasktorch/tree/gradually-typed-hasktorch. Our goal is to bring it to maturity this year. For GSoC, we are looking for individuals who are interested in developing the gradually typed API further, add missing functionality, and test out new ideas.

**Potential mentor**: Torsten Scholak

**Difficulty**: Intermediate
