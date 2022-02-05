---
title: Rewrite Browse and Search pages for Hackage, implement new ranking
---

The browse and search interfaces of hackage (e.g.
<https://hackage.haskell.org/packages/browse>) are very powerful, but
somewhat outdated and unwieldy. The table browser used is an old javascript
library and cannot display data incrementally until the full content is
loaded. A newer interface that pulled tabular data via xhttp requests from
an API-generated JSON file or the like could begin incremental display
(especially when paged) well before all data was loaded.

Further, it would be good to allow custom filtering of the pages (i.e.
exclusion of deprecated packages, low rating packages, etc), reordering and
hiding or showing of columns, and persistence of such preferences in the
users' local js storage. As a whole, information density could be improved,
and additional columns such as latest-upload-version and latest-base-(or
ghc)-supported. Along with that, implementation of PackageRank as a possible
sorting metric (<https://github.com/haskell/hackage-server/issues/986>) could be
useful.

A variety of other related tickets are under the ux tag on the hackage github
repo: <https://github.com/haskell/hackage-server/labels/component%3A%20ux>

**Potential Mentors**: Gershom Bazerman

**Difficulty**: Intermediate
