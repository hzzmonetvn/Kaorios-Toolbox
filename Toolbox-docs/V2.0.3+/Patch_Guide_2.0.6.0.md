# Kaorios Toolbox Patch Guide — v2.0.6.0

This guide covers all smali changes needed to integrate Kaorios Toolbox
framework hooks into a custom ROM.

**Build info**
- Compiled against **Android 17 (API 37)** merged boot jar
- Hooks work on **Android 12–17 (API 31–37)**
- `minSdk=31`, `compileSdk=37`, `targetSdk=37`
- `KaoriosHook` methods are all `public static` — no instance needed
- Verified framework source commit: `1f0c768033653838a0c91756abd547e2f711c80b`

> Hook names and descriptors are case-sensitive. Copy the complete descriptor,
> not only the method name. The files under
> [`Template/Template_V2060`](../Template/Template_V2060) are the tested
> HyperOS Android 17 references; adapt registers and labels for other ROMs.

---

## Prerequisites

| Tool | Version | Notes |
|------|---------|-------|
| baksmali/smali | ≥ 3.0 | `--api 29` needed for `whitelist/blacklist` modifier |
| Java | ≥ 17 | JDK 21 recommended |
| BouncyCastle | 1.84 | Bundled in the framework DEX (`bcprov-jdk18on` + `bcpkix-jdk18on`) |
| Merged API-37 jar | f6a41ad… | compile-only classpath |

---

## Build artifact and DEX placement

The `Build APK and DEX` workflow in the framework repository publishes one
artifact with `KaoriosToolbox-release.apk`, `KaoriosFramework-release.apk`,
`classes.dex`, and `SHA256SUMS`. Verify the checksums before integration.

Import the artifact's `classes.dex` as a **new DEX entry** in `framework.jar`.
Its final name (`classes4.dex`, `classes5.dex`, etc.) depends on the target ROM;
do not overwrite an existing DEX. The smali patches below remain in the DEX
that originally owns each Android class.

---

## framework.jar — hook sites

Patch each class in the DEX where the target ROM already stores it. Do not
assume every class is in `classes3.dex`.

### 1) Instrumentation — initContext

Two sites, same pattern.

**Class:** `Landroid/app/Instrumentation;`

**Site A — method:**
```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```
before `return-object xY`, add:
```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

**Site B — method:**
```smali
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```
before `return-object xY`, add:
```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

---

### 2) ApplicationPackageManager — hasSystemFeature

**Class:** `Landroid/app/ApplicationPackageManager;`

**Method:**
```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Below `.registers X`, add (do NOT raise registers):
```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios
```

---

### 3) AndroidKeyStoreKeyPairGeneratorSpi — generateKeyPair (SPI GEN)

**Class:** `Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`

**Method:**
```smali
generateKeyPair()Ljava/security/KeyPair;
```

Below `.registers X`, add (raise registers by 1):
```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX          # vX = registers − 2

if-eqz vX, :cond_kaorios
return-object vX

:cond_kaorios
```

> **v2.0.6.0 addition**: this path now auto-probes TEE challenge limit
> via `AttestationUtils.getMaxChallengeBytes()`. Oversized challenges
> (e.g. 256 B) are deferred to real TEE which rejects them — matching
> expected hardware behaviour. No extra smali needed; the logic is
> compiled into `lastclasses.dex`.

---

### 4) AndroidKeyStoreSpi — engineGetCertificateChain

**Class:** `Landroid/security/keystore2/AndroidKeyStoreSpi;`

**Method:**
```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

After the leaf certificate has been inserted into the result array and before
that array is returned, pass it through `CertificateChainIfNeeded`:
```smali
aput-object vLeaf, vChain, vIndex

invoke-static {vChain}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object vChain

return-object vChain
```

No extra register is required when the existing chain register is reused. See
[`AndroidKeyStoreSpi.smali`](../Template/Template_V2060/AndroidKeyStoreSpi.smali)
for the tested placement.

---

### 5) KeyStore2 — getKeyEntry (optional cached LEAF path)

**Class:**
```smali
Landroid/security/KeyStore2;
```

The `getKeyEntry` descriptor and parameter order vary across Android/ROM
branches. Identify the register containing
`Landroid/system/keystore2/KeyDescriptor;` in the target method; call it
`vDescriptor` below.

Below `.registers X` (raise by 1), add:
```smali
invoke-static {vDescriptor}, Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
move-result-object vX          # vX = registers − 2

if-eqz vX, :cond_kaorios
return-object vX

:cond_kaorios
```

`OnGetKeyEntry` starts with an uppercase `O`. This repository does not ship a
v2.0.6.0 `KeyStore2.smali` reference, so skip this optional patch unless the
target method and free register have been verified manually.

---

### 6) Settings$NameValueCache — getStringForUser (hide dev status)

**Class:** `Landroid/provider/Settings$NameValueCache;`

**Method (AOSP/HyperOS 4 reference):**
```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
```

Near the start of the method, after parameter declarations, add:
```smali
if-eqz p2, :cond_kaorios_original

invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0

if-eqz v0, :cond_kaorios_original

const-string v0, "0"
return-object v0

:cond_kaorios_original
# original method body continues here
```

The hook takes three arguments and returns primitive `Z`, not
`Ljava/lang/Boolean;`. See
[`Settings_NameValueCache.smali`](../Template/Template_V2060/Settings_NameValueCache.smali).

---

## services.jar — hook sites

### 7) SystemServer — initSystemServer

**Class:** `Lcom/android/server/SystemServer;`

before:
```smali
Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

add:
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

> **v2.0.6.0 change**: `initSystemServer()` now also calls
> `AttestationUtils.initBootHash()` which triggers the challenge-probe
> ladder. First boot may
> take ~200 ms extra.

---

### 8) AppsFilterBase — shouldFilterApplication (hide app list)

**Class:** `Lcom/android/server/pm/AppsFilterBase;`

**Method (Tested on HyperOS Android 17):**
```smali
shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```
(`p2` = callingUid, `p4` = targetPkgSetting, `p5` = userId)

The tested v2.0.6.0 template uses the compatibility hook below. Insert it after
the parameter declarations and guard a nullable `targetPkgSetting`:

```smali
move-object/from16 v1, p4

if-eqz v1, :cond_kaorios_original

invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

move-result-object v2

const/4 v3, 0x0

invoke-static {v3, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppList(Landroid/content/ContentResolver;Ljava/lang/String;)Z

move-result v0

if-eqz v0, :cond_kaorios_original

const/4 v0, 0x1

return v0

:cond_kaorios_original
```

Wrap this block in the target method's existing `Throwable` guard or add an
equivalent guard. The complete tested placement is in
[`AppsFilterBase.smali`](../Template/Template_V2060/AppsFilterBase.smali).

---

### 9) ComputerEngine — getInstallerPackageName (install source spoof)

**Class:** `Lcom/android/server/pm/ComputerEngine;`

**Method:**
```smali
getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
```

After the original installer value is stored in `vResult`, wrap it using the
method's `p2` user ID:
```smali
const/4 vC, 0x0
invoke-static {}, Landroid/os/Binder;->getCallingUid()I
move-result vUid

invoke-static {vC, vUid, p2, p1, vResult}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vResult
```

See [`ComputerEngine.smali`](../Template/Template_V2060/ComputerEngine.smali)
for the tested HyperOS method and exception handling.

---

### 10) SettingsProvider — filterSettingValue (ROM-specific, optional)

**Class:** `Lcom/android/providers/settings/SettingsProvider;`

`SettingsProvider` implementations vary substantially by ROM. There is no
universal v2.0.6.0 template in this repository. Patch the single common return
path only after identifying the namespace, key name, and original string value:
```smali
const/4 vC, 0x0
invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Raise `.registers`/`.locals` by 1 for `vC`. Replacement values come from
`settingsTemplates` in `Settings.Global["kaorios_hma_config"]` and built-in
presets (`dev_options`, `accessibility`, `input_method`).

If a replacement is configured as JSON `null`, also call
`KaoriosHook.shouldRemoveSetting(ContentResolver,String,String)Z` and convert
that result to the target ROM's representation of a missing setting. Do not
apply this snippet blindly to every `GET_*` branch.

---

## framework.jar — Android 17 Build field patch (MANDATORY on A17+)

See [Android 17 field-patch notes](notes-a17.md) for the Dex Comparator
example, explicit `= null` output, and the verification checklist.

Android 17 blocks `Field.set()` and `sun.misc.Unsafe.putObject()` for
`static final` fields. PIF spoofing and GPhotos toggle require these
fields to be writable. **Strip `final` from the following fields:**

**File:** `framework.jar` → dex containing `Landroid/os/Build;` and
`Landroid/os/Build$VERSION;` (on HyperOS A17: `classes3.dex`)

```text
Build.smali        : FINGERPRINT  BRAND  DEVICE  MANUFACTURER  MODEL  PRODUCT
                     ID  TIME  TAGS  TYPE  HARDWARE  USER
Build$VERSION.smali: RELEASE  SECURITY_PATCH  DEVICE_INITIAL_SDK_INT
```

**Before:**
```smali
.field public static final whitelist FINGERPRINT:Ljava/lang/String;
```

**After:**
```smali
.field public static whitelist FINGERPRINT:Ljava/lang/String;
```

Re-assemble with smali ≥ 3.0 and `--api 29` to preserve
`whitelist/blacklist` modifiers.

---

## JSON config formats

### `kaorios_hide_devlist` — simple per-app flags

```json
{
  "com.example.app1": {
    "hidedev": true,
    "hideapp": true
  },
  "com.example.app2": {
    "hidedev": false,
    "hideapp": true
  }
}
```

- `hidedev=true` → app is hidden from Developer Options list
- `hideapp=true` → app is "blind" (can't see other apps, but opens fine)
- Legacy fallback: `"com.a,com.b"` → both flags = true

### `kaorios_hma_config` — HMA-OSS policy engine

```json
{
  "configVersion": 1,
  "webViewProtection": true,
  "scope": {
    "com.caller.package": {
      "useWhitelist": false,
      "excludeSystemApps": true,
      "hideInstallationSource": false,
      "hideSystemInstallationSource": false,
      "excludeTargetInstallationSource": false,
      "extraAppList": ["com.specific"],
      "extraOppositeAppList": ["com.never-hide"],
      "applyTemplates": ["my-group"],
      "applySettingTemplates": ["dev-hide-tpl"]
    }
  },
  "templates": {
    "my-group": ["com.game.a", "com.game.b"]
  },
  "settingsTemplates": {
    "dev-hide-tpl": {
      "secure": {
        "development_settings_enabled": {"value": "0"}
      }
    }
  },
  "ignoredPackagesForPresets": []
}
```

---


---

## Register naming convention

| Register | Meaning |
|----------|---------|
| `vX` | Return value, where `X = .registers − 2` |
| `v0` | Temporary / Boolean |
| `vC` | ContentResolver slot (null) |
| `vResult` | Original return value being wrapped |
| `vUid` / `vUser` | Caller UID / userId |

---
