# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

> Keep the stock JAR/APK files from the target ROM. Do not replace a stock DEX or copy an entire template class from another ROM.

This guide is shared across Android 13, 14, 15, 16 and 17. Class/method layout can differ between AOSP and OEM ROMs, so templates are references for equivalent logic only. Android 17 differences are called out where needed.

> [!WARNING]
> Registers in snippets are examples. `vScratch`, `vHook`, `vX`, and `<cursor_reg>` are placeholders that must be replaced with valid target ROM registers. Resolve actual values and liveness, including `v0`, before editing; preserve stock registers used on fallback paths.

## Start from clean stock files from the target ROM

Back up `framework.jar.orig`, `services.jar.orig`, and `SettingsProvider.apk.orig` before editing. Always use clean files from the exact target ROM. Do not copy `tmp/fw/` samples into a ROM or copy whole Template classes from another ROM. Avoid frameworks with arbitrary prior patches; restore clean source if earlier modifications conflict.

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

The output trees are `work/framework/smali_classes`, `work/framework/smali_classes2`, ... Use `work/services/` and `work/settingsprovider/` for the other archives. Search all smali trees in the workspace; do not overwrite the `tmp/fw/` dataset.

## Included Framework Samples

`tmp/fw/**` contains sample/reference frameworks from several Android/HyperOS generations. Each sample includes `framework.jar`, `services.jar`, and `SettingsProvider.apk`. Use them to inspect class presence, method descriptors, control flow and register layout, research compatibility, and develop/test the patcher.

These are not files to flash, a canonical framework, replacements for your ROM, universal proof that every ROM on the same Android version has the same layout, or runtime dependencies. Observations below apply only **in the included sample**; class presence does not establish full feature support.

| Target | A13 sample | A14 sample | A15 sample | A16 sample | A17 sample |
|---|---|---|---|---|---|
| ActivityThread / handleBindApplication | FOUND | FOUND | FOUND | FOUND | FOUND |
| Instrumentation / both newApplication overloads | FOUND | FOUND | FOUND | FOUND | FOUND |
| ApplicationPackageManager / hasSystemFeature(String,int) | FOUND | FOUND | FOUND | FOUND | FOUND |
| AndroidKeyStoreKeyPairGeneratorSpi / generateKeyPair | FOUND | FOUND | FOUND | FOUND | FOUND |
| AndroidKeyStoreSpi / engineGetCertificateChain | FOUND | FOUND | FOUND | FOUND | FOUND |
| Build | FOUND | FOUND | FOUND | FOUND | FOUND |
| Build$VERSION | FOUND | FOUND | FOUND | FOUND | FOUND |
| SystemServer / run | FOUND | FOUND | FOUND | FOUND | FOUND |
| ComputerEngine | FOUND | FOUND | FOUND | FOUND | FOUND |
| AppsFilterBase | FOUND | FOUND | FOUND | FOUND | FOUND |
| AppsFilterImpl | FOUND | FOUND | FOUND | FOUND | FOUND |
| SettingsProvider / call + query | FOUND | FOUND | FOUND | FOUND | FOUND |
| ComputerEngine / PackageStateInternal IIZZ overload | DIFFERENT LAYOUT | DIFFERENT LAYOUT | FOUND | FOUND | FOUND |
| SettingsProvider.call / getDeviceId() anchor | NOT FOUND | NOT FOUND | NOT FOUND | NOT FOUND | FOUND |
| SettingsProvider.call / getRequestingUserId(Bundle) anchor | FOUND | FOUND | FOUND | FOUND | FOUND |

`FOUND` means the named class/method was located. `NOT FOUND` means that specific target was absent. `DIFFERENT LAYOUT` means the class exists but the compared descriptor differs; `NOT APPLICABLE` is reserved for irrelevant targets (no cells need it here).

### Included sample observations

- **MIUI 14 / Android 13 (`miui14-a13`)**: in the included sample, `newApplication(Class,Context)` is static with Context `p1`; the ClassLoader overload is instance with Context `p3`. ComputerEngine has PackageStateInternal `II` and ComponentName `II` overloads, without `IIZZ`. SettingsProvider.call uses `getRequestingUserId(Bundle)`; query has `.registers 10` and 7 return-object exits.
- **HyperOS 1 / Android 14 (`os1-a14`)**: in the included sample, Instrumentation mapping and SettingsProvider anchor match A13; ComputerEngine adds ComponentName `IIZ`, without `IIZZ`. Query has `.registers 10` and 7 return-object exits.
- **HyperOS 2 / Android 15 (`os2-a15`)**: in the included sample, ComputerEngine has `IIZZ`; SettingsProvider.call still uses `getRequestingUserId(Bundle)`. Query has `.registers 11` and 7 return-object exits.
- **HyperOS 3 / Android 16 (`os3-a16`)**: in the included sample, ComputerEngine has `IIZZ`; call still uses `getRequestingUserId(Bundle)`. Query has `.registers 10` and 7 return-object exits.
- **HyperOS 4 / Android 17 (`os4-a17`)**: in the included sample, call has both anchors and the patcher prefers `getDeviceId()`; ComputerEngine has `IIZZ`. Query has `.registers 11`, 8 return-object exits and a `getDeviceId()` invocation.

In all five samples, each Instrumentation overload has one return-object; KeyStore SPI has two null paths and one populated-array return (`v3`, `.registers 11`). `SystemServer.run()` contains both `startOtherServices(...)` and `Looper.loop()` with differing register counts. AppsFilterBase declares `shouldFilterApplication(...)` and `shouldFilterApplicationUsingCache(III)Z`; AppsFilterImpl exists but does not itself declare these two methods. Check inherited methods and exact descriptors. These are source observations from baksmali inspection of all DEX splits in 15 archives, not a CI oracle or runtime/device verification.

## Auto-patcher

```bash
python3 script/kaorios_patcher_a17.py work/framework --mode 1 --no-delay
# General CLI:
python3 script/kaorios_patcher_a17.py <target_dir_or_file> --mode {1,2,3} [--no-delay]
```

Mode `1` inserts hooks; mode `2` patches A17 Build spoof (`Build` and `Build$VERSION`); mode `3` does both. `--no-delay` disables typing delays. Scan the corresponding framework, services and SettingsProvider smali workspaces; the A17 name does not guarantee support for every OEM layout.

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
   In virtual instance methods, `p0` is `this`, `p1` is `Class<?>`, and `p2` is `Context`:
   ```smali
   invoke-static {p2}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
   ```
   *(Note: if compiled as a static method in an OEM ROM, `p0` is `Class` and `p1` is `Context`, pass `p1`).*

2. `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`
   In virtual instance methods, `p0` is `this`, `p1` is `ClassLoader`, `p2` is `String`, and `p3` is `Context`:
   ```smali
   invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
   ```

If the parameter register number exceeds 15 (due to high `.locals`), use `invoke-static/range {pN .. pN}`. No extra register is required.

#### Android 17

Some Android 17 builds also use a process hook in:

```smali
Landroid/app/ActivityThread;
```

Method:

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

Find:

```smali
iput-object p1, p0, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
```

Insert immediately after it:

```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Only add this when the Kaorios DEX being used exposes `initActivityThread(Ljava/lang/Object;)V`.

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

### Android 13–16

On many builds, a suitable anchor is immediately before:

```smali
Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Example:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-direct {p0, vX}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Opcode/registers may differ by ROM; match the actual `startOtherServices(...)` call.

### Android 17

The current A17 patcher uses the safer `run()V` anchor:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Insert immediately before it:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

invoke-static {}, Landroid/os/Looper;->loop()V
```

No extra register is required.

---

## 3. Android 17-only patch

Android 17 / SDK 37 additionally requires the `Build.smali` and `Build$VERSION.smali` field patch.

See [notes-a17.md](notes-a17.md).

Do not apply this section to Android 13–16 unless your framework explicitly requires it.

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

#### Android 13–16 / AppsFilter-based ROMs

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

Resolve the real registers on the target ROM.

#### Current Android 17 path

Class:

```smali
Lcom/android/server/pm/ComputerEngine;
```

The A17 patcher prefers:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

and falls back to:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
```

Current A17 ABI:

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

Do not mix the Android 13–16 ABI with the current Android 17 ABI. Verify the actual KaoriosHook signature in the DEX you are shipping.

---

### C. Spoof installer source

The class/method varies across Android versions and OEM ROMs. Patch after Package Manager resolves the stock installer and before the value is returned to the caller.

Reference hook:

```smali
invoke-static {vResolver, vCallingUid, vUserId, vPackageName, vInstaller}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vInstaller
```

Identify the resolver/null value, calling UID, user ID, queried package and stock installer register on the target ROM.

---

### D. Filter / spoof Settings per calling app

This differs between older framework implementations and the current Android 17 patch.

#### Android 13–16 / String-based hook

Patch the server-side SettingsProvider GET path while the original Binder caller identity is still active.

Do not place the hook:

- in a client cache such as `Settings$NameValueCache`;
- after `Binder.clearCallingIdentity()`;
- in a method that does not return the real Settings value to the caller.

For frameworks using:

```smali
shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
```

reference logic:

```smali
const/4 vNull, 0x0

invoke-static {vNull, vNamespace, vName}, Landroid/security/kaorios/KaoriosHook;->shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
move-result vRemove

if-eqz vRemove, :cond_kaorios_setting_value
const/4 vValue, 0x0
return-object vValue

:cond_kaorios_setting_value
invoke-static {vNull, vNamespace, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Preserve required stock cleanup and return flow.

#### Current Android 17 patch

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

1. Primary Anchor: `getDeviceId()I` (preferred on newer Android 17 / HyperOS 4 ROMs where virtual device routing precedes binder operations and establishes target execution context without side effects).
2. Fallback Anchor: `getRequestingUserId(Landroid/os/Bundle;)I` (for Android 13–16 and ROMs without virtual device routing).

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

Current query hook ABI:

```smali
filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
```

To support cursor-based settings queries per calling app, `SettingsProvider.query(...)` requires post-processing hook insertion on every supported `return-object` path.

Each supported return path must pair the hook, `move-result-object`, and `return-object` using the same cursor register:

```smali
invoke-static {<cursor_reg>, p1, p3, p4}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object <cursor_reg>
return-object <cursor_reg>
```

Try/catch, complex CFG, or unsupported branch structures may fail closed. Do not manually patch only the final textual return.

If the physical index of `p1`, `p3`, `p4`, or the returned cursor register exceeds 15, the patcher fails closed with `register exceeds format 35c limit (> 15)` (the cursor variant says `return register ... exceeds format 35c limit (> 15)`). Treat this as `UNSUPPORTED_LAYOUT`. Arguments `cursorReg, p1, p3, p4` are non-contiguous; switching directly to `invoke-static/range` cannot encode them without first moving them into contiguous scratch registers and verifying that layout. Do not force the patch.

Stock cursor semantics and nullity are preserved if the hook returns the original cursor or null.

#### 3. AdvancedPolicy SELinux Requirements

The `AdvancedPolicyService` operates as a registered system Binder service (`kaorios_advanced_policy`). For SettingsProvider and system_server to interact properly, the ROM SELinux policy must satisfy:
1. **Service Type**: `kaorios_advanced_policy_service` declared as `service_manager_type`.
2. **service_contexts**: Exactly mapped as `kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0` without conflicts.
3. **system_server**: Allowed `service_manager { add find }` for `kaorios_advanced_policy_service`.
4. **SettingsProvider Domain** (e.g. `system_app`): Allowed `service_manager { find }` for `kaorios_advanced_policy_service`.
5. **Binder Call**: Allowed `binder { call }` between the SettingsProvider domain and `system_server`.

Inspect compliance with `script/check-advanced-policy-sepolicy.sh` or `script/check-advanced-policy-sepolicy.py`.

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

- [Android 17 Build patch](notes-a17.md)
- [Disable Secure Flag](Disable_Secure_Flag.md)
- [CorePatch](CorePatch.md)
- [Smali templates](../Template/Template_V2060)

## Rebuild and ROM integration

1. Assemble each modified smali tree back into its matching DEX, for example `smali a work/framework/smali_classes2 -o work/framework/output/classes2.dex` (create the output directory first).
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
