---
title: Better profiling for GHC
---

Presently, GHC can be profiled by using the manually marked cost centers or using one of the
several `-ddump-*` flags (such as `-ddump-timings`). This is a stumbling block for improving
GHC's average-case performance, as the former method (while more flexible) gives results
combined across compilation of all modules, and the latter reports data in an ad-hoc format.

This project has three aspects -

* Designing a _machine-readable_ format for recording profiling output, preferably based on a common format like JSON for easier consumption using existing tools. Some prior art and discussion of design considerations can be found in [TAP13][1], [jsonlines](http://jsonlines.org/) and this closed [Rust RFC][3] (all these are related to tests though, not profiling).
* Augmenting the `-ddump-timings` and `-ddump-simpl-*` flags to support the format designed above. As an enhancement, one might want to dump additional profiling information for the `-ddump-simpl-*` flags.
* Write a tool to visualize metrics across different dimensions (e.g. divided by modules or divided by compiler passes).

**Potential Mentors**: ???

**Difficulty**: ???

[1]: https://testanything.org/tap-version-13-specification.html
[2]: http://jsonlines.org
[3]: https://github.com/hauleth/rfcs/blob/machine-readable-tests-output/text/0000-machine-readable-tests-output.md
