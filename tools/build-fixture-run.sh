#!/bin/bash
# build-fixture-run.sh — assemble the mJVM fixture run file.
# Usage: tools/build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file> > run.m
# Then:  java -cp <mjvm build/lib> mjvm.cli.Mjvm run.m
# The run ingests CAT+SER+MeSH (no blank lines in any input; stage MARCXML
# naturally has none, strip MeSH desc with grep -v '^$'), validates every
# record against the authority, prints counts to stdout, and writes record
# leaves, authority, tree index, links, and ledger to <dump-file> (device 21
# — mJVM caps stdout at 2MB, dumps go to a file device; GT.M writes the same
# dump via stdout, compare after stripping blanks and sorting).
set -eu
D="$(cd "$(dirname "$0")/.." && pwd)"
CAT="${1:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
SER="${2:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
MESH="${3:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
DUMP="${4:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
{
  printf ' D ILSINGM\n Q\n'
  cat "$D/src/ILS.m"
  sed -e "s|CATFILEPATH|$CAT|" -e "s|SERFILEPATH|$SER|" -e "s|MESHPATH|$MESH|" \
      -e "s|DPATH|$DUMP|" \
      "$D/tools/fixture/mjvm-fixture-body.m"
}
