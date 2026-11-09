# Kaorios Toolbox 2.0.6.1 — Manual ROM Smali Patching Guide (Android 13–17)

[Tiếng Việt](Patch_Guide_2.0.6.1_VI.md) | [Automatic Patcher Guide](Patcher_Guide_2.0.6.1.md) | [Disable Secure Flag](Disable_Secure_Flag.md) | [CorePatch](CorePatch.md) | [Rust CLI Guide](Rust_CLI_Guide.md) | [Root README](../../README.md)

This technical reference provides the complete, authoritative manual smali patching procedure for integrating Kaorios Toolbox into Android 13 through Android 17 custom ROMs. It documents bytecode-level insertion points, register allocation rules, multi-DEX class mapping, payload DEX importation, and post-assembly re-extraction verification.

---

## 1. Architectural Overview & Critical Pre-Patch Invariants

### 1.1 Bootloop Prevention: `SettingsProvider.apk` Restoration
- **Root Cause of Failure:** Prior Kaorios patching guides (v2.0.6.0 and an early v2.0.6.1 payload snapshot) instructed patchers to modify `SettingsProvider.apk` to call `KaoriosHook` settings methods (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, and `shouldRemoveSetting`).
- **Current Source State:** In the current codebase, those settings methods have been purged from the `KaoriosHook` facade. If an operating system boots with a `SettingsProvider.apk` patched against older recipes, the Android system server process immediately encounters a `java.lang.NoSuchMethodError`, throwing an unhandled exception and triggering a fatal bootloop.
- **Mandatory Action:** If the target ROM was previously patched with an older Kaorios recipe, you **must restore the clean, stock `SettingsProvider.apk`** taken from the exact matching factory firmware build *before* importing any payload DEX. Never reuse patched provider APKs.

### 1.2 Target Scope & File Separation
- **Target Files:** Modifications are applied exclusively to working copies of `framework.jar` and `services.jar` from an authorized target ROM build.
- **Stock File Integrity:** Maintain clean stock originals, their cryptographic SHA-256 digests, and a recovery mechanism (e.g. fastboot flashable images or TWRP flashable packages) outside the working directory. Never overwrite stock files in place.
- **Native Assets Separation:** Native ELF shared libraries (`bin/lib/`) and early-boot init configuration scripts (`bin/init/`) are standalone ROM assets. They are **not** components of the Java framework JAR patch procedure and must not be injected into JAR files.

### 1.3 Multi-DEX Discovery & Class Ownership
- Android system framework JARs are partitioned across multiple DEX splits (`classes.dex`, `classes2.dex`, `classes3.dex`, etc.).
- Never assume a target class resides in a specific split (such as `classes.dex`), and never assume an incoming payload belongs in `classes6.dex`.
- Disassemble every DEX split individually and search for exact class descriptors to discover the single owner DEX for each target class. Edit only that owner split.
- The smali code snippets documented in this guide describe surgical bytecode insertions, **not replacement classes**. Do not replace an entire stock ROM class with an external template.

### 1.4 Register Allocation & Smali Encoding Rules
Before inserting any instruction snippet into a target method:
1. **Analyze Register Directives:** Inspect `.registers X` or `.locals Y` at the method head. `.locals` defines local registers (`v0`..`v[Y-1]`), while parameters map to `v[Y]`..`v[X-1]` (aliased as `p0`..`p[N]`).
2. **Parameter Shift Precaution:** If you increase `.locals` to allocate fresh registers, parameter registers shift upward in physical register indices. Update all pre-existing physical `vN` references to `pN` aliases *before* increasing `.locals`, and verify that all original stock instructions remain validly encodable.
3. **Opcode Register Limits:** Standard `invoke-static`, `invoke-virtual`, and `invoke-interface` opcodes support physical register indices only up to 15 (`v0`–`v15`). If any operand register index is 16 or greater, you must either rearrange registers or use the `/range` variant (`invoke-static/range`), which accepts a contiguous register span `{vN .. v[N+K]}`.
4. **Move-Result Adjacency:** A `move-result` or `move-result-object` instruction must immediately follow its corresponding `invoke` instruction. Never insert hook instructions between an `invoke` and its `move-result`.
5. **Entry Hook Positioning:** Insert entry hooks after all `.param`, `.annotation`, and `.local` directives, but **strictly before the first executable instruction or label**.
6. **Unique Labels:** Use unique branch labels (e.g. `:kaorios_stock_fallback`) that do not collide with existing labels in the target method.

### 1.5 Keystore Hooks Removed (Current Source State)
- This guide explicitly **omits** patches to `AndroidKeyStoreKeyPairGeneratorSpi` and `AndroidKeyStoreSpi`.
- In the audited source state, the helper methods in `KaoriosHook` corresponding to keystore interception are stubs (`CertificateChainIfNeeded` returns its input chain unmodified; `initGenerateSoftwareKeyPair`, `OnGetKeyEntry`, and `generateKey` return `null`; `Remove` is empty).
- Inserting calls to these stubs would produce valid-looking smali that needlessly executes passthrough calls at runtime. Because these helpers are stubs, stock ROM keystore classes remain completely unpatched and are omitted from the framework caller manifest.

### 1.6 Payload Compatibility & Historical Evidence
- Do not assume payload contents based solely on release tags or guide versions.
- **Historical Snapshot Evidence:**
  - A historical v2.0.6.1 snapshot recorded 171,100 bytes with SHA-256 `953a25a2f7569eb11b107bda591bcbd0ad0d30e0c6d33def51799478ea1e93a9`.
  - An earlier historical snapshot recorded 858,636 bytes with SHA-256 `94848e18…` (truncated historical excerpt, not a current verifiable digest).
  - These values represent historical evidentiary benchmarks; they are **not** claims that those specific binaries are currently hosted on GitHub release channels or match current source.
- Release `v2.0.6.1` on GitHub currently hosts no attached release assets. To build the patcher archive from the reviewed public checkout, run `python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip` from the public repository root, and compute the SHA-256 of the exact archive you construct.

### 1.7 Toolchain Parameterization Gate
- Android 13–17 defines hook layout compatibility, not universal DEX bytecode version support.
- For the supplied DEX 040 case, artifact pipelines invoke `--api 37 --smali-api 34`. Baksmali/smali version 3.0.8 does not map API 37 in its opcode table (`IllegalArgumentException: dexVersion must be within [0, 999]`). Target analysis and assembly APIs are therefore decoupled.
- This combination does not imply support for DEX 041, container DEX, or CompactDex. Verify your input DEX format prior to assembly; never modify magic header bytes to disguise an unsupported format.

---

## 2. Ingesting the Payload DEX into `framework.jar`

The payload `classes.dex` provides the core `android/security/kaorios/KaoriosHook` facade and runtime implementation classes.

1. **Obtain and Validate the Payload:** Calculate the SHA-256 checksum of your payload DEX file and verify its facade ABI against the target framework methods using `script/verify-payload-abi.py`.
2. **Decompile Payload Classes:** Disassemble the payload DEX into a dedicated directory using baksmali.
3. **Class-Wise Ingestion Strategy:**
   - Inventory every class descriptor defined in the payload.
   - For each class descriptor, inspect your target `framework.jar` to determine if that class already exists in an existing split.
   - If a class already exists (e.g. from an earlier patch), replace **only that specific class** within its existing owner DEX. Payload classes may be distributed across several DEX splits.
   - If a class is genuinely new to the ROM, add it to an existing split with sufficient space or allocate a new split (`classesN.dex`).
   - **Never delete an entire namespace:** Unrelated OEM classes that reside in `android/security/` or adjacent packages must remain completely untouched.
   - **Never overwrite a stock ROM DEX:** Do not replace an entire `classes.dex` split with the payload DEX if that stock split contains other operating system classes.
4. **Reassemble Modified Splits:** Reassemble only those splits that were modified or newly added. Ensure every payload class appears exactly once across the entire JAR.
5. **Target Restriction:** Ingest payload classes into `framework.jar` **only**. Do not import payload classes into `services.jar`.

---

## 3. Hook Implementations in `framework.jar`

The required framework caller manifest consists of exactly three classes: `ActivityThread`, `Instrumentation`, and `Settings$NameValueCache`.

### 3.1 Application Context Initialization — `Instrumentation`
- **Class:** `Landroid/app/Instrumentation;`
- **Target Methods:**
  - `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;`
  - `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`
- **Placement:** Immediately after the original `Application.attach(Context)` method invocation on each attached application return path, passing the exact Context register.

#### Snippet for First Overload (Static, parameter `p1` holds Context):
```smali
    # Stock application attachment invocation
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    # Kaorios Context Initialization Hook
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

#### Snippet for Second Overload (Instance, parameter `p3` holds Context):
```smali
    # Stock application attachment invocation
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V

    # Kaorios Context Initialization Hook
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

*Notes:* If the physical Context register index exceeds 15, use `invoke-static/range`. Ensure the hook does not separate an invoke from its `move-result`.

---

### 3.2 Process Binding & Initialization — `ActivityThread`
- **Class:** `Landroid/app/ActivityThread;`
- **Target Method:** `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`
- **Placement:** Immediately following the stock assignment of `mBoundApplication`. Pass the `AppBindData` instance (the first operand of `iput-object`), not `this`.

```smali
    # Stock field assignment (example register v9 holds AppBindData)
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;

    # Kaorios Process Initialization Hook
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

*Notes:* Verify that register `v9` contains the `AppBindData` object. If the operand index is 16 or greater, use `/range {vN .. vN}`. Do not duplicate the `iput-object` instruction.

---

### 3.3 Developer Options & ADB Status Guard — `Settings$NameValueCache`
- **Class:** `Landroid/provider/Settings$NameValueCache;`
- **Target Method:** `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`
- **Parameters:** `p1` = `ContentResolver`, `p2` = `String name` (the Settings key), `p3` = `int userHandle`.
- **Placement:** At method entry, requiring one available local register (`v0`).

```smali
    # Kaorios Developer / ADB Status Interception
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0

    :kaorios_dev_stock
    # Method execution continues to original stock instructions...
```

*Notes:* If `p2` is null or `shouldHideDevStatusFromNameValueCache` returns `false`, execution branches to `:kaorios_dev_stock` and proceeds with standard system logic. The helper policy hides only `adb_enabled`, `adb_wifi_enabled`, and `development_settings_enabled`. This alters reported values only; it does **not** terminate active ADB daemon connections.

---

### 3.4 Note on Removed System Feature Hook
- The legacy §2.3 recipe patched `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z`.
- In the current source state, `KaoriosHooks.hasSystemFeature` returns `null` unconditionally, making the injected call a no-op passthrough that needlessly consumed register space.
- The facade method `KaoriosHook.hasSystemFeature` remains in the payload DEX to maintain backward compatibility with older patched ROMs, but **stock `ApplicationPackageManager` smali must remain unpatched**.

---

## 4. Hook Implementations in `services.jar`

`services.jar` houses system server lifecycle and package management engine hooks.

### 4.1 System Server Initialization — `SystemServer`
- **Class:** `Lcom/android/server/SystemServer;`
- **Target Method:** `run()V`
- **Placement:** Immediately preceding the final, primary `Looper.loop()V` invocation at the conclusion of system service initialization.

```smali
    # Kaorios System Server Initialization Hook
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    # Stock primary loop invocation
    invoke-static {}, Landroid/os/Looper;->loop()V
```

*Notes:* `Looper.loop()V` is an existing stock instruction. Do not duplicate the loop call or place the hook before an intermediate helper loop.

---

### 4.2 Application Visibility Filtering (HMA) — `ComputerEngine`
- **Class:** `Lcom/android/server/pm/ComputerEngine;`
- **Target Method:** `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z` (or the 3-parameter overload `(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` if that is the overload actively invoked by your ROM).
- **Placement:** At method entry, requiring one available local register (`v0`).

#### 7-Parameter Overload (`p2` = callingUid, `p5` = userId):
```smali
    # Kaorios Application Visibility Hook
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v0
    if-eqz v0, :kaorios_visibility_stock
    invoke-static {p2, v0, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_visibility_stock
    const/4 v0, 0x1
    return v0

    :kaorios_visibility_stock
    # Execution continues to stock visibility checks...
```

#### 3-Parameter Overload (`p2` = callingUid, `p3` = userId):
Substitute `p3` in place of `p5` in the `invoke-static` instruction above.

*Register Allocation Note:* If physical register indices exceed 15, allocate three consecutive fresh local registers (e.g. `v20..v22`), move `p2`, `p1.getPackageName()`, and `p5`/`p3` into them, and execute `invoke-static/range {v20 .. v22}`.

---

### 4.3 Installer Package & Source Information Interception (Conditional) — `ComputerEngine`
- **Applicability:** Required **only if** the ROM actively implements the installer read APIs `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;` and `getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;`.
- **Constraint:** Both methods must be present as a supported pair. If both are absent, this hook is skipped. If only one is present or the layout differs, stop.

#### Setup at Method Entry (Both Methods):
Reserve five consecutive fresh local registers (e.g. `v10..v14`) representing `(ContentResolver resolver = null, int callingUid, int userId, String targetPackage, String installerPackage)`:
```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```
*Calling UID Capture:* `getCallingUid()` must be captured **before** any invocation of `Binder.clearCallingIdentity()`.

#### Hook in `getInstallerPackageName`:
Locate the stock return of the resolved installer package name (e.g. `return-object v2`). Replace only that return sequence with:
```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

#### Hook in `getInstallSourceInfo`:
Locate the instantiation of `InstallSourceInfo` (`invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(...)`). Immediately before the constructor call, filter the installer package argument register:
```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8

    # Stock constructor invocation follows...
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
```

---

## 5. Optional Android 17 Build Field Spoofing (Mode 2)

On Android 17 ROMs, `Build` fields can be dynamically spoofed at runtime by removing the `final` access modifier and clearing constant String initializers:

1. **`Landroid/os/Build;`:**
   - Remove `final` and set constant String initializers to `null` for: `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.
   - Remove `final` from the primitive field `TIME:J`.
   - *Example Transformation:*
     ```smali
     # Before:
     .field public static final BRAND:Ljava/lang/String; = "OEM"
     # After:
     .field public static BRAND:Ljava/lang/String; = null
     ```
2. **`Landroid/os/Build$VERSION;`:**
   - Remove `final` from: `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.
   - Leave `SDK_INT` and static class initializers (`<clinit>`) completely unmodified.

---

## 6. Reassembly, Repackaging & Re-Extraction Verification

Following manual smali edits, execute the following verification pipeline before flashing modified JARs to any device:

### Step 1: Reassemble Owner Splits
Assemble each modified owner split using smali:
```bash
java -jar smali.jar assemble smali_classes2 --api 34 -o rebuilt/classes2.dex
```

### Step 2: Repackage Candidate JARs
Copy the stock JAR to a distinct output path and replace only modified DEX entries:
```bash
cp stock/framework.jar output/framework-patched.jar
zip -j -0 output/framework-patched.jar rebuilt/classes2.dex
```
Verify archive integrity with `unzip -tq output/framework-patched.jar`.

### Step 3: Re-Extract Candidate Splits into Clean Directories
Do not verify against your working tree. Extract the candidate JAR into a new empty directory:
```bash
unzip -q output/framework-patched.jar 'classes*.dex' -d recheck/framework/
java -jar baksmali.jar disassemble recheck/framework/classes2.dex --api 34 -o recheck/smali_framework/
```

### Step 4: Run Automated Host Verifiers
From the public repository root, execute the verification suite:
```bash
# Verify Framework caller hooks
python3 -I script/verify-framework-a17-hooks.py recheck/smali_framework --caller-only

# Verify Services caller hooks
python3 -I script/verify-services-a17-hooks.py recheck/smali_services
python3 -I script/verify-systemserver-a17-hooks.py recheck/smali_services

# Verify Facade ABI matching against the disassembled payload
python3 -I script/verify-payload-abi.py recheck/smali_framework --payload-smali /path/to/disassembled-payload
python3 -I script/verify-payload-abi.py recheck/smali_services --payload-smali /path/to/disassembled-payload
```

---

## 7. Evidence Boundary

- **Host Bytecode Verification:** Successful assembly, class inventory checks, and verifier script passes confirm that smali instructions adhere to documented patterns, register allocations are sound, and callee descriptors match the provided payload.
- **Runtime Outcome Boundary:** A successful host-side check does **not** prove that a target ROM will boot without kernel or service panics, that runtime classloaders correctly resolve dependencies across JAR boundaries, or that Google Play Integrity attestation checks will pass on a physical device. Real-ROM verification requires physical hardware testing with serial console logging and logcat capture.
