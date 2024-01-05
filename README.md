# summer-of-haskell

This is the source code for the summer of Haskell website.

## How to build this website

### Using `cabal`

#### Modern method (Cabal 2.4 and newer)

This is the recommended method and at the time of writing is known
to work with GHC 7.10.3 through GHC 9.4.8.

    cabal v2-run exes -- preview

#### Legacy method

    cabal install --only-dependencies
    cabal build
    ./dist/build/summer-of-haskell/summer-of-haskell preview

### Using stack

    stack build
    stack exec -- summer-of-haskell preview
    
Then point your browser at `http://localhost:8000`
