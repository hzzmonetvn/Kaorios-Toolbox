# Kaorios Toolbox v2.0.6.2 — OEM ROM Patch Playbook

Real-world Android 13–17 OEM ROMs differ significantly from plain AOSP in partition layouts, multi-DEX splits, vendor JARs, register pressure (`> v15`), `SettingsProvider` SELinux domains, and ART preopt files.

Use this playbook alongside [`Patch_Guide_2.0.6.2.md`](Patch_Guide_2.0.6.2.md) and the annotated [`Template/`](Template/) `.smali` reference files to patch **clean stock** OEM ROMs safely without bootloops.

> [!IMPORTANT]
> - **ABI Contract (All OEMs):** Every smali hook across every OEM ROM **MUST** call ONLY R8-kept `Landroid/security/kaorios/KaoriosHook;` (`F1–F7`, `S1–S5`) and `Landroid/security/kaorios/settings/AdvancedPolicyService;` (`SP1`). Never invoke obfuscated internal helper classes or retired legacy no-op methods.
> - **Vietnamese version:** [`OEM_ROM_Patch_Guide_VI.md`](OEM_ROM_Patch_Guide_VI.md).

---

## 1. Quick OEM Comparison Matrix

| OEM / ROM Family | Android / API | Core Hook Archives | Vendor Companion JARs (Do NOT move F1–F7 / S1–S5 here) | Typical `SettingsProvider.apk` Path | Key Watch-Outs |
|---|---|---|---|---|---|
| **Xiaomi MIUI / HyperOS (1/2/3)** | A14–A17 (API 34–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `/system_ext/framework/miui-framework.jar`<br>`/system_ext/framework/miui-services.jar` | `/system_ext/priv-app/SettingsProvider/` (or `/system/priv-app/`) | Optional MIUI CorePatch in `miui-services.jar`; strict `oat` + `boot-framework.*` removal; keep JAR DEX `ZIP_STORED` |
| **Samsung One UI (6/7/8)** | A14–A17 (API 34–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `sec_framework.jar` / `knoxsdk.jar` (leave untouched) | `/system/priv-app/SettingsProvider/` | High register counts (`> v15`) in `ComputerEngine`; `.prof`/`.art`/`.vdex`/`.odex` cleanup critical; tripped Knox `0x1` cannot be reset |
| **OPPO ColorOS / OnePlus OxygenOS / Realme UI (OPlus)** | A13–A17 (API 33–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `/system_ext/framework/oplus-framework.jar`<br>`/system_ext/framework/oplus-services.jar` | `/system_ext/priv-app/SettingsProvider/` (or `/system/priv-app/`) | OPlus `IOplus*Ext` wrappers inside `ComputerEngine` & `SystemProperties`; `my_stock` / `my_product` OTA partitions |
| **vivo OriginOS / FuntouchOS** | A13–A17 (API 33–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | `/system/framework/vivo-framework.jar`<br>`/system/framework/vivo-services.jar` | `/system/priv-app/SettingsProvider/` | `IVivo*` multi-return branches in `Instrumentation` & `ComputerEngine`; verify SELinux domain with `ps -AZ` |
| **Google Pixel / Stock & Custom AOSP** | A13–A17 (API 33–37) | `/system/framework/framework.jar`<br>`/system/framework/services.jar` | None (cleanest baseline) | `/system_ext/priv-app/SettingsProvider/` or `/system/priv-app/` | Android 17 `plat_sepolicy.cil` + static `plat_service_contexts`; check custom ROMs for pre-existing PIF/TrickyStore hooks |

---

## 2. Universal Extraction, Deodexing & Overlay Module Workflow

### 2.1 Extracting Clean Stock JARs & APKs

**Option A — Pull from a live rooted device (clean unpatched stock):**
```bash
mkdir -p stock
adb pull /system/framework/framework.jar stock/framework.jar
adb pull /system/framework/services.jar stock/services.jar
# Pull SettingsProvider.apk (path varies by OEM):
adb shell pm path com.android.providers.settings
adb pull /system_ext/priv-app/SettingsProvider/SettingsProvider.apk stock/SettingsProvider.apk
# Save SHA-256 checksums for rollback verification
sha256sum stock/*.jar stock/*.apk > stock/SHA256SUMS.txt
```

**Option B — Extract from an OTA `payload.bin` or `super.img`:**
- **OTA `payload.bin` (Pixel, OnePlus/OPlus, HyperOS, LineageOS):** extract `system.img` and `system_ext.img` with `payload-dumper-go`, then extract files using `7z` or `extract.erofs` (`erofs-utils`).
- **Samsung `AP_*.tar.md5` (`super.img.lz4`):** decompress with `lz4`, convert sparse image via `simg2img`, unpack logical partitions (`system`, `system_ext`, `product`) with `lpunpack`, then extract JARs from `system.img`.

### 2.2 Checking for Odexed JARs & Deodexing

Inspect whether your stock JAR already contains `classes.dex`:
```bash
unzip -l stock/services.jar | grep '\.dex$'
```
- **If `classes.dex` is present (1 MB+):** The JAR is already deodexed (or contains embedded DEX alongside `.vdex`/`.odex`). You can patch it directly!
- **If NO `.dex` exists inside the JAR (file is tiny, `< 50 KB`):** Your OEM ROM is **odexed**. Pull the matching preopt files AND bootclasspath directory:
  ```bash
  mkdir -p boot_cp
  adb pull /system/framework/arm64/ boot_cp/arm64/
  adb pull /system/framework/oat/arm64/services.odex stock/
  adb pull /system/framework/oat/arm64/services.vdex stock/
  ```
  Deodex using `baksmali` 3.0.8 (`deodex` / `x`) or `vdexExtractor`:
  ```bash
  export KAORIOS_SMALI_CLASSPATH="/path/to/smali-3.0.8-libs/*"
  # Deodex services.odex into smali using bootclasspath from the same ROM build:
  java -cp "$KAORIOS_SMALI_CLASSPATH" com.android.tools.smali.baksmali.Main deodex \
    -b boot_cp/arm64/boot.oat --api 34 stock/services.odex -o work/services_smali
  # Assemble into clean classes.dex (DEX 040; smali 3.0.8 rejects --api 36+) and pack ZIP_STORED
  java -cp "$KAORIOS_SMALI_CLASSPATH" com.android.tools.smali.smali.Main assemble \
    --api 34 work/services_smali -o work/classes.dex
  ```
  *(For `framework.jar` when odexed, extract DEX files from `boot-framework.vdex` using `vdexExtractor` + `compact_dex_converter` if CompactDex `cdex` is used, then place `classes.dex..classesN.dex` uncompressed into `framework.jar` before running `script/kaorios_patcher.py`.)*

### 2.3 Recommended Deployment: Magisk / KernelSU Systemless Module

Modern Android 13–17 OEM ROMs use read-only `EROFS` partitions with `dm-verity`. Deploying via a Magisk or KernelSU module is safer and gives 1-step bootloop recovery:

```text
kaorios-framework-module/
├── module.prop
├── post-fs-data.sh          # Clears stale ART caches (+ optional SELinux bind-mount)
├── system/
│   ├── framework/
│   │   ├── framework.jar    # Patched framework.jar (0644)
│   │   ├── services.jar     # Patched services.jar (0644)
│   │   └── oat/             # Empty dir with .replace file to mask stock preopt oat/
│   └── lib64/
│       └── libkaoripif_diagnostic.so   # Optional read-only diagnostic
└── system_ext/
    ├── lib64/
    │   └── libkaoripif.so              # Optional native PIF (arm64-v8a)
    └── lib/
        └── libkaoripif.so              # Optional native PIF (armeabi-v7a, 32/64 ROMs)
```

Example `post-fs-data.sh` (clears stale runtime ART caches so patched bytecode loads immediately):
```sh
#!/system/bin/sh
# Remove stale ART/dexopt caches on first boot after module update
rm -rf /data/dalvik-cache/*
rm -rf /data/misc/apexdata/com.android.art/dalvik-cache/*
```

---

## 3. Xiaomi MIUI / HyperOS (1 / 2 / 3)

### Partition & JAR Layout
- **Core targets (patch these):**
  - `/system/framework/framework.jar` -> Payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (and optional **S5** Disable `FLAG_SECURE`)
- **Vendor companion JARs (leave untouched for core Kaorios hooks):**
  - `/system_ext/framework/miui-framework.jar`
  - `/system_ext/framework/miui-services.jar`
  - *Exception:* Only edit `miui-services.jar` if you explicitly enable **optional MIUI/HyperOS CorePatch** (`PackageManagerServiceImpl` -> `verifyIsolationViolation` & `canBeUpdate` -> `return-void`; see [`CorePatch.md`](CorePatch.md)).

### HyperOS Specifics & Gotchas
1. **Multi-DEX & `smali 3.0.8` API level:**
   - HyperOS 1 (Android 14), HyperOS 2 (Android 15), and HyperOS 3 (Android 16/17): when assembling manually with `smali 3.0.8`, use `--api 34` (DEX 040, cleanly accepted by ART on Android 14–17 and round-trip compatible with `baksmali 3.0.8`; `smali 3.0.8` rejects `--api 36+`).
   - HyperOS `framework.jar` commonly splits across `classes.dex`–`classes5.dex` (import Kaorios payload as `classes6.dex`). Disassemble ONLY the DEX owning each target class.
2. **HyperOS JAR/APK Signing:**
   - Do **NOT** re-sign `framework.jar` or `services.jar` with random test keys — preserve original archive structure and store `classes*.dex` uncompressed (`ZIP_STORED`).
   - For optional `SettingsProvider.apk` (`/system_ext/priv-app/SettingsProvider/SettingsProvider.apk`): `SettingsProvider` shares `android.uid.system`. On unmodified HyperOS without CorePatch, changing `classes.dex` inside `SettingsProvider.apk` invalidates its APK v2/v3 platform signature and causes `SettingsProvider` to fail installation/loading! Either skip `SettingsProvider.apk` (core F1–F7 & S1–S4 work without it), OR pair it with CorePatch / platform re-signing.
3. **`SettingsProvider` SELinux domain:**
   - Verify live domain before adding CIL/TE rules:
     ```bash
     adb shell ps -AZ | grep com.android.providers.settings
     ```
   - HyperOS typically runs it as `u:r:system_app:s0`.
4. **Disable `FLAG_SECURE` (S5) on HyperOS:**
   - Hook `WindowState.isSecureLocked()Z` (required) AND optionally `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z` (see [`Disable_Secure_Flag.md`](Disable_Secure_Flag.md)). Verify `adb shell settings get global kaorios_secure_flag_work` returns `1`.
5. **Mandatory ART / OAT cleanup on HyperOS:**
   - HyperOS pre-compiles `boot-framework.art` / `.oat` / `.vdex` and `services.odex` / `.vdex`. Mask or remove:
     - `/system/framework/arm64/boot-framework.*` and `/system/framework/arm/boot-framework.*`
     - `/system/framework/oat/arm64/services.*`
     - `/data/dalvik-cache/*` and `/data/misc/apexdata/com.android.art/dalvik-cache/*`

---

## 4. Samsung One UI (6 / 7 / 8)

### Partition & JAR Layout
- **Core targets (patch these):**
  - `/system/framework/framework.jar` -> Payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (and optional **S5**)
- **Multi-DEX layout:**
  - One UI 6 (Android 14), One UI 7 (Android 15), One UI 8 (Android 16/17): pass `--api 34` (DEX 040) when assembling manually with `smali 3.0.8` (`--api 36+` is not supported by `smali 3.0.8`).
  - `framework.jar` frequently has 5–6 DEX files and `services.jar` 4–6 DEX files. Never assume `ComputerEngine` or `SystemProperties` is in `classes.dex` — search across all `classes*.dex` (or use `script/kaorios_patcher.py`, which discovers owner DEX slots automatically).

### One UI Specifics & Gotchas
1. **High-register methods (`> v15`) in `ComputerEngine`:**
   - Samsung injects Knox Secure Folder, Dual Messenger, and `SemPersona` checks directly into `ComputerEngine.shouldFilterApplication*` and `ComputerEngine.generatePackageInfo`, pushing `.locals` past `15`.
   - Always check `locals_count + K > 15` and lower arguments with `move/from16`, `move-object/from16`, and `move-wide/from16` (see Worked Examples in [`Patch_Guide_2.0.6.2.md`](Patch_Guide_2.0.6.2.md) and [`Template/ComputerEngine.smali`](Template/ComputerEngine.smali)).
2. **Samsung Knox & Keystore2 Reality Check:**
   - Unlocking the bootloader on Samsung devices permanently blows the hardware Knox eFuse (`0x1`). Software hooks **cannot** reset the hardware eFuse or re-enable hardware-backed Samsung Pay / Samsung Pass.
   - Kaorios hooks standard AOSP `AndroidKeyStoreKeyPairGeneratorSpi` (**F5**) and `AndroidKeyStoreSpi` (**F6**). When unlocked Samsung TEE/StrongBox fails attestation, configure Kaorios Toolbox keybox mode to **`GENERATE`** (F5) rather than relying purely on hardware `LEAF_HACK` (F6), and keep **F4** (`hasSystemFeature`) active so target apps do not demand StrongBox / `APP_ATTEST_KEY`.
3. **`FLAG_SECURE` (`WindowState` / `DisplayPolicy`) on One UI:**
   - Hook `WindowState.isSecureLocked()Z` (**S5**), and optionally `WindowManagerService.isSecureLocked(WindowState)Z` + `DevicePolicyCacheImpl.isScreenCaptureAllowed(I)Z`.
   - One UI also has Knox/Smart Capture guards inside `DisplayPolicy` / `KnoxCustomManager` on some builds — do **not** apply guessed patches to `DisplayPolicy`; test S5 first and inspect `logcat` only if a specific One UI screenshot path still blocks.
4. **`.prof`, `.dm`, `.art`, `.odex`, `.vdex` Cleanup (CRITICAL on One UI):**
   - Samsung ships ART profile files (`framework.jar.prof`, `services.jar.prof`, `boot-framework.art`, `services.art`) alongside `oat/` files. Leaving mismatched `.prof` or `.art` files after updating `framework.jar` or `services.jar` causes immediate Zygote crashes!
   - Clear or mask:
     - `/system/framework/oat/` (including `.art`, `.odex`, `.vdex`)
     - `/system/framework/arm64/boot-framework.*` and `/system/framework/arm/boot-framework.*`
     - `/system/framework/*.prof` (if replaced directly on RW partitions)
     - `/data/dalvik-cache/*` and `/data/misc/apexdata/com.android.art/dalvik-cache/*`
5. **`SettingsProvider.apk` & SELinux:**
   - Located at `/system/priv-app/SettingsProvider/SettingsProvider.apk`. Measure live domain via `adb shell ps -AZ | grep com.android.providers.settings` before applying Android 17 SELinux rules.

---

## 5. OPPO ColorOS / OnePlus OxygenOS / Realme UI (OPlus)

### Partition & JAR Layout
- **Core targets (patch these):**
  - `/system/framework/framework.jar` -> Payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (and optional **S5**)
- **Vendor companion JARs (leave untouched):**
  - `/system_ext/framework/oplus-framework.jar`
  - `/system_ext/framework/oplus-services.jar`
  - `/system_ext/framework/oplus-support-wrapper.jar`
- **OTA partition layout:** When unpacking OPlus OTA `payload.bin`, `framework.jar` and `services.jar` live in `system.img`, while `oplus-*.jar` and sometimes `SettingsProvider.apk` live in `system_ext.img` (or `my_stock.img` / `my_system_ext.img`).

### OPlus Specifics & Gotchas
1. **`SystemProperties` (F3) on ColorOS / OxygenOS:**
   - OPlus often keeps both `get(String)` and `get(String, String)` calling `native_get` directly (or routes custom `oplus.*` keys through `IOplusSystemPropertiesExt`). Inspect `SystemProperties.smali`: if `get(String)` does **not** invoke `get(String, String)`, hook **both** methods before every `return-object` (matching [`Template/SystemProperties.smali`](Template/SystemProperties.smali)).
2. **`ComputerEngine` (S2 / S3 / S4) with `IOplus*Ext` wrappers:**
   - ColorOS / OxygenOS injects `mComputerEngineExt` calls into `shouldFilterApplication*` and `getInstallerPackageName`.
   - Place **S2** (`shouldHideAppListForCaller`) at **method entry** (before OPlus extension checks) so hidden packages are filtered consistently regardless of OPlus app-clone / HeyTap extensions.
   - Place **S3** (`filterInstallerPackageName`) before **EVERY** `return-object` in `getInstallerPackageName`, including early returns added by `IOplus*Ext` or `null` returns.
3. **`SettingsProvider.apk` & SELinux:**
   - Usually under `/system_ext/priv-app/SettingsProvider/SettingsProvider.apk` or `/system/priv-app/SettingsProvider/SettingsProvider.apk`.
   - Always check `adb shell ps -AZ | grep com.android.providers.settings` (typically `u:r:system_app:s0`).
4. **ART / OAT cleanup:**
   - Clear `/system/framework/oat/`, `/system/framework/arm*/boot-framework.*`, `/data/dalvik-cache/*`, and `/data/misc/apexdata/com.android.art/dalvik-cache/*`.

---

## 6. vivo OriginOS / FuntouchOS

### Partition & JAR Layout
- **Core targets (patch these):**
  - `/system/framework/framework.jar` -> Payload `classesN.dex` + **F1–F7**
  - `/system/framework/services.jar` -> **S1–S4** (and optional **S5**)
- **Vendor companion JARs (leave untouched):**
  - `/system/framework/vivo-framework.jar`
  - `/system/framework/vivo-services.jar`

### OriginOS / FuntouchOS Specifics & Gotchas
1. **`IVivo*` extension branches in `Instrumentation` & `ComputerEngine`:**
   - vivo wraps `Instrumentation.newApplication(...)` and `ComputerEngine` methods with `IVivo*` hooks that can add extra early `return-object` paths.
   - Verify you insert **F1** (`initContext`), **S3** (`filterInstallerPackageName`), and **S4** (`spoofFakeGAppsPackageInfo`) before **every** `return-object` instruction in those methods, not only the last one.
2. **Keystore2 (F5 & F6) on OriginOS:**
   - OriginOS uses standard AOSP `AndroidKeyStoreKeyPairGeneratorSpi` and `AndroidKeyStoreSpi` inside `framework.jar`. Always use the 3-arg `KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` and add the companion `engineGetCertificate` delegation in [`Template/AndroidKeyStoreSpi.smali`](Template/AndroidKeyStoreSpi.smali).
3. **SELinux domain verification (CRITICAL on OriginOS):**
   - vivo ROMs frequently customize `seapp_contexts` and tighten `service_manager` rules. Before enabling optional `SettingsProvider.apk` (**SP1**), run:
     ```bash
     adb shell getenforce
     adb shell ps -AZ | grep com.android.providers.settings
     ```
   - Substitute the exact measured domain into `kaorios_advanced_policy.cil` / `.te` and confirm zero AVC denials (`adb shell dmesg | grep -i "avc:.*kaorios"`) under `Enforcing` mode.
4. **Read-only partitions & OAT cleanup:**
   - Deploy via Magisk/KernelSU module with `.replace` masking `/system/framework/oat` and clearing `/data/dalvik-cache/*` + `/data/misc/apexdata/com.android.art/dalvik-cache/*` in `post-fs-data.sh`.

---

## 7. Google Pixel / Stock AOSP / Custom AOSP (LineageOS, Evolution-X, crDroid)

### Baseline Architecture (Android 13–17)
- Cleanest AOSP layout: `/system/framework/framework.jar` (**F1–F7** + payload `classesN.dex`) and `/system/framework/services.jar` (**S1–S4** + optional **S5**).
- All 11 reference files in [`Template/`](Template/) closely match AOSP Android 14–17 smali.

### Custom AOSP Conflict Check (Evolution-X, crDroid, VoltageOS)
> [!WARNING]
> Many custom AOSP ROMs **already** ship built-in PIF, TrickyStore, or HideAppList hooks (such as `PropImitationHooks`, `KeyboxImitationHooks`, `AxSandboxService`, or `HideAppListCache`).
> - Before patching, inspect disassembled `Instrumentation.smali`, `AndroidKeyStoreSpi.smali`, and `ComputerEngine.smali` for existing third-party spoof hooks.
> - Disable or remove conflicting ROM spoof implementations at source (or build a clean LineageOS / AOSP base) rather than stacking two incompatible attestation/PIF hooks in the same methods.

### Android 17 (API 37) `plat_sepolicy.cil` & `service_contexts`
- **Mode A (Building AOSP/LineageOS from source — recommended):**
  - Copy `deployment/android17-sepolicy/kaorios_advanced_policy.te` into `device/<vendor>/<device>/sepolicy/private/`
  - Append `deployment/android17-sepolicy/service_contexts.fragment` (`kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0`) to `service_contexts`
  - Rebuild with `m selinux_policy` (or full ROM build).
- **Mode B (Prebuilt Pixel / AOSP ROM via Magisk/KernelSU):**
  - Bind-mount an augmented `/system/etc/selinux/plat_service_contexts` (containing `kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0`) inside `post-fs-data.sh` BEFORE `servicemanager` starts.
  - Inject the matching CIL/TE rules via `magiskpolicy --live` (or patch `plat_sepolicy.cil` with `deployment/android17-sepolicy/kaorios_advanced_policy.cil`).
  - Remember: `magiskpolicy --live` alone **never** updates static `service_contexts`!

### Native PIF Deployment on Pixel / AOSP
```bash
# Preferred partition: /system_ext/lib64/ (fallback /system/lib64/)
adb push libkaoripif-arm64-v8a.so /system_ext/lib64/libkaoripif.so
adb shell chown root:root /system_ext/lib64/libkaoripif.so
adb shell chmod 0644 /system_ext/lib64/libkaoripif.so
adb shell restorecon -v /system_ext/lib64/libkaoripif.so

# Optional 32-bit (only on 32/64 split-Zygote ROMs; Pixel 7+ is 64-bit only):
# adb push libkaoripif-armeabi-v7a.so /system_ext/lib/libkaoripif.so

# Optional read-only diagnostic:
adb push libkaoripif_diagnostic-arm64-v8a.so /system/lib64/libkaoripif_diagnostic.so
adb shell chown root:root /system/lib64/libkaoripif_diagnostic.so
adb shell chmod 0644 /system/lib64/libkaoripif_diagnostic.so
adb shell restorecon -v /system/lib64/libkaoripif_diagnostic.so
```

---

## 8. Troubleshooting & Bootloop Recovery Playbook

### Step 1 — Capture Early Bootloop Logs via ADB
If the device loops on the boot animation, connect USB immediately and pull crash logs:
```bash
adb logcat -b crash -b main *:E | grep -E "AndroidRuntime|Zygote|SystemServer|Kaorios|VerifyError|NoSuchMethodError|ClassNotFoundException|avc:"
```

| Error Signature in `logcat` | Root Cause | Exact Fix |
|---|---|---|
| `ClassNotFoundException: android.security.kaorios.KaoriosHook` | Payload `classesN.dex` missing, skipped numbering (e.g. `classes4.dex` -> `classes6.dex`), or stale `boot-framework.vdex`/`.art` still loaded | Verify contiguous `classes*.dex` naming inside `framework.jar` and wipe `/system/framework/oat/`, `boot-framework.*`, and `/data/dalvik-cache/*` |
| `NoSuchMethodError: ...KaoriosHook;->...` | Wrong method descriptor or mismatched payload version (e.g. called legacy boolean `Z` instead of `String` for F7, or 1-arg vs 3-arg, or obfuscated class) | Re-verify every `invoke-*` against [`Patch_Guide_2.0.6.2.md`](Patch_Guide_2.0.6.2.md) and run `kaorios_patcher.py verify` with the exact `classes.dex` |
| `VerifyError` in `ComputerEngine` / `ActivityThread` / `NameValueCache` | Register exceeded `v15`, clobbered live register, or split `invoke-*` / `move-result*` | Re-check `.locals` + `pK` math; lower `> v15` args with `move*/from16` or re-patch clean stock with `script/kaorios_patcher.py` |
| `SettingsProvider` crash / `INSTALL_PARSE_FAILED_NO_CERTIFICATES` | `SettingsProvider.apk` DEX was compressed (`DEFLATE`) or platform signature broken | Keep `classes*.dex` uncompressed (`ZIP_STORED`), 4-byte zipalign, and preserve platform signature (or remove optional SP1) |
| `Service kaorios_advanced_policy: not found` + `avc: denied { add }` | Static `service_contexts` missing entry or SELinux policy missing `allow system_server` / measured SettingsProvider domain | Check `adb shell ps -AZ \| grep com.android.providers.settings`, deploy `service_contexts` + CIL/TE rules under `Enforcing` mode |
| DroidGuard / Play Store crash after installing `libkaoripif.so` | Incompatible ABI or kernel/Bionic `prop_area` layout | Immediately trigger kill switch: `adb shell setprop persist.sys.projectryu.pif_native 0` (falls back cleanly to Java F3) |

### Step 2 — Fast Bootloop Recovery (Zero Data Loss)
1. **Magisk Safe Mode (ADB):**
   ```bash
   adb wait-for-device shell magisk --remove-modules
   ```
   *(Or hold Volume Down while booting to trigger Magisk Safe Mode if enabled.)*
2. **KernelSU Safe Mode:** Press Volume Down 3 times continuously during early boot (disables all KernelSU modules automatically).
3. **Custom Recovery (TWRP / OrangeFox):**
   - If installed via module: delete `/data/adb/modules/<kaorios-module-id>/` and reboot.
   - If installed directly to `/system`: restore your backed-up stock `framework.jar` and `services.jar`, verify `sha256sum`, `chmod 0644`, wipe `/data/dalvik-cache/*` and `/data/misc/apexdata/com.android.art/dalvik-cache/*`, and reboot.
4. **Native PIF Emergency Kill Switch (no reboot required to disable for next process start):**
   ```bash
   adb shell setprop persist.sys.projectryu.pif_native 0
   adb shell am force-stop com.google.android.gms
   adb shell am force-stop com.android.vending
   ```
