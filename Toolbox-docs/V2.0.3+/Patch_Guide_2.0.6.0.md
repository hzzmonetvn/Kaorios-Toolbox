# Kaorios Toolbox Patch Guide — v2.0.6.0

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

The examples are verified on HyperOS Android 17; locate classes and descriptors
on the target ROM instead of assuming the same DEX number or line number.

> Hook names and descriptors are case-sensitive. Copy the complete descriptor,
> not only the method name. The files under
> [`Template/Template_V2060`](../Template/Template_V2060) are the tested
> HyperOS Android 17 references; adapt registers and labels for other ROMs.

### Stop conditions

- Back up `framework.jar`, `services.jar`, their VDEX/ODEX files, and a bootable image.
- Android 17 DEX 040 requires smali/baksmali 3.x. Header-downgrade tricks are inspection-only.
- Do not leave old and new `android/security/kaorios/*` or
  `com/kousei/framework/*` classes together on the boot classpath.
- Do not increase `.registers` blindly when the original method refers to
  parameters through `vN`; use `pN`, a proven-free local, or adjust `.locals`.
- Patch and boot-test one feature group at a time.

---

## Prerequisites

| Tool | Version | Notes |
|------|---------|-------|
| baksmali/smali | ≥ 3.0 | `--api 29` needed for `whitelist/blacklist` modifier |
| Java | ≥ 17 | JDK 21 recommended |
| BouncyCastle | 1.84 | Bundled in the framework DEX (`bcprov-jdk18on` + `bcpkix-jdk18on`) |
| Merged API-37 jar | f6a41ad… | compile-only classpath |

---

Import the artifact's full
`classes.dex` into `framework.jar`. Its final name depends
on the target ROM. On a clean ROM, use the next unused DEX name. On a ROM that
already contains Kaorios, first locate both package trees:

```bash
rg -l 'Landroid/security/kaorios/KaoriosHook;' work/fw*
rg -l 'Lcom/kousei/framework/KaoriosFramework;' work/fw*
```

If the old DEX is dedicated to Kaorios, replace that entry. If it also contains
system classes, remove both old package trees from that DEX, rebuild it, then
append the new artifact using the next unused DEX name. Never append a duplicate
copy. Smali call-site patches stay in the DEX that originally owns each Android
class.

Before editing, disassemble every candidate DEX with the target API, for example:

```bash
java -jar baksmali-3.0.9-fat-release.jar disassemble \
  classes3.dex --api 37 --output fw3
```

---

## framework.jar — hook sites

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

At method entry, use a proven-free object local. The tested template uses `v0`
without changing `.registers`; another ROM may require a different local:
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

At method entry, before the stock code calls `getSecurityLevel()`, use a
proven-free object local. The tested `.registers 16` method uses `v14`:
```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object v14

if-eqz v14, :cond_kaorios
return-object v14

:cond_kaorios
```

> **v2.0.6.0 addition**: this path now auto-probes TEE challenge limit
> via `AttestationUtils.getMaxChallengeBytes()`. Oversized challenges
> (e.g. 256 B) are deferred to real TEE which rejects them — matching
> expected hardware behaviour. No extra smali needed; the logic is
> compiled into the workflow artifact `classes.dex` (rename only when importing
> it into the target `framework.jar`).

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

Use a proven-free object local named `vResult` below. Do not derive a register
from a generic `.registers - 2` formula:
```smali
invoke-static {vDescriptor}, Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(Landroid/system/keystore2/KeyDescriptor;)Landroid/system/keystore2/KeyEntryResponse;
move-result-object vResult

if-eqz vResult, :cond_kaorios
return-object vResult

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

Insert this caller-aware v2.0.6.0 hook after the parameter declarations and
guard a nullable `targetPkgSetting`:

```smali
move/from16 v0, p2

move-object/from16 v1, p4

if-eqz v1, :cond_kaorios_original

invoke-interface {v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;

move-result-object v2

const/4 v3, 0x0

move/from16 v4, p5

invoke-static {v0, v3, v2, v4}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z

move-result v0

if-eqz v0, :cond_kaorios_original

const/4 v0, 0x1

return v0

:cond_kaorios_original
```

Wrap this block in the target method's existing `Throwable` guard or add an
equivalent guard. The complete tested placement is in
[`AppsFilterBase.smali`](../Template/Template_V2060/AppsFilterBase.smali).

The argument order is `callingUid, resolver, targetPackage, userId`. The old
guide's `resolver, uid, targetPackage, userId` order does not match the method
descriptor and must not be used.

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

See [Android 17 field-patch notes](notes-a17.md)
---

## JSON config formats (beta)

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

## Rebuild and verification

```bash
java -jar smali-3.0.9-fat-release.jar assemble fw3 \
  --api 37 --output classes3.dex
java -jar baksmali-3.0.9-fat-release.jar list classes classes3.dex >/dev/null
rg -n 'KaoriosHook;->' fw3 sv1
```

## Failure table

| Symptom | Likely cause | First check |
|---|---|---|
| Bootloop | Bad register/descriptor or invalid rebuilt DEX | Restore services first; disassemble rebuilt DEX and inspect verifier log |
| Toolbox cannot see framework | DEX missing, duplicate old class, stale oat | Search final JAR for both API classes and rebuild matching VDEX/ODEX |
| GEN never runs | Hook is after `getSecurityLevel`, keybox is off/empty | Inspect method entry, Settings, and OMK log |
| LEAF chain is unchanged | Wrong array register or an unwrapped return path | Trace the final `Certificate[]` before each return |
| PIF/Photos logs but Build is unchanged | Target field is still `final` | Compare rebuilt `Build.smali`/`Build$VERSION.smali` |
| Hide-dev returns stock value | Wrong overload, `Boolean`/`Z` mismatch | Target returns `String`; hook returns primitive `Z` |
| Hide-app filters the caller itself | Legacy hook or wrong argument order | Use descriptor starting with `I` and uid,resolver,target,user order |

## Recommended patch order

1. Import DEX and remove duplicates; boot-test.
2. Patch `SystemServer`; boot-test.
3. Patch `Instrumentation`, Build fields, and `hasSystemFeature`; test PIF/Photos.
4. Patch both Keystore SPI sites; test `gen/leaf/auto`.
5. Patch hide-dev/hide-app with a disposable test app.
6. Patch installer/settings/secure-flag last because they vary most by ROM.

## Register naming convention

| Register | Meaning |
|----------|---------|
| `vResult` | A verified-free local holding a hook/original return value |
| `v0` | Temporary / Boolean |
| `vC` | ContentResolver slot (null) |
| `vResult` | Original return value being wrapped |
| `vUid` / `vUser` | Caller UID / userId |

---
