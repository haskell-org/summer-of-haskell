---
title: Haskell IDE Engine with LSP Support
---

[Haskell IDE Engine](https://github.com/haskell/haskell-ide-engine) aims to be the universal interface to a growing
number of Haskell tools, providing a full-featured and easy to query 
backend for editors and IDEs that require Haskell-specific functionality.

- Currently the focus is on full [LSP(Language Server Protocol)](https://github.com/Microsoft/language-server-protocol/blob/master/protocol.md)
  support, which will allow HIE to interface with a wide variety
  of editors, including Visual Studio Code, Emacs and NeoVim.
- Integration with existing Haskell tooling such as Intero, ghc-mod,
  HaRe, hindent etc. will also be required to implement features
  such as autocompletion, go-to definition, type insertion, linting 
  and so on.

There has already been some work done on LSP support [here](https://github.com/alanz/haskell-lsp).

**Mentors**: Alan Zimmerman
