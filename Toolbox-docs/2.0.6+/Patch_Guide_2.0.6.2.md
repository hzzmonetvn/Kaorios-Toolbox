# Kaorios Toolbox Patch Guide (v2.0.6.2 — Clean Stock Android 13–17)

This step-by-step guide explains how to patch a **clean, unmodified (stock)** Android 13–17 ROM (`framework.jar`, `services.jar`, and optionally `SettingsProvider.apk` + SELinux policy + native PIF libraries) for **Kaorios Toolbox v2.0.6.2**.

> [!IMPORTANT]
> - **Start from clean stock ROM files only.** Never re-patch a `framework.jar` or `services.jar` that already contains older Kaorios or conflicting spoof hooks.
> - **Strict R8 ABI Rule:** In release builds (`framework/proguard-rules.pro`), R8 obfuscates and repackages internal helper classes into `com.kousei.framework.*`. Every smali hook **MUST** invoke ONLY:
>   - `Landroid/security/kaorios/KaoriosHook;` (for `framework.jar` **F1–F7** and `services.jar` **S1–S5**)
>   - `Landroid/security/kaorios/settings/AdvancedPolicyService;` (for optional `SettingsProvider.apk` **SP1**)
> - Never invoke obfuscated internal helper classes or retired legacy Keystore2 / Phenotype no-op methods from older v2.0.3 guides.

> [!TIP]
> **Looking for device-specific OEM instructions?** See [`OEM_ROM_Patch_Guide.md`](OEM_ROM_Patch_Guide.md) for **Xiaomi MIUI / HyperOS (1/2/3)**, **Samsung One UI (6/7/8)**, **OPPO ColorOS / OnePlus OxygenOS / Realme UI (OPlus)**, **vivo OriginOS / FuntouchOS**, and **Google Pixel / Stock & Custom AOSP**.
> **Vietnamese version:** [`Patch_Guide_2.0.6.2_VI.md`](Patch_Guide_2.0.6.2_VI.md).

---

## 1. Release Artifacts & R8-Kept Contract

Download or build the v2.0.6.2 release artifacts:

| Artifact | Purpose | Destination on Device / ROM |
|---|---|---|
| `KaoriosToolbox-release.apk` | Manager app (`com.kousei.kaorios`, `arm64-v8a`) | Install as normal or privileged system app |
| `classes.dex` (from `KaoriosFramework-release.apk`) | R8-compiled framework payload | Import into `framework.jar` as the next contiguous `classesN.dex` |
| `libkaoripif.so` (`arm64-v8a` / `armeabi-v7a`) | Optional native Bionic `prop_area` PIF engine | `/system_ext/lib64/libkaoripif.so` (or `/system/lib64/`); 32-bit in `lib/` |
| `libkaoripif_diagnostic.so` (`arm64-v8a` / `armeabi-v7a`) | Optional **read-only** diagnostic bridge | `/system/lib64/libkaoripif_diagnostic.so` (`lib/` for 32-bit) |

### R8-Kept Boot-Boundary Classes (`framework/proguard-rules.pro`)

- `android.security.kaorios.KaoriosHook` — Unified static smali hook facade (`F1–F7`, `S1–S5`)
- `android.security.kaorios.settings.AdvancedPolicyService` (+ `AdvancedPolicyClient`, `AdvancedPolicyRuntimeStatus`, `AdvancedPolicySnapshot`, `IAdvancedPolicyService`, `SettingDecisionParcel`, `ServiceManagerBridge`) — Binder policy service & `SettingsProvider` hook (`SP1`)
- `com.kousei.framework.KaoriosFramework` (+ `$InstalledAppEntry`, `$InstalledAppsSnapshot`, `$HideConfig`) — Public manager/framework bridge & settings keys
- `android.security.kaorios.KaoriosPifInstaller` — Process-gated native PIF loader (`libkaoripif.so`)
- `android.security.kaorios.PifNative` (+ `PifNativeStatus`) — Explicit opt-in read-only native diagnostic API

---

## 2. Quick Start: Automated Patching (`script/kaorios_patcher.py`)

If you want to patch automatically with full register-width lowering and ABI checks, use the Python 3.10+ patcher with Java 17+ and `smali`/`baksmali` 3.0.x:

```bash
export KAORIOS_SMALI_CLASSPATH="/path/to/smali-3.0.8-libs/*"

# 1. Inspect payload DEX and confirm every R8-kept class/method is present
python3 script/kaorios_patcher.py inspect-payload --payload dist/classes.dex

# 2. Import payload classes.dex into framework.jar and apply hooks F1–F7
python3 script/kaorios_patcher.py patch-framework \
  --input stock/framework.jar \
  --payload dist/classes.dex \
  --output out/framework.jar

# 3. Apply services.jar hooks S1–S4 (add --enable-secure-flag / --enable-corepatch if wanted)
python3 script/kaorios_patcher.py patch-services \
  --input stock/services.jar \
  --output out/services.jar \
  --enable-secure-flag

# 4. Optional: Patch SettingsProvider.apk + validate Android 17 SELinux policy
python3 script/kaorios_patcher.py patch-settings-provider \
  --input stock/SettingsProvider.apk \
  --output out/SettingsProvider.apk

python3 script/kaorios_patcher.py check-sepolicy \
  --service-contexts deployment/android17-sepolicy/service_contexts.fragment \
  --policy deployment/android17-sepolicy/kaorios_advanced_policy.cil \
  --settings-domain system_app

# 5. Verify all patched outputs on host
python3 script/kaorios_patcher.py verify \
  --framework out/framework.jar \
  --services out/services.jar \
  --settings-provider out/SettingsProvider.apk \
  --payload dist/classes.dex \
  --expect-secure-flag
```

---

## 3. Register Safety Rules (Read Before Manual Edits)

Every `smali` method declares either `.locals L` (number of local `v*` registers) or `.registers R` (total `locals + params`).

### The 4 Rules That Prevent `smali` Errors & Bootloops

1. **Calculate effective register indices:**
   - `locals_count = L` (if `.locals L`), or `locals_count = R - param_slots` (if `.registers R`).
   - Parameter slots: add `1` for `this` (`p0`) on non-static methods, `1` for each normal argument, and **`2`** for each 64-bit `long` (`J`) or `double` (`D`).
   - Effective index of parameter `pK` is **`locals_count + K`**.
2. **4-bit `v0..v15` limit for standard `invoke-*`:**
   - Standard `invoke-static {a, b}`, `invoke-virtual {a}`, and `invoke-interface {a}` ONLY accept registers `v0` through `v15`.
   - If any argument has effective index **`> 15`**, copy it into a low local (`v0..v4`) using `move/from16`, `move-object/from16`, or `move-wide/from16` (or use `invoke-*/range {pA .. pB}` if the registers are contiguous).
3. **Bumping `.locals` or `.registers` shifts every `pK` upward:**
   - Always re-check `locals_count + K` **after** increasing `.locals` or `.registers`.
   - If the stock method used numeric aliases (`v14` instead of `p0`) under `.registers`, convert those parameter references to `pN` before bumping `.registers`.
4. **Never split `invoke-*` from `move-result*`:**
   - `move-result` / `move-result-object` must sit immediately after its `invoke-*`.

### Concrete Worked Examples

#### Example A — Bumping `.registers` (`generateKeyPair()` in F5)
- Stock method: `.registers 15`, non-static with 0 args (`p0 = this`, so `param_slots = 1`).
  - Before edit: locals `v0..v13` (14 locals), `p0 = v14`.
- Increase `.registers 15` -> **`.registers 16`**:
  - After edit: locals `v0..v14` (15 locals), fresh scratch local is **`v14`** (`registers - 2`), and `p0` shifts to `v15` (`<= 15`, still valid in `invoke-static {p0}`).
- What if stock was already `.registers 16`?
  - Bumping to `.registers 17` pushes `p0` to `v16` (`> 15`)! Standard `invoke-static {p0}` will fail to assemble.
  - **Fix:** Either copy into `v0` at method entry (without even bumping if `.locals >= 1`!) via `move-object/from16 v0, p0` + `invoke-static {v0}, ...`, OR use `invoke-static/range {p0 .. p0}, ...`.

#### Example B — High-Register Lowering (`> v15`) with `move*/from16` (`NameValueCache` in F7)
- Method: `getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;`
- Stock header: `.locals 14` (instance method: `p0 = v14`, `p1 = v15`, `p2 = v16`, `p3 = v17`).
- Because `p2` (`16`) and `p3` (`17`) exceed `15`, `invoke-static {p1, p2, p3}` fails!
- **Fix (works for ANY `.locals >= 3`):**
  ```smali
  move-object/from16 v0, p1
  move-object/from16 v1, p2
  move/from16 v2, p3
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  move-result-object v0
  ```
  *(Or use `invoke-static/range {p1 .. p3}, ...` since `p1..p3` are contiguous!)*

#### Example C — 64-Bit `long` (`J`) Wide Parameter Pair (`generatePackageInfo` in S4)
- Method: `generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;`
- `long flags` occupies **two** consecutive registers: `p2` (low 32 bits) and `p3` (high 32 bits).
- If `.locals 14`, then `p2 = v16` and `p3 = v17` (`> 15`). Copy `vPi` -> `v0` and wide pair `p2..p3` -> `v1..v2`:
  ```smali
  move-object/from16 v0, vPi
  move-wide/from16 v1, p2
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
  move-result-object v0
  return-object v0
  ```

---

## 4. `framework.jar` — Payload Import & Hooks (F1–F7)

### Step 0 — Import Payload `classes.dex`

1. List the DEX files inside your clean stock `framework.jar` (e.g. `classes.dex` through `classes5.dex`).
2. Verify stock `framework.jar` does **not** already contain `android/security/kaorios/` or `com/kousei/framework/`.
3. Copy `classes.dex` from `KaoriosFramework-release.apk` into `framework.jar` as the **next sequential DEX name** (e.g., `classes6.dex`). Never skip a number — ART scans `classes.dex`, `classes2.dex`, `classes3.dex`, ... contiguously.
4. For each hook F1–F7 below, disassemble **only** the `classes*.dex` that owns the target class (`baksmali disassemble`), apply the edit, and reassemble with `smali assemble` (`--api 33` for Android 13, `--api 34` for Android 14–17 when using `smali 3.0.8`, since `smali 3.0.8` outputs DEX 040 cleanly at `--api 34` and rejects `--api 36+` with `IllegalArgumentException: dexVersion must be within [0, 999]`).

---

### F1) `Instrumentation` — App Context, PIF & GameProps Init

- **Template:** [`Template/Instrumentation.smali`](Template/Instrumentation.smali)
- **Class:**
  ```smali
  Landroid/app/Instrumentation;
  ```
- **Method 1 (Static 2-arg — `Context` is `p1`):**
  ```smali
  newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
  ```
- **Find** (immediately before **every** `return-object vRet`):
  ```smali
  return-object v0
  ```
- **Add** directly before `return-object`:
  ```smali
  invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
  ```
- **Method 2 (Instance 3-arg — `Context` is `p3`):**
  ```smali
  newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
  ```
- **Find** (immediately before **every** `return-object vRet`):
  ```smali
  return-object v0
  ```
- **Add** directly before `return-object`:
  ```smali
  invoke-static {p3}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
  ```

#### Register Note
- Hook **both** overloads and **every** `return-object` path (after `app.attach(context)` completes).
- If `effective(pCtx) > 15` on an OEM ROM, ensure `.locals >= 2`, pick `vTmp = v0` (or `v1` if `vRet` is `v0`), and insert:
  ```smali
  move-object/from16 v1, p3
  invoke-static {v1}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
  ```

---

### F2) `ActivityThread` — Early Bind-Application PIF & GameProps

- **Template:** [`Template/ActivityThread.smali`](Template/ActivityThread.smali)
- **Class:**
  ```smali
  Landroid/app/ActivityThread;
  ```
- **Method:**
  ```smali
  handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
  ```
- **Placement:** Method entry — immediately after `.locals` / `.registers` (and any `.param` / `.annotation` headers).
- **Add:**
  ```smali
  # Standard high-register case (handleBindApplication usually has 20–50 locals, so p1 > v15):
  move-object/from16 v0, p1
  invoke-static {v0}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
  ```

#### Register Note
- Stock `handleBindApplication` almost always has `> 15` locals (for example `.locals 18` -> `p0 = v18`, `p1 = v19`). Copying `p1` into `v0` with `move-object/from16` is safe at method entry because `v0` is not yet initialized by stock code.
- If your ROM happens to have `effective(p1) <= 15`, a direct invoke also works:
  ```smali
  invoke-static {p1}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
  ```
- Using the `(Ljava/lang/Object;)V` overload keeps the hook compatible across Android 13–17 regardless of `AppBindData` field changes.

---

### F3) `SystemProperties` — Java-Layer Property Spoof Fallback

- **Template:** [`Template/SystemProperties.smali`](Template/SystemProperties.smali)
- **Class:**
  ```smali
  Landroid/os/SystemProperties;
  ```
- **Method 1 (Always hook):**
  ```smali
  get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  ```
- **Method 2 (Hook ONLY if its body does NOT call 2-arg `get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;`):**
  ```smali
  get(Ljava/lang/String;)Ljava/lang/String;
  ```
- **Find** (immediately before **every** `return-object vRet`):
  ```smali
  return-object v0
  ```
- **Add** directly before `return-object v0`:
  ```smali
  invoke-static {p0, v0}, Landroid/security/kaorios/KaoriosHook;->getSpoofedProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  move-result-object v0
  ```

#### Register Note
- Replace `v0` with the exact register returned by `return-object vRet` on your ROM.
- If `effective(p0) > 15` or `effective(vRet) > 15`, ensure `.locals >= 3`, copy `p0 -> v0` and `vRet -> v1` via `move-object/from16`, call `invoke-static {v0, v1}`, `move-result-object v0`, and `return-object v0`.

---

### F4) `ApplicationPackageManager` — Hardware Attestation Feature Hiding

- **Template:** [`Template/ApplicationPackageManager.smali`](Template/ApplicationPackageManager.smali)
- **Class:**
  ```smali
  Landroid/app/ApplicationPackageManager;
  ```
- **Method:**
  ```smali
  hasSystemFeature(Ljava/lang/String;I)Z
  ```
- **Placement:** Method entry — immediately below `.registers X` / `.locals X` (and any `.param` / `.annotation`).
- **Add:**
  ```smali
  invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
  move-result-object v0

  if-eqz v0, :kaorios_hsf_passthrough_0
  invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
  move-result v0
  return v0

  :kaorios_hsf_passthrough_0
  ```

#### Register Note
- Ensure `.locals >= 2` (or `.registers >= 5` since `p0=this, p1=String, p2=int`).
- Example: stock `.registers 7` -> `locals = 4` (`v0..v3`), `p1 = v5`, `p2 = v6` (both `<= 15`), so `{p1, p2}` works directly and `v0` is free at method entry.
- If `effective(p2) > 15`, copy `p1 -> v0` (`move-object/from16`) and `p2 -> v1` (`move/from16`), then invoke `{v0, v1}`.
- **Behavior:** Hides `android.hardware.strongbox_keystore`, `android.hardware.keystore.app_attest_key`, and `android.software.device_id_attestation` only for active TrickyStore target packages; returns `null` otherwise.

---

### F5) `AndroidKeyStoreKeyPairGeneratorSpi` — Software KeyPair Generation (`GENERATE` Mode)

- **Template:** [`Template/AndroidKeyStoreKeyPairGeneratorSpi.smali`](Template/AndroidKeyStoreKeyPairGeneratorSpi.smali)
- **Class:**
  ```smali
  Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
  ```
- **Method:**
  ```smali
  generateKeyPair()Ljava/security/KeyPair;
  ```
- **Placement:** Method entry — immediately below `.registers X` / `.locals X` (and any `.param` / `.annotation`).
- **Add:**
  ```smali
  invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
  move-result-object vX

  if-eqz vX, :kaorios_gen_passthrough_0
  return-object vX

  :kaorios_gen_passthrough_0
  ```

#### Register Note
- **Case 1 (`.registers <= 15`):** Increase `.registers` by `1` and set `vX = v(new_registers - 2)`:
  - Example: `.registers 15` -> change to **`.registers 16`**, set `vX` = **`v14`** (`p0` becomes `v15 <= 15`).
- **Case 2 (`.registers >= 16` or `.locals >= 15`):** `p0` is at `>= v16` (`> 15`). Do **not** use `invoke-static {p0}`! Reuse `v0` at method entry (no register bump needed if `.locals >= 1`) and lower `p0`:
  ```smali
  move-object/from16 v0, p0
  invoke-static {v0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
  move-result-object v0

  if-eqz v0, :kaorios_gen_passthrough_0
  return-object v0

  :kaorios_gen_passthrough_0
  ```

---

### F6) `AndroidKeyStoreSpi` — Certificate Chain Rewrite + SELF Persistence (`LEAF_HACK` Mode)

- **Template:** [`Template/AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali)
- **Class:**
  ```smali
  Landroid/security/keystore2/AndroidKeyStoreSpi;
  ```
- **Method 1 (Required):**
  ```smali
  engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
  ```
- **Find** (the populated array return — leave stock `null` returns untouched):
  ```smali
  const/4 vA, 0x0
  aput-object vB, vC, vA
  return-object vC
  ```
- **Add** directly between `aput-object vB, vC, vA` and `return-object vC`:
  ```smali
  invoke-static {p0, p1, vC}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
  move-result-object vC
  ```

#### Example (from AOSP `.registers 11`, where `v3` holds the chain array)
```smali
const/4 v4, 0x0
aput-object v2, v3, v4

invoke-static {p0, p1, v3}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
move-result-object v3

return-object v3
```

#### Register Note
- Always use the **3-argument** overload `(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` so rewritten chains are also persisted to the owner Keystore2 entry (SELF persistence).
- `vC` must match both the destination array of `aput-object` and the register in `return-object`.
- If `effective(p1) > 15` or `effective(vC) > 15`, ensure `.locals >= 4`, copy `p0 -> v0`, `p1 -> v1`, `vC -> v2` via `move-object/from16`, call `invoke-static {v0, v1, v2}`, `move-result-object v0`, and `return-object v0`.

- **Method 2 (Recommended companion — keeps single-leaf `getCertificate()` consistent):**
  ```smali
  engineGetCertificate(Ljava/lang/String;)Ljava/security/cert/Certificate;
  ```
- **Add** at method entry (requires `.locals >= 2`; see [`Template/AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali)):
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

---

### F7) `Settings$NameValueCache` — Hide Developer Options, ADB & Accessibility

- **Template:** [`Template/Settings$NameValueCache.smali`](Template/Settings$NameValueCache.smali)
- **Class:**
  ```smali
  Landroid/provider/Settings$NameValueCache;
  ```
- **Method:**
  ```smali
  getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  ```
- **Placement:** Method entry — immediately below `.registers X` / `.locals X` (and any `.param` / `.annotation`).
- **Add:**
  ```smali
  # Safe for ANY register count (.locals >= 3), even when p2/p3 > v15:
  move-object/from16 v0, p1
  move-object/from16 v1, p2
  move/from16 v2, p3
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  move-result-object v0

  if-eqz v0, :kaorios_nvc_passthrough_0
  return-object v0

  :kaorios_nvc_passthrough_0
  ```

#### Register Note
- **Return type is `Ljava/lang/String;`** (NOT legacy boolean `Z`). Returns `"0"` / `""` when hidden or `null` to run stock code.
- Alternative shortcut: because `p1`, `p2`, `p3` are contiguous, `invoke-static/range` works directly at any register count (still requires `.locals >= 1` for `v0`):
  ```smali
  invoke-static/range {p1 .. p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
  ```
- Covers 8 keys: `adb_enabled`, `development_settings_enabled`, `adb_wifi_enabled`, `package_verifier_user_consent`, `verify_apps_over_usb`, `accessibility_enabled`, `enabled_accessibility_services`, `accessibility_display_inversion_enabled`; skips UID `< 10000` and sets sticky `kaorios_hide_dev_work = 1`.

---

## 5. `services.jar` — Core Hooks (S1–S4)

Disassemble **only** the `classes*.dex` inside `services.jar` containing `SystemServer` and `ComputerEngine` (or `AppsFilterBase` / `IPackageManagerBase` if your ROM uses fallback classes).

---

### S1) `SystemServer` — Bootstrapping & Policy Service Registration

- **Template:** [`Template/SystemServer.smali`](Template/SystemServer.smali)
- **Class:**
  ```smali
  Lcom/android/server/SystemServer;
  ```
- **Method:**
  ```smali
  startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
  ```
  *(or `startOtherServices()V` on older ROM trees)*
- **Placement:** Method entry — immediately below `.registers X` / `.locals X`.
- **Add:**
  ```smali
  invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
  ```

#### Register Note
- Zero arguments (`{}`) -> **no** `.locals` or `.registers` change required.
- Note: Calling `initSystemServer()` once inside `startOtherServices` (canonical) OR inside `run()V` right before `startOtherServices(...)` / `Looper.loop()` is functionally equivalent (`initSystemServer()` is synchronized, idempotent, and runs on background thread `"KaoriosSystemInit"` so it never stalls boot). Add **only one** call site.

---

### S2) `ComputerEngine` (or `AppsFilterBase`) — Hide App List & HMA Policy

- **Template:** [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)
- **Class:**
  ```smali
  Lcom/android/server/pm/ComputerEngine;
  ```
  *(Fallback if your ROM delegates filtering: `Lcom/android/server/pm/AppsFilterBase;`)*
- **Target Methods (hook ALL concrete overloads present):**
  1. `shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` (`p1` = targetPs, `p2` = callingUid, `p3` = userId)
  2. `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z` (`p1` = targetPs, `p2` = callingUid, `p3` = userId)
  3. `shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;IIZZ)Z` (`p1` = targetPs, `p2` = callingUid, **`p5`** = userId)
  4. `AppsFilterBase`: `shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z` (`p2` = callingUid, **`p4`** = targetPs, **`p5`** = userId)
- **Placement:** Method entry (ensure `.locals >= 3`).
- **Add** (3-arg overload where `p1`, `p2`, `p3 <= v15`):
  ```smali
  if-eqz p1, :kaorios_hideapp_passthrough_0
  invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
  move-result-object v1
  invoke-static {p2, v1, p3}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
  move-result v0

  if-eqz v0, :kaorios_hideapp_passthrough_0
  const/4 v0, 0x1
  return v0

  :kaorios_hideapp_passthrough_0
  ```

#### Register Note (Concrete `> v15` Example for 7-arg Overload)
- In the 7-arg `shouldFilterApplication`, `userId` is `p5`. If `.locals 12`, then `p0=v12, p1=v13, p2=v14, p3=v15, p4=v16, p5=v17 (> 15)`!
- Lower any parameter whose effective index exceeds `15` (shown in [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)):
  ```smali
  if-eqz p1, :kaorios_hideapp_passthrough_1
  invoke-interface {p1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getPackageName()Ljava/lang/String;
  move-result-object v1
  move/from16 v2, p5
  invoke-static {p2, v1, v2}, Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z
  move-result v0

  if-eqz v0, :kaorios_hideapp_passthrough_1
  const/4 v0, 0x1
  return v0

  :kaorios_hideapp_passthrough_1
  ```
- If `p1` or `p2` ALSO exceeds `v15` (common on One UI / HyperOS), lower `p1 -> v0` (`move-object/from16`) before `if-eqz` / `invoke-interface`, then lower `p2 -> v0` (`move/from16`) after `move-result-object v1`!
- **Behavior:** Reads atomic in-memory `AdvancedPolicySnapshot` (zero Settings I/O on the PackageManager hot path).

---

### S3) `ComputerEngine` (or `IPackageManagerBase`) — Installation Source Spoofing

- **Template:** [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)
- **Class:**
  ```smali
  Lcom/android/server/pm/ComputerEngine;
  ```
  *(Fallback: `Lcom/android/server/pm/IPackageManagerBase;`)*
- **Method:**
  ```smali
  getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
  ```
  *(or `getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;`)*
- **Placement:** Immediately before **EVERY** `return-object vRet` (do **NOT** skip `null` returns — `INSTALL_SOURCE_USER` can spoof a `null` sideloaded installer to `"com.android.vending"`).
- **Add** (ensure `.locals >= 5`):
  ```smali
  move-object/from16 v3, p1
  move-object/from16 v4, vRet
  const/4 v0, 0x0
  invoke-static {}, Landroid/os/Binder;->getCallingUid()I
  move-result v1
  const/4 v2, -0x1
  invoke-static {v0, v1, v2, v3, v4}, Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
  move-result-object v0
  return-object v0
  ```

#### Register Note
- Replace `vRet` with the register originally returned by `return-object`.
- If `vRet` is `v3` on your ROM, copy `v3 -> v4` **before** overwriting `v3` with `p1`!
- Passing `userId = -1` (`const/4 v2, -0x1`) instructs `KaoriosHook.filterInstallerPackageName` to derive `HmaPolicyEngine.userIdOf(callingUid)` consistently across Android 13–17.

---

### S4) `ComputerEngine` — FakeGApps / microG Signature Spoofing

- **Template:** [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)
- **Class:**
  ```smali
  Lcom/android/server/pm/ComputerEngine;
  ```
- **Method:**
  ```smali
  generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
  ```
- **Placement:** Immediately before **every** `return-object vPi`.
- **Add** (when `effective(vPi) <= 15` and `effective(p3) <= 15`):
  ```smali
  invoke-static {vPi, p2, p3}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
  move-result-object vPi
  ```

#### Register Note
- `p2, p3` is a 64-bit `long` (`J`) occupying two consecutive registers.
- If `effective(p3) > 15` or `effective(vPi) > 15` (common on OEM ROMs), ensure `.locals >= 3` and lower before returning:
  ```smali
  move-object/from16 v0, vPi
  move-wide/from16 v1, p2
  invoke-static {v0, v1, v2}, Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;
  move-result-object v0
  return-object v0
  ```
- On legacy Android 13 ROMs with 32-bit `I` flags (`p2`), copy `p2` into `v1` and convert via `int-to-long v1, v1` before calling `{v0, v1, v2}`.

---

### Optional `services.jar` / `framework.jar` Feature Guides

- **S5 — Disable `FLAG_SECURE`:** [`Disable_Secure_Flag.md`](Disable_Secure_Flag.md) ([Tiếng Việt](Disable_Secure_Flag_VI.md))
- **CorePatch (Signature & Downgrade Bypass):** [`CorePatch.md`](CorePatch.md) ([Tiếng Việt](CorePatch_VI.md))
- **OEM ROM Playbook (HyperOS, One UI, ColorOS/OPlus, OriginOS, Pixel/AOSP):** [`OEM_ROM_Patch_Guide.md`](OEM_ROM_Patch_Guide.md) ([Tiếng Việt](OEM_ROM_Patch_Guide_VI.md))

---

## 6. Optional: `SettingsProvider.apk` (SP1) & Android 17 SELinux Policy

Enable this only if you use HMA per-app `settingsTemplates` / `settingsPresets` or the **Advanced Features** toggle (`kaorios_advanced_features`).

### 6.1 Patch `SettingsProvider.apk`

- **Template:** [`Template/SettingsProvider.smali`](Template/SettingsProvider.smali)
- **Class:**
  ```smali
  Lcom/android/providers/settings/SettingsProvider;
  ```
- **Method:**
  ```smali
  call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
  ```
- **Placement:** Method entry (ensure `.locals >= 2`).
- **Add:**
  ```smali
  # If effective(p2) > 15, copy p1 -> v0 and p2 -> v1 with move-object/from16 first
  invoke-static {p1, p2}, Landroid/security/kaorios/settings/AdvancedPolicyService;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;
  move-result-object v0

  if-eqz v0, :kaorios_adv_settings_passthrough_0
  return-object v0

  :kaorios_adv_settings_passthrough_0
  ```
- **Repackaging rules:** Store `classes*.dex` uncompressed (`ZIP_STORED`), 4-byte `zipalign`, and preserve the ROM's platform signature (`SettingsProvider` runs under shared `android.uid.system`).

### 6.2 Android 17 SELinux Policy (`Enforcing` Mode Mandatory)

First check the live SELinux domain of `SettingsProvider` on your target ROM:
```bash
adb shell ps -AZ | grep com.android.providers.settings
```
Standard AOSP runs it as `system_app`; some ROMs use `settings_provider`, `platform_app`, or `system_server`. Substitute your measured domain below.

1. **`service_contexts` (`deployment/android17-sepolicy/service_contexts.fragment`):**
   ```text
   kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0
   ```
2. **TE Policy (`deployment/android17-sepolicy/kaorios_advanced_policy.te` — ROM source build):**
   ```te
   type kaorios_advanced_policy_service, service_manager_type, system_server_service;

   allow system_server kaorios_advanced_policy_service:service_manager { add find };

   # Replace system_app if ps -AZ showed another domain for SettingsProvider
   allow system_app kaorios_advanced_policy_service:service_manager find;
   binder_call(system_app, system_server)

   neverallow untrusted_app_all kaorios_advanced_policy_service:service_manager { add find };
   ```
3. **CIL Policy (`deployment/android17-sepolicy/kaorios_advanced_policy.cil` — `plat_sepolicy.cil` / prebuilt ROM):**
   ```cil
   (type kaorios_advanced_policy_service)
   (roletype object_r kaorios_advanced_policy_service)
   (typeattributeset service_manager_type (kaorios_advanced_policy_service))
   (typeattributeset system_server_service (kaorios_advanced_policy_service))
   (allow system_server kaorios_advanced_policy_service (service_manager (add find)))
   (allow system_app kaorios_advanced_policy_service (service_manager (find)))
   (allow system_app system_server (binder (call transfer)))
   (allow system_server system_app (binder (call transfer)))
   ```

> [!WARNING]
> On prebuilt ROMs using Magisk / KernelSU, `magiskpolicy --live` updates only in-memory policy rules — it **cannot** modify static `service_contexts`. You must bind-mount an updated `plat_service_contexts` (or `system_ext_service_contexts`) early in `post-fs-data.sh` before `servicemanager` starts, AND never disable SELinux (`setenforce 0`) as a workaround.

---

## 7. Optional: Native PIF (`libkaoripif.so`) & Read-Only Diagnostic (`libkaoripif_diagnostic.so`)

### Native PIF (`libkaoripif.so`)
`KaoriosPifInstaller` searches in order:
1. `/system_ext/lib64/libkaoripif.so` (32-bit: `/system_ext/lib/libkaoripif.so`)
2. `/system/lib64/libkaoripif.so` (32-bit: `/system/lib/libkaoripif.so`)
3. `System.loadLibrary("kaoripif")`

```bash
adb root && adb remount
adb push libkaoripif-arm64-v8a.so /system_ext/lib64/libkaoripif.so
adb push libkaoripif-armeabi-v7a.so /system_ext/lib/libkaoripif.so
adb shell chown root:root /system_ext/lib64/libkaoripif.so /system_ext/lib/libkaoripif.so
adb shell chmod 0644 /system_ext/lib64/libkaoripif.so /system_ext/lib/libkaoripif.so
adb shell restorecon -v /system_ext/lib64/libkaoripif.so /system_ext/lib/libkaoripif.so
```

- **Strict execution gates:** Runs ONLY inside `com.google.android.gms` (`com.google.android.gms.unstable`) and `com.android.vending` (`com.android.vending`), non-system UID (`>= 10000`), `ApplicationInfo.uid == Process.myUid()`, and `java.lang.BootClassLoader`.
- **Emergency kill switch (instant Java fallback):**
  ```bash
  adb shell setprop persist.sys.projectryu.pif_native 0
  ```

### Read-Only Diagnostic (`libkaoripif_diagnostic.so`)
- Deploy to `/system/lib64/libkaoripif_diagnostic.so` (`/system/lib/` for 32-bit), `root:root`, `0644`, `restorecon`.
- Strictly read-only opt-in via `PifNative.initialize()`; never writes properties or hooks `libc`.

---

## 8. Deployment & Clearing Stale ART / OAT / VDEX Caches

Whenever `framework.jar` or `services.jar` changes on a device (Magisk/KernelSU module, TWRP/OrangeFox, or `adb remount`):

1. Keep backups and SHA-256 checksums of your clean stock JARs before pushing anything.
2. Preserve ownership `0:0` (`root:root`), mode `0644`, and context `u:object_r:system_file:s0`.
3. **Clear stale ART / OAT / VDEX caches** (skipping this causes ART to run old precompiled code or bootloop):
   ```bash
   rm -rf /system/framework/oat/
   rm -f  /system/framework/arm*/boot-framework.*
   rm -f  /system/framework/oat/*/services.*
   rm -rf /data/dalvik-cache/*
   rm -rf /data/misc/apexdata/com.android.art/dalvik-cache/*
   ```
   *(If deploying via a Magisk/KernelSU module on read-only EROFS partitions, place empty `.replace` markers or remove the corresponding `oat` files inside your module overlay and clear `/data/dalvik-cache/*` + `/data/misc/apexdata/com.android.art/dalvik-cache/*` in `post-fs-data.sh`.)*
4. Reboot cleanly. First boot takes 1–3 minutes while ART recompiles dexopt caches.

---

## 9. Host vs On-Device Verification

### Host Verification (`kaorios_patcher.py verify`)
Proves on your build machine:
- Every R8-kept class and method exists in imported `classesN.dex` with zero stock class collisions.
- Every stock target invokes the exact kept `KaoriosHook` / `AdvancedPolicyService` descriptor with zero forbidden or legacy stub calls.
- All patched DEX files assemble cleanly through `smali` without register-width or instruction-adjacency errors.

### On-Device Verification (Required on Physical Hardware)
Host checks cannot prove boot stability, SELinux enforcement, or attestation verdicts. After booting, verify on device:

```bash
# 1. Confirm SystemServer bootstrap (S1) and optional Secure Flag (S5)
adb shell settings get global kaorios_time
adb shell settings get global kaorios_secure_flag_work

# 2. Confirm Hide Developer Status (F7) after launching a user app (UID >= 10000)
adb shell settings get global kaorios_hide_dev_work

# 3. Confirm SELinux Enforcing + Binder service + SettingsProvider probe (if SP1 deployed)
adb shell getenforce
adb shell service check kaorios_advanced_policy
adb shell settings get global kaorios_advanced_probe_0123456789abcdef0123456789abcdef
# Expected: kaorios-advanced-v1:global:0123456789abcdef0123456789abcdef
adb shell dmesg | grep -i "avc:.*kaorios"

# 4. Optional verbose framework logs
adb shell settings put global kaorios_debug 1
adb logcat -s KaoriosHooks TrickyStoreService TrickyStoreSettings PIF GameProps KaoriosPifInstaller
```

---

## 10. Quick Reference Summary & Templates

| Hook | Archive | Class | Kept Callee | Reference Template |
|---|---|---|---|---|
| **F1** | `framework.jar` | `Instrumentation` | `KaoriosHook;->initContext` | [`Instrumentation.smali`](Template/Instrumentation.smali) |
| **F2** | `framework.jar` | `ActivityThread` | `KaoriosHook;->initActivityThread` | [`ActivityThread.smali`](Template/ActivityThread.smali) |
| **F3** | `framework.jar` | `SystemProperties` | `KaoriosHook;->getSpoofedProperty` | [`SystemProperties.smali`](Template/SystemProperties.smali) |
| **F4** | `framework.jar` | `ApplicationPackageManager` | `KaoriosHook;->hasSystemFeature` | [`ApplicationPackageManager.smali`](Template/ApplicationPackageManager.smali) |
| **F5** | `framework.jar` | `AndroidKeyStoreKeyPairGeneratorSpi` | `KaoriosHook;->initGenerateSoftwareKeyPair` | [`AndroidKeyStoreKeyPairGeneratorSpi.smali`](Template/AndroidKeyStoreKeyPairGeneratorSpi.smali) |
| **F6** | `framework.jar` | `AndroidKeyStoreSpi` | `KaoriosHook;->CertificateChainIfNeeded` (3-arg) | [`AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali) |
| **F7** | `framework.jar` | `Settings$NameValueCache` | `KaoriosHook;->shouldHideDevStatusFromNameValueCache` | [`Settings$NameValueCache.smali`](Template/Settings$NameValueCache.smali) |
| **S1** | `services.jar` | `SystemServer` | `KaoriosHook;->initSystemServer` | [`SystemServer.smali`](Template/SystemServer.smali) |
| **S2** | `services.jar` | `ComputerEngine` / `AppsFilterBase` | `KaoriosHook;->shouldHideAppListForCaller` | [`ComputerEngine.smali`](Template/ComputerEngine.smali) |
| **S3** | `services.jar` | `ComputerEngine` / `IPackageManagerBase` | `KaoriosHook;->filterInstallerPackageName` | [`ComputerEngine.smali`](Template/ComputerEngine.smali) |
| **S4** | `services.jar` | `ComputerEngine` | `KaoriosHook;->spoofFakeGAppsPackageInfo` | [`ComputerEngine.smali`](Template/ComputerEngine.smali) |
| **S5** *(opt)* | `services.jar` | `WindowState` | `KaoriosHook;->isSecureFlag` | [`WindowState.smali`](Template/WindowState.smali) |
| **SP1** *(opt)* | `SettingsProvider.apk` | `SettingsProvider` | `AdvancedPolicyService;->filterSettingsCall` | [`SettingsProvider.smali`](Template/SettingsProvider.smali) |
