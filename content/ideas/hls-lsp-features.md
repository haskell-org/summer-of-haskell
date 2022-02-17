---
title: Support more LSP features in Haskell Language Server
---

[Haskell Language Server][hls] (HLS) uses the [Language Server Protocol][lsp]
(LSP) to communicate with the editor.  LSP servers can announce what features
they support in this protocol.  While HLS already comes with the most important
ones, there are a few that haven't been implemented yet.

Implementing some of those could be a very good way of helping out other
Haskellers!

 -  [Change Annotations](https://microsoft.github.io/language-server-protocol/specifications/specification-3-17/#changeAnnotation):
    These let you annotate pieces of edits with notes explaining what they do,
    and in some clients may let the user review them before accepting. For
    example, this would let us annotate each
    [hlint](https://github.com/ndmitchell/hlint) fix in the "apply all fixes"
    edit with the hint that it is addressing, making it more obvious what it has
    done.

 -  [Semantic Highlighting](https://code.visualstudio.com/api/language-extensions/semantic-highlight-guide)

 -  [Folding ranges](https://microsoft.github.io/language-server-protocol/specifications/specification-3-17/#textDocument_foldingRange)

 -  [Linked editing](https://microsoft.github.io/language-server-protocol/specifications/specification-3-17/#textDocument_linkedEditingRange):
    this could be a lightweight way of doing document-local renamings for e.g.
    local variables.

 -  [Completion](https://microsoft.github.io/language-server-protocol/specifications/specification-3-17/#completionItem_resolve) /
    [Code Action](https://microsoft.github.io/language-server-protocol/specifications/specification-3-17/#textDocument_codeAction) /
    [Code Lens](https://microsoft.github.io/language-server-protocol/specifications/specification-3-17/#textDocument_codeLens)
    resolving.  This is definitely the most complicated, since it potentially
    requires state tracking on the part of the server. But if we could do it
    well then it might lead to improved performance.  Completions would probably
    be highest priority.

 -  [Document links](https://microsoft.github.io/language-server-protocol/specifications/specification-3-17/#textDocument_documentLink):
    these could be used for type references in Haddock, for example.

[hls]: https://haskell-language-server.readthedocs.io/en/latest/
[lsp]: https://microsoft.github.io/language-server-protocol/

**Potential Mentors**: Michael Peyton Jones

**Difficulty**: Intermediate
