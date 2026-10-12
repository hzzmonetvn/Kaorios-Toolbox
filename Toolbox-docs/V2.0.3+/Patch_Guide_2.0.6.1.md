# Kaorios Toolbox — Manual patch guide 2.0.6.1 (Android 13–17)

[Tiếng Việt](Patch_Guide_2.0.6.1_VI.md) | [Agent procedure](../agent.md) | [Patcher guide](Patcher_Guide_2.0.6.1.md)

This guide is for someone who can read smali but has not merged a payload into a ROM before. You will edit **copies** of `framework.jar` and `services.jar` from the exact build, import the payload into framework, add hooks to the ROM methods actually in use, and verify the saved output JARs. This is a **manual patch**, not an instruction to run the automatic patcher. Never replace an entire ROM class/DEX with a template or the payload DEX. Keep the stock `SettingsProvider.apk`; the older Fake Settings step is retired.

## 1. Prepare and establish scope

You need a multidex-aware DEX/smali editor, baksmali/smali or equivalent, and these inputs:

- Stock `framework.jar` and `services.jar` **from the same ROM build**; store untouched originals separately.
- The [2.0.6.1 payload `classes.dex`](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex). Use the manager APK from [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0).
- The Android version (13–17), an assembler compatible with the input DEX, workspace space, and a **tested recovery path** before making any device change.

Edit only an authorized copy of the ROM. Record `sha256sum framework.jar services.jar` for the stock files and list every `classes*.dex` entry in both JARs. A ROM update is a different build: obtain fresh stock JARs rather than reusing patched ones. Do not use a stock JAR path as the output path.

Before editing, search **every DEX** (`classes.dex`, `classes2.dex`…) and make a table of `class descriptor → JAR → DEX entry → method descriptor`. Disassemble each DEX into a separate smali tree and record the owner of every target class. The [a13–a17 templates](../Template/Template_V2060/README.md) are version-specific examples, **not** ROM replacement classes. If the matching method/overload is missing or a class has multiple owners, stop and investigate the layout.

**Pass checkpoint:** stock files and hashes are unchanged; each method to edit has exactly one owner DEX; intended hooks are known. **Stop checkpoint:** the build does not match, a method is missing, ownership is ambiguous, or no recovery path exists.

### Smali terms used here

| Term | Meaning when patching |
|---|---|
| Descriptor | Class/method name with argument and return types, e.g. `hasSystemFeature(Ljava/lang/String;I)Z`; match the whole signature. |
| Overload | A method name with different parameters; `newApplication` below has two overloads to inspect separately. |
| DEX split / owner | The `classes*.dex` entry containing a class; edit and repackage that exact entry. |
| `.locals` / `.registers` | The method's local / total register count; `pN` names parameters, `vN` names physical slots. |
| Physical register | With `.locals L`, `p0` is `vL` in an instance method; in a static method `p0` is its first declared parameter. |
| `/range` | An `invoke-*` form taking a consecutive sequence of physical registers, useful when ordinary operands exceed their encoding limit. |
| Stock fallback | A label where execution resumes in the original ROM code when the hook does not apply. |

### Register and insertion safety rules

1. Identify whether the method uses `.locals` or `.registers`, the parameter count (including `p0` for an instance method), and real physical positions. Ordinary `invoke-* {…}` operands can encode only registers 0–15; `/range {first .. last}` needs consecutive argument registers. Check operand limits of **every instruction**, not just `invoke`.
2. If you must add locals, find any existing `vN` aliases for parameters and convert them to `pN` **before** growing the frame. Then inspect all original instructions again: moving the physical parameter slots may make even an old `invoke` unencodable. If you cannot prove the revised layout is valid, stop rather than force in a snippet.
3. Entry blocks using `v0`/`v1` require at least one/two actual locals and must not overwrite a value still live in original code. Installer filtering requires five consecutive locals **for each method**; stock code must not overwrite them between caller capture and hook use. Never put an instruction between an `invoke-*` and its `move-result*`.
4. Put method-entry blocks after `.locals`/`.registers` and `.param`/`.annotation` metadata, but **before** the first original label/instruction; use a fallback label not already in that method. Preserve original return paths, error paths and method body. For try/catch or multiple returns, follow the actual control flow rather than guessing from a template.

## 2. Import the payload into `framework.jar`

1. Open every DEX in a **copy** of `framework.jar` using a multidex-aware tool. Inventory every class from the 2.0.6.1 payload `classes.dex`.
2. For a descriptor already present in framework, **replace only that class in its existing owner DEX**. Add new classes to a suitable split or a new split supported by the multidex tool. Never replace a stock DEX containing other ROM classes wholesale.
3. After import, confirm each payload descriptor has exactly **one** owner across all splits and every out-of-scope ROM class remains. Do not import the payload into `services.jar` or `SettingsProvider.apk`.

For example, if `Landroid/security/kaorios/KaoriosHook;` already lives in `classes6.dex`, replace **that class** in `classes6.dex`; do not overwrite `classes6.dex` with the payload `classes.dex`. Hooks in services still call the class in framework. Importing the payload does **not** insert the hooks into original ROM methods.

**Pass checkpoint:** all payload classes are present, no duplicate descriptors exist, and stock classes/ownership outside the replacement scope match the input inventory.

## 3. Insert hooks in `framework.jar`

The following blocks show **instructions to insert**, not complete methods. Original instructions shown for context identify the insertion point: **do not add them twice**. `vN` examples must be adapted to your ROM. For a block ending in `:kaorios_*_stock`, let the original ROM code continue directly after that label.

### 3.1. `Instrumentation` — initialize Context

Class `Landroid/app/Instrumentation;`; [Android 17 template](../Template/Template_V2060/a17/framework/Instrumentation.smali). There are **two overloads**:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

In each overload find `Landroid/app/Application;->attach(Landroid/content/Context;)V`. For the manual patch, insert `initContext` **immediately after `attach`**, passing the very same Context register, before `return-object` on that path. If multiple attach/return paths exist, inspect each path that attaches an application. The first overload is static (`p1` = Context); the second is an instance method (`p3` = Context), assuming the ROM uses these registers:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

```smali
    invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Use `invoke-static/range {pN .. pN}` if Context's physical register exceeds 15. **Distinguish the approaches:** this manual path places the hook after `attach`, when Context is attached to the app; the current automatic patcher places the hook before each `return-object` in both overloads (which follows attach in supported layouts). These are **not** two hooks to install together; confirm one hook on each applicable app-creation path without duplicates.

**Check:** each needed overload has one hook for each attached-app return path; attach and hook pass the same Context; the original `return-object` remains.

### 3.2. `ActivityThread` — initialize the app process

Class `Landroid/app/ActivityThread;`, method `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`; [Android 17 template](../Template/Template_V2060/a17/framework/ActivityThread.smali). Find the assignment to `mBoundApplication`; the **first** `iput-object` operand is the AppBindData value to pass, not its second (`this`) operand. Insert after the assignment:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

If the actual operand has a physical register above 15, use `invoke-static/range {reg .. reg}`. **Check:** the hook directly follows the assignment to the correct field, uses its first operand and calls the `Ljava/lang/Object;` overload.

### 3.3. `ApplicationPackageManager` — system features

Class `Landroid/app/ApplicationPackageManager;`, method `hasSystemFeature(Ljava/lang/String;I)Z`; [Android 17 template](../Template/Template_V2060/a17/framework/ApplicationPackageManager.smali). Insert at the start of executable code:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
```

If either `p1` or `p2` has a physical register above 15, change the **first call** to `invoke-static/range {p1 .. p2}`; the two parameters must be consecutive. A `null` hook result means resume stock code, not `false`. `v0` requires one local. **Check:** a non-null hook result returns its Boolean value; null reaches the original body.

### 3.4. `AndroidKeyStoreKeyPairGeneratorSpi` — generate keys

Class `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`, method `generateKeyPair()Ljava/security/KeyPair;`; [Android 17 template](../Template/Template_V2060/a17/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali). Insert at method entry:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
```

`v0` is a local; `/range` works for a single register. **Check:** return the hook's key only if non-null, otherwise continue with stock key generation.

### 3.5. `AndroidKeyStoreSpi` — certificate chain and single certificate

Class `Landroid/security/keystore2/AndroidKeyStoreSpi;`; [Android 17 template](../Template/Template_V2060/a17/framework/AndroidKeyStoreSpi.smali). In `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`, find a `return-object` for the **complete leaf-and-CA array**, after the final leaf insertion (`aput-object`). Insert immediately before that return; leave error/null paths unchanged. For an array in `v3`:

```smali
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Replace **all three** `v3` operands with the real array register. If the array is in a physical register above 15, the call must use `invoke-static/range {v20 .. v20}` (example: array in `v20`); still use `move-result-object v20` then `return-object v20`. If several complete-array return paths exist, patch each one; do not hook inside an array-building loop.

In `engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`, insert at method entry:

```smali
    invoke-virtual/range {p0 .. p1}, Landroid/security/keystore2/AndroidKeyStoreSpi;->engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    move-result-object v0
    if-eqz v0, :kaorios_certificate_stock
    array-length v1, v0
    if-eqz v1, :kaorios_certificate_stock
    const/4 v1, 0x0
    aget-object v0, v0, v1
    return-object v0
    :kaorios_certificate_stock
```

This needs **two locals**, `v0` and `v1`; the single-certificate path returns the first chain element if present, while a null/empty chain follows stock code. **Check:** the chain hook uses its returned value (do not discard `move-result-object`), null paths are preserved and every `move-result*` immediately follows its call.

## 4. Insert hooks in `services.jar`

Do not import the payload into services. Find the exact owner DEX of each services class, then change only its matching methods.

### 4.1. `SystemServer` — initialize the server

Class `Lcom/android/server/SystemServer;`, method `run()V`; [Android 17 template](../Template/Template_V2060/a17/service/SystemServer.smali). Find the main `Looper.loop()V` **at the end of service startup** and insert the hook immediately before it:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

The `Looper.loop()` line is original stock code; do not duplicate it. **Check:** exactly one hook at the main loop, not a different loop.

### 4.2. `ComputerEngine` — HMA / package visibility

Class `Lcom/android/server/pm/ComputerEngine;`; [Android 17 template](../Template/Template_V2060/a17/service/ComputerEngine.smali). Find the actual ROM call path for:

```smali
shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z
```

At method entry, after metadata, insert:

```smali
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
```

For this overload `p1` = PackageState, `p2` = caller UID, `p5` = user. If your ROM routes visibility checks through `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z`, patch that method and use **`p3` instead of `p5`** for user. Do not choose the `SharedUserSetting` overload, or automatically patch both without proving the call path.

**High-register case:** check **each operand** of both `invoke-interface {p1}` and `invoke-static {p2, v0, p5}` (or `p3`): if **any operand** has a physical register above 15, its ordinary call form above cannot encode it. `p1` can still be ≤15 while `p2` or `p5` exceeds 15. Change `invoke-interface {p1}` to `invoke-interface/range {p1 .. p1}` **only if `p1` itself exceeds 15**; otherwise retain the ordinary form. For the hook call, stage UID, package name and user in **three consecutive locals** and use `invoke-static/range` whenever any of its operands exceeds the limit. For **encoding illustration only**, assuming the seven-parameter overload and three newly reserved locals `v20..v22` untouched by stock code, replace the entry block above with:

```smali
    if-eqz p1, :kaorios_visibility_stock
    invoke-interface/range {p1 .. p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
    move-result-object v21
    if-eqz v21, :kaorios_visibility_stock
    move/16 v20, p2
    move/16 v22, p5
    invoke-static/range {v20 .. v22}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
    move-result v20
    if-eqz v20, :kaorios_visibility_stock
    const/16 v20, 0x1
    return v20
    :kaorios_visibility_stock
```

This example assumes previous locals end at `v19` (grow `.locals 20` to `.locals 23`); recalculate for the actual ROM, canonicalize parameter aliases and inspect **every original instruction** after increasing the frame. `move-result-object v21` immediately follows `invoke-interface/range`; do not move it below `move/16`. **Check:** UID/package/user are in the right order, a null package or false hook result resumes stock, and only a true hook result returns `1`.

### 4.3. `ComputerEngine` — installer name and `InstallSourceInfo` (conditional step)

This is a **conditional step when you need installer-name filtering** and the ROM has the relevant APIs. When mode 1 processes `ComputerEngine`, the services patcher **automatically invokes its installer helper** if it finds the relevant methods and patches only recognized layouts; no separate command is required, but this **does not guarantee** coverage for every ROM/overload. Inspect the actual result and artifact; adapt manually using the steps below only if a required layout is unsupported and you can prove the descriptor, data provenance, control flow and registers are safe. Otherwise stop. The developer/ADB status hook in §5 remains outside mode 1. Do not add an installer hook merely because a similarly named method exists.

In `Lcom/android/server/pm/ComputerEngine;`, find these exact descriptors if the ROM has them:

```smali
getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;
```

Some ROMs use String-only overloads. Patch only APIs that exist and are called; if you need the APIs to agree but one is missing, establish which path that ROM uses before editing. Confirm `p1` is the **target package** and `p2` is the **user** for `(String,int)`; capture the caller UID via `Binder.getCallingUid()` **before** any `clearCallingIdentity()`. Do not confuse caller with installer or user with UID.

Each method needs **five fresh consecutive locals** for `(ContentResolver, callingUid, userId, targetPackage, installerName)`. The first argument is `null`; the others come from the stock call path. If you reserved `v10..v14` and have handled all affected parameter aliases/operands, insert before the first original instruction:

```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Keep `v10..v13` untouched by stock code up to every hook use. For a String-only overload, **replace the `move/16 v12, p2` line** with:

```smali
    invoke-static/range {v11 .. v11}, Landroid/os/UserHandle;->getUserId(I)I
    move-result v12
```

In `getInstallerPackageName`, find the `return-object` that really returns the installer name **after** the ROM's visibility/null handling. If the original return is `return-object v2` and `v2` contains that name, replace only that return with:

```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

Preserve stock error/throw and null paths; inspect every valid name-return path if there are several. Do not apply this block to a return that is not an installer name.

In `getInstallSourceInfo`, do **not** add a `return-object` where the field is read. Trace `mInstallerPackageName` through `move-object` and visibility/null branches to the **installing package** argument of `Landroid/content/pm/InstallSourceInfo;-><init>(…)V`. Put the hook after the final installer value is determined, **immediately before the constructor**, and pass its result as the installing-package operand. For example, in the Android 17 template, `v8` is the installing package, constructor `invoke-direct/range {v4 .. v10}` uses `v8`, and this **method's own** five locals are `v14..v18`:

```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
```

The example is valid only if `v14..v17` were initialized in order to `(null, caller UID, user, target package)` at entry to **this method** and remain unchanged. If the constructor or installing-package position differs, derive the mapping from your ROM descriptor; keep other initiating/originating/signing/source operands and error flow unchanged. **Check:** both APIs (when present and required) feed the hook values from the correct provenance, no null/exception path becomes a fabricated installer name, and `move-result*` stays adjacent to its call.

## 5. Optional patches

### 5.1. Hide developer/ADB status on the Settings read path

Do this only if you need this feature; it is an **optional manual step**, not a mode-1 patcher target. Class `Landroid/provider/Settings$NameValueCache;`, method `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`; [Android 17 template](../Template/Template_V2060/a17/framework/Settings$NameValueCache.smali). Insert before original code:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

`p2` is the key; true from the hook returns `"0"`, while a null key/false hook result resumes stock code. Requires one `v0` local. **Do not** edit `SettingsProvider.apk`: this class lives in `framework.jar`, not in the provider APK.

### 5.2. Build fields on Android 17

Only do this if you need mutable Build spoof fields on Android 17; it is **not** required by the mode-1 hooks. In `Landroid/os/Build;`, remove `final` and set the String initializer to `null`. For example:

```smali
.field public static final BRAND:Ljava/lang/String; = "example"
```

becomes:

```smali
.field public static BRAND:Ljava/lang/String; = null
```

Apply to `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`. For `TIME:J`, remove `final` only. In `Landroid/os/Build$VERSION;`, remove `final` only from `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Keep `SDK_INT` and the original `<clinit>` code.

### 5.3. Other options

[Disable Secure Flag](Disable_Secure_Flag.md) | [CorePatch](CorePatch.md). These are separate guides, not automatic results of the hooks above.

## 6. One complete method example: static `Instrumentation`

Suppose the method in your copied ROM matches the Android 17 template: `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` is **static** and `.registers 3` comprises one local `v0` plus two parameters `p0` (Class), `p1` (Context). The original code contains:

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    return-object v0
```

1. **Identify:** record its owner DEX within `framework.jar`; verify the signature and that `p1` is actually attach's Context operand. Under `.registers 3`, `p1` has physical index 2, so `invoke-static {p1}` is encodable. `v0` still holds the app for the return; do not overwrite it.
2. **Insert one line** between attach and return (do not add attach again):

```smali
    invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
    return-object v0
```

3. **Review the method:** attach/hook use the same `p1`, the app in `v0` is returned unchanged, and `.registers` does not change; inspect the instance overload separately and check for other attach/return paths. If the ROM uses different registers, has multiple paths, or lacks the illustrated attach, stop and analyze that layout rather than copying `p1`.
4. **Check the artifact:** assemble the matching owner DEX, replace just that entry in a copied JAR, then reopen and disassemble the saved JAR to confirm one hook with the exact descriptor. This proves only one method; it does not establish other hooks or a bootable ROM.

## 7. Package, verify, hand off

1. Assemble **each changed DEX tree** with an API/toolchain suitable for its input DEX. Replace **only the corresponding owner DEX entry** in a stock JAR **copy**; retain unchanged DEX entries and all other archive entries. Payload import changes framework; framework/services hooks change only their respective owner entries.
2. Reopen the **saved output JARs** and extract all DEX files to a new recheck directory. Compare packaged DEX bytes to assembly output, hashes of unchanged splits to stock, non-DEX archive entries and out-of-scope stock classes. The payload classes must all be present, with one owner per descriptor.
3. Disassemble the DEX **extracted from the final JAR** into empty trees. Recheck each descriptor, call, fallback label, return path, physical register and `move-result*` adjacency. Run applicable verifiers from the [patcher guide](Patcher_Guide_2.0.6.1.md#5-verify-the-saved-archive-itself), recording their actual coverage; **manually inspect** the remaining hooks, especially optional installer/dev changes. Host assembly/verifiers do not demonstrate that a real ROM boots or that a feature works on-device.
4. Record stock/output hashes, modified DEX entries, class owners, assembly/verifier results and any unverified hook. If a check fails, **do not use the artifact**; recreate the affected workspace from clean stock. Deploy to a device only if that step is separately authorized and a rollback path is ready.

**After deployment (only if authorized):** verify boot and each feature on a real ROM separately from host checks. For HMA, select the app **reading** the list (caller), assign a template containing apps to hide, force-stop the caller and retest. If deployment is not authorized, stop at the host artifact and make no claims about device behavior.

**Boundary:** keep the stock `SettingsProvider.apk`; do not patch or re-sign the provider. Everything here operates on copies and does not replace real-device verification or provide ROM signing/flashing instructions.
