---
title: HsYAML Improvements
---

[`HsYAML`](https://hackage.haskell.org/package/HsYAML) is a pure Haskell idiomatic implementation of the [YAML 1.2](http://yaml.org/spec/1.2/spec.html) data serialization language with a strong emphasis on compliance with the YAML 1.2 specification.

`HsYAML` leverages Haskell's predisposition for writing language
parsers and by implementing the YAML parser natively in Haskell this
also avoids the need for interfacing via FFI to C-based libraries such
as `syck` or `LibYAML`. Benefits of this approach include:

- Trivially portable to Haskell implementations such as [Eta](https://eta-lang.org/) or [GHCJS](https://github.com/ghcjs/ghcjs) which are not C-based
- Avoiding the risk of vulnerabilities commonly associated with C-based implementations (e.g. [CVE-2013-6393](https://www.cvedetails.com/cve/CVE-2013-6393), [CVE-2014-2525](https://www.cvedetails.com/cve/CVE-2014-2525/), [CVE-2014-9130](https://www.cvedetails.com/cve/CVE-2014-9130/)) which is important for webservices or other systems consuming potentially malicious YAML data
- Control over the design of all codepaths of the YAML pipeline as we don't need to subject ourselves to the design-choices of a pre-existing C system-library's API (such as `syck` or `LibYAML`) or have to deal with different versions of said libraries being pre-installed
- Easier to audit, maintain, develop and debug by avoiding the added complexity of dealing with two languages and being subjected to the complexities and limitations of FFI (including memory allocation and data marshalling); this also avoids the need for bypassing the typechecker via `unsafePerformIO` to hide the internal occurrences of `IO` monads.


While the `HsYAML` library in its current form is already successfully in use, there's still lots of room for improvement; *potential* improvements include:

- Implement/finish YAML pipeline for dumping/emitting YAML
- Extend data-model to allow for load/dump round-tripping while preserving ordering, anchors, and comments (to allow automated non-lossy refactoring/modification of YAML documents)
- Improve error handling (i.e. more accurate error messages; provide source-locations and/or fragments in higher native/representation layer
- Improve/optimize performance
- Integrate results from [*tokenstream-based parsing in `aeson`* project](#tokenstream-json-parsing) (if those become available early enough during the GSOC)

Note that the list above is only a non-exhaustive list of *potential*
improvements for the student to pick from; you don't have to
accomplish everything in that last nor are the items on that list the
only things worth doing!

This project would be a good opportunity for intermediate students to work on a parser library for a popular non-trivial data format.

**Skills/knowledge expected from the student**

- Basic knowledge of how parsers work; ability to understand a language grammar

- Basic knowledge of Haskell; e.g. being able to write a Haskell parser and printer for a simple language; being familiar with popular Haskell APIs for other formats such as e.g. [`aeson` (JSON)](http://hackage.haskell.org/package/aeson) or [`serialise` (CBOR)](http://hackage.haskell.org/package/serialise)

- Having a general appreciation and understanding of the YAML 1.2 format and its feature-set/data-model
  (intimate knowledge of the YAML 1.2 grammar productions is desirable but not essential; help will be provided in case it becomes necessary to look at specific grammar productions)

**Mentor**: Herbert Valerio Riedel

**Difficulty**: Intermediate
