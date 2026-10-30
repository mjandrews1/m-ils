#!/bin/bash
# build-stress-run.sh — assemble the mJVM Phase 1 CRUD-stress run file.
# Usage: tools/build-stress-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> <stress.m> <dump-file> > run.m
# Then:  java -cp <mjvm build/lib> mjvm.cli.Mjvm run.m
# Ingests the fixture, runs the generated op stream (STRESS), dumps state +
# journal to <dump-file>. Compare with GT.M's run of the SAME stress.m after
# stripping blanks and sorting (differential oracle).
set -eu
D="$(cd "$(dirname "$0")/.." && pwd)"
CAT="${1:?usage: build-stress-run.sh <cat> <ser> <mesh> <stress.m> <dump-file>}"
SER="${2:?usage: build-stress-run.sh <cat> <ser> <mesh> <stress.m> <dump-file>}"
MESH="${3:?usage: build-stress-run.sh <cat> <ser> <mesh> <stress.m> <dump-file>}"
STRESS="${4:?usage: build-stress-run.sh <cat> <ser> <mesh> <stress.m> <dump-file>}"
DUMP="${5:?usage: build-stress-run.sh <cat> <ser> <mesh> <stress.m> <dump-file>}"
SUB() { sed -e "s|CATFILEPATH|$CAT|" -e "s|SERFILEPATH|$SER|" -e "s|MESHPATH|$MESH|" -e "s|DPATH|$DUMP|" "$1"; }
{
  printf ' D INGEST\n D STRESS\n D DUMPTO\n Q\n'
  cat "$D/src/ILS.m"
  SUB "$D/tools/fixture/mjvm-ingest-body.m"
  # GT.M-side stream carries ^ROUTINE qualifiers; strip them for the carrier
  sed -e 's/\^ILSREC//g' -e 's/\^ILSAUTH//g' -e 's/\^ILSEARCH//g' -e 's/\^ILSMARC//g' \
      -e 's/\^ILSMESH//g' -e 's/\^ILSTUI//g' "$STRESS"
  SUB "$D/tools/fixture/mjvm-dump-body.m"
}
