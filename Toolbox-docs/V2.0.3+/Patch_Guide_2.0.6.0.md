# Kaorios Toolbox Framework 2.0.6.0 — Android 13–17

**English** | [Tiếng Việt](Patch_Guide_2.0.6.0_VI.md)

This guide follows the current public patcher in this repository.

> [!IMPORTANT]
> Always start from clean stock files from the exact target ROM. Do not copy a whole class or DEX from another ROM. The files under `Toolbox-docs/Template/Template_V2060` are references only.

## 1. What you need

From the target ROM, keep clean copies of:

- `framework.jar`
- `services.jar`
- `SettingsProvider.apk`

Recommended backups:

```text
framework.jar.orig
services.jar.orig
SettingsProvider.apk.orig
```

You also need a working smali/baksmali toolchain.

The maintained patcher entry point is:

```text
script/kaorios_patcher.py
```

`script/kaorios_patcher_a17.py` is only a compatibility launcher for old commands.

---

Template folders: `a13/`, `a14/`, `a15/`, `a16/`, `a17/`. See [Template_V2060 README](../Template/Template_V2060/README.md) and always use the folder matching the target Android version.

## 2. Choose the correct mode

| Android | Use | Meaning |
|---|---|---|
| 13 | `--android-version 13 --mode 1` | Kaorios hooks |
| 14 | `--android-version 14 --mode 1` | Kaorios hooks |
| 15 | `--android-version 15 --mode 1` | Kaorios hooks |
| 16 | `--android-version 16 --mode 1` | Kaorios hooks |
| 17 | `--android-version 17 --mode 1` | Kaorios hooks only |
| 17 | `--android-version 17 --mode 2` | Build spoof only |
| 17 | `--android-version 17 --mode 3` | Hooks + Build spoof |

Android 13–16 must use mode 1.

Mode 2/3 contains the Android 17 Build patch and is rejected for Android 13–16.

General command:

```bash
python3 script/kaorios_patcher.py <smali_dir_or_file> \
  --android-version <13|14|15|16|17> \
  --mode <1|2|3> \
  --no-delay
```

`--no-delay` only disables the terminal typing effect.

---

## 3. Decompile every DEX separately

Do not assume the target class is in `classes.dex`.

Example for `framework.jar`:

```bash
mkdir -p work/framework/input
unzip framework.jar 'classes*.dex' -d work/framework/input

for dex in work/framework/input/classes*.dex; do
    name=$(basename "$dex" .dex)
    baksmali d "$dex" -o "work/framework/smali_$name"
done
```

Do the same for:

```text
work/services/
work/settingsprovider/
```

You may end up with directories such as:

```text
smali_classes/
smali_classes2/
smali_classes3/
```

Search all of them.

---

## 4. Run the automatic patcher

### Android 13–16

Run mode 1 on each workspace that contains Kaorios targets:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 16 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/services --android-version 16 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/settingsprovider --android-version 16 --mode 1 --no-delay
```

Replace `16` with the real Android version.

### Android 17

Patch the hooks first:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/services --android-version 17 --mode 1 --no-delay
python3 script/kaorios_patcher.py work/settingsprovider --android-version 17 --mode 1 --no-delay
```

Then patch the Android 17 Build fields in the framework workspace:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 2 --no-delay
```

If the framework workspace contains both the hook targets and `Build.smali` / `Build$VERSION.smali`, mode 3 can replace the two framework commands:

```bash
python3 script/kaorios_patcher.py work/framework --android-version 17 --mode 3 --no-delay
```

Still run mode 1 separately on `services` and `SettingsProvider`.

### What mode 1 currently patches

The current patcher recognizes these target files:

```text
ActivityThread.smali
Instrumentation.smali
ApplicationPackageManager.smali
AndroidKeyStoreKeyPairGeneratorSpi.smali
AndroidKeyStoreSpi.smali

ComputerEngine.smali
SystemServer.smali

SettingsProvider.smali
```

The actual class may live in any `classes*.dex`.

Some helper script filenames still contain `a17` for historical compatibility. Support is decided by the target method/layout verifier, not by the helper filename.

---

## 5. Understand the patcher result

Typical results:

| Result | Meaning |
|---|---|
| `PATCHED` | File was changed and its structural verifier passed. |
| `ALREADY_PATCHED` | The expected final hook is already present and valid. |
| `UNSUPPORTED_LAYOUT` | The ROM layout is not recognized safely. Do not force the patch. |
| `FAILED` | The patch or verification failed. Restore the stock working file and inspect the error. |
| No target found | Wrong directory, target class is in another DEX, or that archive does not contain the target. |

The patcher is fail-closed: unknown register/control-flow layouts are rejected instead of being guessed.

> [!WARNING]
> If you patch a directory containing several target files, an earlier file may already have been written before a later file fails. Work on copies, not your only stock files.

---

## 6. Core hook map

This section is a quick map for understanding what the automatic patcher is looking for. It is not a replacement for the verifier.

### `framework.jar`

#### App initialization

Class:

```smali
Landroid/app/Instrumentation;
```

Methods:

```smali
newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
```

The patcher inserts:

```smali
Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V
```

Reference: `framework/Instrumentation.smali` in the matching `a13`–`a17` folder.

#### Process initialization

Class:

```smali
Landroid/app/ActivityThread;
```

Method:

```smali
handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
```

The patcher verifies the real aliases of `this` and `AppBindData` before inserting:

```smali
Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V
```

Do not hard-code `p0/p1` from another ROM.

#### System feature spoof

Class:

```smali
Landroid/app/ApplicationPackageManager;
```

Method:

```smali
hasSystemFeature(Ljava/lang/String;I)Z
```

Hook:

```smali
Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
```

Reference: `framework/ApplicationPackageManager.smali` in the matching `a13`–`a17` folder.

#### Software key generation

Class:

```smali
Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
```

Method:

```smali
generateKeyPair()Ljava/security/KeyPair;
```

Hook:

```smali
Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
```

Reference: `framework/AndroidKeyStoreKeyPairGeneratorSpi.smali` in the matching `a13`–`a17` folder.

#### Certificate chain

Class:

```smali
Landroid/security/keystore2/AndroidKeyStoreSpi;
```

Method:

```smali
engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
```

Hook:

```smali
Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;
```

Reference: `framework/AndroidKeyStoreSpi.smali` in the matching `a13`–`a17` folder.

The generation and chain-read hooks cover different paths. `getCertificate()` reads a single certificate independently in AOSP 17 and Evolution X cnb; installing only the chain hook does not cover that API. After changing targets or mode, test a fresh key. See [target/unlocked troubleshooting and pinned AOSP/Evolution X comparison](Attestation_Guide_2.0.6.0.md).

---

### `services.jar`

#### SystemServer initialization

Class:

```smali
Lcom/android/server/SystemServer;
```

Method:

```smali
run()V
```

Current patcher inserts:

```smali
invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
```

immediately before the single verified:

```smali
invoke-static {}, Landroid/os/Looper;->loop()V
```

Reference: `service/SystemServer.smali` in the matching `a13`–`a17` folder.

#### Package visibility / installer source

Class:

```smali
Lcom/android/server/pm/ComputerEngine;
```

The patcher looks for supported `shouldFilterApplication(...)` layouts.

If supported installer APIs are also present, the ComputerEngine patcher also applies and verifies installer-source filtering. A partial or unknown installer layout is rejected.

### `SettingsProvider.apk`

Class:

```smali
Lcom/android/providers/settings/SettingsProvider;
```

The current patcher handles:

```smali
call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
```

and, when present:

```smali
query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
```

For `call()`, the safe anchor is currently:

- `getDeviceId()` when present; otherwise
- `getRequestingUserId(Bundle)`.

High-register or unsupported control-flow layouts fail closed.

**SettingsProvider fix, 2026-10-05:** the previous patch could insert a hook between `getDeviceId()` and its `move-result` when baksmali emitted blank/debug lines. The DEX can assemble while ART rejects the method and the provider fails to start. Use the updated patcher, rebuild from the stock APK, re-disassemble and verify. The hook must follow the complete invoke/result pair; signing changes or CorePatch do not repair this bytecode defect. Device boot success remains unverified.

When growing locals in `call()`, the patcher rejects `invoke-range` spans crossing the local/parameter boundary because growth adds an unintended register to the range. Register alias conversion preserves string literals, labels and descriptors. Do not force a rejected layout by globally renaming register-looking text.


---

## 7. Android 17 Build patch

Only Android 17 uses this section.

### `Build.smali`

For these String fields, remove `final` and set the initializer to `null`:

```text
BRAND
BRAND_FOR_ATTESTATION
DEVICE
DEVICE_FOR_ATTESTATION
FINGERPRINT
HARDWARE
ID
MANUFACTURER
MANUFACTURER_FOR_ATTESTATION
MODEL
MODEL_FOR_ATTESTATION
PRODUCT
PRODUCT_FOR_ATTESTATION
TAGS
TYPE
USER
```

For `TIME:J`, remove only `final`.

Reference: `a17/framework/Build.smali`.

### `Build$VERSION.smali`

Remove `final` from:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

Reference: `a17/framework/Build$VERSION.smali`.

Keep `SDK_INT` unchanged.

Do not remove `final` from every Build field. Only change extra fields when your own profile actually needs them.

---

## 8. Rebuild only the DEX you changed

After patching a smali tree, assemble it back to the same DEX name.

Example:

```bash
mkdir -p work/framework/output
smali a --api 29 work/framework/smali_classes2 \
  -o work/framework/output/classes2.dex
```

Use the assembler API appropriate for the input DEX/toolchain. The assembler API selects DEX format/opcodes; it is not the Android version label.

Then replace only that DEX entry in a copy of the original archive.

Do not replace untouched `classes*.dex` files.

For `SettingsProvider.apk`, preserve the original manifest/resources and use your ROM build/signing process. Direct device deployment requires the correct platform signing setup.

### Import payload into an existing DEX

Import by class descriptor across all DEX splits: replace matching payload classes, add new classes and retain unmatched classes from the original ROM. Do not overwrite an existing DEX with a release DEX. Each output descriptor must have exactly one owner; check that no original classes were lost and untouched DEX hashes remain identical. Patch Android hook classes from the target ROM itself.

After rebuilding, check that the certificate-chain hook result reaches the register returned by the method. An `invoke-static` followed by returning the original array does not use the rewritten chain.

---

## 9. Re-disassemble and verify

Verification before saving is useful, but the rebuilt DEX must also be checked.

Re-disassemble the rebuilt artifact and run the matching verifier.

Examples:

```bash
python3 script/verify-framework-a17-hooks.py work/framework/recheck --caller-only
python3 script/verify-services-a17-hooks.py work/services/recheck
python3 script/verify-systemserver-a17-hooks.py work/services/recheck
python3 script/verify-settingsprovider-a17-hooks.py work/settingsprovider/recheck
```

For a final framework artifact that already contains the Kaorios framework DEX and AdvancedPolicy classes, run the full framework verifier without `--caller-only`:

```bash
python3 script/verify-framework-a17-hooks.py work/framework/recheck
```

A verifier PASS proves the expected structure is present. It does not prove the ROM will boot on a real device.

---

## 10. Boot-test in this order

Do not add every optional patch at once.

Recommended order:

1. boot with the core framework/services/SettingsProvider hooks;
2. check logcat for framework or system_server crashes;
3. test Toolbox startup;
4. test Play Integrity / keybox behavior;
5. test package visibility;
6. test per-app Settings spoofing;
7. test installer-source spoofing;
8. only then add optional patches such as FLAG_SECURE/CorePatch.

If the ROM bootloops, restore the stock archive first, then check:

- wrong DEX rebuilt/replaced;
- target class was in another `classes*.dex`;
- unsupported OEM method layout;
- bad scratch register/manual edit;
- missing Kaorios framework DEX/classes;
- SettingsProvider signing mismatch.

---

## 11. Optional patches

These are not required for every ROM.

### Hide Developer options / ADB state

Class:

```smali
Landroid/provider/Settings$NameValueCache;
```

Reference: `framework/Settings$NameValueCache.smali` in the matching `a13`–`a17` folder.

Patch only the String-returning `getStringForUser(...)` layout used by the target ROM. Do not copy a hard-coded register layout from another ROM.

### Disable FLAG_SECURE

See [Disable Secure Flag](Disable_Secure_Flag.md).

### Signature verification / CorePatch

See [CorePatch](CorePatch.md).

---

## 12. When the patcher says UNSUPPORTED_LAYOUT

Do not force the nearest-looking snippet into the ROM.

Instead:

1. restore the clean stock smali file;
2. confirm the exact method descriptor;
3. inspect `.registers` / `.locals`;
4. identify the real parameter registers and return paths;
5. compare with the matching Template only for logic;
6. update the patcher/verifier for that layout before using it on release builds.

That is safer than copying a register number from another Android/OEM build.

---

## 13. Android 17 artifact helper scripts

For Android 17 there are also full-artifact helper pipelines:

```text
script/patch-framework-a17-artifact.sh
script/patch-services-a17-artifact.sh
script/patch-settingsprovider-a17-artifact.sh
```

They discover owner DEX files, rebuild only modified DEXes, verify untouched DEX hashes and re-run structural verification.

Use them only when you understand their required smali/baksmali inputs and, for direct `SettingsProvider.apk` deployment, the platform signing requirements.

---

## 14. Install a ROM module through KernelSU / MamboSU

> [!WARNING]
> A device bootloop was reported for the supplied `hzz` profile after module delivery. Logs have not established its cause; the delivered builds are not device-boot verified. Disable the module first, retain the earliest failure log and do not reinstall based only on passing hashes/verifiers.

A three-artifact module is specific to the ROM/profile used to build it. After an OTA or ROM change, obtain fresh stock artifacts and rebuild the module. Install the ZIP through the root manager while Android is running; do not install its `SettingsProvider.apk` separately through Package Installer or `pm install`.

KernelSU versions using the metamodule architecture require a compatible metamodule to mount `system/`; successful ZIP installation does not prove the framework is mounted. MamboSU is the installation interface: check the actual root solution and mounting mechanism too. See the [KernelSU module guide](https://kernelsu.org/guide/module.html) and [Magisk module guide](https://topjohnwu.github.io/Magisk/guides.html).

### `Cannot resolve SettingsProvider SELinux domain`

If ROM hashes and payload files report `OK` before this error, the failed step is process/domain detection; this does not indicate corrupt artifacts. Package `com.android.providers.settings` may run in a shared process. For a profile whose manifest declares `android:process="system"`, searching `ps` for the package name misses that process.

The installer should derive the process name from the correct APK manifest (provider override first, then application/default), match the first name in `/proc/<pid>/cmdline`, and read the actual domain from `/proc/<pid>/attr/current`. Do not assume `system_app` or substitute `system_server` for `system`. If the process is not running, try one read-only Settings query to start the provider; stop and retain the log if the context cannot be read or matching domains conflict.

For a profile using process `system`, inspect it from a root terminal:

```sh
su
for pid in $(pidof system); do
    tr '\000' '\n' < "/proc/$pid/cmdline" | head -n 1
    cat "/proc/$pid/attr/current"
done
```

Preserving the original APK Signing Block does not make modified APK content digests valid. Prefer building/signing with the ROM platform key; a metadata-preserving APK overlay requires verification of the ROM's trusted-system scan path. Do not use CorePatch or SELinux permissive to bypass this installer error.

### After installation and recovery

Reboot and check Toolbox framework/Advanced Features status. For HMA, configure the caller app and a template containing apps to hide, then force-stop the caller and test again. For attestation, apply the target/mode and generate a fresh key as described in the [attestation guide](Attestation_Guide_2.0.6.0.md).

If a successful installation causes a bootloop, use your root solution's safe mode or disable the module through root/recovery. For module ID `kaorios_rom_hzz`, create `/data/adb/modules/kaorios_rom_hzz/disable` and reboot. Do not reboot after a failed flash; save the log and resolve the error first. Passing hashes, structural verifiers and host tests does not establish boot, HMA, attestation or Binder/SELinux behavior on a real device.

---

## Short version

For most users:

```text
1. Extract clean stock framework.jar / services.jar / SettingsProvider.apk
2. Decompile every classes*.dex separately
3. Android 13–16: mode 1
4. Android 17: mode 1 + mode 2, or mode 3 for the framework tree
5. Rebuild only modified DEX files
6. Put them back into copies of the stock archives
7. Re-disassemble and run the verifiers
8. Boot-test before adding optional patches
```
