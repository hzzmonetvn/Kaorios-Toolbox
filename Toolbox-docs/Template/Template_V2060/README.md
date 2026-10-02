# Template_V2060

Patched reference smali is split by Android version so a sample from one ROM generation is not mistaken for another.

| Folder | Source archive set |
|---|---|
| `a13/` | MIUI 14 / Android 13 |
| `a14/` | HyperOS 1 / Android 14 |
| `a15/` | HyperOS 2 / Android 15 |
| `a16/` | HyperOS 3 / Android 16 |
| `a17/` | HyperOS 4 / Android 17 |

Each version contains:

- `framework/ActivityThread.smali`
- `framework/Instrumentation.smali`
- `framework/ApplicationPackageManager.smali`
- `framework/AndroidKeyStoreKeyPairGeneratorSpi.smali`
- `framework/AndroidKeyStoreSpi.smali`
- `framework/Build.smali`
- `framework/Build$VERSION.smali`
- `framework/Settings$NameValueCache.smali`
- `service/ComputerEngine.smali`
- `service/SystemServer.smali`
- `settingsprovider/SettingsProvider.smali`

The A13-A16 Build files are stock references; the Android 17 Build files are patched by mode 2.

Other files still stored directly under `framework/` and `service/` are optional CorePatch/FLAG_SECURE references and are not part of the automatic core patcher.

Never replace a target ROM class with a whole template class. Match the method/layout and use the patcher/verifier.
