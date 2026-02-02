---
title: Dynamic LSP capabilities
---

A [capability in LSP](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#capabilities), the Language Server Protocol describes the kind of features a Language Server offers to the client (e.g., VSCode). These capabilities are statically declared in HLS, i.e., on startup, we infer the language server's capabilities, based on the plugin handlers.
However, HLS is highly configurable!
It should be possible to enable or disable features at run-time, but since HLS can only declare capabilities on startup, the editor can request features even though they are disabled in HLS!

For example, [semantic tokens](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#textDocument_semanticTokens) is one of HLS' experimental features which is disabled by default.
The client will still request semantic tokens for documents, as HLS has previously advertised the feature, leading to error messages polluting the logs and confusing the user.
Similarly, the `hls-cabal-plugin` implements a language server for `.cabal` files within HLS, but the plugin supports noticably different features for `.cabal` files than for `haskell` files.
The result is that many LSP requests are rejected by HLS, confusing users.

This can be solved by introducing [dynamic capabilities](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#client_registerCapability), capabilities that can be registered and also de-registered by HLS at runtime if a feature is disabled.
Rather than sending all capabilities on startup, HLS can check its enabled plugins, and register a capability for individual HLS features on demand.

This project will improve the support for dynamic capabilities in [`lsp`](https://github.com/haskell/lsp/), and then port HLS to use dynamic capabilities where available.
In `lsp`, there should be the possibility to automatically infer the dynamic capabilities, similarly to how we infer the [static capabilities on startup](https://github.com/haskell/lsp/blob/master/lsp/src/Language/LSP/Server/Processing.hs#L217).
Ideally, dynamic capability registration remains opaque to HLS plugins and is entirely handled by the internal mechanisms of [`ghcide`](https://github.com/haskell/haskell-language-server/tree/master/ghcide).

This project requires strong Haskell skills, especially with type level programming concepts such as type families.
As the implementation will touch many places within HLS, prior knowledge of HLS, its rule system and plugin system is highly recommended.

Issue: https://github.com/haskell/haskell-language-server/issues/4084

**Goals**

- `lsp` can send and process dynamic registration of capabilities.
- `lsp` can infer and send dynamic capability registration based on handlers
  - `staticHandlers` vs `dynamicHandlers`
- `lsp-test` can handle dynamic capability registrations.
- HLS can register dynamic capabilities manually
- HLS can infer dynamic capabilities

This project will only accept participants with prior contributions to HLS or `lsp`.

Mentors: fendor, TBD

Project size: 175hrs, the scope could be expanded to 350hrs

Difficulty: Medium
