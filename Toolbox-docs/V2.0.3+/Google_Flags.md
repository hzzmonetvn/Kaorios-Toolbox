# Google Flags — patch status and verification

[Tiếng Việt](Google_Flags_VI.md) | [2.0.6.1 manual patch guide](Patch_Guide_2.0.6.1.md) | [2.0.6.1 patcher guide](Patcher_Guide_2.0.6.1.md)

**Status:** The published **2.0.6.1 payload predates Google Flags**. Neither importing that DEX nor running the 2.0.6.1 patcher adds Google Flags support. No newer Google Flags payload has been published for this patch workflow. The existing `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` hook is for system-feature queries associated with Unlock GMS Feature; it is **not** a Google Flags hook. Do not describe a successful framework/services patch as Google Flags working.

The A13–A17 paths labelled in the templates are references, **not evidence of a validated Google Flags callsite** on a target ROM. This guide deliberately gives no JAR → class → method insertion recipe: none is established for those versions. Do not paste a hook into a similarly named method, repurpose `hasSystemFeature`, or replace a stock class/DEX to make a template fit.

## Evidence required before a Google Flags ROM patch

1. Identify a published payload release that explicitly supports Google Flags and documents its callable contract. The [published 2.0.6.1 payload](https://github.com/hzzmonetvn/Kaorios-Toolbox/releases/tag/v2.0.6.1) does not. A build artifact or an imported DEX by itself is not evidence of an installed ROM caller; do not silently substitute an unpublished build for the released payload.
2. On an authorized copy of the **specific ROM build**, trace the stock flag query and its callers. Record the ROM build identity, owning JAR, DEX split, class, method descriptor, URI/projection and stock result registers, control flow and fallback. A template label or similarly named method is insufficient. If a unique compatible callsite cannot be demonstrated, **stop: there is no supported Google Flags patch to apply**.
3. Only after a compatible published payload and ROM-specific caller evidence are documented should a version-specific patch recipe and saved-archive verifier be written. Check register encoding, result/return paths and stock fallback, then rebuild and re-disassemble the **saved** archive. Test flag behavior separately on an authorized device with a recovery plan; a structural check alone is not a device result.

**Support matrix:** Android 13, 14, 15, 16 and 17 each remain **unsupported for Google Flags ROM interception** until that version's exact callsite and saved-artifact verifier are established. The current CI checks are source, host and compiled-DEX evidence, not a real-ROM artifact or real-device verification. The [2.0.6.1 manual](Patch_Guide_2.0.6.1.md) and [patcher](Patcher_Guide_2.0.6.1.md) guides still apply only to their documented hooks; neither adds a Phenotype insertion. Keep stock originals intact and do not publish, sign or flash an unverified Google Flags output on the strength of a template, CI build or host-only pass.
