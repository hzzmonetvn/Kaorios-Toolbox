# Kaorios Toolbox 2.0.6.1 — Automatic patcher guide (Android 13–17)

**English** | [Tiếng Việt](Patcher_Guide_2.0.6.1_VI.md) | [Agent procedure](../agent.md) | [Manual patch guide](Patch_Guide_2.0.6.1.md)

**Choose a route:** If you can read smali but are new to ROM patching, start with stock files from the exact build, locate the DEX that owns each class, then choose: run the patcher on **working smali copies** for the targets below; use the [manual guide](Patch_Guide_2.0.6.1.md) for hooks outside automatic coverage and payload import; finally assemble and inspect the **packaged output JARs**. Do not replace ROM classes wholesale with Template examples.

## 1. Prepare and find owner DEXes

Obtain copies of stock `framework.jar` and `services.jar` from the **same authorized target ROM build**, a working smali/baksmali toolchain compatible with the input DEX API, and `unzip`/`zip` (or equivalent). Keep clean stock originals outside the workspace, record their SHA-256 hashes and plan recovery before considering device changes; ROM updates require a fresh stock set. Leave **stock `SettingsProvider.apk` untouched**: do not patch, replace or re-sign the provider. Never use a stock path as output.

Run commands from the `public/` repository root, **not** from an extracted archive. The example uses a new, empty workspace; substitute actual paths for `STOCK`, `WORK`, and a verified toolchain classpath. Do not assume `baksmali` is installed or `java -jar` works with thin smali/baksmali JARs: use classpaths containing the correct JAR **and compatible dependencies**, or a separately tested standalone command. Choose `API` for the input DEX and toolchain, not just from the Android release name.

```bash
set -e
STOCK=/path/to/clean-rom-files
WORK=/path/to/new-empty-workspace
API=37  # Android 17 example; replace with the API appropriate to the input DEX
BAKSMALI_CP=/path/to/working-baksmali-classpath
SMALI_CP=/path/to/working-smali-classpath
# WORK must be a new, empty directory; STOCK points to clean archives elsewhere.

sha256sum "$STOCK/framework.jar" "$STOCK/services.jar"
for jar in framework services; do
    unzip -Z1 "$STOCK/$jar.jar"        # record non-DEX entries too
    mkdir -p "$WORK/$jar/input"
    unzip -q "$STOCK/$jar.jar" 'classes*.dex' -d "$WORK/$jar/input"
    for dex in "$WORK/$jar/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" --output "$WORK/$jar/smali_$name"
    done
done
```

Each `smali_classes*` tree corresponds to **one** original `classes*.dex`. Search *all* trees, not only `classes.dex`; record `descriptor → framework/services → DEX entry → smali path → method/overload to patch`. For example, `rg -n '^\.class .*Landroid/app/ActivityThread;' "$WORK/framework"`; look up the remaining descriptors from the table below. If a required target is absent or has duplicate owners, stop and inspect the ROM rather than choosing a similar-looking class.

[Template_V2060](../Template/Template_V2060/README.md) has `a13/`–`a17/` folders (each with `framework/` and `service/`). Use the matching version **only to compare logic**, not to overwrite stock classes.

## 2. Modes and automatic coverage

The maintained patcher is `script/kaorios_patcher.py`; `script/kaorios_patcher_a17.py` is a legacy compatibility launcher. It patches **smali files it finds**; it does not discover owner DEXes in JARs, import payload, or implement every hook in the manual guide.

| Android | Mode | Effect |
|---|---|---|
| 13–16 | `--mode 1` | Automatic hook targets below, when method/layout is supported. |
| 17 | `--mode 1` | Automatic hook targets only. |
| 17 | `--mode 2` | Build spoof fields in `Build.smali` and `Build$VERSION.smali` only. |
| 17 | `--mode 3` | Mode 1 + mode 2 on the **same smali input path**. |

Modes 2/3 are rejected when Android 13–16 is specified. A helper filename containing `a17` does not mean every Android 17/OEM layout is supported: the patcher checks the actual method and layout.

| Archive | Exact filenames mode 1 searches for | Scope |
|---|---|---|
| `framework.jar` | `ActivityThread.smali`, `Instrumentation.smali`, `ApplicationPackageManager.smali`, `AndroidKeyStoreKeyPairGeneratorSpi.smali`, `AndroidKeyStoreSpi.smali` | Only the methods/hooks supported by the patcher and per-file verifier. |
| `services.jar` | `ComputerEngine.smali`, `SystemServer.smali` | Package visibility hook, `initSystemServer`, and **when present**, both installer read APIs in `ComputerEngine` if their signatures/layouts are supported. |

Installer is not a separate target filename: when `ComputerEngine` contains `getInstallerPackageName` or `getInstallSourceInfo`, the patcher requires **exactly one supported-signature method for each API** and must prove the selected pair's layout and hook placement. If a supported API is missing or the selected pair fails verification, it rejects the file. Other overloads **outside** the supported signature set may be ignored even when that pair passes; inspect those separately against the ROM's call paths. If no installer methods exist, these hooks are skipped, not considered patched.

**Not automatically patched:** the optional `Settings$NameValueCache` developer/ADB-status hook, Secure Flag and CorePatch; and **every payload class**. Handle or deliberately omit these using the [manual guide](Patch_Guide_2.0.6.1.md); do not infer the presence of other hooks from `PATCHED`. Modes 2/3 edit Android 17 Build fields, not manual hooks or the payload.

## 3. Run the patcher on working smali copies

From the repository root, run mode 1 for each tree owning a target (for example, if `ActivityThread` is in `classes2.dex`):

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2" \
  --android-version 17 --mode 1 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/services/smali_classes" \
  --android-version 17 --mode 1 --no-delay
```

Replace the Android version and tree names using **this ROM's** owner inventory; repeat for other owner DEXes. Android 13–16 use mode 1. If a required target is absent from a tree, an exit code of zero from another tree does not mean completion: compare each reported file with the owner inventory. You can also supply a **single file path** to patch only that file.

For Android 17 only, if Build spoofing is required, locate **both** files in the owner inventory and run mode 2 separately on each file, whether they share a DEX or not. Replace the example paths with each file's actual owner; both commands must pass:

```bash
set -e
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes/android/os/Build.smali" \
  --android-version 17 --mode 2 --no-delay
python3 -I script/kaorios_patcher.py "$WORK/framework/smali_classes2/android/os/Build\$VERSION.smali" \
  --android-version 17 --mode 2 --no-delay
```

If both files share a tree, use that same tree name for both paths. Confirm `PATCHED`/`ALREADY_PATCHED` **for each file** and inspect both in the final JAR. Use mode 3 in place of both mode 1 **and** mode 2 for one tree only when that tree contains hook targets **and both** required Build files; if the Build files are split, still run mode 2 for the other file and mode 1 for other hook trees. `services` requires mode 1 separately. `--no-delay` only disables terminal output animation.

| Result | What it means |
|---|---|
| `PATCHED` | File was written after patching and per-file structural verification; still verify the final artifact. |
| `ALREADY_PATCHED` | Expected target hook is present and passes its verifier; no new write. |
| `UNSUPPORTED_LAYOUT` | Layout is unsupported; **only the rejected file remains unchanged**. Stop and inspect the real method. |
| `FAILED` | File patch/verification failed; **only the rejected file remains unchanged**. Inspect the error and stop. |
| No target found | Check the path, owner DEX and required filename inventory; this is not a PASS. |

The patcher may have **written earlier successful files** in a directory run before a later file or tree-level verifier fails; a nonzero exit code **does not roll back** those writes. Do not build from a partial tree: discard the affected working copy, recreate it from clean stock, and resolve the blocker. For `UNSUPPORTED_LAYOUT`, inspect the descriptor, `.locals`/`.registers`, `pN`/`vN` aliases, instruction encoding limits and every return/fallback path. Do not force a similar-looking snippet or increase registers if stock instructions become unencodable; consult the [manual guide](Patch_Guide_2.0.6.1.md).

## 4. Import payload and rebuild output JARs

**The patcher does not import payload.** Import **all 2.0.6.1 payload classes individually into `framework.jar`** as described under [Import the payload](Patch_Guide_2.0.6.1.md#2-import-the-payload-into-frameworkjar): replace a duplicate descriptor as a **class inside its existing owner DEX**; add new classes to a suitable split; preserve all other ROM classes and prevent duplicate owners. If the DEX containing `KaoriosHook` also contains other ROM classes, **do not** replace the whole DEX with the payload DEX. `services.jar` uses the framework payload; do not import it again, and keep the provider stock. Re-inventory owner DEXes after import (a new split may be needed).

Assemble **only changed smali trees** with the tested toolchain and matching API, using their original `classes*.dex` entry names (except new payload splits). Example for *one* changed tree; repeat for each framework/services owner DEX and export any added payload split following the manual guide:

```bash
set -e
jar=framework
name=classes2
mkdir -p "$WORK/$jar/rebuilt"
java -cp "$SMALI_CP" com.android.tools.smali.smali.Main \
  assemble "$WORK/$jar/smali_$name" --api "$API" \
  --output "$WORK/$jar/rebuilt/$name.dex"
```

Create output at paths **different from stock**, starting with stock JAR copies, then update each rebuilt DEX entry; preserve non-DEX entries and untouched splits. This example packages **both JARs** from the DEXes exported to `rebuilt/` (including any new payload split). `zip -j` stores just the `classes*.dex` basename at the JAR root, not its workspace path:

```bash
set -e
mkdir -p "$WORK/output"
for jar in framework services; do
    cp "$STOCK/$jar.jar" "$WORK/output/$jar-patched.jar"
    for dex in "$WORK/$jar/rebuilt"/classes*.dex; do
        test -f "$dex" || continue
        zip -q -0 -j "$WORK/output/$jar-patched.jar" "$dex"
    done
    unzip -tq "$WORK/output/$jar-patched.jar"
done
```

If `zip`/the toolchain cannot preserve the ROM's required layout, use a compatible multidex editor rather than forcing the command. Compare the entry lists, hashes of untouched DEXes and class inventory (including payload); do not assume `ActivityThread` alone completes the job.

## 5. Verify the saved archive itself

1. Open the **saved `$WORK/output/framework-patched.jar` and `services-patched.jar`**, extract all `classes*.dex` into **empty recheck directories**, compare packaged entries byte-for-byte with assembled DEXes, compare hashes of untouched DEXes against stock and inventory non-DEX entries.
2. Disassemble **DEXes extracted from the output archives**, one tree per DEX; confirm every payload descriptor appears exactly once across the framework, all ROM classes not intentionally replaced remain, and recheck exact method/overload, physical registers, stock fallback paths and adjacent `invoke-*`/`move-result*`. Do not run a verifier on the working tree and call that proof of the final archive.
3. Extract again from the **final JARs**, not from `rebuilt`, for rechecking. Create a new, empty recheck directory for each check (example for both outputs):

```bash
set -e
for jar in framework services; do
    mkdir -p "$WORK/$jar/recheck/input"
    unzip -q "$WORK/output/$jar-patched.jar" 'classes*.dex' \
      -d "$WORK/$jar/recheck/input"
    for dex in "$WORK/$jar/recheck/input"/classes*.dex; do
        name=$(basename "$dex" .dex)
        if test -f "$WORK/$jar/rebuilt/$name.dex"; then
            cmp "$WORK/$jar/rebuilt/$name.dex" "$dex" || exit 1
        fi
        java -cp "$BAKSMALI_CP" com.android.tools.smali.baksmali.Main \
          disassemble "$dex" --api "$API" \
          --output "$WORK/$jar/recheck/smali_$name"
    done
done
```

Compare untouched DEX hashes with their stock counterparts before relying on the result; do not rerun into an old recheck directory. Run applicable verifiers on the trees disassembled from the **final JARs**:

```bash
set -e
python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck" --caller-only
python3 -I script/verify-services-a17-hooks.py "$WORK/services/recheck"
python3 -I script/verify-systemserver-a17-hooks.py "$WORK/services/recheck"
```

Once the framework output **also** contains `KaoriosHook.initActivityThread(Ljava/lang/Object;)V` and the eight AdvancedPolicy classes, use the full verifier instead of `--caller-only`:

```bash
set -e
python3 -I script/verify-framework-a17-hooks.py "$WORK/framework/recheck"
```

`--caller-only` checks only the `ActivityThread` caller; full framework additionally checks the exact callee overload and **presence** of eight AdvancedPolicy classes, not all payload behavior. `verify-services-a17-hooks.py` checks package visibility in `ComputerEngine` **and** installer read APIs when present; `verify-systemserver-a17-hooks.py` checks the `SystemServer` caller. When installer APIs are absent, the services verifier does not require them. These verifiers do not cover Instrumentation, feature, Keystore, optional hooks or all runtime paths: inspect those using the [manual guide](Patch_Guide_2.0.6.1.md#7-package-verify-hand-off). Record stock/output hashes, DEX owners, verifiers actually run and hooks inspected by hand. A source/host PASS, a real packaged-ROM check and real-device behavior are separate evidence levels; **do not claim boot or device functionality** from a host verifier.

## 6. Android 17 artifact helpers: narrower than mode 1

Use only with a **toolchain supported by the helper**, JAR copies and output paths separate from stock; read each script's `--help`. In particular, the framework helper calls `java -jar` directly: its `--baksmali` and `--smali` arguments must be genuinely executable standalone JARs, **not** thin JARs. The services helper has a classpath fallback with adjacent dependencies; verify your toolchain before use. Neither helper automatically completes all mode 1 targets:

- `script/patch-framework-a17-artifact.sh --input <framework.jar> --output <framework-patched.jar> --kaorios-dex <prebuilt-payload.dex> --baksmali <tool.jar> --smali <tool.jar> [--api <api>]`: patches only the DEX owning `ActivityThread` and inserts a **prebuilt payload DEX** into framework; the planner allows whole-DEX replacement only if no old ROM class is lost and no incoming class duplicates one in another split. If per-class merge is needed, use section 4 instead. It checks caller/callee and eight AdvancedPolicy classes from the **packed candidate JAR**; it does not patch Instrumentation, feature, Keystore or Build.
- `script/patch-services-a17-artifact.sh --input <services.jar> --output <services-patched.jar> --baksmali <tool.jar> --smali <tool.jar> [--api <api>]`: patches only owner DEXes for `ComputerEngine` and `SystemServer`, possibly different splits; when `ComputerEngine` contains the supported pair of installer read APIs, the helper also patches/verifies them through `patch-services-a17.py` and the services verifier. It does not guarantee installer hooks when those methods are absent.

Both check untouched DEX hashes and structural hooks before publishing output. **Important limitation:** the services helper creates a candidate JAR, then re-disassembles DEXes from its **unpacked pre-pack directory**, not from the candidate/output itself; `unzip -tq` checks that the archive can be read but not its hook content. Therefore **extract DEXes from the final services output JAR**, disassemble and rerun both verifiers as in section 5. Even with the framework helper's packed-candidate verification, inspect hooks outside its scope and the final class inventory. Neither helper proves a ROM boots on a device.
