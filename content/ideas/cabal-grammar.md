---
title: Programmatic generation of cabal file grammer
---

Cabal files have a reasonable syntax, but this syntax is only partially specified, and only informally so. There are sporadic requests for a full BNF specification of the grammar, suitable for reference and consumption. Because the cabal file parser is engineered in the "finally tagless" style with multiple backends, one such backend could be to _reflect_ the grammar for a given version of the cabal file grammar back into such a BNF specification, as well as a more human consumable one, etc. This would allow programmatic generation of the grammars for different version specs of cabal files, as well as keep the current spec up to date going forward, and potentially improve the situation for third party tooling.

Cf: https://github.com/haskell/cabal/issues/7545

**Potential Mentors**: Gershom Bazerman
**Difficulty**: Advanced
