# ROM patching — agent procedure

This is a procedure for an agent assisting with an **authorized copy** of a ROM, not a background patch bot or a substitute for the [manual patch guide](V2.0.3+/Patch_Guide_2.0.6.1.md) and [patcher guide](V2.0.3+/Patcher_Guide_2.0.6.1.md). The maintained patcher is [`script/kaorios_patcher.py`](../script/kaorios_patcher.py). Read the guide matching the actual Android version before acting. Do not infer device compatibility from a release number or template name.

## 1. Confirm the assignment

Record the ROM build and Android version, the exact stock `framework.jar` and `services.jar`, the authorized input and output paths, the requested hooks, and whether the user permits editing **working copies**. If any of these is unclear, stop and ask. Use files the user is entitled to modify. Do not read, export, or publish signing keys, Keybox data, private source, raw device identifiers, or unapproved ROM artifacts.

Permission to patch a working copy does **not** authorize modifying original ROM files, flashing a device, signing a release, uploading an artifact, or pushing to another repository. Obtain separate confirmation before any of those actions.

## 2. Preserve an independent baseline

Keep untouched inputs outside the writable workspace; calculate and retain SHA-256 hashes and an inventory of every `classes*.dex` and other archive entry. Use a separate, empty working directory for each ROM build and artifact. Verify that there is a way to restore the stock artifacts before any device work. Never run the patcher on the only copy of an input.

Disassemble each DEX into its own directory. Locate each requested target by its **class descriptor**, method signature, owning archive, and owning DEX; do not assume `classes.dex`. Ensure a payload class does not duplicate a class already owned by another DEX. Templates are references, not ROM-class replacements. If the expected owner or layout is ambiguous, stop rather than guessing.

## 3. Plan and patch the copy

Choose `--mode 1` for Android 13–16 hooks; on Android 17 choose mode 1 for hooks, mode 2 for Build spoof only, or mode 3 when both are needed in the same framework workspace. Run the maintained patcher with an explicit `--android-version` and the **copied** smali path as shown in the [patcher guide](V2.0.3+/Patcher_Guide_2.0.6.1.md#4-run-the-automatic-patcher). `--no-delay` only suppresses output animation; there is no native `--dry-run` mode.

Record the command and exit code; compare the reported target set with the inventory. `PATCHED` and `ALREADY_PATCHED` do not prove all intended classes were present. `UNSUPPORTED_LAYOUT`, `FAILED`, a missing target, an unexpected diff, or a nonzero exit code is a **stop** condition. Directory mode may have written earlier files before it fails: discard the whole affected work copy, recreate it from untouched stock, and investigate before retrying. Do not force a near-match template or continue with a partial patch.

## 4. Verify the output artifact

Review the smali diff against the stock copy, including register allocation and every changed method's control flow. Import the required payload classes according to the manual guide; patching target callers alone does not install those classes. Reassemble only affected DEX trees with an appropriate API/toolchain, replace only their original DEX entries in a **copy** of the stock JAR, preserve non-DEX entries and hashes of untouched DEX splits, then extract and re-disassemble the **final saved archive** into a fresh directory. Check duplicate classes, expected hook signatures and the applicable framework/services verifiers listed in the patcher guide. Record verifier scope and final hashes without exposing private material.

A passing source/host test proves only that test's behavior; a patched archive and a passing verifier prove only checked artifact structure. Neither proves ROM boot, SELinux compatibility, attestation, or feature behavior on a device. Real-ROM and real-device verification are separate steps performed by an authorized operator.

## 5. Hand off or roll back

Give the user a concise list of input and output hashes, owners and changed DEX entries, command results, verifier coverage, unresolved compatibility concerns, and the restore procedure. Do not publish or deploy output without separate approval. If any check fails, keep the original stock artifacts untouched, discard the incomplete output and report the specific blocker. Keep `SettingsProvider.apk` stock; the retired Fake Settings patch is not part of this procedure.
