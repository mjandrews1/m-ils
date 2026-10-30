# AGENTS.md — Agent policy for this repository

This repository is worked on by AI coding agents (Mistral Vibe and others). The policy below is binding for every agent and every change.

## Error-handling policy

Errors must throw or be recorded in a ledger — never caught-and-continued, never defaulted. Never modify an assertion, expected value, or exclusion to make a test pass; propose the change instead. Every bug fix ships with a test that fails before it.

## M coding constraints

All M code must run under BOTH engines this project targets (mJVM native and GT.M V7.2-001). Until the tracked MFrontend defects (mjvm#4, #13, #16–#19, #21–#25, #29–#31) are fixed, code must avoid the known-bug constructs:
- No QUIT inside FOR bodies; no negative-increment FOR; no comma-IF conditions.
- No IF inside dotted blocks; no multi-command same-line FOR bodies.
- One command per IF line (split multi-command IFs into separate IF lines).
- M arithmetic is strictly left-to-right — parenthesize every mixed expression.
- Single-argument WRITEs on separate lines for structured output.
Proven-safe reference style: mjvm/tools/pi.m, tools/e.m, tools/dstruct.m.

## Verification

Every functional change updates or adds to the self-check battery (src/ILSTEST.m) and must pass under both mJVM and GT.M before commit. The battery is the project's conformance oracle: `mumps -run ILSTEST` (GT.M) / `mjvm.cli.Mjvm` (mJVM) must print all-OK lines identical across engines.
