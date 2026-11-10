# Kaorios Toolbox 2.0.6.2 — Automated ROM Patcher Guide (Android 13–17)

[Tiếng Việt](Patcher_Guide_2.0.6.2_VI.md) | [Manual Patch Guide](Patch_Guide_2.0.6.2.md) | [Disable Secure Flag](Disable_Secure_Flag.md) | [CorePatch](CorePatch.md) | [Rust CLI Guide](Rust_CLI_Guide.md) | [Root README](../../README.md)

This technical guide documents the automated smali patching pipeline provided by Kaorios Toolbox for Android 13 through Android 17 custom ROMs. It covers the Python-based patcher engine (`script/kaorios_patcher_a17.py`), automated multi-DEX owner discovery, operating modes, CLI execution syntax, preflight status diagnostics, automated JAR repackaging pipelines, and post-assembly re-extraction verification.

---

## 1. Architectural Principles & Critical Safety Preconditions

### 1.1 Automated Multi-DEX Discovery & Surgical Modification
- **No Hardcoded Split Assumptions:** System framework classes are distributed arbitrarily across multi-DEX splits (`classes.dex`, `classes2.dex`, ..., `classesN.dex`). The automated patcher scans the target directory tree, identifies the single owner DEX directory containing each target class, and edits only that owner split.
- **Surgical Insertion Over Class Replacement:** The engine performs surgical instruction-level insertions based on strict opcode pattern matching and register analysis. It never replaces an entire stock ROM class file with an external template.
- **Payload Ingestion Guard:** Payload classes (`android/security/kaorios/*`) are imported into `framework.jar` only. The patcher guarantees that unrelated OEM classes in `android/security/` or adjacent packages are never deleted or modified.

### 1.2 Bootloop Prevention: `SettingsProvider.apk` Restoration
- **Obsolescence of Settings Hooks:** Prior Kaorios versions (v2.0.6.0 and an early v2.0.6.1 snapshot) modified `SettingsProvider.apk` to call `KaoriosHook` settings methods (`filterSettingsCall`, `filterSettingsQueryResult`, etc.). In the audited source tree, those methods have been completely removed.
- **Fatal Bootloop Risk:** Running an operating system with a `SettingsProvider.apk` patched against older recipes triggers an immediate `java.lang.NoSuchMethodError` during system server initialization, causing a continuous bootloop.
- **Mandatory Action:** If your target ROM was previously patched with an older Kaorios release, you **must restore the clean, stock `SettingsProvider.apk`** from the original factory firmware before applying this automated patcher.

### 1.3 Keystore Hooks Removed (Current Source State)
- The patcher explicitly skips patching `AndroidKeyStoreKeyPairGeneratorSpi` and `AndroidKeyStoreSpi`.
- In the audited source state, the corresponding helper methods in `KaoriosHook` are stubs (`CertificateChainIfNeeded` returns input unchanged; `initGenerateSoftwareKeyPair`, `OnGetKeyEntry`, and `generateKey` return `null`; `Remove` is empty).
- Because these helper methods are stubs, the patcher does not inject hooks into keystore classes; stock ROM keystore classes remain completely unmodified.

### 1.4 Historical Benchmark Records & Local Packaging
- **Historical Snapshot Evidence:**
  - A historical v2.0.6.1 snapshot recorded 171,100 bytes with SHA-256 `953a25a2f7569eb11b107bda591bcbd0ad0d30e0c6d33def51799478ea1e93a9`.
  - An earlier historical snapshot recorded 858,636 bytes with SHA-256 `94848e18…` (truncated historical excerpt, not a current verifiable digest).
  - These values represent historical evidentiary benchmarks; they are **not** claims that those specific binaries are currently hosted on GitHub release channels or match current source.
- Release `v2.0.6.2` is produced by the public `build-toolbox.yml` workflow from the `Toolbox-Framework` branch and attaches the signed `KaoriosToolbox-release.apk`, `KaoriosFramework-release.apk`, `classes.dex`, the native `libkaoripif` libraries and a `SHA256SUMS` manifest. Verify the tag, asset list and checksums on the release page before flashing. To build the patcher archive from the reviewed public checkout, run `python3 -I script/package_patcher_v2062.py /path/to/new-patcher.zip` from the public repository root, and compute the SHA-256 of the exact archive you construct.

### 1.5 Toolchain Parameterization Gate
- Android 13–17 compatibility defines hook layout compatibility, not universal DEX bytecode version support.
- For the supplied DEX 040 case, artifact pipelines invoke `--api 37 --smali-api 34`. Baksmali/smali version 3.0.8 does not map API 37 in its opcode table (`IllegalArgumentException: dexVersion must be within [0, 999]`). Target analysis and assembly APIs are therefore decoupled.
- This combination does not imply support for DEX 041, container DEX, or CompactDex. Verify your input DEX format prior to assembly.

---

## 2. Operating Modes & CLI Execution Reference

The patcher script is invoked via Python 3:

```bash
python3 -I script/kaorios_patcher_a17.py [OPTIONS]
```

### 2.1 Mode Matrix

| Mode Flag | Identifier | Target Artifacts | Description |
|---|---|---|---|
| `--mode 1` | `core` (Default) | `framework.jar`, `services.jar` | Injects required framework callers (Context init, Process bind, ADB/Dev status guard) and services callers (SystemServer init, Package visibility, Conditional installer). |
| `--mode 2` | `build` | `framework.jar` | Android 17 Build field spoofing. Strips `final` access modifiers and nulls constant string initializers in `Build.smali` and `Build$VERSION.smali`. |
| `--mode 3` | `all` | `framework.jar`, `services.jar` | Executes Mode 1 (Core) and Mode 2 (Build field spoofing) in a single consolidated pass. |

### 2.2 CLI Arguments

- `--framework-dir <path>`: Path to disassembled `framework.jar` root directory containing one or more `smali*` subdirectories.
- `--services-dir <path>`: Path to disassembled `services.jar` root directory containing one or more `smali*` subdirectories.
- `--payload-smali <path>`: (Recommended) Path to disassembled payload DEX directory. When specified, the patcher verifies callee descriptor matching before modifying files.
- `--dry-run`: Performs discovery and pattern matching without writing changes to disk.
- `--strict`: Halts execution immediately with an error exit code if any required hook target cannot be matched.
- `--verbose`: Emits detailed register allocation logs and match diagnostics.

### 2.3 Example Commands

#### Standard Core Patching (Mode 1):
```bash
python3 -I script/kaorios_patcher_a17.py \
    --mode 1 \
    --framework-dir /tmp/work/framework_smali \
    --services-dir /tmp/work/services_smali \
    --payload-smali /tmp/work/payload_smali
```

#### Android 17 Full Patching (Mode 3, Core + Build Spoof):
```bash
python3 -I script/kaorios_patcher_a17.py \
    --mode 3 \
    --framework-dir /tmp/work/framework_smali \
    --services-dir /tmp/work/services_smali \
    --payload-smali /tmp/work/payload_smali \
    --strict
```

---

## 3. Required Caller Hook Manifest

The patcher enforces the following hook specifications:

### 3.1 Framework Hooks (`framework.jar`)
1. **`Landroid/app/Instrumentation;` (`newApplication`):**
   - Injects `invoke-static {context_reg}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V` immediately following `invoke-virtual {app, context}, Landroid/app/Application;->attach(Landroid/content/Context;)V`.
   - Handles both static (`p1`) and instance (`p3`) overloads.
2. **`Landroid/app/ActivityThread;` (`handleBindApplication`):**
   - Injects `invoke-static {app_bind_data_reg}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V` immediately following the stock `iput-object` to `mBoundApplication`.
3. **`Landroid/provider/Settings$NameValueCache;` (`getStringForUser`):**
   - Injects entry guard calling `KaoriosHook.shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z`.
   - If true, intercepts reported developer options/ADB status by returning string `"0"`.

### 3.2 Services Hooks (`services.jar`)
1. **`Lcom/android/server/SystemServer;` (`run`):**
   - Injects `invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V` immediately preceding the main `Looper.loop()V` invocation.
2. **`Lcom/android/server/pm/ComputerEngine;` (`shouldFilterApplication`):**
   - Injects entry guard calling `KaoriosHook.shouldHideAppListForCaller(ILjava/lang/String;I)Z` using the calling UID and target package name.
   - If true, returns `true` (filtered).
3. **`Lcom/android/server/pm/ComputerEngine;` (Conditional Installer Interception):**
   - Intercepts `getInstallerPackageName` and `getInstallSourceInfo` calling `KaoriosHook.filterInstallerPackageName`.
   - Applied only if both methods exist as a supported pair; skipped if neither exists.

---

## 4. Preflight Status Vocabulary & Diagnostics

During execution, the patcher outputs standardized status indicators for each target hook:

| Status Code | Severity | Description & Required Action |
|---|---|---|
| `MATCHED` | Info | Target pattern located successfully. Patch will be applied. |
| `PATCHED` | Success | Bytecode modification written and verified on disk. |
| `ALREADY_PATCHED` | Notice | Kaorios hook instruction already exists at the target location. No modification needed; safe to proceed. |
| `SKIPPED` | Notice | Target feature is optional or conditionally inactive (e.g. installer read APIs absent from ComputerEngine). |
| `UNSUPPORTED` | Warning | Target method exists but byte pattern or register structure diverges from known templates (e.g. heavily customized vendor OEM framework). Manual inspection required. |
| `FAILED` | Error | Required hook could not be matched, register allocation failed, or disk write error occurred. Execution halts under `--strict`. |

### Common Diagnostic Situations
- **Register Exhaustion:** If a target method uses all 16 registers (`v0`–`v15`) without free capacity, the patcher automatically switches to an extended range allocation (`invoke-static/range`) or allocates new local registers and recalculates parameter offsets.
- **Vendor Code Incompatibilities:** On aggressive OEM customizations (MIUI/HyperOS, ColorOS, OneUI), method signatures in `ComputerEngine` or `ActivityThread` may include extra parameters or custom wrappers. If status reports `UNSUPPORTED`, refer to the [Manual Patch Guide](Patch_Guide_2.0.6.2.md) for custom surgical adaptation.

---

## 5. End-to-End JAR Pipeline Automation (`patch-framework-a17-artifact.sh`)

For production ROM builds, the included automation script `patch-framework-a17-artifact.sh` coordinates unpacking, patching, reassembling, and repackaging in a clean staging environment:

```bash
sh script/patch-framework-a17-artifact.sh \
    --stock-framework /path/to/stock/framework.jar \
    --stock-services /path/to/stock/services.jar \
    --payload-dex /path/to/payload/classes.dex \
    --output-dir /path/to/output_jars \
    --smali-api 34 \
    --api 37
```

### Pipeline Workflow Invariants:
1. **Isolated Workspace:** All disassembly and assembly operations occur within a unique temporary directory (`/tmp/kaorios_stage_XXXXXX`). Stock input files are treated as strictly read-only.
2. **Selective DEX Reassembly:** Only DEX splits modified by the patcher are reassembled with smali. Unmodified splits are copied directly from the stock archive, avoiding unnecessary bytecode churn.
3. **Archive Integrity Validation:** Repackaged candidate JARs are tested with `unzip -tq` to guarantee zero archive corruption before being published to `--output-dir`.

---

## 6. Post-Patch Multi-Stage Re-Extraction Verifiers

Never flash patched JARs to a device without executing the verification suite against a **re-extracted candidate**:

```bash
# 1. Extract candidate JAR to a fresh temporary directory
mkdir -p /tmp/verify_framework
unzip -q /path/to/output_jars/framework.jar 'classes*.dex' -d /tmp/verify_framework/dex/
java -jar baksmali.jar disassemble /tmp/verify_framework/dex/classes.dex --api 34 -o /tmp/verify_framework/smali/

# 2. Verify framework caller hooks
python3 -I script/verify-framework-a17-hooks.py /tmp/verify_framework/smali --caller-only

# 3. Verify services caller hooks
python3 -I script/verify-services-a17-hooks.py /tmp/verify_services/smali
python3 -I script/verify-systemserver-a17-hooks.py /tmp/verify_services/smali

# 4. Verify Facade ABI consistency against disassembled payload
python3 -I script/verify-payload-abi.py /tmp/verify_framework/smali --payload-smali /path/to/payload_smali
python3 -I script/verify-payload-abi.py /tmp/verify_services/smali --payload-smali /path/to/payload_smali
```

---

## 7. Evidence Boundary

- **Host Automation & Static Checking:** The automated patcher and verification scripts confirm syntactic correctness, opcode compatibility, register encoding validity, and descriptor consistency on the host workstation.
- **Physical Device & Attestation Boundary:** Clean automated runs and verifier passes do **not** guarantee that a specific device will boot without crashes, that runtime permissions allow service binding, or that Google Play Integrity verdicts (`MEETS_DEVICE_INTEGRITY`) will be granted. Hardware-level testing on an authorized physical test device is required to confirm full operational viability.
