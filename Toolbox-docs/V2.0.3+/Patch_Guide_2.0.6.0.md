# Kaorios Toolbox Framework 2.0.6.0 Patch Guide

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

This document describes the process of integrating the 2.0.6.0 framework DEX into Android 12–17 ROMs and patching smali call sites. Register patterns have been cross-checked with HyperOS Android 17 (API 37); on other ROMs, locate classes and methods by descriptor rather than guessing DEX numbers or line numbers.

- HyperOS Android 17 smali templates: [`Template/Template_V2060`](../Template/Template_V2060)

## 1. Mandatory Warnings

- Back up a bootable `framework.jar`, `services.jar`, VDEX/ODEX files, and boot image.
- **Android 17 DEX format**: Android 17 supports both DEX `039` and `040` (production ROMs such as HyperOS Android 17 use `039`). Always use smali/baksmali 3.x+ with `--api 37` because Android 17 system classes contain extended `HiddenApiRestrictions` flags that crash baksmali 2.5.2.
- Names and descriptors are case-sensitive. `OnGetKeyEntry` has an uppercase `O`; `CertificateChainIfNeeded` is not `getCertificateChain`.
- Do not assume classes reside in `classes3.dex`/`classes7.dex`; always search the target ROM.
- Do not leave two copies of `Landroid/security/kaorios/*` or `Lcom/kousei/framework/*` in the boot classpath.
- Do not increase `.registers` while keeping parameters written as `vN` without recalculating. Prefer `p0..pN`, currently free locals, or increasing `.locals`.
- Patch in groups and boot-test each group. A single wrong descriptor in `SystemServer` can cause a bootloop.

## 2. Inspecting the Target ROM

```bash
mkdir -p work/framework work/services
unzip -q framework.jar -d work/framework
unzip -q services.jar -d work/services

java -jar baksmali-3.0.8.jar d work/framework/classes3.dex --api 37 -o work/fw3
java -jar baksmali-3.0.8.jar d work/services/classes.dex --api 37 -o work/sv1
```

Repeat for all `classes*.dex`, then find the classes:

```bash
rg -l '^\.class .*Landroid/app/Instrumentation;' work/fw*
rg -l '^\.class .*Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;' work/fw*
rg -l '^\.class .*Landroid/security/keystore2/AndroidKeyStoreSpi;' work/fw*
rg -l '^\.class .*Lcom/android/server/SystemServer;' work/sv*
rg -l 'Landroid/security/kaorios/KaoriosHook;' work/fw* work/sv*
```

## 3. Importing DEX Without Duplicate Classes

Rename the framework artifact's `classes.dex` to the next unused sequential DEX number (e.g. on ROMs with 6 stock DEX files like HyperOS A17, rename to `classes7.dex`), then add it into `framework.jar`. Keep all stock DEX files `classes.dex` through `classes6.dex` intact.

## 4. Standard 2.0.6.0 Descriptors

| Feature | Exact Smali Signature |
|---|---|
| Init app | `initContext(Landroid/content/Context;)V` |
| Init system_server | `initSystemServer()V` |
| Feature spoof | `hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;` |
| Software GEN | `initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;` |
| Hack chain | `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` |
| Cached entry, optional | `OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;` |
| Hide dev | `shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Hide app caller-aware | `shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z` |
| Installer spoof | `filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Settings value | `filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;` |
| Remove setting | `shouldRemoveSetting(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z` |
| Remove secure flag | `isSecureFlag()Z` |

## 5. Core Patches in framework.jar

### 5.1 `Instrumentation.newApplication`

Mandatory for PIF/game props/Photos/TFT. Insert after `Application.attach()` and before return.

Static method:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;

invoke-virtual {v0, p1}, Landroid/app/Application;->attach(Landroid/content/Context;)V
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
return-object v0
```

Instance method:

```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;

invoke-virtual {v0, p3}, Landroid/app/Application;->attach(Landroid/content/Context;)V
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
return-object v0
```

Do not call before `attach()`.

### 5.2 `ApplicationPackageManager.hasSystemFeature`

Insert at the beginning of `hasSystemFeature(Ljava/lang/String;I)Z`. `null` means run stock; non-null `Boolean` is override:

```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0
if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0
:cond_kaorios_feature_stock
```

Must be `Ljava/lang/Boolean;`, not primitive `Z`.

### 5.3 `AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair`

Insert at the very beginning of the method, before stock code calls `getSecurityLevel()`:

```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14
if-eqz v14, :cond_kaorios_gen_stock
return-object v14
:cond_kaorios_gen_stock
```

`v14` is only valid for the A17 `.registers 16` template; other ROMs must choose a free object local.

### 5.4 `AndroidKeyStoreSpi.engineGetCertificateChain`

Method:

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Find the final chain array, after the leaf is stored at index 0 and before return:

```smali
aput-object v2, v3, v4
invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3
return-object v3
```

Do not call the hook with `{p0,p1}`. If there are multiple `return-object` statements, wrap each valid chain branch or route to a common return.

### 5.5 Remove `final` from Build fields on Android 17

See: [notes-a17.md](notes-a17.md) (or Vietnamese version: [notes-a17_VI.md](notes-a17_VI.md)).

## 6. Core Patches in services.jar

### 6.1 `SystemServer.initSystemServer`

Initializes the OMK subsystem and probes/caches real TEE `RootOfTrust`. Two placement options depending on platform:

**Pattern 1: AOSP / Qualcomm / HyperOS Android 17 (Recommended)**
Insert at the beginning of `run()V`:
```smali
.method private run()V
    .registers 20

    .line 975
    # [Kaorios Hook] Initialize OmkService & RootOfTrust
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    move-object/from16 v1, p0
    const-string/jumbo v0, "persist.sys.language"
```

**Pattern 2: MediaTek (Before `startOtherServices`)**
Insert immediately before calling `startOtherServices(...)`:
```smali
    # [Kaorios Hook] Initialize OmkService & RootOfTrust
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

Registers for `startOtherServices` depend on the ROM; only the relative position is fixed. Reference template: [`Template/Template_V2060/SystemServer.smali`](../Template/Template_V2060/SystemServer.smali).

## 7. Optional Feature Patches

### 7.1 Hide developer status

Only apply when `Settings$NameValueCache` has a descriptor returning `String`:

```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0
:cond_kaorios_dev_stock
```

The hook returns primitive `Z`, not `Boolean`; the sample method returns `String`, not `Pair`. Do not paste this block if the descriptor differs.

### 7.2 Hide app caller-aware

```smali
shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```

`p2=callingUid`, `p4=targetPkgSetting`, `p5=userId`:

```smali
move/from16 v0, p2
move-object/from16 v1, p4
if-eqz v1, :cond_kaorios_hide_stock
:try_start_kaorios_hide
invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
move/from16 v4, p5
invoke-static {v0, v3, v2, v4}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0
:try_end_kaorios_hide
.catch Ljava/lang/Throwable; {:try_start_kaorios_hide .. :try_end_kaorios_hide} :catch_kaorios_hide
:catch_kaorios_hide
:cond_kaorios_hide_stock
```

Arguments are strictly required in the order `{uid, resolver, targetPackage, userId}`. The old guide passing `{resolver, uid, ...}` had an incorrect descriptor.

### 7.3 Spoof installation source

Sample `ComputerEngine.getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;`: after stock installer is in `v2`, calling UID in `v0`, userId in `p2`:

```smali
:try_start_kaorios_installer
const/4 v5, 0x0
invoke-static {v5, v0, p2, p1, v2}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:try_end_kaorios_installer
.catch Ljava/lang/Throwable; {:try_start_kaorios_installer .. :try_end_kaorios_installer} :catch_kaorios_installer
return-object v2
```

ROMs without `p2 userId` must compute it via `UserHandle.getUserId(callingUid)`.

### 7.4 Settings replacement — ROM-specific

Patch only after determining the namespace, key, and value string at the common return path:

```smali
const/4 vC, 0x0
invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

If JSON uses `value:null`, additionally call `shouldRemoveSetting(...)Z` and convert to the target ROM's proper "missing" representation. Do not paste into every `GET_*` branch.

### 7.5 Cached `KeyStore2` path — not enabled by default

The SPI path in section 5.3/5.4 is the verified path. Only patch when the `Landroid/system/keystore2/KeyDescriptor;` register is known precisely:

```smali
invoke-static {vDescriptor}, Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
move-result-object vResult
if-eqz vResult, :cond_kaorios_keystore_stock
return-object vResult
:cond_kaorios_keystore_stock
```

The correct type is `android/system/keystore2`, not `android/security/keystore2`.

### 7.6 Remove FLAG_SECURE

Call `isSecureFlag()Z`. If true: `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z` returns `1`; `WindowState[Animator].isSecureLocked()Z` returns `0`; `setSecureLocked(Z)V` can return early.

See dedicated guide: [Disable_Secure_Flag.md](Disable_Secure_Flag.md) and reference template: [`Template/Template_V2060/WindowState.smali`](../Template/Template_V2060/WindowState.smali).

> **Note**: Do not invert the return values of the first two methods.

## 8. Assemble and Repack JAR

```bash
java -jar smali-3.0.8.jar a -a 37 work/fw3 -o work/framework/classes3.dex
java -jar smali-3.0.8.jar a -a 37 work/sv1 -o work/services/classes.dex

java -jar baksmali-3.0.8.jar list classes work/framework/classes3.dex >/dev/null
java -jar baksmali-3.0.8.jar list classes work/services/classes.dex >/dev/null
rg -n 'KaoriosHook;->' work/fw3 work/sv1
```

Update the exact DEX entry in the original JAR copy; do not lose non-DEX resources/files. System JARs do not need zipalign. If ROM source code is available, prefer integrating into the build tree so the build system regenerates JAR/VDEX.

## 9. Flash, Cache, and Rollback

The safest approach is rebuilding the image. If testing via overlay/module:

1. Keep restorable originals accessible from recovery.
2. Overlay the exact `/system/framework/framework.jar` and `services.jar`.
3. Only handle corresponding identified VDEX/ODEX files; do not wipe dalvik-cache with broad globs.
4. `sync`, reboot, and wait for dexopt; the first boot may take longer.

If encountering a bootloop, roll back both JAR and VDEX/ODEX together as a matching set; do not mix new JARs with old oat files.

## 10. Common Failures

| Symptom | Likely Cause | First Check |
|---|---|---|
| Bootloop | Bad register/descriptor or corrupted DEX | Restore services first, disassemble rebuilt DEX, inspect verifier logs |
| Toolbox cannot detect framework | DEX not on boot classpath, duplicate classes, stale oat | Find classes in final JAR and synchronize VDEX/ODEX |
| GEN does not run | Hook placed after `getSecurityLevel`, keybox off/empty | Check `generateKeyPair` entry, Settings, and OMK logs |
| LEAF unchanged | Incorrect chain register wrapped / missed return path | Verify final `Certificate[]` before return |
| PIF/Photos logs run but fields unchanged | Field is still `final` | Compare `Build.smali` after rebuild |
| Hide-dev not working | Patched wrong overload / `Boolean` vs `Z` mismatch | Target method must return `String`, hook returns `Z` |
| Hide-app filters caller itself | Using legacy hook / wrong argument order | Descriptor must start with `I`; order: uid, resolver, target, user |

## 11. Recommended Patch Order

1. Import DEX, resolve duplicate classes, boot-test.
2. Patch `SystemServer`, boot-test.
3. Patch `Instrumentation`, Build fields, and `hasSystemFeature`, test PIF/Photos.
4. Patch both Keystore SPI call sites, test `gen/leaf/auto`.
5. Patch hide-dev/hide-app using a secondary test app.
6. Patch installer/settings/secure flag last because they depend most heavily on the ROM.

Do not patch everything and flash all at once; if a bootloop occurs, it will be impossible to isolate the faulty call site.
