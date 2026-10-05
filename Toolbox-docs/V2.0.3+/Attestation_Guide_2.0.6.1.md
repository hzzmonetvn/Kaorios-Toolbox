# Attestation targets and unlocked results

**English** | [Tiếng Việt](Attestation_Guide_2.0.6.1_VI.md)

Android 17 is **Cinnamon Bun / SDK 37**, as documented by [Android Developers](https://developer.android.com/reference/android/os/Build.VERSION_CODES_FULL#CINNAMON_BUN).

## Target added, but the app still reports unlocked

First identify the result being checked. Bootloader/AVB state, the `RootOfTrust` inside a key-attestation certificate, and a Play Integrity verdict are separate results. A target rule selects requests for an attestation implementation; it does not lock the bootloader or guarantee a Play Integrity verdict. In the certificate, inspect `deviceLocked` and `verifiedBootState` together. See the [AOSP attestation schema](https://source.android.com/docs/security/features/keystore/attestation).

Use the exact package name of the app making the request, not its display name. Targeting a checker does not also target Google Play services when Google Play services makes a separate request. Enable Tricky Store and apply a usable Keybox in Toolbox. An imported XML passing structural validation alone is insufficient; crypto validation must also establish a usable signing key and certificate chain.

The Toolbox target UI exposes these modes; the suffixes below also appear in [Evolution X's text-target parser](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/core/java/android/security/trickystore/TrickyStoreService.java):

| Mode | Text entry | What to test |
|---|---|---|
| Auto | `com.example.checker` | Selects leaf rewriting when TEE attestation works, or generation when it fails. Both ROM integration paths must be available. |
| Leaf | `com.example.checker?` | Rewrites an existing certificate chain on the chain-read path. The current manual guide also delegates single-certificate reads to the chain; older ROM patches may still return the original leaf. |
| Generate | `com.example.checker!` | Uses the generation path for a **new key**. Switching mode does not regenerate an existing alias. |
| Skip | `com.example.checker-` | Keeps that target on the stock path. |

After applying the rule, force-stop and reopen the checker. Use its regenerate/new-key action to request a fresh alias and challenge, then run the same test again. Reopening an app alone does not remove its persisted Keystore keys. Start with ordinary EC/TEE attestation and record RSA or StrongBox results separately; support for one request does not establish support for the others. Do not clear the system Keystore or change lock-screen credentials to troubleshoot this.

For a controlled comparison, record only: Android/ROM version, checker package, mode, fresh-key status, API used (`getCertificateChain` or `getCertificate`), algorithm, requested TEE/StrongBox, and the two RootOfTrust fields. Compare Leaf and Generate using a fresh key for each. If the checker cannot select or report the API, mark it unknown. Never share Keybox XML, keys, full certificates or raw attestation dumps.

### Android 17 source comparison

Source comparison on **2026-10-05** used AOSP `android17-release` at `94b4c163` and Evolution X `cnb` at `5f381df`. These are source observations, not verification of an installed ROM:

| Path | AOSP 17 | Evolution X cnb |
|---|---|---|
| `generateKeyPair()` | Calls the selected Keystore security level's `generateKey`. | Adds a target-controlled generation branch. |
| `engineGetCertificateChain()` | Builds the leaf-plus-CA array from key metadata. | Passes the completed array through its certificate-chain hook. |
| `engineGetCertificate()` | Reads one certificate from key metadata independently. | Also reads metadata directly; this method does not call the chain hook. |

Sources: [AOSP SPI](https://android.googlesource.com/platform/frameworks/base/+/94b4c163b7dfe5ce3607f7bb8456f9573f7de57d/keystore/java/android/security/keystore2/AndroidKeyStoreSpi.java), [AOSP generator](https://android.googlesource.com/platform/frameworks/base/+/94b4c163b7dfe5ce3607f7bb8456f9573f7de57d/keystore/java/android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.java), [Evolution X SPI](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/keystore/java/android/security/keystore2/AndroidKeyStoreSpi.java), [Evolution X generator](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/keystore/java/android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.java).

Evolution X's [leaf rewriter](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/core/java/android/security/trickystore/CertificateHacker.java) and [certificate generator](https://github.com/Evolution-X/frameworks_base/blob/5f381df28726f865acd0333cb436d17419ab6265/core/java/android/security/trickystore/CertificateGenerator.java) construct RootOfTrust with `deviceLocked=true` and `verifiedBootState=0` (Verified). Those values describe the presented certificate; they do not change physical bootloader state or prove hardware-backed trust.

If a newly generated certificate still contains `deviceLocked=false`, the target, active backend, generation/read hook, Keybox validity or stock fallback needs checking. If the certificate says locked/Verified but the app still labels the device unlocked, determine which additional signal it uses before changing the target configuration. The direct-read limitation above is a possible explanation, not a confirmed diagnosis without the app's request details.

For Toolbox ROM integration, verify both Keystore hook sites and the matching payload in the **installed** `framework.jar`, across all DEX splits. Updating the manager APK or seeing a successful Settings probe does not establish that these hooks are installed. Follow the [patch guide](Patch_Guide_2.0.6.1.md).

### Standalone OhMyKeymint is a separate configuration

A Toolbox target entry does not configure a separately installed OMK module. Upstream OMK uses `config.toml` and `injector.toml` under `/data/misc/keystore/omk/`; app routing uses `scoop`, safety filters and enabled intercepts such as `get_security_level` and `get_key_entry`. Do not copy Toolbox's `!`/`?` target suffixes into OMK's package list or disable safety filters. After a route change, restart the injector and reopen the affected app for a clean comparison. Use the [upstream configuration guide pinned at `9b671db`](https://github.com/qwq233/OhMyKeymint/blob/9b671dbbc833f3ad78cf2d374b4d31db89f50b67/docs/CONFIGURATION.md) and the instructions for your installed version.
