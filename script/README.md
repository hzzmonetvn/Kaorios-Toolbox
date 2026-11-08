# `script/` — patch tooling reference

Developer reference for every program under `script/`. It explains what each file does, how the
files depend on each other, which invariants each one enforces, and how to run the regression
suite. End-user procedures live in [`Toolbox-docs/2.0.6+/`](../Toolbox-docs/2.0.6+/); this file
does not repeat them.

All tools are host-side. None of them prove that a real ROM boots or that a device feature works.
See [Evidence boundaries](#evidence-boundaries).

---

## 1. What lives here

| Layer | Files | Needs external tools |
|---|---|---|
| ROM smali patchers (single class) | `patch-activitythread-a17.py`, `patch-services-a17.py`, `patch-systemserver-a17.py`, `patch-installer-source.py` | no |
| Patcher front end | `kaorios_patcher.py`, `kaorios_patcher_a17.py`, `framework_hook_manifest.py` | no |
| JAR pipelines | `patch-framework-a17-artifact.sh`, `patch-services-a17-artifact.sh`, `patch-framework-a17-plan.py`, `patch-framework-a17-smali.py`, `patch-dex-artifact-plan.py` | baksmali + smali JARs, `java`, `zip`, `unzip` |
| Verifiers | `verify-framework-a17-hooks.py`, `verify-services-a17-hooks.py`, `verify-systemserver-a17-hooks.py`, `verify-payload-abi.py` | no |
| Release and artifact helpers | `package_patcher_v2061.py`, `publish-verified-artifact.py` | no |
| Standalone utilities | `validate_keybox.py`, `check-advanced-policy-sepolicy.py` (+ `.sh`), `bionic_fakelock_patcher.py` | `bionic_fakelock_patcher.py` needs `keystone-engine` |
| Regression tests | `test_*.py` | optional `KAORIOS_SMALI_CLASSPATH` for two assembly tests |

**Python 3.9 or newer.** The floor is set by builtin generics in annotations (`tuple[str, bool]` in
files without `from __future__ import annotations`) and by `str.removesuffix` in the PIF updater.
`X | Y` unions appear only in files that do start with the future import, so they are not the
constraint. The suite is run with `python3 -m unittest discover -s script` and, from the scripts’
own shebangs, `python3 -I` for isolated entry points.

---

## 2. Dependency graph

```
kaorios_patcher.py ──┬─> patch-activitythread-a17.py
                     ├─> patch-services-a17.py ──> patch-installer-source.py
                     ├─> patch-systemserver-a17.py
                     ├─> verify-framework-a17-hooks.py ──> framework_hook_manifest.py
                     │                                 └──> patch-framework-a17-plan.py
                     ├─> verify-services-a17-hooks.py ──> patch-services-a17.py
                     ├─> verify-systemserver-a17-hooks.py ──> patch-systemserver-a17.py
                     └─> verify-payload-abi.py            (only with --payload-smali)

kaorios_patcher_a17.py ──runpy──> kaorios_patcher.py   (legacy filename alias)

patch-framework-a17-smali.py ──> verify-framework-a17-hooks.py ──> kaorios_patcher.py
patch-framework-a17-plan.py  ──> framework_hook_manifest.py
patch-dex-artifact-plan.py   ──loads as module──> patch-framework-a17-plan.py

patch-framework-a17-artifact.sh ─┬─> patch-framework-a17-plan.py   (validate, plan, import, verify)
                                 ├─> patch-framework-a17-smali.py   (patch callers)
                                 ├─> verify-framework-a17-hooks.py  (caller + callee)
                                 ├─> verify-payload-abi.py          (facade ABI)
                                 └─> publish-verified-artifact.py   (atomic publish)

patch-services-a17-artifact.sh ─┬─> patch-dex-artifact-plan.py     (plan, verify untouched)
                                ├─> patch-services-a17.py
                                ├─> patch-systemserver-a17.py
                                ├─> verify-services-a17-hooks.py
                                ├─> verify-systemserver-a17-hooks.py
                                └─> publish-verified-artifact.py
```

Every sibling import uses `importlib.util.spec_from_file_location` on a path built with
`Path(__file__).with_name(...)`. There is no package and no `PYTHONPATH` requirement; the files
must stay siblings in one directory. If a sibling is missing, `kaorios_patcher._load_sibling`
returns `None` and the corresponding patch function raises `ValueError` naming the missing file.

---

## 3. `kaorios_patcher.py` — the front end

Canonical entry point for Android 13–17. It does not contain patch logic for the individual
classes; it dispatches to the sibling patchers and runs the verifiers.

```bash
# non-interactive
python3 -I script/kaorios_patcher.py <smali-dir-or-file> \
  --android-version 17 --mode 1 --no-delay \
  [--update] [--payload-smali /path/to/disassembled-payload]

# interactive, when path or mode is omitted
python3 -I script/kaorios_patcher.py
```

| Flag | Effect |
|---|---|
| `path` (positional, optional) | smali tree or a single `.smali` file |
| `--mode {1,2,3}` | 1 = hooks (A13–A17), 2 = Build fields (A17 only), 3 = 1 + 2 (A17 only) |
| `--android-version {13..17}` | selects nothing by itself; hooks remain layout/verifier driven |
| `--update`, `-u` | rewrite a recognised existing hook; unknown layouts still fail closed |
| `--no-delay` | disables animated output only |
| `--payload-smali` | verify facade descriptors against a disassembled payload before writing |

Behaviour worth knowing before you change it:

- **Mode 2/3 on Android < 17 is rejected** in non-interactive mode via `parser.error` (exit 2),
  and in interactive mode via `sys.exit(1)`.
- **Directory runs preflight before writing.** All candidates are patched into a
  `TemporaryDirectory`, the payload ABI check and the tree-level verifiers run against that staged
  copy, and only then are the originals written (`kaorios_patcher.py:771-803`). A failed preflight
  leaves every input byte-identical.
- **Concurrent modification is detected**: after preflight, each planned file is re-read and
  compared with the preflight content (`kaorios_patcher.py:800-803`). A mismatch aborts with no
  writes.
- **Ambiguous inputs are rejected, not resolved**: duplicate target filenames anywhere in the tree
  and any symlinked target abort the run (`kaorios_patcher.py:762-769`).
- **A run that finds no target returns failure**, not success (`kaorios_patcher.py:836-838`).
- Status vocabulary: `PATCHED`, `ALREADY_PATCHED`, `UNSUPPORTED_LAYOUT`, `FAILED`
  (`kaorios_patcher.py:67-73`). `UNSUPPORTED_LAYOUT` and `FAILED` both make the process exit 1.
- Writes are per file. This is **not** a transactional multi-file write: a filesystem error midway
  leaves earlier files already written. Discard the working copies and restart from stock.

Exit codes: `0` all targets patched or already valid, `1` any failure, unsupported layout, missing
target, preview/ABI rejection, or unreadable path, `2` argparse rejection.

`patch_app_pkg_manager` still exists for `hasSystemFeature`, but mode 1 no longer targets
`ApplicationPackageManager.smali` — the function is reachable only through
`verify_target_content` for ROMs patched by an older recipe.

## 4. Single-class patchers

Each takes smali text and returns `(new_text, changed)`, raising `ValueError` on anything it
cannot prove. They are usable standalone and are also loaded by `kaorios_patcher.py`.

### `patch-activitythread-a17.py`

```bash
python3 -I script/patch-activitythread-a17.py path/to/ActivityThread.smali
```

Inserts `KaoriosHook;->initActivityThread(Ljava/lang/Object;)V` immediately after the single
`iput-object ... Landroid/app/ActivityThread;->mBoundApplication:` inside
`handleBindApplication`. Picks `invoke-static` or `invoke-static/range` from the physical register
number. Verification requires that the hook immediately follow the anchor and that no switch or
back-edge label sits in the method.

### `patch-systemserver-a17.py`

```bash
python3 -I script/patch-systemserver-a17.py SystemServer.smali [--check-only] [--update]
```

Injects `invoke-static {}, ...->initSystemServer()V` immediately before the single
`Looper;->loop()V` in `run()V`. Between the hook and the anchor only blank lines, `#` comments and
`.line` / `.local` / `.end local` / `.restart local` directives may appear. `--check-only`
verifies without writing.

### `patch-services-a17.py`

```bash
python3 -I script/patch-services-a17.py ComputerEngine.smali [--update]
```

Patches the HMA visibility hook (`shouldHideAppListForCaller`) into the recognised
`shouldFilterApplication` overload, then — **only if the class contains
`getInstallerPackageName` or `getInstallSourceInfo`** — delegates to `patch-installer-source.py`.
After either path it re-runs its own `verify`, so a partially patched method cannot be returned.

### `patch-installer-source.py`

```bash
python3 -I script/patch-installer-source.py ComputerEngine.smali [--verify-only]
```

The strictest patcher in the tree. It runs a small abstract interpreter over the method body,
tagging registers as `receiver` / `target` / `uid` / `user` / `source` / `installer` / `info` /
`null` / `unknown`, and only patches a constructor or return whose argument provenance is proven
to come from the stock `ComputerEngine.getInstallSource` read. Iteration is a worklist with union
merging at joins.

It refuses, by design, on: `switch`, `fill-array`, `.catch`, any exceptional control flow, a UID
read after `clearCallingIdentity`, an unknown `InstallSourceInfo` constructor overload, a
non-unique return site, or a register range that mixes `v` and `p` prefixes. If the installer pair
is absent the caller skips this file entirely — that is a documented skip, not a verified pass.

## 5. JAR pipelines

Both shell scripts follow the same shape and are the only supported way to produce a rebuilt JAR
from this repository.

```bash
# framework (also imports payload classes)
script/patch-framework-a17-artifact.sh \
  --input framework.jar --output framework-patched.jar \
  --kaorios-dex classes.dex \
  --baksmali baksmali.jar --smali smali.jar \
  [--api 37] [--smali-api 34] [--update]

# services (no payload import)
script/patch-services-a17-artifact.sh \
  --input services.jar --output services-patched.jar \
  --baksmali baksmali.jar --smali smali.jar \
  [--api 37] [--smali-api 34] [--update]
```

Order of operations in `patch-framework-a17-artifact.sh`:

1. Disassemble the payload DEX, then `patch-framework-a17-plan.py validate-kaorios-smali`.
2. Unpack the input JAR.
3. `plan` with `--require-all-callers`, saving both the pre-patch hashes and the plan JSON.
4. Disassemble every DEX the plan names as modified.
5. `import-payload` (exact descriptors only), then `patch-framework-a17-smali.py` for callers.
6. Reassemble each modified DEX and run `verify-plan` for exact class inventories plus untouched
   DEX hashes.
7. Pack the candidate JAR, re-extract it, disassemble again, and verify callers, callee, Advanced
   Policy classes, and facade ABI **from the re-extracted candidate**, not the working tree.
8. Publish only after every check passes.

`patch-services-a17-artifact.sh` is the same pattern without payload import; it branches on
whether `ComputerEngine` and `SystemServer` share an owner DEX, patches both, verifies untouched
DEX hashes twice (working copy and re-extracted candidate), then publishes.

`--api` and `--smali-api` are deliberately separate, but not symmetric: **only `--smali-api` is
passed to baksmali/smali.** `--api` is the target-API label, it defaults to `37`, it supplies the
default for `--smali-api` when that is omitted, and it appears in the banner line — nothing else
reads it. The repository’s tested pairing for the DEX 040 case is `--api 37 --smali-api 34`, which
means the toolchain is invoked with `--api 34`. If you pass only `--api`, you are also choosing the
opcode API, so pass both when the two differ.

Both scripts reject, with exit code 2, an output that is the same path as the input, a hard link to
it, or a symlink to it (`realpath -m` comparison plus `-ef`), an unknown flag, and a non-positive
API. Required file arguments are checked with `test -f`; missing ones abort under `set -e`.

### Supporting modules

- **`patch-framework-a17-plan.py`** — subcommands `validate-kaorios-smali`, `plan`,
  `import-payload`, `verify-plan`, `verify-untouched`, `verify-merged-classes`. `plan` requires
  exactly one DEX defining `ActivityThread`, rejects duplicate class definitions across DEXes, and
  refuses a payload that would replace a required caller. It prints four
  `KEY=value` lines (`MODIFIED_DEXES`, `OWNER_DEX`, `KAORIOS_SLOT`, `KAORIOS_ACTION`) that the
  shell pipelines parse.
- **`patch-dex-artifact-plan.py`** — the services-side subset of the above: `plan` and
  `verify-untouched`, printing `OWNER_DEX_<Class>=` per target and `MODIFIED_DEXES=`. It reuses
  the shared DEX class parser from `patch-framework-a17-plan.py` rather than duplicating it.
- **`patch-framework-a17-smali.py`** — patches all three callers listed in
  `framework_hook_manifest.py`, staging every result before writing any of them, then re-verifies
  the tree.
- **`framework_hook_manifest.py`** — the single source of truth for the required framework
  callers and the patcher function that implements each:

  | Caller | Patcher |
  |---|---|
  | `android/app/ActivityThread.smali` | `patch_activity_thread` |
  | `android/app/Instrumentation.smali` | `patch_instrumentation` |
  | `android/provider/Settings$NameValueCache.smali` | `patch_name_value_cache` |

  Both the planner and the tree patcher read this dict; adding a caller here changes both.

## 6. Verifiers

```bash
python3 -I script/verify-framework-a17-hooks.py <smali-root> [--caller-only] [--skip-advanced-policy]
python3 -I script/verify-services-a17-hooks.py <smali-root>
python3 -I script/verify-systemserver-a17-hooks.py <smali-root>
python3 -I script/verify-payload-abi.py <smali-root> [--payload-smali <payload-root>]
```

- Each framework/services verifier locates its class with `rglob`, requires **exactly one** match,
  and then delegates the actual assertions to the matching patcher’s `verify`, so patch and
  verification logic cannot drift apart.
- `verify-framework-a17-hooks.py` defaults to full mode: all three callers, the
  `KaoriosHook.initActivityThread(Ljava/lang/Object;)V` callee, and the eight Advanced Policy
  classes. `--caller-only` skips the callee and Advanced Policy checks. `--skip-advanced-policy`
  skips only the latter.
- `verify-payload-abi.py` scans comment- and string-stripped lines for
  `invoke-static[/range] {…}, Landroid/security/kaorios/KaoriosHook;-><sig>` and requires that the
  supplied payload declares each signature `public static` and neither `abstract` nor `native`.
  It requires exactly one payload facade. **Without `--payload-smali` it verifies the patched tree
  against itself**, which is a structural check only — the patcher prints an explicit
  “Caller-only; payload ABI not verified” warning for that case.
- A missing facade callee is a hard failure even when the other verifiers pass.

## 7. Release and artifact helpers

- **`package_patcher_v2061.py`** — builds the release ZIP from the current checkout.

  ```bash
  python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip
  ```

  Fail-closed on: symlinked source root, symlinked output parent, an output that already exists,
  duplicate members, absolute paths, backslashes, `.`/`..` components, symlinked members, and
  missing or non-file members. Entries are sorted, timestamped `1980-01-01`, stored uncompressed,
  and take their mode from the source execute bit, so two builds of the same tree are
  byte-identical (asserted by `test_package_patcher_v2061.py`). `README.txt` inside the archive is
  sourced from `script/patcher_v2061_README.txt`. Python failures surface as an uncaught
  `ValueError` and a non-zero exit.

- **`publish-verified-artifact.py`** — `<candidate_path> <destination_path>`. Copies into a
  temporary file **in the destination directory**, forces mode `0644`, `fsync`s, then
  `os.replace`s, giving a same-filesystem atomic publish regardless of where the candidate lives.
  Directory `fsync` is best-effort. Returns `0` on success, `1` on a usage error or any exception,
  and removes the staging file on failure. It does **not** decide whether the candidate is
  trustworthy — that is the caller’s job, and both pipelines call it last.

## 8. Standalone utilities

- **`validate_keybox.py`** — structure-only Keybox XML check.
  `python3 script/validate_keybox.py Keybox.xml`. Rejects files over 16 MiB, JSON, HTML,
  non-XML, malformed XML, a root other than `AndroidAttestation`, missing `Keybox` entries, DOCTYPE
  and external entities, incomplete `PrivateKey`/`CertificateChain` entries, non-PEM content, and
  count mismatches. Prints `STRUCTURE_VALID: EC=n RSA=m; crypto not checked` and exits 0, or exits
  with the error code as the message. It never prints key material and performs no cryptography.

- **`check-advanced-policy-sepolicy.py`** (+ `.sh` wrapper) — read-only SELinux inspection for an
  extracted ROM or the live system. Prints `SERVICE_CONTEXT_MAPPING`, `SETTINGS_PROVIDER_DOMAIN`,
  four boolean lines, and `VERDICT = PASS|FAIL|INCOMPLETE`, exiting 0/1/2 respectively. It parses
  `.te` and `.cil` text; a binary `sepolicy` is reported as `INCOMPLETE`, never guessed at. The
  shell wrapper only checks for `python3` and `exec`s the Python file.

- **`bionic_fakelock_patcher.py`** — ELF patcher for `libc.so` that redirects
  `__system_property_get` through an injected code cave and spoofs `ro.boot.flash.locked`,
  `ro.boot.verifiedbootstate`, and `ro.boot.vbmeta.device_state`. ARM64 and ARM32/Thumb-2.

  ```bash
  pip install keystone-engine        # hard requirement
  python3 -I script/bionic_fakelock_patcher.py libc.so -o libc_patched.so
  ```

  Imports `keystone` at module scope and exits 1 with an install hint when it is missing — which
  means `--help` also fails until the dependency is installed. `capstone` is optional and used
  only to render disassembly in log output. The output preserves the original file size.

- **`kaorios_patcher_a17.py`** — legacy filename alias. `runpy.run_path` on
  `kaorios_patcher.py` with `run_name="__main__"`; it has no logic of its own and exists so old
  commands keep working. `bin/` installers are out of scope here — see each `bin/*/README.md`.

## 9. Tests

```bash
# host-only run: two assembly tests skip
python3 -m unittest discover -s script

# full run: the skip is lifted and the real smali/smali round-trip executes
KAORIOS_SMALI_CLASSPATH="$RUNNER_TEMP/smali/*" python3 -m unittest discover -s script -v
```

Current result on this checkout: `Ran 83 tests … OK (skipped=2)`. The two skips are
`@unittest.skipUnless(os.environ.get('KAORIOS_SMALI_CLASSPATH'), …)` on
`test_patcher_register_encoding.py:108` and `:397`.

| Test file | Tests | Locks down |
|---|---|---|
| `test_framework_artifact_plan.py` | 20 | Input/output alias guard for both pipeline scripts (symlink, hard link, `alias/../input`), safe append vs. replace, ROM class retention, payload spread across slots, duplicate definitions, strict DEX parser, callee `public static` requirement, untouched-hash verification |
| `test_patcher_register_encoding.py` | 33 | Register alias canonicalisation, `.registers`/`.locals` arithmetic, wide/narrow operand encodings, range vs. non-range selection, literal and comment preservation, real assembly round-trips when the classpath is present |
| `test_name_value_cache_hooks.py` | 9 | Whole-tree patch/verify idempotence, “invalid last owner preserves every input”, duplicate and wrong-descriptor callers, partial or late hooks, unsupported layouts not mutating files, all caller owners planned |
| `test_package_patcher_v2061.py` | 5 | Member inventory, byte-for-byte reproducibility, sorted manifest, traversal/symlink/duplicate rejection, extracted patcher runs standalone |
| `test_patcher_instrumentation_hooks.py` | 4 | `--update` repairs one missing method without recursion, comment-only hooks do not count as patched or verified |
| `test_payload_abi.py` | 5 | `public static synchronized` accepted, missing/inaccessible overloads rejected, comments and strings are not calls, abstract/native rejected, duplicate methods rejected |
| `test_build_toolbox_packaging.py` | 7 | `.github/workflows/build-toolbox.yml`: checksum paths relative to `dist/`, nested upload discovery, partial-upload and missing-file gates, clean `dist/`, unsigned APK is a hard failure, Markdown link injection rejected |
| `Toolbox-Update/scripts/test_update_pif.py` | 21 | Malformed bot snapshot rejection and catalog preservation on publish; no network |

`.github/workflows/check-tools.yml` runs the suite with the smali classpath and then builds the
patcher ZIP, so a packaging break fails CI. It triggers on `script/**` and on changes to itself or
`build-toolbox.yml`. Note that the suite is **not** triggered by `Toolbox-data/**` or
`Toolbox-Update/**` — the PIF updater has its own test step inside `update_pif.yaml`.

## 10. Invariants a change must keep

1. **Fail closed.** An unrecognised layout raises; it is never rewritten into something that looks
   plausible. `UNSUPPORTED_LAYOUT` is a distinct, user-visible outcome from `FAILED`.
2. **Stage, then write.** Every multi-target path validates everything before mutating anything.
3. **Payload never replaces a required caller**, and payload import uses exact descriptors only —
   never whole-namespace replacement.
4. **Untouched DEXes stay byte-identical.** Verified by hash before packing and again after
   re-extracting the candidate.
5. **Verification runs on re-extracted output**, not the working tree.
6. **Publish last and atomically**, from a destination-local staging file.
7. **One source of truth per rule** — the caller list in `framework_hook_manifest.py`, the DEX
   parser in `patch-framework-a17-plan.py`, the hook patterns in each single-class patcher, which
   its verifier then reuses.

## 11. Known gaps and traps

- **Docstring coverage is thin.** Undocumented functions by file: `kaorios_patcher.py` 16/25,
  `test_patcher_register_encoding.py` 35/36, `test_framework_artifact_plan.py` 21/22,
  `patch-installer-source.py` 11/12, `verify-framework-a17-hooks.py` 10/10,
  `patch-framework-a17-plan.py` 6/15. The invariants above are documented here rather than in the
  functions themselves.
- **No automated test covers** `bionic_fakelock_patcher.py`, `validate_keybox.py`,
  `check-advanced-policy-sepolicy.py`, or `kaorios_patcher.py`’s directory driver end to end.
- **`bionic_fakelock_patcher.py --help` fails** without `keystone-engine`, because the import is
  at module scope.
- **Shared settings between pipeline scripts** are passed on the command line each time; there is
  no config file. Two invocations that disagree on `--api` will produce DEXes that cannot be
  mixed.
- **The pipelines require `realpath`, `zip`, `unzip`, `java`, and `mktemp -d`** on `PATH`.
- **`script/patcher_v2061_README.txt`** is release-facing copy that is embedded in the ZIP; it is
  not a duplicate of this file and should be updated when the shipped inventory changes.

## 12. Evidence boundaries

A passing run here proves: the smali text matched the documented patterns, the rebuilt DEX
reassembled with the chosen toolchain, class inventories and untouched hashes match, and facade
descriptors line up with the payload you supplied. It does **not** prove that a ROM boots, that a
payload implements its stubs, that a device feature activates, or that any integrity verdict
changes. Real-ROM and real-device states are separate verification levels and must be recorded as
such.
