---
title: improved override semantics for cabal.project files
---

The files which cabal uses to configure multipackage projects (cabal.project files) have been extended in recent years to allow includes and conditionals.

This makes more common and useful situations where certain stanzas (build constraints, flags, index-state, etc) may be used to override other stanzas, rather than simply augment them. (But also, we may at times want augmenting semantics -- there's a delicate balance).

The contents of different stanzas in cabal project files are monoidally accumulated. However, the monoid chosen for different stanzas has been done without much thought -- typically either with purely accumulating or purely replacement semantics.

This project is for an audit of the monoidal semantics of the various setting which can be controlled by cabal.project, as well as proposal of and implementation of _more useful_ ones.

Related tickets are 

* <https://github.com/haskell/cabal/issues/8568>
* <https://github.com/haskell/cabal/pull/9510>
* <https://github.com/haskell/cabal/issues/7556#issuecomment-1120433903>

## Mentorship

Gershom is willing to mentor

## Difficulty and size

The difficulty of implementation is medium at most, but this will require
somebody who is able to thoughtfully inventory, think through, and propose the
specifics of a solution, ideally with prior experience with cabal project files
as a user, and also with a sense of existing user workflows. The size of the
project is likely 175 hours.
