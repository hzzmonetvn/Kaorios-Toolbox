# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

> Keep the stock JAR/APK files from the target ROM. Do not replace a stock DEX or copy an entire template class from another ROM.

This guide is shared across Android 13, 14, 15, 16 and 17.

> [!IMPORTANT]
> The hook ABI source of truth is `KaoriosHook.java` in the private framework repository; public scripts must match those descriptors. The patcher only auto-patches layouts proven by its current verifier and must fail closed on unknown layouts. Do not infer support from a template or another ROM. Class/method layout can differ between AOSP and OEM ROMs, so templates are references for equivalent logic only. Android 17 differences are called out where needed.

> [!WARNING]
> Registers in snippets are examples. `vScratch`, `vHook`, `vX`, and `<cursor_reg>` are placeholders that must be replaced with valid target ROM registers. Resolve actual values and liveness, including `v0`, before editing; preserve stock registers used on fallback paths.

## Start from clean stock files from the target ROM

Back up `framework.jar.orig`, `services.jar.orig`, and `SettingsProvider.apk.orig` before editing. Always use clean files from the exact target ROM. Do not copy whole Template classes from another ROM. Avoid frameworks with arbitrary prior patches; restore clean source if earlier modifications conflict.

## Multi-DEX workspace

A target class may be in `classes2.dex`, `classes3.dex`, or another split rather than `classes.dex`. Disassemble each DEX into its own tree:

```bash
mkdir -p work/framework/input
unzip framework.jar 'classes*.dex' -d work/framework/input
for dex in work/framework/input/classes*.dex; do
    name=$(basename "$dex" .dex)
    baksmali d "$dex" -o "work/framework/smali_${name}"
done
```

The output trees are `work/framework/smali_classes`, `work/framework/smali_classes2`, ... Use `work/services/` and `work/settingsprovider/` for the other archives. Search all smali trees in the workspace.

Compatibility sample bundles and generated documented toolchains are intentionally not distributed in this repository. Treat the included Template files only as structural references: always inspect the exact stock ROM layout, resolve registers on that ROM, and rely on the patcher's fail-closed verification rather than assuming another ROM's descriptors or register layout.

## Auto-patcher

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 1 --no-delay
# General CLI:
python3 script/kaorios_patcher.py <target_dir_or_file> --android-version {13,14,15,16,17} --mode {1,2,3} [--no-delay]
```

Mode `1` inserts hooks; mode `2` patches A17 Build spoof (`Build` and `Build$VERSION`); mode `3` does both. `--no-delay` disables typing delays.

The maintained entry point is **`script/kaorios_patcher.py`**. `script/kaorios_patcher_a17.py` is only a compatibility launcher for older commands. Some sibling patcher/verifier filenames still contain `a17` for compatibility; that filename does **not** mean the verified hook is Android-17-only.

For mode 1/3 the current target set is:

- `ActivityThread.smali`
- `ComputerEngine.smali`
- `SettingsProvider.smali`
- `SystemServer.smali`
- `AndroidKeyStoreKeyPairGeneratorSpi.smali`
- `AndroidKeyStoreSpi.smali`
- `Instrumentation.smali`
- `ApplicationPackageManager.smali`

Mode 2/3 additionally targets `Build.smali` and `Build$VERSION.smali`, and is accepted only with `--android-version 17`.

Run the patcher against the decompiled tree that actually contains each class. A normal multi-DEX job therefore usually means running mode 1 separately against the framework, services and SettingsProvider workspaces rather than pointing at one unrelated directory and assuming every hook is present there.

### Patcher execution matrix

| Android | Canonical command | Hooks | Build spoof |
|---|---|---|---|
| 13 | `--android-version 13 --mode 1` | Yes, layout/verifier driven | No |
| 14 | `--android-version 14 --mode 1` | Yes, layout/verifier driven | No |
| 15 | `--android-version 15 --mode 1` | Yes, layout/verifier driven | No |
| 16 | `--android-version 16 --mode 1` | Yes, layout/verifier driven | No |
| 17 | `--android-version 17 --mode 1` | Yes, layout/verifier driven | Optional |
| 17 | `--android-version 17 --mode 3` | Yes | Yes |

The Android label selects valid policy; call-sites are still selected by class/method descriptor plus verifier. Android 13–16 **must not** use mode 2/3.

The patcher validates supported register/control-flow layout and structurally verifies resulting hooks before saving; it does not invoke a smali assembler. A file outside the mode's targets prints a not-target message and is unsuccessful; a directory without targets also fails. The CLI does not print a separate literal status for an unrelated file. Exit `0` means required processing in this CLI context succeeded; exit `1` means error, unsupported layout, or no applicable target. Work on backed-up trees: earlier successful files may already have been saved when another file fails.

## 1. `framework.jar`

### A. Initialize each app

**Class:**
```smali
Landroid/app/Instrumentation;
```

**Reference smali:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

For both overloads, every supported `return-object` must have `initContext()` immediately before it. The patcher verifies every return path; do not patch only the final textual return:

1. `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;`
   In the reference layouts used to prepare this guide this method is **static**, `.registers 3`: `p0=Class=v1`, `p1=Context=v2`, one return. Hook:
   ```smali
   invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
   ```
   If a target ROM has an instance variant, resolve it again: `p0=this`, `p1=Class`, `p2=Context`; pass `p2`, not the static mapping.

2. `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`
   In virtual instance methods, `p0` is `this`, `p1` is `ClassLoader`, `p2` is `String`, and `p3` is `Context`:
   ```smali
   invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
   ```

If the physical parameter register index exceeds 15 (due to high `.locals`), use `invoke-static/range {pN .. pN}`. No extra register is required.

#### ActivityThread: verified entry aliases

In the supported reference layouts the method is `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`. Entry moves copy `this` and AppBindData into locals; the literal `iput-object p1,p0` is absent. The patcher proves the entry aliases, rejects overwritten aliases or unsafe back edges, and hooks immediately after assigning mBoundApplication on the proven receiver.

| Sample | .registers | AppBindData / this alias |
|---|---:|---|
| A13 | 35 | v2 / v1 |
| A14 | 35 | v10 / v9 |
| A15 | 38 | v10 / v9 |
| A16 | 32 | v9 / v1 |
| A17 | 39 | v9 / v1 |

Example **for an A13 reference layout**:

```smali
iput-object v2, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
invoke-static {v2}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

No local growth is needed. Pass the actual AppBindData alias; a physical index >15 requires a single-register range after proving the alias. The deployed DEX must export this Object ABI.

---

### B. Hook system features

**Class:**
```smali
Landroid/app/ApplicationPackageManager;
```

**Reference smali:** [`ApplicationPackageManager.smali`](../Template/Template_V2060/framework/ApplicationPackageManager.smali)

**Method:**
```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

#### Smali Register Allocation Safety & Scratch Register

`hasSystemFeature(String, int)` is a virtual instance method with 3 parameter registers: `p0` (`this`), `p1` (`String`), and `p2` (`int`).

> [!WARNING]
> **Do NOT reuse or clobber `v0`!**
> Stock methods often rely on registers like `v0` remaining intact. When the hook returns `null` (stock fallback), clobbering `v0` causes crashes or broken system state. You must allocate a fresh scratch register (`vScratch`).

**Register Allocation Steps:**
1. **Canonicalize Parameter Aliases:**
   If the method uses `.registers R`, parameters `p0..p2` map physically to `v(R-3)..v(R-1)`. Any stock instruction referencing these parameter slots by `vN` must be rewritten to `pN` before expanding the register count to prevent clobbering parameter values.
   This also applies to `.locals`: with `.locals 2`, `p0=v2`, `p1=v3`, `p2=v4`; after growth to `.locals 3`, `p1=v4`, so the old `v3` no longer aliases `p1`. Canonicalize all stock parameter aliases before growing locals.
2. **Expand Register Directive by 1:**
   - If `.locals L`: change to `.locals L+1`. The new scratch register is `vL`.
   - If `.registers R`: change to `.registers R+1`. The new scratch register is `v(R-3)`.
3. **Format 35c vs. 3rc Range Limits (> 15 Registers):**
   - Dalvik Format 35c (`invoke-static {p1, p2}`) only supports 4-bit register indices (`0..15`).
   - If `p1 > 15` or `p2 > 15`, use Format 3rc: `invoke-static/range {p1 .. p2}`.
   - If `vScratch > 15`, use `invoke-virtual/range {vScratch .. vScratch}` for `booleanValue()`.

**Hook Insertion:**
Immediately below the updated register directive, add:

```smali
    # Format 35c (registers <= 15) or Format 3rc (/range for > 15)
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object vScratch

    if-eqz vScratch, :cond_kaorios_feature_stock
    invoke-virtual {vScratch}, Ljava/lang/Boolean;->booleanValue()Z
    move-result vScratch
    return vScratch

:cond_kaorios_feature_stock
```

When the hook returns `null`, stock code continues with all original registers intact.

Use a different label if the target method already contains `:cond_kaorios_feature_stock`.

---

### C. Hook software key generation

**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Reference smali:** [`AndroidKeyStoreKeyPairGeneratorSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)

**Method:**
```smali
generateKeyPair()Ljava/security/KeyPair;
```

`generateKeyPair()` is a virtual method with 1 parameter register: `p0` (`this`).

**Register Allocation:**
- Increase `.locals L` to `.locals L+1` (new scratch local is `vL`), or `.registers R` to `.registers R+1` (canonicalize `v(R-1)` to `p0`, scratch local is `v(R-1)`).
- If `p0 > 15`, use `invoke-static/range {p0 .. p0}`.

**Hook Insertion:**
Below the register/local directive add:

```smali
    invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object vScratch

    if-eqz vScratch, :cond_kaorios_gen_stock
    return-object vScratch

:cond_kaorios_gen_stock
```

---

### D. Hook the certificate chain

**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Reference smali:** [`AndroidKeyStoreSpi.smali`](../Template/Template_V2060/framework/AndroidKeyStoreSpi.smali)

**Method:**
```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

`engineGetCertificateChain` is a virtual method: `p0` (`this`), `p1` (`String alias`).

Find a leaf populated-array return path: `aput-object` writes into array register X, followed only by blank lines or debug directives allowed by the verified layout (`.line`, `.local`, `.end local`, `.restart local`), then `return-object X`. Hook X immediately before that return and move the result back into X. Do not select an array write by its textual position; verify the array flow and return path.

> [!IMPORTANT]
> **Leaf-Path Placement Rationale:**  
> `engineGetCertificateChain` contains early null-return exits (when `KeyEntryResponse` is null or certificate bytes are null) and exactly one populated-array return exit (`caList`). You must **never** hook the null-return exits. Hooking null paths passes `null` to the hook or returns modified arrays when no certificate should exist, breaking stock fallback logic and risking `NullPointerException`s in calling clients. The hook `KaoriosHook.CertificateChainIfNeeded` must be inserted strictly on the leaf populated-array path, immediately after the leaf certificate is stored via `aput-object` into the array and before its `return-object`. Leave early null returns untouched and avoid intermediate loops. An ambiguous layout is `UNSUPPORTED_LAYOUT`.

Example:

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

return-object v3
```

Insert:

```smali
# If array_reg <= 15:
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
# Or if array_reg > 15:
# invoke-static/range {v3 .. v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
```

The register passed to the hook must hold the Certificate array. The result must be moved into the register used by the final `return-object`.

---

## 2. `services.jar`

### A. Initialize SystemServer

**Class:**
```smali
Lcom/android/server/SystemServer;
```

**Reference smali:** [`SystemServer.smali`](../Template/Template_V2060/service/SystemServer.smali)

The goal is to call:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

once inside `SystemServer.run()V`, after core services are initialized but before the main loop runs forever.

### Actual sample anchors

All five `run()V` methods create system context before `startOtherServices(...)`, then enter `Looper.loop()V`. The patcher prefers the loop anchor; new A13–A16 hooks are immediately before it. The existing A17 hook before startOtherServices is accepted by the verifier. The startOtherServices fallback requires a verified corresponding layout; do not select an anchor just from an Android label.

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
invoke-static {}, Landroid/os/Looper;->loop()V
```

No scratch is needed. Preserve try/catch boundaries. Full-Dex run roundtrips passed; actual Binder bootstrap still needs device testing.

---

## 3. Android 17-only Build patch

Android 17 / SDK 37 may require the additional Build-field patch used by PIF/GameProps-style runtime spoofing. This is exactly what mode `2` does, while mode `3` combines it with the hook patch.

### `Build.smali`

For these String fields, remove `final` and set the field initializer to `null`:

`BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`.

For `TIME:J`, remove only `final`; do not append `= null`.

Reference: [`Build.smali`](../Template/Template_V2060/framework/Build.smali).

### `Build$VERSION.smali`

Remove `final` from:

`RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`.

Reference: [`Build$VERSION.smali`](../Template/Template_V2060/framework/Build$VERSION.smali).

Keep `SDK_INT` unchanged. Do not bulk-remove `final` from every Build field. If a custom profile modifies extra fields such as `DISPLAY`, `HOST`, `INCREMENTAL`, `SDK` or additional `*_FOR_ATTESTATION` values, change only the exact fields required by that profile after checking the target ROM layout.

Do not apply mode 2/3 to Android 13–16.

---

## 4. Supplementary patches

Add only the features you need after the core patch boots correctly.

### A. Hide Developer options / ADB state

**Class:** `Landroid/provider/Settings$NameValueCache;`

**Reference smali:** [`Settings$NameValueCache.smali`](../Template/Template_V2060/framework/Settings$NameValueCache.smali)

**Reference method:**
```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Below `.registers X` / `.locals X`, add:

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

Use only the overload returning `String`, not one returning `Pair`.

---

### B. Hide installed apps per caller

The filtering path changes between Android versions and OEM implementations. Patch the Package Manager method that actually decides whether a package is filtered from the caller.

#### Reference-only AppsFilter paths

Common classes:

```smali
Lcom/android/server/pm/AppsFilterBase;
Lcom/android/server/pm/AppsFilterImpl;
```

Older ABI reference:

```smali
invoke-static {vCallingUid, vResolver, vTargetPackage, vUserId}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result vResult

if-eqz vResult, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0

:cond_kaorios_hide_stock
```

Resolve the real registers on the target ROM. In the supported reference layouts, AppsFilterImpl extends AppsFilterLocked, then AppsFilterBase; the production path roundtripped here is ComputerEngine: II in A13/A14, IIZZ in A15–A17. Direct/cache AppsFilter snippets remain references, without automatic patch or runtime certification.

#### ComputerEngine patch path

Class:

```smali
Lcom/android/server/pm/ComputerEngine;
```

The cross-version patcher selects the verified overload that exists in the target ROM:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

and falls back to:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

Current ABI used for all five samples:

```smali
shouldHideAppListForCaller(ILjava/lang/String;I)Z
```

Arguments are:

```text
callingUid, targetPackageName, userId
```

Example for the IIZZ overload:

```smali
if-eqz p1, :cond_kaorios_ps_null

invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object vHook
if-eqz vHook, :cond_kaorios_ps_null

invoke-static {p2, vHook, p5}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
move-result vHook

if-eqz vHook, :cond_kaorios_ps_null
const/4 vHook, 0x1
return vHook

:cond_kaorios_ps_null
```

Allocate one extra local for `vHook`.

Use the current ABI exported by the shipped DEX. Android generation labels do not select an older hook ABI. In these samples, the auto-patcher uses the II fallback on A13/A14 and IIZZ on A15–A17. AppsFilterImpl inherits through AppsFilterLocked from AppsFilterBase; direct/cache injection in those reference classes was not patched or certified here.

---

### C. Spoof installer source

Enable Advanced Features, then edit a caller rule in Hide Features. `hideInstallationSource` reports Play Store for installed non-system packages queried by that caller. `hideSystemInstallationSource` optionally returns null for system packages; otherwise they stay stock. `excludeTargetInstallationSource` keeps the caller's own installer stock. Child options retain their values while the parent is off. Installer policy applies to installed targets queried by the caller, independently of the app-hide target/template lists. Manager callers, unresolved targets and runtime failures retain stock behavior; Advanced OFF disables filtering. With shared UIDs, any eligible package rule can activate filtering, except a UID containing the manager.

For the A17 reference layout, patch both `ComputerEngine.getInstallerPackageName(String,int)String` and `ComputerEngine.getInstallSourceInfo(String,int)InstallSourceInfo`. The latter filters only the installing package constructor argument, covering `getInstallingPackageName()`. Initiating/originating package, update owner, package source, database records and PackageInstaller transactions remain stock. Inspect the exact target-ROM descriptor before patching.

```sh
python script/patch-installer-source.py /path/to/ComputerEngine.smali
python script/patch-installer-source.py /path/to/ComputerEngine.smali --verify-only
```

Mode 1/3 of the main patcher and the services artifact pipeline also include this patch when installer API methods are present. Both APIs must be recognizable; a partial/unknown installer layout fails closed. Visibility-only synthetic fixtures do not establish installer coverage. The structural verifier proves stock installer provenance, original Binder UID, target/user arguments, result replacement and complete relevant return/constructor coverage. Parameter copies preserve stock physical registers; fresh contiguous scratch registers use `/range` safely. A null resolver is intentional for the current snapshot-based hook. Assemble, re-disassemble and verify the target DEX before ROM integration. The Settings capability probe is separate and does not certify installer hooks.

---

### D. Filter / spoof Settings per calling app

This differs between older framework implementations and the current Android 17 patch.

#### Legacy two-stage String hooks

`shouldRemoveSetting(ContentResolver,String,String)` followed by `filterSettingValue(ContentResolver,String,String,String)` remains a deprecated compatibility ABI. Both stages must see the same namespace/name and original Binder caller on the same provider thread. They cannot be copied directly into methods returning `SettingsState$Setting` or Bundle. The generic legacy snippet is not a universal patch strategy. Inspect the target ROM's call/query layout; do not force legacy hooks into A17.

#### Current Android 13–17 SettingsProvider patch

Class:

```smali
Lcom/android/providers/settings/SettingsProvider;
```

#### 1. Method: `call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;`

Current hook ABI:

```smali
filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
```

`call(...)` is an instance method: `p0=this`, `p1=method`, `p2=name`, `p3=args`. The patcher searches for a safe semantic anchor in this order:

1. `getDeviceId()I`: preferred on recognized A17 layouts, preferred when the safe layout is recognized.
2. `getRequestingUserId(Landroid/os/Bundle;)I`: the recognized A13–A16 fallback; also present in A17. Neither anchor is a universal version guarantee.

> [!IMPORTANT]
> **Caller Identity Preservation:**  
> The hook must be inserted AFTER the anchor and its associated `move-result`, but strictly BEFORE `Binder.clearCallingIdentity()`. Placing the hook before `clearCallingIdentity()` ensures that the calling package's authentic Binder identity (`Binder.getCallingUid()` and `Binder.getCallingPid()`) remains intact, which is required for granular per-caller package filtering and setting spoofing. Do not infer the anchor solely from Android version. The patcher canonicalizes physical parameter aliases before local growth and allocates fresh scratch `vHook`.

Use `invoke-static {p1, p2}` when both physical register indices are <=15; otherwise use `invoke-static/range {p1 .. p2}` because the two arguments are contiguous. Low-register example:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
move-result-object vHook

if-eqz vHook, :cond_kaorios_settings_stock
return-object vHook

:cond_kaorios_settings_stock
```

If the hook returns `null`, stock logic continues.

**Warning on `.registers` Parameter Alias Hazard:**
For methods using `.registers R` instead of `.locals L`, parameter registers (`p0..pN`) are physically mapped to `v(R-P)..v(R-1)`. When expanding locals or registers, any stock instruction referencing parameters via physical register aliases (`vN`) will be clobbered unless all parameter aliases are canonicalized to `pN` before the register/local directive is expanded. The patcher canonicalizes all parameter aliases (`vN -> pN`) before register expansion.

For `.registers R`, `call` has four parameter registers (`p0..p3`):

```text
stock locals = R - 4
vHook = v(R - 4)
new .locals = R - 4 + 1
```

#### 2. Method: `query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;`

All five real query bodies reuse p1/p3/p4 for projection/table/name/boolean temporaries. **Do not pass p1,p3,p4 directly at return.** Canonicalize all stock parameter aliases before local growth, allocate three fresh locals, and save the original URI/selection/args at entry before stock instructions.

Pseudocode: stock locals=L; vSavedUri=vL, vSavedSelection=v(L+1), vSavedArgs=v(L+2); new locals=L+3.

```smali
move-object/from16 vSavedUri, p1
move-object/from16 vSavedSelection, p3
move-object/from16 vSavedArgs, p4
# ... stock body; parameter slots may now have unrelated values ...
invoke-static {vCursor, vSavedUri, vSavedSelection, vSavedArgs}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object vCursor
return-object vCursor
```

Every supported return must use its original cursor register and the three unchanged saved arguments. R10 starts with p1/p3/p4=v5/v7/v8: grow to .locals 7, save in v4/v5/v6. R11 starts with p1/p3/p4=v6/v8/v9: grow to .locals 8, save in v5/v6/v7. These are sample numbers, not registers to copy into another ROM. Return counts are 7/7/7/7/8; full DEX roundtrips passed. Old unsaved hooks are rejected; restore clean input before repatching.

The patcher retains conservative 35c limits: p1/p3/p4 after growth and the cursor return must be <=15. `register exceeds format 35c limit (> 15)` (or `return register ... exceeds format 35c limit (> 15)`) means UNSUPPORTED_LAYOUT. The cursor and saved arguments are not guaranteed contiguous in ABI order; do not switch directly to invoke-static/range without first moving all four arguments to contiguous scratch and verifying that layout. Do not force a patch.

Unsupported try/catch, clearCallingIdentity, or ranges crossing the local/parameter boundary fail closed. Do not patch only the final return. None of the five sample call/query methods clears/restores identity; preserve the caller when evaluating other layouts too. Assembly does not replace argument type/provenance validation, and Binder/SELinux still need device checks.

#### 3. AdvancedPolicy SELinux Requirements

The `AdvancedPolicyService` operates as a registered system Binder service (`kaorios_advanced_policy`). For SettingsProvider and system_server to interact properly, the ROM SELinux policy must satisfy:
1. **Service Type**: `kaorios_advanced_policy_service` declared as `service_manager_type`.
2. **service_contexts**: Exactly mapped as `kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0` without conflicts.
3. **system_server**: Allowed `service_manager { add find }` for `kaorios_advanced_policy_service`.
4. **SettingsProvider Domain** (e.g. `system_app`): Allowed `service_manager { find }` for `kaorios_advanced_policy_service`.
5. **Binder Call**: Allowed `binder { call }` between the SettingsProvider domain and `system_server`.

Inspect compliance with `script/check-advanced-policy-sepolicy.sh` or `script/check-advanced-policy-sepolicy.py`. Manager runtime-status reads also need find/call access for the manager’s actual domain. These 15 archives do not contain ROM sepolicy and cannot certify it; unavailable status must remain unavailable.

#### 4. Post-Patch Verification Requirement

All patched smali artifacts must pass their corresponding fail-closed verifiers before repacking:
- Framework: `verify-framework-a17-hooks.py`
- Services (`ComputerEngine`): `verify-services-a17-hooks.py`
- SystemServer: `verify-systemserver-a17-hooks.py`
- SettingsProvider: `verify-settingsprovider-a17-hooks.py`

Do not flash or ship modified DEXes if any verifier exits non-zero.

---

## 5. Post-patch verification

Before building/flashing:

- each hook appears only once in the target method;
- new labels do not collide with stock labels;
- new locals do not overlap stock locals/parameters;
- every invoked signature exists in the Kaorios DEX being shipped;
- unrelated stock DEXes remain unchanged;
- Settings hooks run while the correct Binder caller identity is still available;
- `initSystemServer()` is called once.

After building:

1. reassemble the Smali;
2. disassemble the rebuilt artifact and verify the hook is still present;
3. boot the ROM;
4. check logcat/crashes;
5. test each feature separately.

Android 13–17 and OEM updates can move methods/registers, so follow the equivalent logic instead of copying hard-coded registers.

---

## 6. Other documentation

- [Disable Secure Flag](Disable_Secure_Flag.md)
- [CorePatch](CorePatch.md)
- [Smali templates](../Template/Template_V2060)

## Rebuild and ROM integration

Use the pinned toolchain in the documented toolchain: smali/baksmali/dexlib2/util 3.0.8, JCommander 1.64. Full framework hidden-API flags require more than default API 15. With this tool, assemble input DEX 039 with API 29, input DEX 040 with API 34 to preserve stock format; API >=35 has a DEX 041 writer defect. Require a produced DEX with unchanged magic, re-disassemble and verify the full DEX; do not repair binary headers to conceal errors. Assembler API selects format/opcodes, not the ROM Android/SDK version.


1. Assemble each modified smali tree back into its matching DEX, for an input DEX 039, for example `smali a --api 29 work/framework/smali_classes2 -o work/framework/output/classes2.dex` (create the output directory first).
2. Replace only the corresponding `classes*.dex` entries in a copy of the target archive.
3. Preserve all other archive contents.
4. Verify the archive entries and replaced DEX files.
5. Optionally disassemble the rebuilt DEX and rerun hook verification; assembly and structural verification check different properties.
6. Integrate using the ROM-specific build/packaging process. Do not apply a normal user APK signing workflow to `framework.jar`, `services.jar`, or `SettingsProvider.apk`.

## Troubleshooting status table

| Status / situation | Meaning / action |
|---|---|
| PATCHED | The file changed and structural verification passed. |
| ALREADY_PATCHED | The full final verifier confirms the desired structure, not just a hook name. |
| UNSUPPORTED_LAYOUT | Target found but a safe layout was not recognized; restore stock and inspect the layout. |
| FAILED | Internal or verifier failure; inspect the error and restore the working file as needed. |
| No target found | Wrong directory, different Android/OEM layout, class in another DEX, or irrelevant target; search all splits. |
| High-register query | SettingsProvider.query cannot safely encode the non-contiguous arguments; UNSUPPORTED_LAYOUT, do not force /range. |

The CLI may print Vietnamese messages such as `ĐÃ ĐƯỢC PATCH TỪ TRƯỚC (Verifier PASS)` or `UNSUPPORTED LAYOUT` rather than the enum spelling. Passing verification is not boot/runtime/device proof.

## Advanced Settings runtime

The saved request is user intent (`kaorios_advanced_features`). Settings capability is hook reachability through Global/Secure/System nonces, independent of the master flag. Policy active means the actual system_server snapshot is ready and `enabled=true`. Effective Settings requires all three plus generation acknowledgement; a passing probe or successful preference write alone is insufficient.

### Startup, toggles and retry

Saved OFF needs no startup probe/status read. Saved ON rechecks all three namespaces and reads policy status over Binder: unavailable hooks, an unready service, a disabled snapshot or a stale generation leaves Settings spoofing inactive without clearing the saved ON request. The switch shows saved intent; the Settings spoof card shows runtime effectiveness and a disabled reason.

Toggle ON probes before writing; failed capability makes no write. Total write failure keeps OFF; partial writes retain ON intent with uncertain propagation. After a successful write, Settings runtime is active only when an enabled snapshot acknowledges the epoch. Toggle OFF changes saved intent as soon as valueWritten=true, even if the snapshot is temporarily still ON. Runtime shutdown remains pending until a ready system_server snapshot reports enabled=false and acknowledges the generation. Unavailable status after either ON or OFF write never means propagation succeeded; retain the warning and allow recheck. There is no polling. **Recheck Settings runtime** rereads generation and snapshot, plus Settings probes when saved ON, without writing the flag or forcing service refresh. Saved OFF with no pending acknowledgement offers no Retry and performs no runtime reads; the inactive card directs the user to enable Advanced Features in Settings. Retry can restore effective Settings only after the actual status confirms active policy.

### Runtime policy acknowledgement

The existing Binder service exposes read-only readiness, enabled and snapshot generation metadata, without rules/spoof values or Settings reads/writes in the getter. Root/system and the sole UID package matching the current snapshot manager are allowed, including randomized manager packages; shared application UIDs are denied. The ROM must allow the manager domain to find the service and call Binder; do not grant every app access to policy state. Missing service, an old API, IPC/SELinux denial and errors are unavailable; the client never substitutes a local snapshot for system_server state.

Generation is the snapshot's `kaorios_time` token. The client compares it with the epoch read after writing: an equal or newer numeric token acknowledges propagation. When the epoch write fails, the snapshot must advance beyond the baseline captured before writing before clearing the propagation warning, for both ON and OFF. Once acknowledged, later rechecks compare the current epoch normally. Unreadable/incomparable tokens remain uncertain. The status query does not refresh policy; the service observer loads snapshots.

### Other capability domains

Settings probes do not verify package visibility or installer hooks. Hide Features uses master intent to configure rules and labels package hook status **not verified**; installer retains its separate verified-ROM-hook warning. No temporary package installation, install-source mutation or HMA config write is used to probe these domains. An installed non-system target with a null stock installer can still return `com.android.vending` under the caller rule; early null InstallSourceInfo and unknown targets retain stock behavior. Only the installing package field is filtered.

See target-device validation. Settings and Installer roadmaps remain PARTIAL / NEEDS_DEVICE_TEST.

## Keybox download and import

See the Keybox guide for Hub XML, EC-only/RSA-only support, safe validation errors and last-known-good behavior. A verified certificate-chain hook layout does not prove the supplied Keybox is cryptographically valid or device-tested.
