#!/usr/bin/bash
set -o errexit -o pipefail -o nounset

mkdir -p summer.haskell.org/
sshfs hsoc-site@webhost.haskell.org: summer.haskell.org/
trap "fusermount -u $PWD/summer.haskell.org" EXIT
cp -rv _site/* summer.haskell.org/htdocs/
