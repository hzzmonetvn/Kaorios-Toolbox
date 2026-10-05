# Kaorios Toolbox 2.0.6.1 — Automatic patcher

**English** | [Tiếng Việt](Patcher_Guide_2.0.6.1_VI.md)

This file covers patcher commands, modes, output and artifact helpers. For editing smali yourself, payload imports, register allocation and deployment, use the separate [manual patch guide](Patch_Guide_2.0.6.1.md).

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

## 6. Re-disassemble and verify

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

The full framework verifier (without `--caller-only`) checks the `ActivityThread` hook, the `initActivityThread(Object)` callee and presence of eight AdvancedPolicy classes; it does not check every Instrumentation, feature or Keystore hook. With `--caller-only`, it checks only the ActivityThread caller. Inspect the remaining hooks using the [manual guide](Patch_Guide_2.0.6.1.md), then follow [Save and check](Patch_Guide_2.0.6.1.md#save-and-check). Import all payload classes as described under framework.jar.

---

## 7. When the patcher says UNSUPPORTED_LAYOUT

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

## 8. Android 17 artifact helper scripts

For Android 17 there are also full-artifact helper pipelines:

```text
script/patch-framework-a17-artifact.sh
script/patch-services-a17-artifact.sh
script/patch-settingsprovider-a17-artifact.sh
```

They discover owner DEX files, rebuild only modified DEXes, verify untouched DEX hashes and re-run structural verification.

Use them only when you understand their required smali/baksmali inputs and, for direct `SettingsProvider.apk` deployment, the platform signing requirements.
