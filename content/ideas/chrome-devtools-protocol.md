---
title: Control headless Chrome/Chromium
---

Chrome and Chromium are powerful and highly popular browsers. When used
in *headless* mode, they can be controlled via the Chromium DevTools
Protocol ([CDP](https://chromedevtools.github.io/devtools-protocol/)).
It is a powerful tool for automation.

The project will build a Haskell library, based on the
[*websockets*](https://hackage.haskell.org/package/websockets), to
control headless Chrome from Haskell. The library will enable many
interesting use-cases, including the ability to use Chrome for PDF
generation from HTML sources. If time permits, the library could be
showcased by integrating it into [pandoc](https://pandoc.org), the
universal document converter. Pandoc users can then convert to PDF
documents through Chrome.

**Potential mentors**: Albert Krewinkel, Jasper Van der Jeugt

**Difficulty**: Medium

**Size**: 350 hours
