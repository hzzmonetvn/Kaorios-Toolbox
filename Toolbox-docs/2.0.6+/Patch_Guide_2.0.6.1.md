# Kaorios Toolbox 2.0.6.1 — Manual ROM patch (Android 13–17)

[Tiếng Việt](Patch_Guide_2.0.6.1_VI.md) | [Automatic patcher](Patcher_Guide_2.0.6.1.md) | [Secure Flag status and limits](Disable_Secure_Flag.md)

**Bootloop warning:** older Kaorios recipes (2.0.6.0 guides and the original 2.0.6.1 assets) patched `SettingsProvider.apk` to call `KaoriosHook` methods (`filterSettingsCall`, `filterSettingsQueryResult`, `filterSettingValue`, `shouldRemoveSetting`) that the current 2.0.6.1 `classes.dex` no longer defines. The system process then throws `NoSuchMethodError`, likely causing a bootloop. If this ROM's `SettingsProvider.apk` was ever patched by an older Kaorios recipe, restore the stock `SettingsProvider.apk` from the same ROM build **before** importing the current 2.0.6.1 `classes.dex`. Do not reuse old patched provider files.

**What you edit:** copies of `framework.jar` and `services.jar` from the **same authorized ROM build**. Keep stock originals and their SHA-256 hashes outside the workspace; have a recovery plan before changing a device. Use a multidex-aware editor and smali toolchain compatible with the input DEX. Leave `SettingsProvider.apk` stock. Never write output over stock.

**First, locate each class:** list every `classes*.dex` in both JARs, disassemble each split separately, then find the *one* DEX containing the exact class and method signature below. Edit that owner split, not an entire template class. The snippets below describe insertion logic, **not replacement ROM classes**. Discover owners from this ROM; never assume payload belongs in `classes6.dex`. Stop if an owner is duplicated, a required method is missing, or the ROM's control flow differs from the example.

**Before inserting any snippet:** find the method's `.locals` or `.registers` and existing `pN`/`vN` aliases. Reserve any needed fresh locals; if increasing locals shifts parameter registers, change old `vN` parameter aliases to `pN` *before* increasing the count and check that all stock instructions remain encodable. Ordinary `invoke {…}` operands must have physical register indices ≤15; `/range` operands must be consecutive. Keep `invoke` next to its `move-result`. Insert entry hooks after `.param`/`.annotation` metadata and **before the first stock label/instruction**. Choose fallback labels not already in the method. The stock lines shown below are **position markers**, not extra lines to duplicate. If these checks cannot be met, stop; do not paste the example unchanged.

**Keystore hooks removed (2026-10-31):** this guide no longer patches `AndroidKeyStoreKeyPairGeneratorSpi` or `AndroidKeyStoreSpi`. Current sources define those helpers as stubs — `CertificateChainIfNeeded` returns its input, `initGenerateSoftwareKeyPair`, `OnGetKeyEntry` and `generateKey` return `null`, `Remove` is empty — so the old §2.4/§2.5 recipes would assemble and verify while every inserted call returned the stock value.

The v2.0.6.1 release asset was replaced on 2026-10-31 with a build of the current source, so it now matches this guide: `CertificateChainIfNeeded` returns its input chain in both overloads and the Keystore path is stock. An earlier asset (SHA-256 `94848e18…`, 858,636 bytes) was published before that removal and did rewrite certificate chains; if your copy has that hash it is the old build — discard it and re-download. Verify the hash before importing.

**Payload:** every hook below resolves to a public static method in the current source build (`classes.dex`, 91,160 bytes, SHA-256: `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`), which is also what the v2.0.6.1 release asset now ships. Verify the hash of the DEX you actually imported and confirm callee descriptors against that payload before flashing.

**Stock or already patched:** use the current public source for these instructions. On an existing patch, inventory every DEX and preserve unrelated OEM classes and hooks; do not reset whole classes or blindly insert a second hook. The smali patcher recognizes verified existing hooks; use `--update` only for supported updates, not to force an unsupported layout. If an old hook is ambiguous, restore the affected files from the matching stock ROM and start again. Always restore an old patched SettingsProvider as warned above.

**Toolchain gate:** Android 13–17 describes hook-layout selection, not universal DEX support. For the supplied DEX 040 case, the artifact scripts use `--api 37 --smali-api 34`; target analysis and assembly use separate APIs because smali 3.0.8 rejects assembly with API 37 (`dexVersion must be within [0, 999]`). This does not establish DEX 041/container or CompactDex compatibility. Check actual input format and tool support; if unsupported, stop. Never rewrite DEX magic/header bytes to disguise the format.

## 1. Import payload — `framework.jar`

Get a payload DEX and verify its SHA-256. The current source build and the published [v2.0.6.1 asset](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex) are the same artifact: `classes.dex`, 91,160 bytes, SHA-256 `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`, leaving the Keystore classes stock. Verify with `sha256sum`. The manager APK is from stable [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0). The patcher ZIP previously named here (`kaorios-patcher-2.0.6.1.zip`) is **no longer published**: the v2.0.6.1 release carries only `classes.dex` and `kaoriostoolbox-release_sign.apk`. Build the archive from a reviewed public source checkout with `python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip` from the public repo root.

Inventory **every payload class across every input DEX**. For each exact incoming descriptor, replace only that class in its existing owner DEX; existing payload classes may span several owners. Add a genuinely new descriptor to a suitable split. Stop on duplicate owners. Never delete an entire `android/security/kaorios` namespace: unrelated OEM classes there must survive. Do not replace a whole ROM DEX with payload `classes.dex` when that DEX also contains other ROM classes. Rebuild every modified owner DEX. Confirm each payload class exists exactly once and all other stock classes remain. Legacy obfuscated classes not matching incoming descriptors are not automatically removed; cleanup is unsafe without a verified ownership inventory. Import payload into `framework.jar` only; `services.jar` retains its ROM classes. Import alone does not insert ROM hooks.

## 2. `framework.jar` hooks

### 2.1 Context — `Instrumentation`

**Class:** `Landroid/app/Instrumentation;`.

**Methods:** `newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;` **and** `newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;`.

**Insert:** after the original `Application.attach(Context)` call on each attached-app return path, using the *same Context register*. For a static first overload using `p1`, and an instance second overload using `p3`, respectively:

```smali
    invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

```smali
    invoke-static/range {p3 .. p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Use `/range {pN .. pN}` if the physical Context register exceeds 15. Keep original attach and return instructions; do not insert between an invoke and its `move-result`. This manual placement and the automatic patcher's pre-return placement are **alternatives**, not two hooks to combine.

### 2.2 Process initialization — `ActivityThread`

**Class:** `Landroid/app/ActivityThread;`. **Method:** `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`.

**Insert:** directly after the stock assignment to `mBoundApplication`; pass the **first** `iput-object` operand (AppBindData), not `this`. Example only, if it is `v9`:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Do not duplicate the `iput-object`; use `/range {reg .. reg}` if that operand is above 15. Verify the exact `Ljava/lang/Object;` callee overload exists in the imported payload.

### 2.3 System feature hook removed (2026-10-31)

The previous §2.3 recipe patched `Landroid/app/ApplicationPackageManager;` → `hasSystemFeature(Ljava/lang/String;I)Z`. Do not insert it. `KaoriosHooks.hasSystemFeature` returns `null` unconditionally, so the injected call was a guaranteed passthrough: it changed nothing, while the extra invoke cost a local register and a possible `invoke-static/range` rewrite for nothing.

The facade `KaoriosHook.hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` **remains in the payload** and must stay there. ROMs already patched by an earlier Kaorios recipe still call it; deleting the method would make `ApplicationPackageManager` throw `NoSuchMethodError` in every app process. Leave the facade alone, and leave the stock method unpatched. There is no UI control for this hook and no feature-set config source, so there is nothing to configure.

## 3. `services.jar` hooks

### 3.1 Server initialization — `SystemServer`

**Class:** `Lcom/android/server/SystemServer;`. **Method:** `run()V`.

**Insert:** immediately **before** the *main* `Looper.loop()V` at the end of service startup:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

The `Looper.loop()` line is already in stock; do not add it again or select another loop.

### 3.2 HMA visibility — `ComputerEngine`

**Class:** `Lcom/android/server/pm/ComputerEngine;`.

**Method:** `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z`, or the ROM's actually called `(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` overload.

**Insert:** at entry, with one free local `v0`. For the first signature, `p2` is caller UID and `p5` is user:

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

For the 3-parameter overload use **`p3` instead of `p5`**. If any ordinary invoke operand exceeds physical register 15, use `/range` with **three consecutive fresh locals** holding `(caller UID, package name, user)`; use `invoke-interface/range {p1 .. p1}` if needed. Do not just change the 3-operand call to `/range` without staging. For example, if the actual method's old locals end at `v19` and you have safely reserved `v20..v22`:

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

For that example grow `.locals 20` to `.locals 23`, but only after canonicalizing old parameter aliases and checking every stock operand. Do not use this block if `p1` can use the ordinary form and your actual registers differ without recalculation. Inspect the actual call path; do not patch an unrelated `SharedUserSetting` overload. Null package/false hook result continues stock code.

### 3.3 Installer name (conditional) — `ComputerEngine`

**Methods:** `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;` and `getInstallSourceInfo(Ljava/lang/String;I)Landroid/content/pm/InstallSourceInfo;` (some ROMs use String-only overloads). This step is needed **only if the ROM uses these read APIs**. Mode 1 tries to patch a supported pair automatically; it rejects a partial supported pair. Other overloads can remain untouched. Do not treat a similar name or a missing API as permission to guess.

**At entry of each method:** reserve **five fresh consecutive locals** `(resolver=null, caller UID, user ID, target package, installer name)`. Example with `v10..v14` for the `(String,int)` signature:

```smali
    const/16 v10, 0x0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I
    move-result v11
    move/16 v12, p2
    move-object/16 v13, p1
```

Capture caller UID **before** any `clearCallingIdentity()`. For a String-only overload, replace `move/16 v12, p2` with `invoke-static/range {v11 .. v11}, Landroid/os/UserHandle;->getUserId(I)I` and its adjacent `move-result v12`. Keep `v10..v13` unchanged through each hook use.

**In `getInstallerPackageName`:** find an original return of a *real installer name* after stock visibility/null handling. If it is `return-object v2`, replace **that return only** with:

```smali
    move-object/16 v14, v2
    invoke-static/range {v10 .. v14}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v2
    return-object v2
```

**In `getInstallSourceInfo`:** trace `mInstallerPackageName` into the *installing-package* constructor argument. Put the hook immediately **before** `InstallSourceInfo.<init>`, after stock has finalized that name; replace only that argument with the result. If this method has separate fresh locals `v14..v18` and the installer argument is `v8` (A17 template):

```smali
    move-object/16 v18, v8
    invoke-static/range {v14 .. v18}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v8
    invoke-direct/range {v4 .. v10}, Landroid/content/pm/InstallSourceInfo;-><init>(Ljava/lang/String;Landroid/content/pm/SigningInfo;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
```

That constructor line is stock, **not another line to add**. This example only applies when `v14..v17` were initialized in this method and remain intact. If the actual constructor/return provenance differs or required locals cannot be reserved safely, stop; preserve stock null/error paths.

## 4. Developer/ADB status and optional steps

- **Developer/ADB status:** `framework.jar` → `Landroid/provider/Settings$NameValueCache;` → `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`. Insert at entry with one free local `v0`:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

`p2` is the Settings key; null/false uses stock code. The current mode-1 patcher and framework artifact pipeline include this entry guard. The helper policy limits hiding to `adb_enabled`, `adb_wifi_enabled` and `development_settings_enabled`; this changes reported values only, **not actual ADB operation**. This is **not** a `SettingsProvider.apk` edit.

- **Android 17 Build spoof:** in `framework.jar`, `Landroid/os/Build;`: remove `final` and set String initializers to `null` for `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`; remove `final` only from `TIME:J`. In `Landroid/os/Build$VERSION;` remove `final` only from `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Leave `SDK_INT` and `<clinit>` alone. Example: `.field public static final BRAND:Ljava/lang/String; = "OEM"` → `.field public static BRAND:Ljava/lang/String; = null`. Mode 2 automates these fields, not other hooks.
- [Secure Flag](Disable_Secure_Flag.md) has limited guidance and no general `captureDisplay` recipe; [CorePatch](CorePatch.md) has a separate guide. Neither is added by mode 1.
- **Kaorios Helper** is a separately installed [Zygisk module](https://github.com/hzzmonetvn/KaoriosHelper), **not** a framework/services hook or an artifact-patching script. It keeps ROM files stock; **do not enable HMA Helper alongside an HMA hook patched into the ROM**. Its own install/runtime checks are in that README.

## 5. Rebuild and check the *saved* JARs

1. Assemble **each modified owner split**, including payload additions. In output paths different from stock, replace only corresponding `classes*.dex` entries in copies of the stock JARs; keep untouched DEX and non-DEX entries. Do not copy a template class or payload DEX over a stock split containing other classes.
2. Reopen the **saved** output JARs into new empty directories. Compare rebuilt DEX bytes to packaged DEX bytes, untouched splits to stock hashes and non-DEX entries to stock. Disassemble the DEX **extracted from these final JARs**; confirm exactly one owner per payload class, unchanged ROM classes, exact method descriptors, hook position, fallback, register encoding and adjacent `move-result` on every edited path.
3. Verify exact facade signatures with `python3 -I script/verify-payload-abi.py <saved-output-smali-root> --payload-smali <payload-disassembled-root>` for both framework and services trees extracted from the saved JARs. A missing callee is a hard failure: do not flash. This checks public static facade signatures, not implementation correctness or all dependency linkage. Run applicable [framework/services/SystemServer verifiers](Patcher_Guide_2.0.6.1.md#5-check-the-saved-jars), which check all three required framework callers even with `--caller-only`; manually inspect any optional/installer paths outside verifier coverage and all runtime assumptions. Record what was actually checked. On any failure, discard the partial working copy and restart from clean stock. Host checks do **not** prove ROM boot or feature behavior; flashing/signing or device changes require separate authorization and recovery planning.

The three required framework callers are `ActivityThread`, `Instrumentation` and `Settings$NameValueCache`. `ApplicationPackageManager` is not patched: its `hasSystemFeature` facade still exists in the payload for compatibility with previously patched ROMs, but current sources return `null` from it, so there is nothing to inject. `AndroidKeyStoreSpi` and `AndroidKeyStoreKeyPairGeneratorSpi` are no longer required or patched: current sources leave both classes on stock Android behaviour.
