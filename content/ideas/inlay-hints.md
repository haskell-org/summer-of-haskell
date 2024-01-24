---
title: Inlay hints in haskell-language-server
---

Inlay hints are a relatively new langauge server protocol 
feature that allow servers to display additional information
inline in the user's editor, and in some cases triggering
edits when clicked.

They have a wide variety of uses, the [HLS issue](https://github.com/haskell/haskell-language-server/issues/2938)
discusses some of them. For example:

- Replacing the bulky import lens with a compact inlay hint
- Type annotations on various kinds of binding
- Explicit display of record field names when they are omitted
- More we haven't thought of!

This project would be to try and implement as many of these 
inlay hint uses as possible in HLS.

## Mentorship

Michael Peyton Jones will mentor.

## Difficulty and size

Much of this project will not be too difficult, however it will
require understanding and modifying many parts of HLS's codebase,
which is non-trivial. We may also need to work out how to get
additional information from GHC, which will require interacting
with GHC, and possibly contributing fixes upstream.

**Difficulty**: medium
**Size**: A basic version is probably doable in 175 hours, but
there is probably 350 hours worth of work, or the project could
extend into implementing other missing LSP features.
