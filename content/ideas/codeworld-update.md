---
title: CodeWorld GHC Update
---

[CodeWorld](https://github.com/google/codeworld/) is a web-based educational environment for learning computer science using Haskell. It is based on GHCJS, an old project to compile Haskell to JavaScript with a modified GHC compiler.

GHCJS is no longer a good choice, as it is difficult to keep up to date with the latest GHC versions.  However, modern versions of GHC have built-in backends for both JavaScript and WebAssembly, which are more reliable and easier to maintain, and kept up to date as part of the main line of GHC development. This project would involve updating CodeWorld to use one of the new GHC backends for JavaScript or WebAssembly.

This would involve updating the build system, and making any necessary changes to the CodeWorld runtime to work with the new backends.

The scope of the project can be adjusted based on the desired time frame and experience of the mentee.  Some questions include:

- Is the goal to get a proof of concept, or a deployable replacement?
- Will the rule-based requirements checker also be updated to newer GHC versions?
    - This requires updating the GHC API usage.
    - This feature is, to my knowledge, not currently used by anyone.
- Will the educational dialect be updated?
    - If so, how do we handle unconstrained universal equality? Note that this likely requires development of a non-trivial GHC plugin.
    - If not, how do we deploy both versions simultaneously (if a deployable replacement is the goal)?
- What additional improvements are enabled by newer GHC versions and the new backends?

**Mentorship**

- Chris Smith (cdsmith)
- Ideally, a second mentor with experience in one or both of GHC JS/WASM backends

**Difficulty and size**

The difficulty of this project is medium, as there are significant infrastructure and build system challenges to address.  Depending on choices made, this may become hard.

The minimum size of this project is 175 hours, but there is likely more work depending on the mentee's desired scope and ideas.
