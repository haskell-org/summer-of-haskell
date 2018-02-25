---
title: Improve GHC Code Generator
---

Some simple improvement to the GHC's code generator can make a big
difference to performance. For example, a recent change reduced the
number of instructions to perform floating point abs from
approximately 20 to 2.

There are many open tickets for the code generator, at least two of
which are suitable for a GSoC student. For example

 * Adding SIMD support to x86/x86_64 NCG
 * Adding more SIMD primops corresponding to the untapped AVX etc. instructions

Steps for the student:

 * Review and curate the tickets related to the code generator
 * With the mentors, select those that are achievable in the timescale
   and that give the biggest bang for buck
 * Create PRs for one or more of the selected tickets
 * Update the guidance for working on the code generator (which may be
   out of date)

Some tickets that can be reviewd:

       id | Summary
     3557 | CPU Vector instructions in GHC.Prim
     7741 | Add SIMD support to x86/x86_64 NCG
    10648 | Some 64-vector SIMD primitives are absolutely useless
    13852 | Can we have more SIMD primops, corresponding to the untapped AVX etc. instructions?
    12412 | SIMD things introduce a metric ton of known key things
    14251 | LLVM Code Gen messes up registers
     4211 | LLVM: Stack alignment on OSX
     5567 | LLVM: Improve alias analysis / performance
     7297 | LLVM incorrectly hoisting loads
     7610 | Cross compilation support for LLVM backend
    10010 | LLVM/optimized code for sqrt incorrect for negative values
    10074 | Implement the 'Improved LLVM Backend' proposal
    10295 | Putting SCC in heavily inlined code results in "error: redefinition of global"
    11138 | Kill the terrible LLVM Mangler
    11295 | Figure out what LLVM passes are fruitful
    11538 | Wrong constants in LL code for big endian targets
    12470 | Move LLVM code generator to LLVM bitcode format
    12798 | LLVM seeming to over optimize, producing inefficient assembly code...
    13045 | LLVM code generation causes segfaults on FreeBSD
    13062 | `opt' failed in phase `LLVM Optimiser'. (Exit code: -11)
    13724 | Clamping of llvm llc to -O1 and -O2
    13852 | Can we have more SIMD primops, corresponding to the untapped AVX etc. instructions?
    14528 | LLVM's CallAnalyzer Breaks
     4308 | LLVM compiles Updates.cmm badly
     5140 | Fix LLVM backend for PowerPC


**Mentor**: Dominic Steinitz (aka idontgetoutmuch aka cinimod), Ben Gamari, Matthew Pickering, Moritz Angermann, Carter Schonwald (SIMD/floating point semantics and api impact focus)

**Difficulty**: Intermediate - Hard

