---
title: Haskell support in CodeMirror 6
---

CodeMirror is a popular web-based code editor, with support for many languages.
CodeMirror has a first-class Haskell mode up through version 5.  In version 6,
though, language support has been redesigned from the ground up.  In particular:

* Language support in CodeMirror 6 is designed around an incremental
  error-correcting parser built using [Lezer](https://lezer.codemirror.net/),
  rather than ad hoc pseudo-parsing with regular expressions.
* CodeMirror 6 provides language modes access to a constantly updated
  abstract syntax tree that it can use to inform editor behavior.

Haskell no longer has first-class language support in CodeMirror 6.  Instead,
there is only a compatibility shim around the version 5 mode.  This shim lacks
any of the advantages of the new model: the shim doesn't produce a true abstract
syntax tree, doesn't recover state well when an error exists in the source, etc.

An interesting project could be to implement a first-class Haskell language mode
for CodeMirror 6.  This would be a basis on which a wide variety of web-based
Haskell tooling could be built.  In particular, the CodeWorld project which
provides an online Haskell playground and education tool is based on CodeMirror,
and would eventually adopt such a mode.

This project is best suited for a student who has significant understanding of
JavaScript, but wants to work with something in the Haskell tooling space.  It
also requires some  understanding of parsing, and the Haskell grammar.

* [CodeMirror 6](https://codemirror.net/6/)
* [Lezer](https://lezer.codemirror.net/)

**Mentors**: Chris Smith
**Difficulty**: Intermediate
