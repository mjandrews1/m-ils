#!/bin/bash
# build-web-run.sh — assemble the mJVM web-server run file (fixture + ILSWEBJ loop).
# Usage: tools/build-web-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml> > run.m
# Then:  java -cp <mjvm build/lib> mjvm.cli.Mjvm run.m &     (serves :8282 forever)
set -eu
D="$(cd "$(dirname "$0")/.." && pwd)"
CAT="${1:?usage: build-web-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml>}"
SER="${2:?usage: build-web-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml>}"
MESH="${3:?usage: build-web-run.sh <cat-marcxml> <ser-marcxml> <mesh-desc-xml>}"
{
  printf ' D INGEST\n D ILSWEBJ\n Q\n'
  cat "$D/src/ILS.m"
  sed -e "s|CATFILEPATH|$CAT|" -e "s|SERFILEPATH|$SER|" -e "s|MESHPATH|$MESH|" "$D/tools/fixture/mjvm-ingest-body.m"
}
