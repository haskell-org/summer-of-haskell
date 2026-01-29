---
title: UI Layout Library for Haskell - Declarative and dynamic layouts for 2D graphic frameworks
...

Haskell has several low-level libraries/bindings for 2D graphics like
[sdl3-hs](https://projects.kylelukaszek.com/sdl3-hs/) and
[GLFW-b](https://hackage.haskell.org/package/GLFW-b).
Furthermore, there are interactive application frameworks
like [Gloss](https://github.com/benl23x5/gloss),
[Brillo](https://github.com/ad-si/Brillo),
[Diagrams](https://diagrams.github.io), and others.

However, they all share a common limitation:
Developers must manually calculate positions and sizes for every UI element.
This becomes tedious and error-prone as interfaces grow in complexity.

This project aims to create a **declarative layout library** for Haskell
that can be used with any 2D rendering backend.
The goal is to let developers describe *what* they want
(a row of buttons, a centered panel, a sidebar next to content)
rather than *where* each pixel goes,
transforming Haskell's graphics libraries into viable foundations
for building real applications with proper user interfaces.

The implementation can take one of several approaches:

1. **Extend an existing Haskell layout library**
    - [FULE](https://github.com/pschnapp/FULE) (Functional UI Layout Engine),
        an experimental library for positioning UI elements
        that already provides container types, centering, and a monadic API
    - [gloss-relative](https://hackage.haskell.org/package/gloss-relative),
        which provides relative sizing and automatic resizing for Gloss.

    This would involve hardening the library, adding missing layout primitives,
    and creating integrations and examples for popular rendering backends.

2. **Wrap an existing C layout engine**
    - [Clay](https://github.com/nicbarker/clay),
        a high-performance library that provides flexbox-style layouts
        with microsecond performance.

    This would involve creating Haskell FFI bindings
    and adapters for Haskell rendering libraries.

3. **Implement a new pure Haskell layout engine**
    inspired by flexbox/CSS layout algorithms.
    This provides the tightest integration with Haskell idioms
    and avoids FFI complexity, though it requires more implementation work.

Any approach should deliver:

1. A declarative API for building layouts
    (rows, columns, padding, alignment, spacing)
2. Support for common layout patterns
    (flexbox-style grow/shrink, fixed vs. flexible sizing)
3. Integration with popular Haskell 2D graphics libraries
4. Simple text measurement and wrapping support
5. Documentation and examples demonstrating typical UI patterns

The project can be scoped as a small project (~175 hours) covering
a minimal layout system with rows, columns, interactions (click, hover, etc.),
and basic sizing.

It could also be extended to a ~350 hour project by adding
floating/overlay elements, scroll containers, responsive layouts,
advanced text layouts, etc.


**Mentorship**

- Adrian Sieber (ad-si)
