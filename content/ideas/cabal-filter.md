---
title: Field collection and filtering for cabal-install build plans
---

There are a number of places (excluding custom setups, certain licenses, etc)
where explicitly disallowing certain values of certain fields from solver build
plans could be useful, or, alternately, warning on such values, or simply
providing reporting of the union of such values.

While third party tools can make use of generated info after the fact to report
on build plans, it would be very good to provide cabal with a general purpose
way to filter the index presented to the solver on any top level cabal field
(either positive or negative presence of certain values) as well as report on
the union of data of any cabal field, so that one could see all licenses in a
plan and their provenance, or all uses of custom setups in a plan and their
provenance, etc.

**Potential Mentors**: Gershom Bazerman

**Difficulty**: Intermediate
