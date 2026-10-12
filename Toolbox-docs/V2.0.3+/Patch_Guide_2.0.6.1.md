# Kaorios Toolbox 2.0.6.1 — Manual ROM patch (Android 13–17)

[Tiếng Việt](Patch_Guide_2.0.6.1_VI.md) | [Automatic patcher](Patcher_Guide_2.0.6.1.md) | [Secure Flag example](Disable_Secure_Flag.md)

**What you edit:** copies of `framework.jar` and `services.jar` from the **same authorized ROM build**. Keep stock originals and their SHA-256 hashes outside the workspace; have a recovery plan before changing a device. Use a multidex-aware editor and smali toolchain compatible with the input DEX. Leave `SettingsProvider.apk` stock. Never write output over stock.

**First, locate each class:** list every `classes*.dex` in both JARs, disassemble each split separately, then find the *one* DEX containing the exact class and method signature below. Edit that owner split, not an entire template class. [Templates by Android version](../Template/Template_V2060/README.md) show the intended logic, **not replacement ROM classes**. Stop if an owner is duplicated, a required method is missing, or the ROM's control flow differs from the example.

**Before inserting any snippet:** find the method's `.locals` or `.registers` and existing `pN`/`vN` aliases. Reserve any needed fresh locals; if increasing locals shifts parameter registers, change old `vN` parameter aliases to `pN` *before* increasing the count and check that all stock instructions remain encodable. Ordinary `invoke {…}` operands must have physical register indices ≤15; `/range` operands must be consecutive. Keep `invoke` next to its `move-result`. Insert entry hooks after `.param`/`.annotation` metadata and **before the first stock label/instruction**. Choose fallback labels not already in the method. The stock lines shown below are **position markers**, not extra lines to duplicate. If these checks cannot be met, stop; do not paste the example unchanged.

## 1. Import payload — `framework.jar`

Get the [2.0.6.1 payload DEX](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/download/v2.0.6.1/classes.dex); the manager APK is from [2.0.6.0](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.0). Inventory **every payload class**. In the copied framework JAR, replace an existing descriptor as a **class in its current owner DEX**; add a new descriptor to a suitable split. Do not replace a whole ROM DEX with payload `classes.dex` when that DEX also contains other ROM classes. Confirm each payload class exists exactly once and all other stock classes remain. Do not import payload into services or the provider. Import alone does not insert ROM hooks.

## 2. `framework.jar` hooks

### 2.1 Context — `Instrumentation`

**Class:** `Landroid/app/Instrumentation;` ([A17 example](../Template/Template_V2060/a17/framework/Instrumentation.smali)).

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

**Class:** `Landroid/app/ActivityThread;` ([A17 example](../Template/Template_V2060/a17/framework/ActivityThread.smali)). **Method:** `handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V`.

**Insert:** directly after the stock assignment to `mBoundApplication`; pass the **first** `iput-object` operand (AppBindData), not `this`. Example only, if it is `v9`:

```smali
    iput-object v9, v1, Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread$AppBindData;
    invoke-static {v9}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Do not duplicate the `iput-object`; use `/range {reg .. reg}` if that operand is above 15. Verify the exact `Ljava/lang/Object;` callee overload exists in the imported payload.

### 2.3 System feature / Unlock GMS Feature — `ApplicationPackageManager`

**Class:** `Landroid/app/ApplicationPackageManager;` ([A17 example](../Template/Template_V2060/a17/framework/ApplicationPackageManager.smali)). **Method:** `hasSystemFeature(Ljava/lang/String;I)Z`.

**Insert:** at method entry with a free local `v0`:

```smali
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0
    if-eqz v0, :kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0
    :kaorios_feature_stock
```

If either parameter is above register 15, change the first call to `invoke-static/range {p1 .. p2}` (only if consecutive); check the other instructions too. `null` means run stock code; `false` is an explicit hook result. This is the **system-feature query hook associated with Unlock GMS Feature**, not proof that all GMS functionality or device behavior works.

### 2.4 Key generation — `AndroidKeyStoreKeyPairGeneratorSpi`

**Class:** `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;` ([A17 example](../Template/Template_V2060/a17/framework/AndroidKeyStoreKeyPairGeneratorSpi.smali)). **Method:** `generateKeyPair()Ljava/security/KeyPair;`.

**Insert:** at method entry, with a free local `v0`:

```smali
    invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object v0
    if-eqz v0, :kaorios_key_stock
    return-object v0
    :kaorios_key_stock
```

A null hook result continues original key generation.

### 2.5 Certificate chain — `AndroidKeyStoreSpi`

**Class:** `Landroid/security/keystore2/AndroidKeyStoreSpi;` ([A17 example](../Template/Template_V2060/a17/framework/AndroidKeyStoreSpi.smali)).

**Method A:** `engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;`.

**Insert:** just before each original `return-object` of the **completed leaf-and-CA array**, after the final leaf insertion. If the array is `v3`, replace that return with:

```smali
    invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
    move-result-object v3
    return-object v3
```

Use the actual array register in all three lines; if above 15, use `invoke-static/range {vN .. vN}`. Do not hook null/error returns or an array-building loop.

**Method B:** `engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;`.

**Insert:** at entry, with **two** free locals `v0`, `v1`:

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

The null/empty chain continues through the original method.

## 3. `services.jar` hooks

### 3.1 Server initialization — `SystemServer`

**Class:** `Lcom/android/server/SystemServer;` ([A17 example](../Template/Template_V2060/a17/service/SystemServer.smali)). **Method:** `run()V`.

**Insert:** immediately **before** the *main* `Looper.loop()V` at the end of service startup:

```smali
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-static {}, Landroid/os/Looper;->loop()V
```

The `Looper.loop()` line is already in stock; do not add it again or select another loop.

### 3.2 HMA visibility — `ComputerEngine`

**Class:** `Lcom/android/server/pm/ComputerEngine;` ([A17 example](../Template/Template_V2060/a17/service/ComputerEngine.smali)).

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

## 4. Optional steps

- **Developer/ADB status:** `framework.jar` → `Landroid/provider/Settings$NameValueCache;` → `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;` ([A17 example](../Template/Template_V2060/a17/framework/Settings$NameValueCache.smali)). Insert at entry with one free local `v0`:

```smali
    if-eqz p2, :kaorios_dev_stock
    invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    move-result v0
    if-eqz v0, :kaorios_dev_stock
    const-string v0, "0"
    return-object v0
    :kaorios_dev_stock
```

`p2` is the Settings key; null/false uses stock code. This is **not** a `SettingsProvider.apk` edit or a mode-1 target.

- **Android 17 Build spoof:** in `framework.jar`, `Landroid/os/Build;`: remove `final` and set String initializers to `null` for `BRAND`, `BRAND_FOR_ATTESTATION`, `DEVICE`, `DEVICE_FOR_ATTESTATION`, `FINGERPRINT`, `HARDWARE`, `ID`, `MANUFACTURER`, `MANUFACTURER_FOR_ATTESTATION`, `MODEL`, `MODEL_FOR_ATTESTATION`, `PRODUCT`, `PRODUCT_FOR_ATTESTATION`, `TAGS`, `TYPE`, `USER`; remove `final` only from `TIME:J`. In `Landroid/os/Build$VERSION;` remove `final` only from `RELEASE`, `RELEASE_OR_CODENAME`, `RELEASE_OR_PREVIEW_DISPLAY`, `SECURITY_PATCH`, `DEVICE_INITIAL_SDK_INT`. Leave `SDK_INT` and `<clinit>` alone. Example: `.field public static final BRAND:Ljava/lang/String; = "OEM"` → `.field public static BRAND:Ljava/lang/String; = null`. Mode 2 automates these fields, not other hooks.
- [Secure Flag](Disable_Secure_Flag.md) and [CorePatch](CorePatch.md) have separate guides; neither is added by mode 1.
- **Kaorios Helper** is a separately installed [Zygisk module](../../Kaorios-Helper/README.md), **not** a framework/services hook or an artifact-patching script. It keeps ROM files stock; **do not enable HMA Helper alongside an HMA hook patched into the ROM**. Its own install/runtime checks are in that README.

## 5. Rebuild and check the *saved* JARs

1. Assemble **each modified owner split**, including payload additions. In output paths different from stock, replace only corresponding `classes*.dex` entries in copies of the stock JARs; keep untouched DEX and non-DEX entries. Do not copy a template class or payload DEX over a stock split containing other classes.
2. Reopen the **saved** output JARs into new empty directories. Compare rebuilt DEX bytes to packaged DEX bytes, untouched splits to stock hashes and non-DEX entries to stock. Disassemble the DEX **extracted from these final JARs**; confirm exactly one owner per payload class, unchanged ROM classes, exact method descriptors, hook position, fallback, register encoding and adjacent `move-result` on every edited path.
3. Run applicable [framework/services/SystemServer verifiers](Patcher_Guide_2.0.6.1.md#5-check-the-saved-jars), and manually inspect Instrumentation, system feature/Unlock GMS Feature, Keystore and any optional/installer paths outside verifier coverage. Record what was actually checked. On any failure, discard the partial working copy and restart from clean stock. Host checks do **not** prove ROM boot or feature behavior; flashing/signing or device changes require separate authorization and recovery planning.
