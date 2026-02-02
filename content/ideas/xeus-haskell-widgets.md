---
title: xeus-haskell - Interactive Widgets for Haskell Notebooks
---

## Project Context

Developed under the **jupyter-xeus** umbrella,
[`xeus-haskell`](https://github.com/jupyter-xeus/xeus-haskell) already supports
rich display outputs (HTML, LaTeX, Markdown). This project will implement
**ipywidgets** compatibility, enabling truly interactive notebooks. By adding
support for the Jupyter "comm" protocol, you will allow users to create
Haskell-driven GUI elements—such as sliders, buttons, and dropdowns—that can
manipulate data visualizations in real-time.

## Goals

- **Protocol Implementation:** Implement Jupyter "comm" messages for state
  synchronization between the Haskell kernel and the browser frontend.
- **Widget Library:** Build a developer-friendly Haskell DSL/library to
  instantiate and control standard widgets (Slider, Button, Text).
- **Interactive Demos:** Create curated notebooks demonstrating the power of
  interactive widgets combined with the `Display` typeclass for teaching and
  data exploration.

## Prerequisites

- **Language:** Solid Haskell skills, specifically in state management and
  handling side effects.
- **Protocol:** Understanding of JSON-based network protocols or the Jupyter
  messaging spec.
- **Frontend:** Basic knowledge of HTML/CSS for widget rendering and styling.
- **Bonus:** Experience using `ipywidgets` in Python or a similar interactive
  system in another language.

**Mentors:** [Masaya Taniguchi](https://github.com/tani)

**Project Size:** 175h (Medium) / 350h (Large)

**Difficulty:** Medium
