#!/bin/bash
# build-fixture-run.sh — assemble the mJVM Phase 0 fixture run file.
# Usage: tools/build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file> > run.m
# Then:  java -cp <mjvm build/lib> mjvm.cli.Mjvm run.m
# Ingests CAT+SER+MeSH (no blank lines in any input; stage MARCXML naturally
# has none, strip MeSH desc with grep -v '^$'), validates every record against
# the authority, prints counts to stdout, writes all dumps to <dump-file>.
set -eu
D="$(cd "$(dirname "$0")/.." && pwd)"
CAT="${1:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
SER="${2:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
MESH="${3:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
DUMP="${4:?usage: build-fixture-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <dump-file>}"
SUB() { sed -e "s|CATFILEPATH|$CAT|" -e "s|SERFILEPATH|$SER|" -e "s|MESHPATH|$MESH|" -e "s|DPATH|$DUMP|" "$1"; }
{
  printf ' D INGEST\n D DUMPTO\n Q\n'
  cat "$D/src/ILS.m"
  SUB "$D/tools/fixture/mjvm-ingest-body.m"
  SUB "$D/tools/fixture/mjvm-dump-body.m"
}
