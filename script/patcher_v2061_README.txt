Kaorios Toolbox patcher 2.0.6.1

Extract this archive and run:
python3 -I script/kaorios_patcher.py <decompiled-smali-tree> --android-version 17 --mode 1 --no-delay

Patch supported framework.jar and services.jar smali copies only. Keep SettingsProvider.apk stock. A successful patch does not import payload or prove device behavior.

Manual and patcher guides are separate files under Toolbox-docs/V2.0.3+ in the public repository. Templates are references; always rebuild and re-disassemble the exact ROM.
