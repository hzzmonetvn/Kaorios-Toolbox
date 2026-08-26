# Kaorios Toolbox Patch Guide — v2.0.6.0

This guide covers all smali changes needed to integrate Kaorios Toolbox
framework hooks into a custom ROM.

> **v2.0.6.0 — What changed since 2.0.5.0**
> - **Challenge probe**: auto-probes TEE max attestation challenge size at
>   boot; GEN software path mirrors real TEE behaviour (reject oversized
>   challenges instead of accepting them).
> - **Shared-UID self-exemption**: hide-app-list now checks ALL packages
>   of a caller UID, not just `pkgs[0]`. Shared-UID apps (e.g. gms /
>   gms.unstable) that are themselves configured no longer break self-queries.
> - **Caller-view semantics** for hide-app-list: an entry in the list means
>   "this caller can't see others"; it never blocks the caller from seeing
>   itself. Verified on real ROM.
> - **OmkRootOfTrust**: forces `deviceLocked=true`, `verifiedBootState=Verified`
>   for every attested key; VK derived from `sha256(bootHash)` when no
>   vbmeta properties are available.
> - **Build field `final` strip (A17)**: Android 17 blocks `Field.set()` and
>   `sun.misc.Unsafe.putObject()` for static-final fields. The build.jar
>   patch below is **mandatory** on A17+ for PIF/GPhotos spoofing to work.
> - Internal: `TrickyStoreService` → `OmkService`; all call-site signatures
>   unchanged.
> - Internal: 18 standalone debug log lines removed; `if (DEBUG)` blocks
>   retained. DEX size ~871 KB (release, DEBUG=false).

**Build info**
- Compiled against **Android 17 (API 37)** merged boot jar
- Hooks work on **Android 12–17 (API 31–37)**
- `minSdk=31`, `compileSdk=37`, `targetSdk=37`
- `KaoriosHook` methods are all `public static` — no instance needed

---

## Prerequisites

| Tool | Version | Notes |
|------|---------|-------|
| baksmali/smali | ≥ 3.0 | `--api 29` needed for `whitelist/blacklist` modifier |
| Java | ≥ 17 | JDK 21 recommended |
| BouncyCastle | 1.78 | `bcprov-jdk18on` + `bcpkix-jdk18on` |
| Merged API-37 jar | f6a41ad… | compile-only classpath |

---

## framework.jar — hook sites

All hooks go into **`classes3.dex`** (or whichever dex contains
`Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;`).

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
> compiled into `classes7.dex`.

---

### 4) AndroidKeyStoreSpi — engineGetCertificateChain

**Class:** `Landroid/security/keystore2/AndroidKeyStoreSpi;`

**Method:**
```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Below `.registers X` (raise by 1), add:
```smali
invoke-static {p0, p1}, Landroid/security/kaorios/KaoriosHook;->getCertificateChain(Landroid/security/keystore2/AndroidKeyStoreSpi;Ljava/lang/String;)[Ljava/security/cert/Certificate;
move-result-object vX          # vX = registers − 2

if-eqz vX, :cond_kaorios
return-object vX

:cond_kaorios
```

---

### 5) KeyStore2 — getKeyEntry / getKeyMetadata (LEAF path)

**Class:** `Landroid/security/keystore2/KeyStore2;`

**Method:**
```smali
getKeyEntry(Landroid/security/keystore2/IKeystoreSecurityLevel;Landroid/security/keystore2/KeyDescriptor;)Landroid/security/keystore2/KeyEntryResponse;
```

Below `.registers X` (raise by 1), add:
```smali
invoke-static {p2}, Landroid/security/kaorios/KaoriosHook;->onGetKeyEntry(Landroid/security/keystore2/KeyDescriptor;)Landroid/security/keystore2/KeyEntryResponse;
move-result-object vX          # vX = registers − 2

if-eqz vX, :cond_kaorios
return-object vX

:cond_kaorios
```

---

### 6) Settings$NameValueCache — getStringForUser (hide dev status)

**Class:** `Landroid/provider/Settings$NameValueCache;`

**Method:**
```smali
getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Landroid/util/Pair;
```

Below `.registers X` (raise by 1), add:
```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/Boolean;
move-result-object vX          # vX = registers − 2

if-eqz vX, :cond_kaorios
invoke-virtual {vX}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0

if-eqz v0, :cond_kaorios_hide_dev

# Build Pair(null, "0") to signal "not found / disabled"
const/4 v1, 0x0
const-string v2, "0"
invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;
move-result-object v0
return-object v0

:cond_kaorios_hide_dev
:cond_kaorios
```

> This hook returns `"0"` (Developer options hidden) when the caller app
> is in the hide-dev list. Controlled by `Settings.Global["kaorios_hide_dev_work"]`
> and `kaorios_hide_devlist` JSON.

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
> ladder (alias `omk_challenge_probe`, auto-deleted). First boot may
> take ~200 ms extra.

---

### 8) AppsFilterBase — shouldFilterApplication (hide app list)

**Class:** `Lcom/android/server/pm/AppsFilterBase;`

**Method (HyperOS Android 17):**
```smali
shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```
(`p2` = callingUid, `p4` = targetPkgSetting, `p5` = userId)

Insert right after `.param p5 ...`, **before everything else**:

```smali
move/from16 v0, p2

move-object/from16 v1, p4

invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

move-result-object v2

const/4 v3, 0x0

move/from16 v4, p5

invoke-static {v3, v0, v2, v4}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

move-result v0

if-eqz v0, :cond_kaorios_hide_app

const/4 v0, 0x1

return v0

:cond_kaorios_hide_app
```

> **v2.0.6.0 change**: caller-view semantics — the caller is only
> "blind" to other apps; it still sees itself. Shared-UID self-exemption
> checks ALL packages for the caller UID. Controlled by
> `Settings.Global["kaorios_hide_app_work"]` + `kaorios_hide_devlist` JSON.

---

### 9) ComputerEngine — getInstallerPackageName (install source spoof)

**Class:** `Lcom/android/server/pm/ComputerEngine;`

**Method:**
```smali
getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
```

Wrap the original return value:
```smali
# vC = null, vUid = callingUid, vUser = callingUserId
const/4 vC, 0x0
invoke-static {p1}, Landroid/os/Binder;->getCallingUid()I
move-result vUid
invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;
move-result-object vU
invoke-virtual {vU}, Landroid/os/UserHandle;->getIdentifier()I
move-result vUser

invoke-static {vC, vUid, vUser, p1, vResult}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vResult
```

---

### 10) SettingsProvider — filterSettingValue (per-caller settings spoof)

**Class:** `Lcom/android/providers/settings/SettingsProvider;`

Wrap every `GET_*` lookup result before returning it to the calling app:
```smali
const/4 vC, 0x0
invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Raise `.registers`/`.locals` by 1 for `vC`. Replacement values come from
`settingsTemplates` in `Settings.Global["kaorios_hma_config"]` and built-in
presets (`dev_options`, `accessibility`, `input_method`).

---

## framework.jar — Android 17 Build field patch (MANDATORY on A17+)

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

## Settings.Global — runtime configuration

All runtime config is stored in `Settings.Global`. Use ADB:

```bash
settings put global <key> <value>
```

### Keybox attestation

| Key | Value | Default |
|-----|-------|---------|
| `kaorios_keybox_enabled` | `true` / `false` | `false` |
| `kaorios_keybox_apply_all` | `true` / `false` | `true` |
| `kaorios_keybox_apply_all_mode` | `auto` / `leaf` / `gen` | `gen` |
| `kaorios_keybox_xml` | XML keybox content | — |

### Play Integrity / GPhotos

| Key | Value | Default |
|-----|-------|---------|
| `kaorios_pif_json` | JSON override props | — |
| `kaorios_spoof_photos` | `true` / `false` | `false` |
| `kaorios_spoof_gms` | `true` / `false` | `false` |
| `kaorios_spoof_vending` | `true` / `false` | `false` |

### Hide developer status

| Key | Value | Default |
|-----|-------|---------|
| `kaorios_hide_dev_work` | `true` / `false` | `false` |
| `kaorios_hide_devlist` | JSON see below | — |

### Hide app list

| Key | Value | Default |
|-----|-------|---------|
| `kaorios_hide_app_work` | `true` / `false` | `false` |
| `kaorios_hide_devlist` | JSON see below | — |

### HMA policy engine (advanced)

| Key | Value | Default |
|-----|-------|---------|
| `kaorios_hma_config` | Full HMA JSON | — |

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

## Quick-start ADB commands

```bash
# Enable keybox attestation (GEN mode, all apps)
settings put global kaorios_keybox_enabled true
settings put global kaorios_keybox_apply_all true
settings put global kaorios_keybox_apply_all_mode gen

# Enable GPhotos spoof
settings put global kaorios_spoof_photos true

# Hide BIDV from Developer Options + blind its app list
settings put global kaorios_hide_dev_work true
settings put global kaorios_hide_app_work true
settings put global kaorios_hide_devlist '{"vn.com.bidv.mobilebanking":{"hidedev":true,"hideapp":true}}'
```

---

## What's new in 2.0.6.0 vs 2.0.5.0

| Feature | 2.0.5.0 | 2.0.6.0 |
|---------|---------|---------|
| Challenge probe | N/A (accepted any size in GEN) | Auto-probes TEE limit at boot; GEN path defers oversized to real TEE |
| Shared-UID self-exemption | Only checked `pkgs[0]` — shared-UID app broke self-query | Checks ALL `packagesForUid()` — gms/gms.unstable both work |
| Caller-view hide semantics | Configured app's own query could be filtered | Configured app always sees itself; only blind to others |
| OmkRootOfTrust | `deviceLocked`/`verifiedBootState` from vbmeta (may be 0) | Forces `locked=true`, `Verified`; VK from `sha256(bootHash)` when no props |
| Build field `final` strip | Not mentioned (assumed working) | **Mandatory on A17+** — `Field.set()` + `Unsafe` both blocked |
| Debug log volume | ~66 standalone dbgD in KaoriosHook | ~48 standalone dbgD (18 removed) |
| DEX size (release) | ~884 KB | ~871 KB |

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

## Checklist after patching

1. `services.jar` → `smali` both hook sites (SystemServer, AppsFilterBase)
2. `framework.jar` → `smali` all 6 hook sites + strip Build `final`
3. Reassemble with `smali assemble --api 29`
4. Replace both jars in `system/framework/`
5. Flash → boot → verify:
   - YASNAC: `deviceLocked=true`, `verifiedBootState=Verified`, non-zero VK
   - Play Integrity: MEETS_BASIC_INTEGRITY
   - `settings put global kaorios_hide_app_work true` → BIDV card works
   - Duck Detector: oversized challenge shows **Rejected** in GEN mode
6. `settings get global kaorios_hide_app_work` → `1`
7. `settings get global kaorios_hide_dev_work` → `1`
