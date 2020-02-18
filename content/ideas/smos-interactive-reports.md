---
title: Interactive reports for smos
---


[Smos](https://smos.cs-syd.eu) has a bunch of nice reports via `smos-query`
but they are not interactive.
There is one interactive report within smos: the next-action report.
It would be nicer for users if they could stay within the editor to browse
through reports.

This proposal is about building interactive smos reports within the editor itself.
It involves a lot of pure Haskell code and plenty of testing, with immediate visual feedback.

The intermediate candidate should be able to:

1.  Make an interactive report for each of the missing interactive reports:
    - `smos-query entry`
    - `smos-query waiting`
    - `smos-query report`
    - `smos-query clock`
    - `smos-query projects`
    - `smos-query log`

2. Make a nice tui-interface experience for filters, time periods, time blocks, and other options that are usually passed on the command-line.

Getting this far would already reach the goal, but if there's enough time the
candidate could in addition to the above also try to do one of the following:

3. The smos-scheduler: A way of scheduling recurring projects such that they are
   put into place at the right time with the right template substitution.
   This work will involve designing a templating language.

4. An interactive weekly review experience as part of the editor.
   The weekly review is currently something that a user has to do manually
   as part of their own checklist. It would be nice to make that a guided experience.

**Mentors**: Tom Sydney Kerckhove

**Difficulty**: Intermediate
