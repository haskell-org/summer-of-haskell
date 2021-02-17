---
title: Dhall bindings to TOML
---

[Dhall] is an interpreted [programmable configuration language] that you can
think of as: JSON + functions + types + imports.  Almost all of the language's
supporting tooling is implemented in Haskell, including tools to convert between
Dhall and other configuration file formats (like JSON or YAML).

Dhall does not currently support a [TOML] binding, though, and the scope of this
project is to add support for converting bidirectionally between Dhall
configuration files and TOML files.  Specifically, this project would entail
creating a new `dhall-toml` package that would provide `dhall-to-toml` and
`toml-to-dhall` executables.

This project is suitable for an intermediate Haskell programmer and no prior
knowledge or familiarity with Dhall is required.  The student would be able to
consult from the existing `dhall-yaml` and `dhall-json` packages, so even though
they would be scaffolding a new package they wouldn't be starting from scratch.

**Mentors**:

* [Gabriel Gonzalez](https://github.com/Gabriel439)
* [Simon Jakobi](https://github.com/sjakobi)

**Difficulty**: Intermediate

[Dhall]: https://dhall-lang.org/
[programmable configuration language]: https://docs.dhall-lang.org/discussions/Programmable-configuration-files.html
[TOML]: https://toml.io/
