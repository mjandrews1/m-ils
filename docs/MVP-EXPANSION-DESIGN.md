# m-ils MVP expansion — design doc: authorization/accounts, circulation, ILL

**Status:** design only — no code yet (owner decision 2026-11-01, tracked as m-ils#1).
**Scope:** minimum-viable (d) authorization/accounts, (e) circulation, (f) ILL, on top of the existing MVP core (NLM CATLINE/SERLINE ingest, MeSH authority, BM25 search, web + TUI, tieredstore/comdb2 store).

## 0. Current state (what this builds on)

- Record store: `^ILS(kind,recid,tag,seq)=value` with `kind` = `CAT` (bib) | `SER` (serial); helpers `PUT/GET/SEQPUT/KILLREC/PARSE/FORMAT` in `ILSREC.m`.
- MeSH authority control linked to records: `ILSAUTH.m` (`^MESH` UIs, `$$VALIDATE`).
- BM25 discovery search: `ILSEARCH.m` (`^PTERM`-style index rebuilt by `REINDEX`).
- Web UI: pure HTML core `ILSHTML.m` (routes `GET / /catalog /serials /rec/CAT/<id> /rec/SER/<id> /auth/<ui> /search/<word>`) served by two transports: `ILSWEB.m` (GT.M sockets, U01:8282) and `ILSWEBJ.m` (mJVM sockets, Mac:8282).
- TUI: `ILSTUI.m` `DISPATCH(cmd)` — pure, returns `$C(10)`-joined reply; verbs `HELP DEMO LIST SHOW AUTH MH FIND ISSN VALIDATE LEDGER RELATED QUIT`.
- Conformance oracle: `ILSTEST.m` battery, must print identical `Tnn ok` lines under both engines (GT.M V7.2-001 and mJVM).
- Verified state: Phase 0 fixture 138,966 nodes byte-identical dual-engine; Phase 1 CRUD stress 2,000 ops byte-identical; web live on both engines. Ingest perf 17.5s mJVM vs 6.3s GT.M (item 5 of the master critical path — still open, gates MVP close-out).

## 1. Binding constraints (from AGENTS.md + master critical path)

1. **Dual-engine:** every M routine must run under GT.M V7.2-001 *and* mJVM. Avoid known MFrontend bug constructs (no QUIT-in-FOR, no negative-increment FOR, no comma-IF, no IF-in-dotted-block, one command per IF line, parenthesized mixed arithmetic — M is strictly left-to-right, single-arg WRITEs). Reference style: `mjvm/tools/pi.m`, `e.m`, `dstruct.m`.
2. **Verification:** every functional change extends `ILSTEST.m` and must print identical all-OK output under both engines before commit (`mumps -run ILSTEST` / `mjvm.cli.Mjvm`).
3. **Store:** persistent store = tieredstore (default) + comdb2 `ilsdb` cluster (3-node, U01/U02/U04); **no sqlite/h2/mapdb**. M globals live in the engine's store; comdb2 is for the relational/ops side if needed — for MVP keep everything in globals (simpler, dual-engine identical).
4. **Perf gate:** MVP is not "done" until the ingest gap closes (item 5); new code must keep expressions short/simple (≤31 chars hits the mJVM fast path; avoid `$SELECT` — AST fallback) and avoid per-call re-parsing hot spots.
5. One writer per repo; `MFrontend.java` (mjvm) is user-reserved — not relevant here but noted.

## 2. Data model (additive — no migration of existing `^ILS` CAT/SER data)

All new data under `^ILS` new subtrees and `^ILSIDX` indexes, following the existing `(…,field)=value` flat style:

| Global | Layout | Purpose |
|--------|--------|---------|
| `^ILS("PAT",id,field)=value` | fields: `NAME EMAIL ROLE SALT HASH CREATED` | patron/librarian accounts. `ROLE` = `patron` \| `librarian` |
| `^ILS("SES",token)=patid_":"_expiry` | session tokens | web session / TUI login state |
| `^ILS("ITEM",barcode)=catid` | copy/item record: barcode → bib id | physical items (one bib may have many items) |
| `^ILS("LOAN",loanid,field)=value` | `PATRON ITEM OUT DUE RETURNED RENEWED` | circulation loans |
| `^ILS("HOLD",holdid,field)=value` | `PATRON CATID PLACED STATUS` | holds queue. `STATUS` = `queued` \| `filled` \| `cancelled` |
| `^ILS("ILL",reqid,field)=value` | `DIR PATRON CATID STATUS PLACED SHIPPED RECEIVED RETURNED PARTNER NOTE` | ILL requests. `DIR` = `out` (we ask) \| `in` (we lend). `STATUS` = `pending` \| `shipped` \| `received` \| `returned` \| `cancelled` |
| `^ILSIDX("PATBYNAME",name)=id` | name index | patron lookup by name (case-folded key) |
| `^ILSIDX("ITEMBYBIB",catid,barcode)=""` | bib → items | list copies of a bib |
| `^ILSIDX("LOANBYITEM",barcode,loanid)=""` | item → loans | item history / availability |
| `^ILSIDX("LOANBYPAT",patid,loanid)=""` | patron → open loans | "my loans" |
| `^ILSIDX("HOLDBYCAT",catid,holdid)=""` | bib → hold queue (FIFO by `PLACED`) | hold queue per title |
| `^ILSIDX("ILLBYPAT",patid,reqid)=""` | patron → ILL requests | "my ILL" |

ID allocation: `^ILS("SEQ","PAT"|"LOAN"|"HOLD"|"ILL")` counter, `$I(^ILS("SEQ",k))` — same pattern as `SEQPUT`'s `$O(...,-1)+1` but a dedicated counter global (simpler, dual-engine safe). Token generation: `token = $$HASH(name_":"_$H_":"_$J_":"_counter)` — unpredictable enough for MVP.

## 3. (d) Authorization / accounts — minimum viable

- **Accounts:** `$$CREATEPAT^ILSPAT(name,email,role,password)` → stores `SALT` (random) + `HASH` = iterated salted hash (see below); returns id or `""`+error in `^ILS("TMP","ERR")`.
- **Hash:** M has no crypto stdlib. MVP: pure-M salted iterated mixing hash (e.g., 1000 rounds of FNV-1a-style mixing over `salt_password`, output hex) implemented once in `ILSPAT.m` as `$$HASH(s)`. Never store plaintext. Pluggable: `$$VERIFY` calls `$$HASH` — a later upgrade can swap in gtmcrypt on the GT.M side without changing call sites (document the tradeoff: MVP hash is not cryptographic-grade; acceptable for a demo library, not for real patron data).
- **Login:** `$$LOGIN^ILSPAT(name,password)` → verifies, creates `^ILS("SES",token)`, returns token or `""`. `$$CHECK^ILSPAT(token)` → patid or `""` (checks expiry; expiry = `$H + 7 days`).
- **Roles:** `patron` can: view catalog/search, see own loans/holds/ILL, place holds, request ILL. `librarian` can additionally: manage items, checkout/checkin/renew, fill/cancel holds, manage ILL lifecycle, create accounts. Enforcement point: one pure guard `$$CAN^ILSPAT(token,action)` used by every mutating entry point.
- **Surfaces:** web — `POST /login` sets a session cookie (or `Authorization: Bearer <token>` header); all mutating routes (`/loan`, `/hold`, `/ill`, admin routes) require it. TUI — `LOGIN <name>` prompts password (TUI reads with `R *`? keep simple: `LOGIN name password` for MVP, documented as demo-grade), stores token in a local var for the session. HTML pages get a `$$PAGE^ILSHTML(path,token)` wrapper that renders a login banner when unauthenticated.

## 4. (e) Circulation — minimum viable

Module `ILSCIRC.m`, all entry points guarded by `$$CAN`:

- Items: `$$ADDITEM^ILSCIRC(catid,barcode)` (librarian), `$$ITEMS^ILSCIRC(catid)` → list.
- `$$CHECKOUT^ILSCIRC(token,barcode)` → creates `^ILS("LOAN",id,...)` with `OUT=$H`, `DUE=$H+LOAN_DAYS` (single default 14 days + librarian override), only if item status is `available` (no open loan, no filled hold ahead of requester... MVP: allow checkout if no open loan; holds are advisory). Status derivable: open loan exists ⇒ `on-loan`.
- `$$CHECKIN^ILSCIRC(token,barcode)` → sets `RETURNED=$H`, frees item; if a queued hold exists for the bib, mark the first hold `filled` (item goes to `in-transit`/hold shelf — MVP: mark hold filled, item reserved).
- `$$RENEW^ILSCIRC(token,loanid)` → once (`RENEWED=1`), only if no hold queued on that bib; `DUE += 14`.
- `$$HOLD^ILSCIRC(token,catid)` (patron) → append to `^ILSIDX("HOLDBYCAT")` queue with `PLACED=$H` (FIFO by placement time; ties by holdid).
- Queries: `$$MYLOANS^ILSCIRC(token)`, `$$MYHOLDS^ILSCIRC(token)`, `$$ITEMSTATUS^ILSCIRC(barcode)` → `available|on-loan|reserved|missing`.
- Overdue: `$$OVERDUE^ILSCIRC()` → list of loans with `DUE<$H` and no `RETURNED` (display-only; **no fines** — out of scope).

## 5. (f) ILL — minimum viable

Module `ILSILL.m`:

- Outgoing: `$$ILLREQ^ILSILL(token,catid,partner)` (patron) → `^ILS("ILL",id)` with `DIR=out`, `STATUS=pending`, linked patron+bib+partner.
- Lifecycle (librarian): `pending → shipped → received → returned` (outgoing) or `pending → shipped → returned` (incoming, we lend: `DIR=in` created when a partner requests our item). Transitions via `$$ILLSET^ILSILL(token,reqid,newstatus)` with a legal-transition check (pure state machine, table-driven).
- Incoming: `$$ILLIN^ILSILL(token,barcode,partner,duedate)` — librarian records a loan of our item to a partner (uses ILSCIRC checkout to a pseudo-patron `ILL:<partner>`? MVP: create the ILL `in` record directly with the item).
- Transport: MVP = email-based — the ILL record carries `PARTNER` (email address); the UI shows a "notify partner" action that renders the request text (minimal ISO 18876-style fields) to copy/email. No billing, no ISO 15161, no network membership automation.
- Queries: `$$MYILL^ILSILL(token)`, `$$ILLQUEUE^ILSILL(token)` (librarian).

## 6. Surface mapping

| Concern | M API (pure, dual-engine) | Web route (ILSHTML) | TUI verb (ILSTUI) |
|---|---|---|---|
| Auth | `ILSPAT`: CREATEPAT/LOGIN/CHECK/CAN | `POST /login`, bearer header, login banner | `LOGIN name pw`, `LOGOUT` |
| Accounts | `ILSPAT`: `$$WHOAMI(token)` | `GET /account` | `WHOAMI` |
| Circulation | `ILSCIRC`: ADDITEM/ITEMS/CHECKOUT/CHECKIN/RENEW/HOLD/MYLOANS/MYHOLDS/ITEMSTATUS/OVERDUE | `GET /items/<catid>`, `POST /checkout`, `POST /checkin`, `POST /renew`, `POST /hold`, `GET /loans`, `GET /overdue` | `ITEMS`, `OUT <barcode>`, `IN <barcode>`, `RENEW <loanid>`, `HOLD <catid>`, `LOANS`, `OVERDUE` |
| ILL | `ILSILL`: ILLREQ/ILLIN/ILLSET/MYILL/ILLQUEUE | `GET /ill`, `POST /ill/req`, `POST /ill/<id>/<status>` | `ILLREQ <catid> <partner>`, `ILL`, `ILLSET <id> <status>` |

All HTML rendering stays in `ILSHTML.m` as pure `$$…HTML(path,token)` functions (testable under both engines, like today); transports unchanged.

## 7. Testing & rollout

- Extend `ILSTEST.m` with T15+ : account create/login/verify (incl. wrong-password), role guard, checkout/checkin/renew rules, hold queue FIFO + renew-blocked-by-hold, item status transitions, ILL lifecycle incl. illegal transition rejection, session expiry. Output must be line-identical across engines.
- Web smoke: `curl` both `:8282` endpoints (GT.M U01, mJVM Mac) — login, one checkout, one hold, one ILL req; compare HTML bodies.
- Rollout: additive globals only; `DEMO` seeds 2 patrons (patron + librarian, documented demo password), a few items, one loan, one hold, one ILL request. No migration of existing CAT/SER data; `KILLALL` already exists for reset.
- Perf: re-run `tools/build-fixture-run.sh` dual-engine after item 5 lands; new code keeps hot expressions short and avoids `$SELECT`/byref in hot paths.

## 8. Open questions (decide at implementation start)

1. Hash: pure-M iterated FNV vs GT.M gtmcrypt plugin (mJVM would need a Java-side impl) — recommend pure-M for dual-engine parity, document upgrade path.
2. Sessions in globals (`^ILS("SES",…)`) vs comdb2 — recommend globals for MVP (identical on both engines); comdb2 only if session volume demands.
3. ILL partner registry: free-text email for MVP vs `^ILS("PARTNER",email)=name` — recommend the tiny registry global (cheap, makes the UI honest).
4. Multi-item holds vs single-item checkout when holds exist — MVP: checkout allowed if no open loan; holds advisory (documented).

## 9. Out of scope (unchanged)

SSO/LDAP/OAuth, password-reset email flows (staff-side reset only), fines/billing, SIP2/NCIP self-service, complex loan rules, acquisitions, Z39.50/federated search, full MARC editor, ILL billing/ISO 15161, multi-branch.
