Kaorios Toolbox patcher 2.0.6.1

From the extracted archive root or current public source checkout, run:
python3 -I script/kaorios_patcher.py <decompiled-smali-tree> --android-version 17 --mode 1 --no-delay --payload-smali /path/to/disassembled-payload

Select Android 13, 14, 15, 16 or 17 to match the ROM. Mode 1 targets seven supported framework/services smali classes; modes 2/3 are Android 17 Build-field options. Recognized valid hook content is verified and unchanged (the file may still be rewritten with --update); --update repairs recognized supported blocks, not unknown/partial layouts. Directory runs preflight all selected targets before writing originals; duplicate targets and symlink inputs reject. Filesystem write failures can still leave partial edits: discard working copies on failure.

Use authorized copies of framework.jar and services.jar, keep originals/hashes and a recovery plan. Inventory all classes*.dex and discover each class owner; never assume classes6.dex is payload. Keep SettingsProvider.apk stock. If an older patch calls removed KaoriosHook settings methods, restore SettingsProvider.apk from the exact matching stock ROM first.

PAYLOAD COMPATIBILITY: The updated public v2.0.6.1 classes.dex (SHA-256 94848e186f697e43f0274c545a1350eb2a84b517d3cf1d7e6f50c7b6aec7709d) exposes both the three-argument CertificateChainIfNeeded(Object, String, Certificate[]) and the one-argument CertificateChainIfNeeded(Certificate[]) overloads, satisfying both caller variants. If an older asset (such as SHA-256 ca9489f388e8717463c1f33a56c298a4b6bd5785b82d11f20da1deb65c799c9a) is used, it exposes only the one-argument overload; patcher validation fails when targeting the three-argument caller and that combination must not be flashed. Always verify generated callee descriptors against the actual payload.

Disassemble the actual payload into a separate empty tree with a compatible toolchain. Add --payload-smali /path/to/payload-disassembled-root to each patcher invocation for exact facade ABI validation before writes. Without it, smali patching is caller-only. Also check the saved-output disassembled trees before accepting them:
python3 -I script/verify-payload-abi.py <saved-output-smali-root> --payload-smali <payload-disassembled-root>
Run this for both framework and services output trees. Missing callee descriptors are hard failures; this check does not prove implementation correctness or runtime behavior.

The smali patcher does not import payload. Import every payload class into framework.jar class-wise across all existing owners: replace only exact incoming descriptors, preserve unrelated OEM classes even in the same namespace, and add new classes to a suitable split. Never delete a namespace or overwrite a mixed ROM DEX with payload classes.dex. Preserve untouched DEX and non-DEX entries. Rebuild and re-disassemble DEX extracted from the saved output JARs; a host pass does not prove boot or device behavior.

Choose an API and DEX format actually supported by the installed smali toolchain. Android version alone does not determine DEX version. DEX 041/container needs explicit tool support; stop on unsupported input and never rewrite DEX magic/header bytes. This is not a universal DEX 041 bootloop claim.

The pinned release archive may predate current source changes. Build a reproducible local archive from a reviewed public checkout with:
python3 -I script/package_patcher_v2061.py /path/to/new-patcher.zip
The output must not exist. This does not publish or replace a remote release.

Manual and automatic guides are separate English/Vietnamese files under Toolbox-docs/2.0.6+ in the public repository. Artifact scripts have narrower coverage than the main smali patcher; see the automatic guide and each script's --help. Kaorios Helper is a separate Zygisk module: https://github.com/hzzmonetvn/KaoriosHelper
