# Kaorios Toolbox — Patcher Engine & Tooling Reference (`script/`)

[Manual Patch Guide](../Toolbox-docs/2.0.6+/Patch_Guide_2.0.6.2.md) | [Root README](../README.md)

This technical reference provides developer documentation for the Python and shell tooling located in `script/`. It explains the design principles, inter-script dependency graphs, bytecode mutation patterns, pipeline safety invariants, static verification passes, and the regression test suite.

All utilities documented here operate exclusively host-side. Passing runs confirm syntactic, structural, and descriptor alignment; they do not establish that a target ROM boots or that physical device attestation passes. See [§9. Evidence Boundary](#9-evidence-boundary).

---

## 1. Architectural Principles & Pipeline Invariants

The JAR assembly pipelines (`patch-framework-a17-artifact.sh`, `patch-services-a17-artifact.sh`) and multi-file patch orchestrators (`kaorios_patcher.py`, `publish-verified-artifact.py`) enforce the following operational invariants:

1. **Fail Closed:** Single-class patchers and orchestrators reject unresolvable patterns and unrecognized layouts without speculative generation. `UNSUPPORTED_LAYOUT` and `FAILED` are distinct failure outcomes. A legacy boolean-return NameValueCache hook receives an explicit matching-stock recovery diagnostic; even `--update` preserves it rather than guessing a String-ABI migration.
2. **Stage-Then-Write Architecture:** Multi-target runs in `kaorios_patcher.py` and the artifact shell scripts stage candidate modifications in temporary directories and validate them before writing to original files or destination paths.
3. **Exact Descriptor Ingestion:** In `patch-framework-a17-plan.py`, payload importation into `framework.jar` operates class-by-class. Payload classes replace only identical class descriptors in existing splits or are appended to available splits. Unrelated OEM classes in `android/security/` are preserved.
4. **Byte-Identical Preservation of Untouched Splits:** In `patch-framework-a17-artifact.sh` and `patch-services-a17-artifact.sh`, multi-DEX splits that do not contain modified classes are verified by hash before repacking and after candidate re-extraction to ensure byte-identical preservation.
5. **Re-Extracted Candidate Verification:** Verifiers in the artifact pipelines run against clean directories extracted from the rebuilt candidate archive, not intermediate working trees, verifying toolchain serialization.
6. **Atomic Publishing:** `publish-verified-artifact.py` stages final artifacts in a destination-local temporary file and performs an atomic filesystem replace (`os.replace`) with directory synchronization (`fsync`).
7. **Single Source of Truth:** Authoritative invariants are declared in centralized modules: caller manifests in `framework_hook_manifest.py`, DEX parsing logic in `patch-framework-a17-plan.py`, and hook patterns in the corresponding patcher modules.

---

## 2. Complete Tool Inventory & Functional Classification

The utilities in `script/` are partitioned into six distinct functional layers:

| Layer | Files | External Runtime Dependencies |
|---|---|---|
| **Front-End Orchestrator** | `kaorios_patcher.py`, `kaorios_patcher_a17.py`, `framework_hook_manifest.py` | Python 3.9+ |
| **Single-Class Smali Patchers** | `patch-activitythread-a17.py`, `patch-services-a17.py`, `patch-systemserver-a17.py`, `patch-installer-source.py` | Python 3.9+ |
| **End-to-End JAR Pipelines** | `patch-framework-a17-artifact.sh`, `patch-services-a17-artifact.sh`, `patch-framework-a17-plan.py`, `patch-framework-a17-smali.py`, `patch-dex-artifact-plan.py` | `java`, baksmali, smali, `zip`, `unzip`, `realpath`, `mktemp` |
| **Static Verifiers** | `verify-framework-a17-hooks.py`, `verify-services-a17-hooks.py`, `verify-systemserver-a17-hooks.py`, `verify-payload-abi.py` | Python 3.9+ |
| **Packaging & Release Helpers** | `package_patcher_v2062.py`, `publish-verified-artifact.py` | Python 3.9+ |
| **Standalone Diagnostic Utilities** | `validate_keybox.py`, `check-advanced-policy-sepolicy.py` (+ `.sh`), `bionic_fakelock_patcher.py` | `keystone-engine` (for `bionic_fakelock_patcher.py`) |

**Python Version Floor:** Python 3.9 or newer. The syntax relies on built-in collection type hinting (`tuple[str, bool]`) and `str.removesuffix`. Invocation with `python3 -I` (isolated mode) is recommended across documentation and workflows to prevent ambient `sys.path` tampering.

---

## 3. Tool Dependency Graph & Module Resolution

```
kaorios_patcher.py ──┬─> patch-activitythread-a17.py
                     ├─> patch-services-a17.py ──> patch-installer-source.py
                     ├─> patch-systemserver-a17.py
                     ├─> verify-framework-a17-hooks.py ──┬─> framework_hook_manifest.py
                     │                                 └──> patch-framework-a17-plan.py
                     ├─> verify-services-a17-hooks.py ────> patch-services-a17.py
                     ├─> verify-systemserver-a17-hooks.py ─> patch-systemserver-a17.py
                     └─> verify-payload-abi.py (active with --payload-smali)

kaorios_patcher_a17.py ──runpy──> kaorios_patcher.py (backward compatibility alias)

patch-framework-a17-smali.py ──> verify-framework-a17-hooks.py ──> kaorios_patcher.py
patch-framework-a17-plan.py  ──> framework_hook_manifest.py
patch-dex-artifact-plan.py   ──loads──> patch-framework-a17-plan.py

patch-framework-a17-artifact.sh ─┬─> patch-framework-a17-plan.py (plan, import, verify)
                                 ├─> patch-framework-a17-smali.py (patch callers)
                                 ├─> verify-framework-a17-hooks.py (validate hooks)
                                 ├─> verify-payload-abi.py (validate facade ABI)
                                 └─> publish-verified-artifact.py (atomic replace)

patch-services-a17-artifact.sh ─┬─> patch-dex-artifact-plan.py (plan, verify splits)
                                ├─> patch-services-a17.py
                                ├─> patch-systemserver-a17.py
                                ├─> verify-services-a17-hooks.py
                                ├─> verify-systemserver-a17-hooks.py
                                └─> publish-verified-artifact.py
```

Sibling script loading is handled via `importlib.util.spec_from_file_location` using directory paths derived from `Path(__file__).with_name(...)`. There is no package installation or `PYTHONPATH` dependency; scripts must reside together in the `script/` directory.

---

## 4. Deep Dive: Component Details & Execution Specifications

### 4.1 Front-End Orchestrator: `kaorios_patcher.py`
The unified CLI dispatcher for ROM smali patching.
- **Operating Modes:**
  - `--mode 1`: Core framework and services caller patching.
  - `--mode 2`: Android 17 Build field spoofing (removes `final` and nulls constant string initializers in `Build.smali` and `Build$VERSION.smali`). Rejects Android versions < 17.
  - `--mode 3`: Combined execution of Mode 1 and Mode 2.
- **Preflight Validation:** In directory mode, candidate files are copied into a `TemporaryDirectory`, patched in isolation, and verified with `verify-payload-abi.py` before modifying original files.
- **Concurrent Modification Detection:** Re-reads all target files after preflight to ensure disk content has not changed before writing.
- **Path Validation:** Rejects symlinked targets and duplicate target file basenames.

### 4.2 Single-Class Patchers

#### `patch-activitythread-a17.py`
Injects `KaoriosHook;->initActivityThread(Ljava/lang/Object;)V` into `Landroid/app/ActivityThread;->handleBindApplication`.
- Locates the single `iput-object ... Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;` anchor.
- Automatically selects `invoke-static` (register ≤ 15) or `invoke-static/range` (register > 15) based on the physical register operand of the `AppBindData` instance.
- Asserts that no backward branches, exception handlers, or switch labels separate the hook from its anchor.

#### `patch-systemserver-a17.py`
Injects `KaoriosHook;->initSystemServer()V` into `Lcom/android/server/SystemServer;->run()V`.
- Injects the hook immediately before the final `invoke-static {}, Landroid/os/Looper;->loop()V` anchor.
- Permits only non-executable directives (`.line`, `.local`, `.end local`, comments) between the hook and the anchor.

#### `patch-services-a17.py`
Patches application visibility filtering into `Lcom/android/server/pm/ComputerEngine;`.
- Detects the active `shouldFilterApplication` overload (7-parameter or 3-parameter).
- Injects `KaoriosHook.shouldHideAppListForCaller(ILjava/lang/String;I)Z` at method entry.
- If `ComputerEngine.smali` defines installer read methods (`getInstallerPackageName` or `getInstallSourceInfo`), it delegates installer patching to `patch-installer-source.py`.

#### `patch-installer-source.py` (Abstract Interpretation Engine)
Performs abstract register provenance tracing over the bytecode of `getInstallerPackageName` and `getInstallSourceInfo`:
- Models register states using a formal lattice: `receiver`, `target`, `uid`, `user`, `source`, `installer`, `info`, `null`, `unknown`.
- Uses a worklist iteration algorithm with fixed-point union merging at join points.
- Enforces strict safety gates: immediately aborts on `.catch` exception blocks, `packed-switch`/`sparse-switch`, `fill-array-data`, non-unique return sites, mixed `v`/`p` register naming within a range, or calls to `Binder.clearCallingIdentity()` prior to UID capture.
- If both installer APIs are absent, the component is skipped. Otherwise the current contract requires exactly one `getInstallerPackageName` and one `getInstallSourceInfo` method, each with a supported String-only or String/user signature. A partial API pair or additional overloads is an unsupported layout, not a complete verified patch.

---

## 5. End-to-End JAR Pipeline Automation

The shell pipelines `patch-framework-a17-artifact.sh` and `patch-services-a17-artifact.sh` provide automated, reproducible ROM artifact generation:

### Pipeline Execution Flow:
1. **Validation & Isolation:** Allocates a temporary staging directory (`mktemp -d`). Verifies that input and output paths do not alias (rejecting hard links, symlinks, or identical paths with exit code 2).
2. **Payload Disassembly & Validation (`patch-framework-a17-artifact.sh` only):** Disassembles the payload DEX and validates its structure using `patch-framework-a17-plan.py validate-kaorios-smali`.
3. **Target JAR Disassembly & Planning:** Extracts JAR entries, computes baseline SHA-256 digests of all DEX splits, and executes `plan` to locate the single owner DEX for each required caller class.
4. **Selective Ingestion & Caller Patching:**
   - For `framework.jar`: imports payload classes using exact descriptor mapping into an available split, then invokes `patch-framework-a17-smali.py` to patch callers.
   - For `services.jar`: invokes `patch-services-a17.py` and `patch-systemserver-a17.py` on the resolved owner splits.
5. **Reassembly & Plan Verification:** Reassembles modified splits using the selected smali opcode API. Executes `verify-plan` to confirm that class inventories match expectations and untouched DEX splits remain byte-identical.
6. **Candidate Repackaging & Re-Extraction Verification:** Builds a candidate output JAR, re-extracts all DEX splits to an independent directory, re-disassembles them, and runs the complete verifier suite against the re-extracted candidate.
7. **Atomic Publication:** Invokes `publish-verified-artifact.py` to move the verified candidate to the final output destination using an atomic rename.

### Toolchain Parameterization: `--api` vs. `--smali-api`
- The pipeline decouples `--api` (target ROM metadata label, defaults to 37) from `--smali-api` (the opcode API passed to baksmali/smali). When omitted, `--smali-api` defaults to `--api`; there is no implicit downgrade.
- The guide explicitly selects `--smali-api 34` for its DEX 040-compatible example. This is not a general conversion recipe for newer DEX formats/opcodes; use a toolchain that actually supports the input.
- Assembly regressions use smali/baksmali 3.0.8 with their runtime dependencies, including the POM-pinned jcommander 1.64. Loading 1.82 can pass assembly but break `help assemble` / `help disassemble` with `NoSuchMethodError: ...getMainParameter()`.
- The artifact scripts' thin-JAR fallback requires sibling files named `smali-dexlib2.jar`, `smali-util.jar`, `antlr-runtime.jar`, `jcommander.jar` and `guava.jar`. A wildcard classpath used by tests also needs the complete dependencies, not just two tool JARs.

---

## 6. Static Verification Suite

Four automated verifiers validate patched smali trees:

```bash
# Verify framework caller hooks, callee presence, and advanced policy classes
python3 -I script/verify-framework-a17-hooks.py <smali-root> [--caller-only] [--skip-advanced-policy]

# Verify services caller hooks in ComputerEngine
python3 -I script/verify-services-a17-hooks.py <smali-root>

# Verify system server lifecycle hook in SystemServer
python3 -I script/verify-systemserver-a17-hooks.py <smali-root>

# Verify facade ABI alignment against disassembled payload
python3 -I script/verify-payload-abi.py <smali-root> --payload-smali <payload-root>
```

### Verification Characteristics:
- **Patcher and Verifier Alignment:** Verifiers rely on shared validation logic: services and system server verifiers import the `verify()` function from their respective patchers, the framework verifier delegates to `kaorios_patcher.py:verify_target_content`, and `verify-payload-abi.py` inspects callee signatures directly against the payload facade.
- **Strict Single-Match Requirement:** Target classes are located using `rglob`; discovering zero or multiple candidate files triggers an immediate failure.
- **Facade ABI Checks:** `verify-payload-abi.py` parses all `invoke-static[/range]` calls to `Landroid/security/kaorios/KaoriosHook;`, strips comment and string literals, and asserts that the payload declares every invoked signature as `public static` and neither `abstract` nor `native`.

---

## 7. Standalone Diagnostic Utilities

- **`package_patcher_v2062.py`:** Generates reproducible release ZIP archives from the public repository tree. Normalizes timestamps to `1980-01-01`, sorts entries lexicographically, stores entries uncompressed, and rejects symlinks, path traversals, and duplicate members.
- **`publish-verified-artifact.py`:** Atomic file replacement utility. Stages files locally within the destination directory, enforces `0644` permissions, calls `fsync`, and performs `os.replace`.
- **`validate_keybox.py`:** Structural validator for `Keybox.xml` attestation files. Enforces 16 MiB size limits, validates XML well-formedness, rejects external entity injection (XXE), and verifies PEM block balance without loading cryptography engines or logging key material.
- **`check-advanced-policy-sepolicy.py`:** Read-only SELinux policy inspector. Analyzes `.te` and `.cil` policy statements for service context mappings and domain permissions.
- **`bionic_fakelock_patcher.py`:** Native binary patcher for Bionic `libc.so`. Injects an assembly code cave (ARM64/ARM32) to spoof bootloader lock status properties (`ro.boot.flash.locked`, `ro.boot.verifiedbootstate`). Requires `keystone-engine`.

---

## 8. Regression Test Suite

The test suite is executed using Python's standard `unittest` framework:

```bash
# Host run; assembly tests skip when no real smali classpath is supplied
python3 -m unittest discover -s script -v

# Full run: directory contains matching tools AND their runtime dependencies
KAORIOS_SMALI_CLASSPATH='/path/to/smali-3.0.8/*' python3 -m unittest discover -s script -v
```

The 2026-11-14 follow-up checkpoint ran **97 tests in 17.624s, all passing without skips**, with smali 3.0.8 and jcommander 1.64. Two additions cover both optional String `filterAppAccess` signatures and the explicit legacy NameValueCache diagnostic/input preservation. Counts describe that run, not a coverage percentage or a permanent suite size.

### Regression coverage

| Test Suite | Key Invariants Asserted |
|---|---|
| `test_framework_artifact_plan.py` | Path aliasing protection, safe append vs. replace, exact-descriptor/OEM retention, duplicate class rejection, strict DEX parsing, untouched split hashes. |
| `test_patcher_register_encoding.py` | Numeric parameter aliases, `.registers`/`.locals`, wide/narrow operands, `/range`, real assembly boundaries when tools are supplied. |
| `test_name_value_cache_hooks.py` | All six required caller owners, whole-tree preflight/idempotence, input preservation on unsupported layouts, unique descriptors, and the legacy boolean-ABI diagnostic with unchanged whole-tree inputs in both normal/update modes. |
| `test_guide_hook_contract.py` | Eighteen literal EN/VI snippet pairs, static/instance Context mapping, visibility overloads/high frame, both optional String `filterAppAccess` signatures with stock boolean preservation, both installer shapes, structural checks before/after real assembly, shell syntax and output-verification anchor. Executes the guide's rebuild/re-extract/verification commands on fixture JARs, including packaged-facade ABI, multi-DEX output and unrelated ZIP-entry retention. Fixtures are not an Android runtime or a real-ROM import test. |
| `test_package_patcher_v2062.py` | Deterministic source-built archive, sorted members, path rejection and extracted standalone regressions. |
| `test_patcher_instrumentation_hooks.py` | Both overloads, return coverage, update repair and comment-only hook rejection. |
| `test_payload_abi.py` | Exact public/static implemented callees, overload/modifier failures, comments/strings and duplicate methods. |
| `test_build_toolbox_packaging.py` | CI packaging workflows, relative checksums, clean distributions, artifact completeness and unsigned APK rejection. |

*Note on external test suites:* An additional 21 unit tests for the PIF updater live outside `script/` in `Toolbox-Update/scripts/test_update_pif.py` and are executed separately by `.github/workflows/update_pif.yaml`.

---

## 9. Evidence Boundary

- **Host Static Validation:** A passing run across the test suite and verifiers shows that bytecode patterns conform to documented templates, tested register encodings follow tested rules, DEX class boundaries are respected, and facade ABI signatures match.
- **Device & Attestation Boundary:** Host test passes do **not** prove that an operating system will boot, that runtime classloaders will resolve dependencies, that ART accepts a particular ROM's types/control flow, or that external integrity verdicts will be granted. Physical-device testing with redacted logs remains required.
