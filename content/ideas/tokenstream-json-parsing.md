---
title: Implement tokenstream-based parsing in `aeson`
---

Haskell's [aeson](http://hackage.haskell.org/package/aeson) library
for JSON parsing, is used pervasively throughout the Haskell
ecosystem, including but not limited to powering most of Haskell's
web-service frameworks. Consequently, improvements to `aeson` are
likely to have a major beneficial impact on the Haskell ecosystem.

While `aeson` is already reasonably optimised, a long-known issue
remains with the intermediate JSON abstract syntax tree. For the
serialization path, this was addressed early on in
[`aeson-0.10.0.0`](http://hackage.haskell.org/package/aeson-0.10.0.0/changelog)
by adding support for direct encoding to `Builder`s and thus bypasses
the intermediate construction of the `Value`-tree and has resulted in
significant speed ups realised to various degrees by every consumer
of `aeson`.

A prospective solution for the parsing direction, however, has proven
to be more elaborate and has not fully materialised yet. And yet,
parsing JSON predictively efficient is critical when dealing with
web-services that need to consume potentially malicious JSON input
which when carefully crafted can be used to perform DoS attacks on a
web-service.

In order to address this, preliminary work such as [implementing a
JSON Token stream parser API](https://github.com/bos/aeson/pull/560)
and experimenting with an
[`Applicative` JSON Object parser](https://github.com/bos/aeson/pull/564)
emerged. Even though very promising, due to lack of time, this
incomplete work was unfortunately not brought to completion.

Consequently, the goal of this project shall be to continue the work
started in the aforementioned patches, and complete these to a working
prototype of an optimized streaming JSON parsing codepath for
integration into the `aeson` library. If there's time left, additional
stretch goals may include adding the opt-in ability to add validation
to efficiently reject or warn about JSON documents including unknown
object fields.

The conceptual results of this work will likely be reusable and thus
also benefit other libraries with similar design, such as Haskell's
YAML 1.2 library [`HsYAML`](http://hackage.haskell.org/package/HsYAML).

We estimate that this should be a good fit for a GSOC project executed
by an intermediate Haskell student who enjoys working on a potentially
high-impact improvement and getting to work on one of Haskell's
foundational core libraries.

**Mentors**: Oleg Grenrus, Herbert Valerio Riedel

**Difficulty**: Intermediate