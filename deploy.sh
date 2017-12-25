#!/usr/bin/bash
set -o errexit -o pipefail -o nounset

mkdir -p summer.haskell.org/
sshfs hsoc-site@www-origin.haskell.org: summer.haskell.org/
cp -rv _site/* summer.haskell.org/htdocs/
fusermount -u $PWD/summer.haskell.org
