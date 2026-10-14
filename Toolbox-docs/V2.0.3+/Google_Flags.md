# Google Flags — patch status and verification

[Tiếng Việt](Google_Flags_VI.md) | [2.0.6.1 manual patch guide](Patch_Guide_2.0.6.1.md) | [2.0.6.1 patcher guide](Patcher_Guide_2.0.6.1.md)

**Status:** The published **2.0.6.1 payload predates Google Flags**. Neither importing that DEX nor running the 2.0.6.1 patcher adds Google Flags support. The existing `ApplicationPackageManager.hasSystemFeature(Ljava/lang/String;I)Z` hook is for system-feature queries associated with Unlock GMS Feature; it is **not** a Google Flags hook. Do not describe a successful 2.0.6.1 framework/services patch as Google Flags working.

The A13–A17 paths labelled in the templates are references, **not evidence of a validated Google Flags callsite** on a target ROM. This guide deliberately gives no JAR → class → method insertion recipe: none is established for those versions. Do not paste a hook into a similarly named method, repurpose `hasSystemFeature`, or replace a stock class/DEX to make a template fit.

## Before attempting a future integration

1. Identify a **published payload release** that explicitly provides the Google Flags behavior and its exact callable descriptor. Do not assume the 2.0.6.1 DEX or manager APK contains it.
2. On an authorized copy of the **specific ROM build**, trace the actual flag lookup and its callers. Record the owning JAR, DEX split, class, method signature, value type, control flow and stock fallback. A template label or a matching name alone is insufficient. If a unique, compatible callsite cannot be demonstrated, **stop**; there is no supported patch to apply.
3. Only with a documented, compatible payload/caller pair and ROM-specific evidence should a patch recipe be written. Check register encoding, return paths and fallback behavior, then rebuild and re-disassemble the **saved** archive. A structural check does not establish flag behavior; verify that separately on an authorized test device with a recovery plan.

Until those prerequisites are met and a release-specific guide is published, follow the 2.0.6.1 guides only for the hooks they actually cover. Keep stock originals intact and do not publish, sign or flash an unverified output on the strength of a template or a host-only pass.
