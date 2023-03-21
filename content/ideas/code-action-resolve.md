---
title: 'Implement resolution methods in HLS'
---

The LSP protocol provides "resolution" methods for completions, code actions, code lenses, and inlay hints. These allow the server to delay computing expensive parts of an item until it actually needed. This avoids the server doing unnecessary work, and also reduces the traffic that the server sends to the client.

HLS recently gained resolution support for Haskell completions, which made a big difference. But we would like to be able to benefit from the other resolution methods.

The other complication is that Haskell completions are defined in the core of HLS, whereas most code actions (etc.) are defined by HLS plugins. Consequently, a good solution would involve producing infrastructure to make it easy for plugin authors to opt into resolution support.

See:
- https://github.com/haskell/haskell-language-server/issues/3534
- https://github.com/haskell/haskell-language-server/issues/3535
- https://github.com/haskell/haskell-language-server/issues/3536

**Mentor**: Michael Peyton Jones

**Difficulty**: Medium

**Size**: 350 hours
