#!/usr/bin/env python3
"""gen-stress.py — seeded CRUD op-stream generator for the m-ils Phase 1 stress test.

Emits an M routine fragment (label STRESS) with literal ops only — no $R, no
$HOROLOG — so the stream is byte-identical on GT.M and mJVM by construction.
Every op increments a local counter k and appends a journal line to
^ILS("TMP","J",k). Constructs are restricted to the proven-safe set
(AGENTS.md): DO with args, 1-2 arg extrinsics, subscripted SET/GET, straight-
line code with plain local counters.

Usage: gen-stress.py SEED NOPS OUT.m
Read pools come from /tmp/cat_ids.txt and /tmp/ser_ids.txt when present
(extracted from the Phase 0 dump); otherwise small built-in defaults.
"""
import os
import random
import sys

MH_CHOICES = ["Genomics", "Diabetes Mellitus.", "Public Health", "Quantum Bibliography", "Medical Informatics"]
SEARCH_CMDS = [
    "MH GENOMICS", "MH DIABETES MELLITUS.", "FIND DIABETES", "FIND HEALTH",
    "ISSN 0742-3071", "AUTH D003920", "LIST", "LEDGER", "RELATED D003920", "HELP",
    "SHOW CAT __CAT__", "SHOW SER __SER__",
]


def mstr(s):
    assert '"' not in s and "\n" not in s
    return '"' + s + '"'


def load_pool(path, default):
    if os.path.exists(path):
        with open(path) as f:
            v = f.read().split()
            if v:
                return v
    return default


def gen(seed, n, out):
    rng = random.Random(seed)
    cat_pool = load_pool("/tmp/cat_ids.txt", ["1264327", "1267066", "1275455", "7502500", "8101154"])
    ser_pool = load_pool("/tmp/ser_ids.txt", ["1256232", "1260024", "1263300"])

    L = []
    L.append("STRESS ; generated CRUD op stream — seed=%d n=%d (do not edit)" % (seed, n))
    L.append(" N k,r,p")
    L.append(" S k=0")
    syn = 0
    for _ in range(n):
        op = rng.random()
        syn += 1
        sid = "9000%04d" % syn
        if op < 0.25:  # CREATE record via PARSE (incl. trailing-period heading)
            pieces = ["ID - " + sid, "BTI - Stress Title %d" % syn, "AU - Tester, Ann"]
            for _i in range(rng.randint(1, 3)):
                pieces.append("MH - " + rng.choice(MH_CHOICES))
            body = "_$C(10)_".join(mstr(p) for p in pieces)
            L.append(" S k=(k)+1")
            L.append(" D PARSE^ILSREC(%s,\"CAT\",%s)" % (mstr(sid), body))
            L.append(' S ^ILS("TMP","J",k)="CREATE|%s|"_$G(^ILS("TMP","CNT"))' % sid)
        elif op < 0.30:  # CREATE authority
            ui = "D99%04d" % syn
            name = "Stress Heading %d" % syn
            tree = "Z99.%03d" % (syn % 1000)
            L.append(" S k=(k)+1")
            L.append(" D AUTHADD^ILSAUTH(%s,%s,%s)" % (mstr(ui), mstr(name), mstr(tree)))
            L.append(' S ^ILS("TMP","J",k)="AUTHADD|%s|"_($D(^ILS("ANAME",%s,%s)))' % (ui, mstr(name.upper()), mstr(ui)))
        elif op < 0.50:  # READ a field of a real record (CAT or SER)
            if rng.random() < 0.7:
                cid, kind, tag = rng.choice(cat_pool), "CAT", rng.choice(["BTI", "AU", "PB", "DP", "MH"])
            else:
                cid, kind, tag = rng.choice(ser_pool), "SER", rng.choice(["STI", "ISS", "MH"])
            L.append(" S k=(k)+1")
            L.append(' S r=$G(^ILS("%s",%s,"%s",1))' % (kind, mstr(cid), tag))
            L.append(' S ^ILS("TMP","J",k)="READ|%s|%s|%s|"_($L(r))_"|"_($E(r,1,24))' % (kind, cid, tag))
        elif op < 0.70:  # SEARCH via DISPATCH
            cmd = rng.choice(SEARCH_CMDS).replace("__CAT__", rng.choice(cat_pool)).replace("__SER__", rng.choice(ser_pool))
            L.append(" S k=(k)+1")
            L.append(" S r=$$DISPATCH^ILSTUI(%s)" % mstr(cmd))
            L.append(' S ^ILS("TMP","J",k)="SEARCH|%s|"_($L(r))_"|"_($E(r,1,40))' % cmd.replace(" ", "_"))
        elif op < 0.85:  # UPDATE: PUT overwrite or SEQPUT new MH
            cid = rng.choice(cat_pool) if rng.random() < 0.5 else sid
            if rng.random() < 0.5:
                L.append(" S k=(k)+1")
                L.append(' D PUT^ILSREC(%s,"CAT","DP",1,"2026")' % mstr(cid))
                L.append(' S ^ILS("TMP","J",k)="UPD|%s|"_($D(^ILS("CAT",%s,"DP",1)))' % (cid, mstr(cid)))
            else:
                L.append(" S k=(k)+1")
                L.append(' D SEQPUT^ILSREC(%s,"CAT","MH","Stress Heading %d")' % (mstr(cid), syn))
                L.append(' S ^ILS("TMP","J",k)="SEQPUT|%s"' % cid)
        elif op < 0.95:  # DELETE (synthetic ids often nonexistent)
            cid = rng.choice(cat_pool) if rng.random() < 0.5 else sid
            L.append(" S k=(k)+1")
            L.append(' S p=$D(^ILS("CAT",%s))' % mstr(cid))
            L.append(' D KILLREC^ILSREC(%s,"CAT")' % mstr(cid))
            L.append(' S ^ILS("TMP","J",k)="DEL|%s|"_(p)_"->"_($D(^ILS("CAT",%s)))' % (cid, mstr(cid)))
        else:  # VALIDATE a record (touches LINK/LEDG)
            cid = rng.choice(cat_pool) if rng.random() < 0.7 else sid
            L.append(" S k=(k)+1")
            L.append(' S r=$$VALIDATE^ILSAUTH(%s,"CAT")' % mstr(cid))
            L.append(' S ^ILS("TMP","J",k)="VAL|%s|"_(r)' % cid)
    L.append(" Q")
    with open(out, "w") as f:
        f.write("\n".join(L) + "\n")
    print("wrote %s: %d ops (seed=%d)" % (out, n, seed))


if __name__ == "__main__":
    gen(int(sys.argv[1]), int(sys.argv[2]), sys.argv[3])
