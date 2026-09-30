# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

> Keep the stock JAR/APK files from the target ROM. Do not replace a stock DEX or copy an entire template class from another ROM.

This guide is shared across Android 13, 14, 15, 16 and 17. Class/method layout can differ between AOSP and OEM ROMs, so templates are references for equivalent logic only. Android 17 differences are called out where needed.

### Multi-DEX Disassembly & Sample Reference (`tmp/fw/`)

Modern Android system frameworks (`framework.jar`, `services.jar`, etc.) contain multiple DEX files: `classes.dex`, `classes2.dex`, `classes3.dex`, etc.
When disassembling:
- Use `baksmali` to disassemble each DEX into a distinct directory (e.g., `smali/`, `smali_classes2/`, `smali_classes3/`) or extract into a unified working directory (e.g., `tmp/fw/` for `framework.jar` and `tmp/services/` for `services.jar`):
  ```bash
  # Example disassembling framework.jar multi-dex
  mkdir -p tmp/fw
  unzip framework.jar 'classes*.dex' -d tmp/fw/
  for dex in tmp/fw/classes*.dex; do
      name=$(basename "$dex" .dex)
      out_dir="tmp/fw/${name}"
      baksmali d "$dex" -o "$out_dir"
  done
  ```
- Use `tmp/fw/` as a reference directory to search across all DEX splits (e.g. `find tmp/fw/ -name "ApplicationPackageManager.smali"`) and to diff against stock classes before repacking.

## 1. `framework.jar`

### A. Initialize each app

**Class:**
```smali
Landroid/app/Instrumentation;
```

**Reference smali:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

Patch both methods before their final `return-object`:

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

Before the final `return-object <array_reg>`, locate the leaf insertion point immediately after the certificate array is populated (usually following an `aput-object` that writes into the array).

> [!NOTE]
> Do not hook intermediate loops or the early null-return paths. Only hook the final populated certificate array before it is returned.

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

Inside `call(...)`, find the `getDeviceId()I` call. If a `move-result` follows it, inject after that line but strictly BEFORE any later `Binder.clearCallingIdentity()`. The hook relies on Binder calling UID/PID to determine the true calling package identity.

Allocate one extra local `vHook`, then add:

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

To support cursor-based settings queries per calling app, `SettingsProvider.query(...)` requires post-processing hook insertion at every `return-object` exit site.

Before each `return-object <cursor_reg>`, insert:

```smali
invoke-static {<cursor_reg>, p1, p3, p4}, Landroid/security/kaorios/KaoriosHook;->filterSettingsQueryResult(Landroid/database/Cursor;Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
move-result-object <cursor_reg>
return-object <cursor_reg>
```

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
