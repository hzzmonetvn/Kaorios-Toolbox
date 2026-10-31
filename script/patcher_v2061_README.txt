Kaorios Toolbox patcher 2.0.6.1

From the extracted archive root or current public source checkout, run:
python3 -I script/kaorios_patcher.py <decompiled-smali-tree> --android-version 17 --mode 1 --no-delay --payload-smali /path/to/disassembled-payload

Select Android 13, 14, 15, 16 or 17 to match the ROM. Mode 1 targets five supported framework/services smali classes (ActivityThread, ComputerEngine, SystemServer, Instrumentation, Settings$NameValueCache); modes 2/3 are Android 17 Build-field options. Recognized valid hook content is verified and unchanged (the file may still be rewritten with --update); --update repairs recognized supported blocks, not unknown/partial layouts. Directory runs preflight all selected targets before writing originals; duplicate targets and symlink inputs reject. Filesystem write failures can still leave partial edits: discard working copies on failure.

Use authorized copies of framework.jar and services.jar, keep originals/hashes and a recovery plan. Inventory all classes*.dex and discover each class owner; never assume classes6.dex is payload. Keep SettingsProvider.apk stock. If an older patch calls removed KaoriosHook settings methods, restore SettingsProvider.apk from the exact matching stock ROM first.

PAYLOAD COMPATIBILITY: Keystore hooks were removed on 2026-10-31. The patcher no longer targets AndroidKeyStoreKeyPairGeneratorSpi or AndroidKeyStoreSpi, and KaoriosHook.CertificateChainIfNeeded in current sources is a stub returning its input chain, so there is no certificate-callee ABI to satisfy. The published v2.0.6.1 asset and a build of the current source are the same artifact: classes.dex, 91160 bytes, SHA-256 f95ab89e1ac51cb37d98046a32f5ccd36021e1898db2d335924b9cd15520546f, leaving both Keystore classes stock. The release asset was replaced with this build on 2026-10-31; an earlier asset with SHA-256 94848e186f697e43f0274c545a1350eb2a84b517d3cf1d7e6f50c7b6aec7709d (858636 bytes) predates the removal and did rewrite certificate chains - discard it and re-download. Verify the hash and the callee descriptors of whichever payload you actually import.

Disassemble the actual payload into a separate empty tree with a compatible toolchain. Add --payload-smali /path/to/payload-disassembled-root to each patcher invocation for exact facade ABI validation before writes. Without it, smali patching is caller-only. Also check the saved-output disassembled trees before accepting them:
python3 -I script/verify-payload-abi.py <saved-output-smali-root> --payload-smali <payload-disassembled-root>
Run this for both framework and services output trees. Missing callee descriptors are hard failures; this check does not prove implementation correctness or runtime behavior.

The smali patcher does not import payload. Import every payload class into framework.jar class-wise across all existing owners: replace only exact incoming descriptors, preserve unrelated OEM classes even in the same namespace, and add new classes to a suitable split. Never delete a namespace or overwrite a mixed ROM DEX with payload classes.dex. Preserve untouched DEX and non-DEX entries. Rebuild and re-disassemble DEX extracted from the saved output JARs; a host pass does not prove boot or device behavior.

Choose an API and DEX format actually supported by the installed smali toolchain. Android version alone does not determine DEX version. DEX 041/container needs explicit tool support; stop on unsupported input and never rewrite DEX magic/header bytes. This is not a universal DEX 041 bootloop claim.

This file ships inside kaorios-patcher-2.0.6.1.zip on release v2.0.6.1. The archive's SHA-256 is published with the release, not here (a file cannot contain the hash of the archive that contains it). To reproduce the archive from a reviewed public checkout:
python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip
The output must not exist. Record the SHA-256 of the archive you actually use and of every script inside it; a checksum of another build does not describe yours.

Manual and automatic guides are separate English/Vietnamese files under Toolbox-docs/2.0.6+ in the public repository. Artifact scripts have narrower coverage than the main smali patcher; see the automatic guide and each script's --help. Kaorios Helper is a separate Zygisk module: https://github.com/hzzmonetvn/KaoriosHelper
