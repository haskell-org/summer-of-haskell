---
title: Safe streaming with linear types
---

Proposed solution to the problem of writing safe and efficient have
abounded since Kiselyov [argued against lazy IO][iteratees].

Streaming libraries are typically of one of two kind:

- Safe at their core at the cost of expressiveness: such library model
  stream transformers rather than stream. They often also provide unsafe
  escape hatches for the cases where the model is too
  restrictive. The `conduit` library is of that form.
- Expressive, by modelling streams as first-class objects, but
  unsafe. Such library embraces the fact that the escape hatches are
  the key to expressiveness and place them at the core of their
  model. The `streaming` library is of that form.

This project consists in adapting the [`streaming`][streaming]
library, so that it leverages the features of a
prototype
[version of GHC that includes support for linear types][linear-prototype] in
order to make it safe.

The key observation is that the unsafety of `streaming` is precisely
one of linearity (or, rather, lack thereof), a linear version of
`streaming` would have essentially the same feel as the existing,
unsafe, library. Nonetheless, the modifications and additions to the
`streaming` API to cope with linearity will require significant
implementation and design effort.

Reference: [_Retrofitting linear types_][linear-types]

**Mentors**: Arnaud Spiwack (Tweag I/O)

[iteratees]: http://dx.doi.org/10.1007/978-3-642-29822-6_15
[linear-types]: https://github.com/tweag/linear-types/releases/download/v1.0/hlt.pdf
[linear-prototype]: https://github.com/tweag/ghc/tree/linear-types
[streaming]: https://www.stackage.org/lts-8.6/package/streaming-0.1.4.5
