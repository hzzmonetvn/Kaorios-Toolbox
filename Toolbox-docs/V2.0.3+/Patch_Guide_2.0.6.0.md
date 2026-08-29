# Kaorios Toolbox Framework 2.0.6.0

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)


> Keep the stock JARs. Do not replace a stock DEX or copy a complete template class into a different ROM.

## 1. `framework.jar`

### A. Initialize each app

**Class:**
```smali
Landroid/app/Instrumentation;
```

**Reference smali:** [`Instrumentation.smali`](../Template/Template_V2060/framework/Instrumentation.smali)

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

Add the following code below `.registers X`:
```smali
invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
move-result-object v0

if-eqz v0, :cond_kaorios_feature_stock
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
return v0

:cond_kaorios_feature_stock
```

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

Add the following code below `.registers X`:
```smali
invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
move-result-object vX

if-eqz vX, :cond_kaorios_gen_stock
return-object vX

:cond_kaorios_gen_stock
```

In this method, pay attention to `.registers X`.

- Increase the current register count by `1`
- Replace `vX` with the register number at `registers - 2`

Example:

- If the method originally uses `15` registers
- Change it to `16` registers
- Then change `vX` to `v14`
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

Before the final return, pass the final `Certificate[]` through Kaorios:

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
add

```smali
invoke-static {vC}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object vD
# return-object vD
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

## 2. `services.jar`

**Class:**
```smali
Lcom/android/server/SystemServer;
```

**Reference smali:** [`SystemServer.smali`](../Template/Template_V2060/service/SystemServer.smali)

before line
```smali
Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
```

add
```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

---

## Notes

- Android 17 / SDK 37 also requires [the Build-field patch](notes-a17.md)..

## 3. Supplementary patches (test)

These are optional. Add only the feature you need, after the core patch boots correctly.

### Hide Developer options / ADB state

**Class:** `Landroid/provider/Settings$NameValueCache;`  
**Reference smali:** [`Settings$NameValueCache.smali`](../Template/Template_V2060/framework/Settings$NameValueCache.smali)  
**Method:** `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`

Add the following code below `.registers X`:

```smali
if-eqz p2, :cond_kaorios_dev_stock
invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_kaorios_dev_stock
const-string v0, "0"
return-object v0

:cond_kaorios_dev_stock
```

Use only the overload returning `String`; do not paste this into a `Pair`-returning overload.

### Hide installed apps per caller

Patch the Package Manager filter method used by the target ROM. Android 17 reference: `AppsFilterBase.shouldFilterApplication(...)`.  
**Reference smali:** [`AppsFilterBase.smali`](../Template/Template_V2060/service/AppsFilterBase.smali)

```smali
# callingUid, null resolver, target package name, userId
invoke-static {vCallingUid, vNull, vTargetPackage, vUserId}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILandroid/content/ContentResolver;Ljava/lang/String;I)Z
move-result vResult
if-eqz vResult, :cond_kaorios_hide_stock
const/4 v0, 0x1
return v0

:cond_kaorios_hide_stock
```

The argument order is fixed: `callingUid, resolver, targetPackageName, userId`. Find the real registers in your ROM; the template is reference only.

### Spoof installer source (Soon)

**Reference class:** `Lcom/android/server/pm/ComputerEngine;`  
**Reference smali:** [`ComputerEngine.smali`](../Template/Template_V2060/service/ComputerEngine.smali)  
**Method:** `getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;`

After the stock installer value is resolved, pass it through:

```smali
const/4 vNull, 0x0
invoke-static {vNull, vCallingUid, p2, p1, vInstaller}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vInstaller
return-object vInstaller
```

Identify the calling UID, user ID, queried package and stock installer value before adapting this block.

### Filter Settings values (Soon)

At a ROM-specific Settings read point, pass the namespace, key and stock value through:

```smali
const/4 vNull, 0x0
invoke-static {vNull, vNamespace, vName, vValue}, Landroid/security/kaorios/KaoriosHook;->filterSettingValue(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
```

For a configured removal (`value: null`), use `shouldRemoveSetting(...)` and follow the target ROM's own representation of a missing setting.

### Disable `FLAG_SECURE`

[Disable Secure Flag guide](Disable_Secure_Flag.md).

### Disable Signature Verification

[CorePatch guide](CorePatch.md). (It may differ from some ROMs)

Reference smali directory: [`Template/Template_V2060`](../Template/Template_V2060)

