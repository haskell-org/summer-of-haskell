---
title: 'Add support for deprecating exports'
---

GHC currently supports a pragma for deprecating top-level entities.  This
includes individual functions, modules, classes or data constructors.  However,
it does not support deprecating an _export_ from a module.

Adding support for this would allow us to gracefully (i.e., with a deprecating
phase) move functions from one module to another.  A good example is the
`Data.List.lines`.  This is a `String`-specific function which clearly belongs
in `Data.String` rather than `Data.List`.

The desired syntax would probably end up looking like:

```haskell
module Data.List
  ( …
  {-# DEPRECATE lines "Exported from Data.String instead" #-}
  , lines
  …
  ) where
…
```

For more background information, see this ticket:
<https://ghc.haskell.org/trac/ghc/ticket/4879>.

**Mentor**: Ben Gamari

**Difficulty**: Advanced
