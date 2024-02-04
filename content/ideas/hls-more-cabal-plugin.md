---
title: Haskell Language Server: Cabal Plugin Continuation
---

The [`hls-cabal-plugin`](https://github.com/haskell/haskell-language-server/tree/master/plugins/hls-cabal-plugin) is a Haskell Language Server (HLS) plugin that allows HLS to be a Language Server for `.cabal` files as well as Haskell files.
While the plugin already provides many core features, there are more possible features that would increase the ergonomics of working with cabal files, such as:

* Goto-Definition for local stanzas, such as library, executable or common stanzas
* Integrating the [`cabal-add`](https://github.com/haskell/haskell-language-server/issues/3853) into HLS
* Prompt to add unknown modules to `exposed-modules` and `other-modules` sections.
* Completion of local and non-local package names
* Completion of package version bounds
* Showing documentation for keywords and enum values.

With some creativity, we can come up with many more features.

**Mentorship**

Fendor

**Difficulty and size**

The difficulty of this project is medium, as there are two rather big existing projects that developers need to understand in order to provide improvements.

The estimated size of this project is 175 hours, but there is likely 350 hours worth of work depending on the mentee's interests and ideas.

