#!/usr/bin/env python3
"""Offline ABI regression runner; host executables only, no iOS build."""
import json, pathlib, shutil, subprocess, tempfile, sys
sys.dont_write_bytecode = True
R = pathlib.Path(__file__).resolve().parents[1]
results = []
def run(argv):
    p = subprocess.run(argv, cwd=R, text=True, capture_output=True)
    results.append({"command":argv,"returncode":p.returncode,
                    "stdout":p.stdout,"stderr":p.stderr})
    if p.returncode: raise RuntimeError("failed: " + " ".join(argv))
try:
    cc = shutil.which("clang")
    if not cc: raise RuntimeError("clang is required for ext_vector_type ABI tests")
    with tempfile.TemporaryDirectory(prefix="clock-abi-host-") as d:
        for src in ("abi/test_abi.c", "abi/test_reader_edges.c", "field/test_reader.c"):
            exe = str(pathlib.Path(d)/pathlib.Path(src).stem)
            extra = ["field/clock_field_reader.c"] if src == "field/test_reader.c" else []
            run([cc,"-std=c11","-Wall","-Wextra","-Werror","-O2",src,*extra,"-o",exe])
            run([exe])
        run([sys.executable,"-B","field/test_clock_field_protocol.py"])
    status = "passed"
except Exception as exc:
    status = "failed"
    results.append({"error":str(exc)})
(R/"abi/host-test-results.json").write_text(json.dumps(
    {"status":status,"scope":"Linux host only; not iOS or GPU", "results":results},indent=2)+"\n")
print(status + ": " + str(len(results)) + " commands; abi/host-test-results.json")
if status != "passed": sys.exit(1)
