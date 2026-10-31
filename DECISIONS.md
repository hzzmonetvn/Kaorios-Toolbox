# Decisions

## 2026-10-31 (later) — v2.0.6.1 `classes.dex` asset replaced with the current build

- **Chosen:**
  1. Overwrite the `classes.dex` asset on release `v2.0.6.1` with the current-source build — 91,160 bytes, SHA-256 `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`, 44 classes — using `gh release upload --clobber`. The asset id changed (`RA_kwDOQWV3bM4pcl3n`), so the file is a new upload, not an in-place byte swap.
  2. Rewrite the release body. It previously advertised the Enhanced PIF Spoofing Engine, DroidGuard chain blocking, keybox attestation and TEE warm-up — all purged by `71185bc` — and listed a third SHA-256 (`ca9489f3…`) matching neither artifact. It now describes the stock-Keystore payload, carries the correct hash, records that the patcher ZIP is no longer attached, and keeps the `SettingsProvider.apk` bootloop warning.
  3. Replace the "two DEX artifacts, not interchangeable" wording in all four guides and `script/patcher_v2061_README.txt`. The asset and a current-source build are now the same artifact, so both guides state that and give the old `94848e18…` hash only as a "this is the stale build, discard it" check.
- **Considered:**
  - Publishing under a new tag (`v2.0.6.2`): rejected — the guides, the app's version checks and the release URL all point at 2.0.6.1; a new tag would strand them for no artifact benefit.
  - Leaving the guides' "two artifacts" section in place: rejected — it would assert something false about a file users download from the link in the same paragraph.
  - Deleting the old asset instead of overwriting: rejected — macOS/GitHub keeps no per-asset history either way, and an empty release for the duration of the re-upload is worse.
- **Consequences:** download counts on the asset reset to 0 (the new asset id has its own counter). The 161 earlier downloads received the 858,636-byte build and are unaffected by this change — anyone holding it keeps a payload that rewrites certificate chains, which is why the guides now tell them how to identify and discard it.
- **Evidence boundary:** verified host-side only — `gh release view` reports the new size and digest, and the uploaded bytes came from the same `unzip -p` extraction whose hash matches the guide. No device flashed this asset; nothing here shows it boots or what Play Integrity reports.

## 2026-10-31 — Keystore hooks removed; caller manifest reduced to four

- **Chosen:**
  1. Drop the `AndroidKeyStoreKeyPairGeneratorSpi` and `AndroidKeyStoreSpi` hooks from the patcher, the verifiers and every 2.0.6.1 guide. Current sources define the helpers they called as stubs — `CertificateChainIfNeeded` returns its input chain, `initGenerateSoftwareKeyPair`, `OnGetKeyEntry` and `generateKey` return `null`, `Remove` is empty — so a recipe that still inserts those calls assembles and verifies while every inserted call returns the stock value.
  2. Reduce the framework caller manifest to `ActivityThread`, `Instrumentation`, `ApplicationPackageManager` and `Settings$NameValueCache`. `FRAMEWORK_HOOKS` in `script/framework_hook_manifest.py` drives the planner, the smali patcher and the verifier, so the four-entry manifest propagates without further edits.
  3. Record that two different `classes.dex` artifacts circulate and are **not** interchangeable. A build of current source is 91,160 bytes, SHA-256 `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`, 44 classes. The published v2.0.6.1 asset is 858,636 bytes, SHA-256 `94848e186f697e43f0274c545a1350eb2a84b517d3cf1d7e6f50c7b6aec7709d`, 598 classes, and predates commit `71185bc`. Its `CertificateChainIfNeeded` forwards into a helper that matches `"TrickyStoreTeeCheck"` and `"trickystore_attestation_key"`, so it still rewrites certificate chains. Both guides now say so.
  4. Delete §6 (Native PIF libraries) and §7 (init RC) from the manual guides and the equivalent completion steps from the automatic guides. The files under `bin/lib/`, `bin/resetprop/` and `bin/init/` stay in the repository; they are simply no longer presented as part of the patch procedure.
  5. Note that `kaorios-patcher-2.0.6.1.zip` (SHA-256 `3e0e761a…`) is no longer published — release v2.0.6.1 carries only `classes.dex` and `kaoriostoolbox-release_sign.apk`. Guides now point at `python3 -I script/package_patcher_v2061.py` instead of a download link.
- **Considered:**
  - Keeping §2.4/§2.5 with a "these are stubs" warning: rejected. A recipe that produces working-looking smali while every call is inert teaches the wrong thing; the honest form is to remove the recipe and say why.
  - Republishing a fresh DEX as the 2.0.6.1 asset: not done here. Publishing is a separate, outward-facing step and needs an explicit go-ahead.
  - Deleting `bin/lib/`, `bin/resetprop/` and `bin/init/`: rejected — the guide text was wrong, not the files.
- **Supersedes:** the `CertificateChainIfNeeded` ABI entry of 2026-10-25 (no certificate callee requirement remains) and the six-caller manifest entry of 2026-10-25. The 2026-10-30 Native PIF decision still stands for the files; only its guide text is gone.
- **Evidence boundary:** this records host/synthetic-artifact checks and a source-to-DEX reading of both artifacts. It does not establish that any ROM boots, that either DEX is safe to flash, or what Play Integrity reports on a device.
## 2026-10-30 — Native PIF Libraries and Early-Boot Init Configuration

- **Chosen:**
  1. Add native PIF libraries (`libkaoripif.so`, `libkaoriospif.so`, `libshadowhook_kaorios.so`) for both `arm64-v8a` and `armeabi-v7a` architectures under `bin/lib/`. These provide libc hooks on `__system_property_read_callback` directly in target processes (e.g. `com.google.android.gms.unstable`) without classloader leaks.
  2. Add init configuration `init.kaorios.rc` and deployment scripts under `bin/init/` to spoof critical boot properties (`ro.boot.vbmeta.device_state locked`, `ro.boot.verifiedbootstate green`, `ro.boot.flash.locked 1`, `ro.secure 1`, `ro.debuggable 0`, etc.) at `post-fs-data` via `kaorihelper`.
  3. Purge third-party/legacy branded library and LSPosed ROM references from public documentation and patch bundles. Focus exclusively on native PIF libraries, init RC scripts, and surgical framework/services patching.
- **Considered:**
  - Retaining third-party ROM runtime modules or legacy names: rejected to maintain strict brand isolation, codebase cleaniness, and eliminate external runtime dependencies.
  - Relying solely on framework Java hooks for property spoofing: rejected because native DroidGuard / Keystore callers query system properties directly through libc Bionic interfaces prior to Java framework initialization.

## 2026-10-25 — Payload ABI resolution and artifact toolchain enhancement

- **Chosen:**
  1. Record resolution of the CertificateChainIfNeeded ABI mismatch: the updated release payload `classes.dex` (`94848e186f697e43f0274c545a1350eb2a84b517d3cf1d7e6f50c7b6aec7709d`) provides both the three-argument `CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` and one-argument `CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;` overloads, satisfying both caller variants.
  2. Implement `run_baksmali()` and `run_smali()` classpath auto-resolution fallback in `patch-framework-a17-artifact.sh` (mirroring `patch-services-a17-artifact.sh`), allowing both fat standalone JARs and thin JARs with companion libraries (`smali-dexlib2.jar`, `smali-util.jar`, `antlr-runtime.jar`, `jcommander.jar`, `guava.jar`) to run seamlessly.
  3. Document toolchain parameterization: smali 3.0.8 does not map API 37 in `HeaderItem.getMagicForApi()`, triggering `IllegalArgumentException: dexVersion must be within [0, 999]` when assembling. Use `--api 37 --smali-api 34` for the supplied DEX 040 case; this does not establish universal DEX 041/container or CompactDex support.
- **Considered:**
  - Hardcoding `--api 29` inside the bash script: rejected to preserve explicit caller configuration and flexibility for future smali versions supporting API 37 natively.
  - Modifying DEX magic header bytes to disguise DEX 041/040 versions: rejected as an unsafe practice that risks silent runtime failure and bootloops.

## 2026-10-25 — Complete framework caller manifest and class ownership

- **Chosen:** Require `ActivityThread`, `Instrumentation`, `ApplicationPackageManager`, `Settings$NameValueCache`, `AndroidKeyStoreSpi` and `AndroidKeyStoreKeyPairGeneratorSpi` in the framework candidate manifest. A missing caller fails the candidate. Verify the saved candidate after re-extraction, replace only exact incoming payload descriptors, rebuild every modified owner DEX and retain unrelated definitions.
- **Policy boundary:** The NameValueCache entry guard reports `"0"` only for `adb_enabled`, `adb_wifi_enabled` and `development_settings_enabled` when the helper policy permits. It does not disable actual ADB.
- **Rejected:** Accepting a partial owner-tree success as complete framework coverage, or deleting old obfuscated classes by namespace/name similarity. Legacy cleanup is not automatic and requires a verified ownership inventory.
- **Evidence boundary:** The public regression suite passed 94 tests with assembly enabled. Host/synthetic-artifact checks do not establish real-device boot or Play Integrity outcomes.
