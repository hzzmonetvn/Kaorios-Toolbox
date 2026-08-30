# Kaorios Toolbox Framework 3.0.0

**English** | [Tiếng Việt](Patch_Guide_3.0.0_VI.md)

> Keep stock JARs and make a backup first. Never replace a stock framework DEX
> or copy a complete template class from another ROM.

## Before patching

1. Use the `classes.dex` and Toolbox APK from release **3.0.0** only.
2. Back up `framework.jar` and `services.jar`.
3. Integrate the Kaorios framework payload with your normal ROM workflow, then
   add each hook to the matching stock method.
4. Patch and boot-test Core before enabling optional features.

Android 17 / API 37 also needs the [Build field patch](../V2.0.3+/notes-a17.md).

## 1. Core patch

Core 3.0.0 is unchanged from 2.0.6.0. Follow the four Core hooks in the
[2.0.6.0 guide](../V2.0.3+/Patch_Guide_2.0.6.0.md):

1. `Instrumentation.newApplication(...)` → `KaoriosHook.initContext(...)`
2. `ApplicationPackageManager.hasSystemFeature(...)` → `KaoriosHook.hasSystemFeature(...)`
3. `AndroidKeyStoreKeyPairGeneratorSpi.generateKeyPair()` → `KaoriosHook.initGenerateSoftwareKeyPair(...)`
4. `AndroidKeyStoreSpi.engineGetCertificateChain(...)` → `KaoriosHook.CertificateChainIfNeeded(...)`

In `services.jar`, add `KaoriosHook.initSystemServer()` once in
`SystemServer.run()` before the ROM starts other services. Use the descriptor
and registers of your ROM; template register numbers are examples only.

## 2. New in 3.0.0: per-app device identity

Toolbox creates reusable profiles and assigns them per app. An app may have a
partial override; an omitted field inherits its profile value.

| App-visible API result | Hook immediately before stock return |
|---|---|
| `Settings.Secure.ANDROID_ID` | `filterSettingValue(cr, "secure", "android_id", value)` |
| `Build.getSerial()` | `spoofHardwareSerial(value)` |
| Wi-Fi MAC / BSSID / SSID | `spoofWifiMac(value)` / `spoofWifiBssid(value)` / `spoofWifiSsid(value)` |
| Bluetooth address | `spoofBluetoothMac(value)` |
| `getImei(slot)` or `getDeviceId(slot)` | `spoofImei(slot, value)` |
| SIM serial / line-1 number | `spoofSimSerial(slot, value)` / `spoofMobileNumber(slot, value)` |
| SIM operator / name | `spoofSimOperator(slot, value)` / `spoofSimOperatorName(slot, value)` |
| subscription ID | `spoofSubscriptionId(slot, value)` |
| `MediaDrm.getPropertyByteArray("deviceUniqueId")` | `spoofMediaDrmDeviceId(name, value)` |

Example for a String result, immediately before the stock return:

```smali
invoke-static {vValue}, Landroid/security/kaorios/KaoriosHook;->spoofHardwareSerial(Ljava/lang/String;)Ljava/lang/String;
move-result-object vValue
return-object vValue
```

For slot APIs, resolve the real physical SIM slot first. Do not patch Telephony,
Wi-Fi, or DRM service implementations; patch only the public framework return
path seen by the app.

`replaceDeniedResult` replaces only empty/placeholder results. Do not catch or
replace Android's `SecurityException`. MediaDrm is limited to `deviceUniqueId`;
do not patch sessions, provisioning, keys, or security-level code.

## 3. Existing optional patches

Hide App, Hide Developer/ADB, Settings filtering, installer-source spoofing,
`FLAG_SECURE`, and DSV/CorePatch remain optional. Apply them after Core boots.
See the [2.0.6.0 guide](../V2.0.3+/Patch_Guide_2.0.6.0.md) and
[CorePatch guide](../V2.0.3+/CorePatch.md).

## 4. Verify before release

- Boot with the feature disabled and with no app assigned.
- Test one assigned app, one unassigned app, both SIM slots, and placeholders.
- Confirm permission-denied APIs still throw their original `SecurityException`.
- If the ROM bootloops, restore stock JARs and check descriptors, registers, and hook locations.
