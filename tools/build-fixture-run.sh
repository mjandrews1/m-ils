#!/bin/bash
# build-fixture-run.sh — assemble the mJVM fixture run file.
# Usage: tools/build-fixture-run.sh <marcxml-file> > run.m
# Then:  java -cp <mjvm build/lib> mjvm.cli.Mjvm run.m > dump.txt
# The run ingests <file> into ^ILS("CAT") (count in ^ILS("TMP","ING"))
# and dumps CAT+SER leaves as TAB-separated lines. Compare with GT.M's
# dump (tools/fixture/gtm-side notes in README-fixture) after sorting.
set -eu
D="$(cd "$(dirname "$0")/.." && pwd)"
F="${1:?usage: build-fixture-run.sh <marcxml-file>}"
{
  printf ' D ILSINGM\n D ILSDUMP\n W "ing="\n W $G(^ILS("TMP","ING"))\n W !\n Q\n'
  cat "$D/src/ILS.m"
  sed "s|/Users/mark/ils-fixture/catplus_sample.xml|$F|" "$D/tools/fixture/mjvm-fixture-body.m"
}
