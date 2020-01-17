---
title: Finish the package candidate workflow for Hackage
---

Hackage candidate packages currently cannot be used directly, and their UI could be improved. We would like to have new packages be uploaded as candidates by default, to improve the vetting process. But this means polishing off candidate functionality. The main issues left to do are tracked [here](https://github.com/haskell/hackage-server/projects/1)

The [first step](https://github.com/haskell/hackage-server/issues/635) is moving the candidate display page to the new templating system and sharing code with the main package page. Following this, we need to implement a [new candidate index](https://github.com/haskell/hackage-server/issues/597), able to be provided as a secondary index. This would be a "v1" index, and mutable.

Beyond this we want to extend the docbuilder and docuploads to work with candidates, and then implement a fixed workflow from candidacy to validation and then publishing.

**Mentors**: Gershom Bazerman, Herbert Valerio Riedel

**Difficulty**: Intermediate
