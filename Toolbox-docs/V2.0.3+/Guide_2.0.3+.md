# Kaorios Toolbox Patch Guide

This guide explains the smali changes needed to import and use the Kaorios Toolbox hook classes.

> **Compatibility (v2.0.5.0, SDK 37 build)**
> - DEX is compiled against **Android 17 (API 37)**; hooks work on ROMs Android 12–17 (API 31–37).
> - All call-site signatures below are unchanged from v2.0.3+ — existing patched ROMs do not need re-patching.
> - Internals were renamed (`TrickyStoreService` → `OmkService`, aliases `OmkTeeCheck` / `omk_attestation_key`); this does not affect any call site in this guide.
> - App-list hiding is now powered by an HMA-OSS style caller-aware policy engine (config: `Settings.Global["kaorios_hma_config"]`).

## Framework.jar

Import the KaoriosToolbox DEX classes into `Framework.jar`.

### 1) 
**Class:**
```smali
Landroid/app/Instrumentation;
```

**Method:**
```smali
 newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
```

before line
```smali
return-object xY
    .end method
```

Add
```smali
invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

**Method:**
```smali
 newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

before line
```smali
return-object xY
    .end method
```

add
```smali
invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```
---

### 2)
**Class:**
```smali
Landroid/app/ApplicationPackageManager;
```

**Method:** 
```smali
 hasSystemFeature(Ljava/lang/String;I)Z
```

Add the following code below `.registers X`:
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

### 3)
**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

**Method:**
```smali
 generateKeyPair()Ljava/security/KeyPair;
```

Add the following code below `.registers X`:
```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios
return-object vX

:cond_kaorios
```

#### Register note

In this method, pay attention to `.registers X`.

- Increase the current register count by `1`
- Replace `vX` with the register number at `registers - 2`

Example:

- If the method originally uses `15` registers
- Change it to `16` registers
- Then change `vX` to `v14`

---

### 4)
**Class:**
```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

**Method:**
```smali
 engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Find this part:

```smali
const/4 vA, 0x0
aput-object vB, vC, vA
return-object vD
```

below line
```smali
const/4 vA, 0x0
aput-object vB, vC, vA
```

add:
```smali
invoke-static {vC}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object vD
```

#### Note

`move-result-object vD` is the value returned by `return-object vD`.

Also, in `invoke-static {vC}`, the array register `vC` is the same register used by `aput-object vB, vC, vA`.

#### Example

```smali
const/4 v4, 0x0
aput-object v2, v3, v4

invoke-static {v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

---

## Services.jar

### 1)
**Class:**
```smali
Lcom/android/server/SystemServer;
```

before line
```smali
Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

add
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

---

## Optional (v2.0.5+): caller-aware app hiding & install-source spoofing

The hooks below are **optional**. The base patch above already enables Play Integrity,
keybox attestation and per-app spoofing. Add them only if you want the new
HMA-style features (per-caller hidden apps, installer spoofing, per-caller
Settings value replacement). All signatures are verified against
`classes_V2.0.5.0.dex`.

### A) Hide app list — `AppsFilterBase`

**Class:**
```smali
Lcom/android/server/pm/AppsFilterBase;
```

**Method (HyperOS Android 17):**
```smali
 shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
```
(`p2` = callingUid, `p4` = targetPkgSetting, `p5` = userId)

Insert right after the `.param p5 ...` line, **before everything else**:

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

#### Why this shape (do NOT raise `.registers`)

Raising `.registers` shifts every parameter register upward and breaks all
existing `invoke-*` sites that use them. Instead, temporarily reuse the lowest
local registers (`v0..v4`) at the very top of the method — they are always
written before being read by the original code. This is the same proven
pattern as the `generateKeyPair` hook (`v14`). `move/from16` /
`move-object/from16` is required because parameter slots sit above v15.

> On other ROM versions where the method signature is
> `(int callingUid, Computer, PackageStateInternal, int userId)`, keep the same
> block but map: uid = 2nd param, state = 4th param, userId = last param.

### A2) BẮT BUỘC trên Android 17+ — gỡ cờ `final` của Build

Android 17 (libcore sync OpenJDK mới) **chặn mọi cách ghi static-final qua
Java**: `Field.set` lẫn `sun.misc.Unsafe.putObject` đều bị khoá (đã xác minh
bằng logcat). Vì vậy framework không thể spoof Build fields trừ khi ROM patch
gỡ cờ `final` trước.

**File:** `framework.jar` → dex chứa `Landroid/os/Build;` và
`Landroid/os/Build$VERSION;` (trên HyperOS A17: cả hai nằm ở `classes3.dex`)

**Sửa:** với mỗi field dưới đây, xoá token `final` khỏi dòng `.field`:

```text
Build.smali        : FINGERPRINT  BRAND  DEVICE  MANUFACTURER  MODEL  PRODUCT
                     ID  TIME  TAGS  TYPE  HARDWARE  USER
Build$VERSION.smali: RELEASE  SECURITY_PATCH  DEVICE_INITIAL_SDK_INT
```

Ví dụ:
```smali
# Trước
.field public static final whitelist FINGERPRINT:Ljava/lang/String;
# Sau
.field public static whitelist FINGERPRINT:Ljava/lang/String;
```

Sau khi gỡ cờ, kỹ thuật ghi qua reflection hoạt động trở lại như Android ≤16,
không cần Unsafe. Giá trị mặc định không đổi — chỉ process có cấu hình trong
PIF JSON / GPhotos toggle mới bị ghi đè.

> Assemble lại dex bằng smali ≥3.x với `--api 29` trở lên để nhận các modifier
> `whitelist/blacklist` (hidden API) mà baksmali xuất ra.

---

### B) Spoof install source — `ComputerEngine`

**Class:**
```smali
Lcom/android/server/pm/ComputerEngine;
```

**Method:**
```smali
 getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
```

Wrap the original return value (`vResult` = register holding the real value,
`p1` = target package). Full signature:
`(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;`
— first slot takes `null`, the engine resolves its own ContentResolver.

```smali
# vC = ContentResolver slot (null), vUid = caller uid, vUser = caller user
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

Apply the same wrapper inside `getInstallSourceInfo` on the initiating package
name if your ROM exposes it. On HyperOS Android 17 the real method is
`getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;` (`.registers 8→9`,
`callingUid` already lives in a local, single `return-object`) — wrap that one
return site with `const/4 vNull, 0x0` in a freshly freed register.

### C) Per-caller Settings replacement — `SettingsProvider`

**Class:**
```smali
Lcom/android/providers/settings/SettingsProvider;
```

Wrap every `GET_*` global/secure/system lookup result before returning it to
the calling app (`vNs` = namespace, `vName` = settings key, `vValue` = real
value). Full signature:
`(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;`
— first slot takes `null`, the engine resolves its own ContentResolver.

```smali
const/4 vC, 0x0
invoke-static {vC, vNs, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

Raise `.registers`/`.locals` by at least 1 for `vC`. Replacement values come from
`settingsTemplates` in `Settings.Global["kaorios_hma_config"]`; built-in
presets `dev_options`, `accessibility`, `input_method` are also honored.
Return-value `null` semantics are handled internally — always return whatever
the hook gives back.

> These three call-sites mirror what `HmaPmHooks` / `HmaSettingsHooks` do in a
> full source-tree integration (see `embedded/hma-oss`). Failure inside any of
> them fails open: the framework's original result is returned.

---

## Register naming convention

To keep the guide easy to read, use the same formatting for registers that refer to the same value.

For example:

- `v0` = returned Boolean in `hasSystemFeature`
- `vD` = return value in `engineGetCertificateChain`
- `vX` = temporary result register in `generateKeyPair`

This makes it easier to track which register is used as input, output, or temporary storage.

## Summary

- `Framework.jar`: hook `Instrumentation`, `ApplicationPackageManager`, and `AndroidKeyStoreKeyPairGeneratorSpi`
- `Services.jar`: hook `SystemServer`
- Adjust register counts carefully when adding new instructions
- Keep register usage consistent inside each method
- Make sure the value props (Fake Locked) = green
