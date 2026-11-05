# Decisions

## 2026-11-05 — Separate historical payload identifiers from current availability

- **Chosen:** Remove unavailable v2.0.6.1 asset download links and source-equivalence claims from the EN/VI guides and patcher README. Retain old hashes as historical identifiers only. The release API currently reports no attached assets. Build the patcher from a reviewed public checkout and checksum the actual archive; no old release is modified.
- **Considered:** Restore old downloads or advertise the pending RC as available: rejected because neither follows from the observed release inventory. Deleting historical decisions: rejected; qualify their evidence instead.
- **Verification:** All 83 public regression tests passed with zero skips on 2026-11-05, including real-smali assembly checks with the external classpath. This is host/synthetic-artifact evidence, not real-ROM/device validation. Final manager signing, complete RC assembly and draft upload remain separate gates.

## 2026-11-04 — Private-source CI artifact packaging gates

- **Chosen:** Make the manual Toolbox build fail when signing credentials are absent or `apksigner verify` fails; keep unsigned development builds outside this artifact workflow. Remove stale `dist/` before preparing artifacts, write checksums from within `dist/` so paths are valid from that directory, recursively enumerate all artifact files for upload, require every upload to succeed, validate the upload API response before publishing its link, and reject Markdown link characters in the response URL. Add focused workflow regression tests and include `build-toolbox.yml` in the tool-check workflow path filters.
- **Considered:** Keep unsigned APK uploads as a fallback: rejected because the workflow's signed release artifact is ambiguous and consumers cannot treat an unsigned APK as release-ready. Retain top-level-only upload enumeration or partial-upload success: rejected because it omits the nested native library and can report incomplete delivery as successful.
- **Evidence boundary:** Focused tests exercise checksum paths, nested enumeration, partial failure, signature gates, and clean output staging; public suite host tests do not build Android APKs or call tmpfiles.org. No release asset or draft was modified.

## 2026-11-04 — Public package and guide review

- **Historical record:** Keep the release ZIP inventory and checksum unchanged; the GitHub release API confirmed at that time an attached archive of 209,618 bytes with SHA-256 `f77d0ea52e69ff72ff832b88fa060eb8908ac50fd288f52ed3ab942bb0ef68e6`. This is not evidence of current availability. The entry also recorded adding the then-verified size to the EN/VI patch guides. Correct the root README to describe only the `framework.jar` and `services.jar` manual workflow; native libraries and init scripts remain separate assets, not components of that patch. Remove the unsupported Google Play Integrity outcome promise from the native-library README and state the evidence limit.
- **Considered:** Adding release asset hashes for the current app/framework build: rejected because the final artifacts were not ready and the published assets must not be replaced. Deleting unused-looking `bin/` assets: rejected because the task established guide overclaims, not that these assets were dead.
- **Evidence boundary:** Release asset metadata was confirmed via GitHub API on 2026-11-04; it is not evidence of current availability. Claims about ROM/device outcomes remain unverified. No release or draft was published.

## 2026-11-03 — Historical v2.0.6.1 pre-release and artifact record

- **Historical record (2026-11-03):**
  1. The entry records that `v2.0.6.1` assets were overwritten with build artifacts attributed to GitHub Actions remote CI (run 41648224328) at that time:
     - `classes.dex`: 171,100 bytes, SHA-256 `953a25a2f7569eb11b107bda591bcbd0ad0d30e0c6d33def51799478ea1e93a9`.
     - `KaoriosToolbox-release.apk` / `kaoriostoolbox-release_sign.apk`: 11,568,515 bytes, SHA-256 `d5b918a8b136668498fbbb409da99379b7432e9fe189fad522f5bfb0e5844412`.
     - `kaorios-patcher-2.0.6.1.zip`: 209,618 bytes, SHA-256 `f77d0ea52e69ff72ff832b88fa060eb8908ac50fd288f52ed3ab942bb0ef68e6`.
  2. Implement hardening updates in framework DEX:
     - `ThreadLocal<Boolean> sPropertyHookActive` recursion guard in `KaoriosHook.getSpoofedProperty` preventing stack overflow on re-entrant property lookups.
     - Longest-suffix wildcard property matching (`*.security_patch` deterministically takes precedence over `*.patch`).
     - Reflective capping of `Build.VERSION.DEVICE_INITIAL_SDK_INT` to $\le 32$ for `com.google.android.gms.unstable` (DroidGuard), avoiding mandatory Android 13+ RKP hardware Keybox enforcement and allowing clean basic attestation fallback.
     - Suppress `BlockedPrivateApi` on reflective SDK capping with `@SuppressLint("BlockedPrivateApi")` and bypass `lintVitalRelease` in CI.
  3. Update documentation and patch guides across `Toolbox-docs/2.0.6+/` and `script/patcher_v2061_README.txt` with the updated payload metrics, patcher zip hash, and dual-layer attestation interception notes.
- **Considered:**
  - Building `classes.dex` locally on the VPS: rejected — local Gradle daemon and dex compilation would exhaust memory and crash hosted user services; all compilation is strictly offloaded to GitHub Actions CI runners.
  - Creating a separate release tag: rejected — `v2.0.6.1` is the designated pre-release for the 2.0.6.x stabilization cycle.
  - Modifying the ROM smali patcher to target Keystore classes directly: rejected — the payload handles KeyStore interception cleanly via `CustomProvider` and `CustomKeyStoreSpi` registration at runtime, keeping the ROM smali stock.
- **Historical consequence:** The entry recorded that pre-release assets, documentation, and patcher ZIP checksums were aligned then; it does not establish present availability or source equivalence.
- **Historical evidence boundary:** The entry recorded host-side checks attributed to GitHub Actions remote build run 41648224328, public ABI test suite (`python3 -I script/test_payload_abi.py` - 5/5 passed), and public test suite (76 tests passed, 2 skipped). No current 83-test zero-skip result is asserted here.

## 2026-10-31 — CI references to the deleted Helper removed

- **Chosen:**
  1. Remove the three `Kaorios-Helper/**` path filters and the `Verify Helper packaging and lifecycle` step from `.github/workflows/check-tools.yml`, and rename the workflow to `Check patch tools`. The step ran `python3 -m unittest discover -s Kaorios-Helper/tests`, and that directory was deleted in `32655d9`; every push to `main` that touched `script/**` failed at that step with `Start directory is not importable`.
  2. Delete `.github/workflows/build-helper.yml`. Its only trigger was `paths: Kaorios-Helper/**`, a filter that can never match a directory absent from the tree, and it carried 23 further references to the removed module.
  3. Correct the skip count in both patcher guides: two tests need an external `KAORIOS_SMALI_CLASSPATH`, not three. The gate is `@unittest.skipUnless` on lines 108 and 397 of `script/test_patcher_register_encoding.py`, both in the same file.
- **Considered:**
  - Restoring `Kaorios-Helper/` so the step and workflow work again: rejected — the module was removed deliberately, and its Zygisk implementation lives in the separate `KaoriosHelper` repository the guides already link.
  - Marking the Helper step `continue-on-error: true` or `if: always()`: rejected — it would keep a permanently-red or permanently-skipped step in the run, which reads as coverage that does not exist.
  - Keeping `build-helper.yml` with only its triggers removed: rejected — a workflow that can never fire is dead config that still has to be read and reasoned about.
- **Consequences:** `check-tools.yml` now has five steps and no path filter that can never match. The public CI no longer produces any Helper artifact; it already produced none, because the workflow never ran after `32655d9`.
- **Evidence boundary:** the failure was reproduced from `gh run view --json jobs` on runs at 08:19 and 09:50, both predating the commits in this change: every other step passed and only the Helper step failed. The local suite reports `Ran 76 tests … OK (skipped=2)` with `KAORIOS_SMALI_CLASSPATH` unset. No conclusion here about whether the green run after this commit covers a real ROM or device.

## 2026-10-31 (later) — Historical v2.0.6.1 `classes.dex` asset replacement record

- **Historical record (2026-10-31):**
  1. This entry records an upload of a `classes.dex` artifact to release `v2.0.6.1` — 91,160 bytes, SHA-256 `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`, 44 classes — using `gh release upload --clobber`. The asset id changed (`RA_kwDOQWV3bM4pcl3n`), so it was a new upload, not an in-place byte swap.
  2. Rewrite the release body. It previously advertised the Enhanced PIF Spoofing Engine, DroidGuard chain blocking, keybox attestation and TEE warm-up — all purged by `71185bc` — and listed a third SHA-256 (`ca9489f3…`) matching neither artifact. It now describes the stock-Keystore payload, carries the correct hash, records that the patcher ZIP is no longer attached, and keeps the `SettingsProvider.apk` bootloop warning.
  3. The historical change replaced the "two DEX artifacts, not interchangeable" wording in all four guides and `script/patcher_v2061_README.txt`, asserting then that an asset and source build were the same and retaining `94848e18…` as an older snapshot identifier. This record does not establish current availability or source equivalence.
- **Considered:**
  - Publishing under a new tag (`v2.0.6.2`): rejected — the guides, the app's version checks and the release URL all point at 2.0.6.1; a new tag would strand them for no artifact benefit.
  - Leaving the guides' "two artifacts" section in place: rejected — it would assert something false about a file users download from the link in the same paragraph.
  - Deleting the old asset instead of overwriting: rejected — macOS/GitHub keeps no per-asset history either way, and an empty release for the duration of the re-upload is worse.
- **Historical consequence:** this entry recorded that download counts reset to 0 and that 161 earlier downloads received an 858,636-byte build reported to rewrite certificate chains.
- **Historical evidence boundary:** this entry recorded a `gh release view` size/digest and an uploaded-byte hash comparison. It does not establish current release contents or availability. No device flashed this asset; nothing here shows it boots or what Play Integrity reports.

## 2026-10-31 — Source record: Keystore hooks removed; caller manifest reduced to four

- **Chosen:**
  1. Drop the `AndroidKeyStoreKeyPairGeneratorSpi` and `AndroidKeyStoreSpi` hooks from the patcher, the verifiers and every 2.0.6.1 guide. Current sources define the helpers they called as stubs — `CertificateChainIfNeeded` returns its input chain, `initGenerateSoftwareKeyPair`, `OnGetKeyEntry` and `generateKey` return `null`, `Remove` is empty — so a recipe that still inserts those calls assembles and verifies while every inserted call returns the stock value.
  2. Reduce the framework caller manifest to `ActivityThread`, `Instrumentation`, `ApplicationPackageManager` and `Settings$NameValueCache`. `FRAMEWORK_HOOKS` in `script/framework_hook_manifest.py` drives the planner, the smali patcher and the verifier, so the four-entry manifest propagates without further edits.
  3. Record that two different `classes.dex` artifacts circulate and are **not** interchangeable. A build of current source is 91,160 bytes, SHA-256 `f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f`, 44 classes. The published v2.0.6.1 asset is 858,636 bytes, SHA-256 `94848e186f697e43f0274c545a1350eb2a84b517d3cf1d7e6f50c7b6aec7709d`, 598 classes, and predates commit `71185bc`. Its `CertificateChainIfNeeded` forwards into a helper that matches `"TrickyStoreTeeCheck"` and `"trickystore_attestation_key"`, so it still rewrites certificate chains. Both guides now say so.
  4. Delete §6 (Native PIF libraries) and §7 (init RC) from the manual guides and the equivalent completion steps from the automatic guides. The files under `bin/lib/`, `bin/resetprop/` and `bin/init/` stay in the repository; they are simply no longer presented as part of the patch procedure.
  5. The historical guide state recorded that `kaorios-patcher-2.0.6.1.zip` (SHA-256 `3e0e761a…`) was no longer published and that release v2.0.6.1 then carried `classes.dex` and `kaoriostoolbox-release_sign.apk`. This does not establish current release contents.
- **Considered:**
  - Keeping §2.4/§2.5 with a "these are stubs" warning: rejected. A recipe that produces working-looking smali while every call is inert teaches the wrong thing; the honest form is to remove the recipe and say why.
  - Republishing a fresh DEX as the 2.0.6.1 asset: not done here. Publishing is a separate, outward-facing step and needs an explicit go-ahead.
  - Deleting `bin/lib/`, `bin/resetprop/` and `bin/init/`: rejected — the guide text was wrong, not the files.
- **Supersedes:** the `CertificateChainIfNeeded` ABI entry of 2026-10-25 (no certificate callee requirement remains) and the six-caller manifest entry of 2026-10-25. The 2026-10-30 Native PIF decision still stands for the files; only its guide text is gone.
- **Historical evidence boundary:** the original entry recorded host/synthetic-artifact checks and source-to-DEX readings of two artifacts. This retained history does not establish current release contents, availability, or source equivalence, nor that any ROM boots or that a DEX is safe to flash.
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
