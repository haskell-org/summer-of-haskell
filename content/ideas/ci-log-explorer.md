---
title: Continuous Integration Log Explorer
---

## Goals

Create a web-based tool that can be used to explore continuous integration test
logs suitable for large projects with big workflows that are susceptible to rare
intermittent failures.

There are two components to this goal.

1. Create a service that automatically inserts test logs into a full text search
   database.

2. Create a web tool for querying the full text search database and visualizing
   results.

## Background

The Haskell compiler GHC has an old testsuite that is slowly lumbering into the
modern era. As more aspects of GHC are tested automatically, rare intermittent
failures that cause spurious test results are uncovered. As more infrastructure
is added to support automation, the surface area for such spurious failures
increases. Collectively, the intermittent failures affect many CI runs and can
create a frustrating experience for would-be GHC contributors.

One successful technique for combating intermittent failures is to collect data
from many test runs and look for patterns. By finding the "fingerprint" of a
particular failure, we can identify whether it is indeed spurious, what
circumstances accompany the failure, and how frequently it occurs. This
information can be used to identify the root cause and fix the failure. At the
very least, it can be used to recover from the failure automatically, giving
contributors a smoother experience.

### Existing Tooling

Some tooling to support this technique is found at
<https://gitlab.haskell.org/chreekat/spurious-failures/-/tree/master/local-tooling>.
It requires the user to manually download all job logs, and the "interface" is
nothing more than a sqlite database. This project will improve on the idea.

There is already a service that listens to job events, found at
<https://gitlab.haskell.org/chreekat/spurious-failures/-/tree/master/spuriobot>.
Therefore, the first component of the project goal (creating a service that
automatically inserts test logs into a full text search database) will only need
to extend that service with the log-insertion feature.

## Outcomes

Phase 1: The tool will be implemented and brought online with a basic user
interface. It will only support GHC.

Phase 2, option 1: Guided by user feedback, better visualizations will be added
to the UI.

Phase 2, option 2: The service that automatically inserts test logs into a full
text search database will be extended to support Github workflows, allowing the
tool to be used much more widely.

Phase 2, option 3: *Use* the tool to characterize spurious failures in GHC.
There is a large list of potential spurious failures that can be investigated.
And maybe fix them!

## Size

Estimated at 175 hours.

The first deliverable, described in Phase 1, is **small**. By choosing from the
Phase 2 options, however, the project can be extended to **medium** or **large**
as suits the circumstances.

## Required Skills

* Read and write technical English
* Haskell programming basics

## Suitable for the Following Interests

* devops
* Haskell tooling
* web app development
* web services
* data visualization

## Project Mentor

* Bryan Richter, Haskell Foundation DevOps engineer and author of existing tooling
