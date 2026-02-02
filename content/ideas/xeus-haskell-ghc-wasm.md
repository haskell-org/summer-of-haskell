---
title: xeus-haskell: GHC/Wasm Backend Integration Prototype
---

## Project Context

As part of the **jupyter-xeus** organization,
[`xeus-haskell`](https://github.com/jupyter-xeus/xeus-haskell) aims to provide a
"run anywhere" Haskell environment. While the current MicroHs backend is
optimized for size and speed in the browser, a GHC/Wasm-backed execution mode
would unlock the full power of the Haskell ecosystem (Hackage). This
research-intensive engineering project focuses on bridging the `xeus` C++
framework with the emerging GHC WebAssembly backend to support more complex
production workflows in the browser.

## Goals

- **Proof of Concept:** Extend the C++ bridge (`mhs_repl.cpp`) to route
  execution requests to a GHC/Wasm-compiled runtime.
- **Runtime Optimization:** Document and mitigate browser-specific constraints,
  such as bundle size, startup latency, and filesystem access.
- **Backend Interoperability:** Define a clean architecture to allow users to
  switch between the lightweight MicroHs and the full-featured GHC/Wasm
  backends.

## Prerequisites

- **Language:** Advanced Haskell (GHC extensions, FFI, and compiler internals).
- **Systems:** Proficiency in C++ (standard 14 or higher) for kernel-level
  integration.
- **WebAssembly:** Familiarity with Wasm runtimes, Emscripten, or the WASI
  standard.
- **Bonus:** Experience with GHC's Javascript/Wasm backends or `xeus` core
  development.

**Mentors:** [Masaya Taniguchi](https://github.com/tani)
**Project Size:** 350h (Large)
**Difficulty:** Hard
