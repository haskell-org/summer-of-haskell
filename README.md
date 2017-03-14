# summer-of-haskell

This is the source code for the summer of Haskell website.

## How to build this website

### Using cabal

    cabal install --only-dependencies
    cabal build
    ./dist/build/summer-of-haskell/summer-of-haskell preview

### Using stack

    stack build
    stack exec -- summer-of-haskell preview

## About github pages

Since we are currently using github pages, the generated content is included in
this repository as well, in the `docs/` folder.
