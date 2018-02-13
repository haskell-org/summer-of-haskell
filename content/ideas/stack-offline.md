---
title: Offline mode for Stack
---

[Stack](https://docs.haskellstack.org) is a tool for installing and developping
Haskell applications and libraries.  It currently requires internet access to
operate well.

There are various hacks and projects that attempt to circumvent this problem,
e.g:

- <https://github.com/cblp/stack-offline>
- <https://github.com/commercialhaskell/stack/issues/359>
- <https://github.com/commercialhaskell/stack/issues/3106>
- <https://github.com/ndmitchell/offline-stack>

However, the Stack maintainers are now interested supporting this first-class.
This has become more important since offline is operation is required in some
corporate settings -- and it's also just useful if you're writing Haskell on an
airplane or on a train!

This work will require touching many different parts of the Stack codebase but
it will not require a deep understanding of its internals.

**Mentors**: Emanuel Borsboom, Stack Contributors
