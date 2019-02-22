---
title: Dhall language server backend
---

The [Dhall configuration language][website] is a
[programmable configuration language][programmable] that is not Turing-complete.
People most commonly migrate other configuration file formats (like
[YAML][yaml]) to Dhall when their configuration files become large, repetitive,
and unwieldy to maintain.

Dhall supports several features not commonly found in other programming
languages, such as:

* [Strong normalization][strong-normalization] of all expressions (even
  functions)
* Importing expressions from relative paths, URLs, or environment variables
* Strong [language security guarantees][lang-sec], including [semantic
  integrity checks][semantic-integrity-checks]

Dhall is a small language with [a formal standard][standard] and a
[standard evolution process][standard-evolution].  This makes the language a
slow-moving target that can be enriched with better developer tools, including
support for integrated development environments (IDEs).

The [Language Server Protocol](https://langserver.org/) provides a convenient
path to broad IDE support.  Any language server that implements the backend half
of the protocol is compatible with any editor that implements the frontend half
of the protocol (which is every widely used editor).  This greatly reduces the
effort necessary to add Dhall support for the large number of IDEs in the wild.

[Initial work][initial-work] has already begun to implement a
[Dhall language server][dhall-server], but the work is not complete.  An initial
prototype integration is in place, powered by the [Haskell bindings to
Dhall][dhall-haskell] and the [Haskell implementation of the language server
protocol][haskell-lsp], but remaining work includes:

* Supporting a broader range of IDE features
* Simplifying installation of the language server executable for IDE users

This project should be appropriate for an intermediate Haskell programmer to
contribute to, possibly exercising the following skills depending on the
specific contributions the student is interested in:

* Programming languages and compilers

  The student will most likely need to modify the Dhall package to extract
  relevant information for the language server, which will give them hands-on
  experience improving a [real-world][dhall-production] interpreter.

* Packaging

  Providing simple language server installers for a wide variety of platforms
  will expose the student to a broad survey of packaging ecosystems and tools.

**Homepage:** [https://dhall-lang.org][website]

**Mentor:** [Gabriel Gonzalez][gabriel]

**Difficulty:** Intermediate

[dhall-haskell]: https://hackage.haskell.org/package/dhall
[dhall-production]: https://github.com/dhall-lang/dhall-lang/wiki/Dhall-in-production
[dhall-server]: https://github.com/dhall-lang/dhall-lang/issues/312
[gabriel]: https://github.com/Gabriel439
[haskell-lsp]: http://hackage.haskell.org/package/haskell-lsp
[initial-work]: https://github.com/dhall-lang/dhall-lang/issues/312#issuecomment-463770985
[lang-sec]: https://github.com/dhall-lang/dhall-lang/wiki/Safety-guarantees
[programmable]: https://github.com/dhall-lang/dhall-lang/wiki/Programmable-configuration-files
[semantic-integrity-checks]: http://www.haskellforall.com/2017/11/semantic-integrity-checks-are-next.html
[standard-evolution]: https://github.com/dhall-lang/dhall-lang/blob/master/.github/CONTRIBUTING.md#how-do-i-change-the-language
[standard]: https://github.com/dhall-lang/dhall-lang/blob/master/standard/semantics.md
[strong-normalization]: https://en.wikipedia.org/wiki/Normalization_property_(abstract_rewriting)
[website]: https://dhall-lang.org/
[yaml]: https://github.com/dhall-lang/dhall-lang/wiki/Getting-started%3A-Generate-JSON-or-YAML
