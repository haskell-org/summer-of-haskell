---
title: xeus-haskell - Library Expansion and Packaging for MicroHs
---

## Project Context

[`xeus-haskell`](https://github.com/jupyter-xeus/xeus-haskell) is an official
Jupyter kernel for Haskell, maintained under the **jupyter-xeus** organization.
It is based on **xeus**, the native C++ implementation of the Jupyter protocol.
By leveraging the MicroHs compiler, `xeus-haskell` provides a unique experience
that runs both natively (Linux, macOS, Windows) and directly in the browser via
WebAssembly (JupyterLite). This project aims to transition the kernel from a
proof-of-concept to a robust tool for data science and education by expanding
its library ecosystem.

## Goals

- **Feasibility Study:** Identify high-impact libraries (Haskell 2010 subset)
  that can be realistically compiled under MicroHs.
- **Library Expansion:** Port and validate a priority set of libraries (e.g.,
  `containers`, `mtl`, `bytestring`, `aeson`) for the MicroHs backend.
- **Automated Packaging:** Integrate with `pixi`, `conda-forge`, and
  `emscripten-forge` to automate CI/CD pipelines for both native and Wasm
  targets.
- **Educational Content:** Develop "Getting Started" notebooks that demonstrate
  these libraries in a zero-install JupyterLite environment.

## Prerequisites

- **Language:** Strong proficiency in Haskell (especially Haskell 2010
  standards).
- **Tooling:** Familiarity with modern package management (Conda / Pixi).
- **Systems:** Basic understanding of CI/CD workflows (GitHub Actions).
- **Bonus:** Previous experience with the MicroHs compiler or contributing to
  `conda-forge`.

**Mentors:** [Masaya Taniguchi](https://github.com/tani)

**Project Size:** 175h (Medium) / 350h (Large)

**Difficulty:** Medium
