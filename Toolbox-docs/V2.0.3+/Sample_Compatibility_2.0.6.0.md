# Included sample validation / Kiểm chứng sample đi kèm

Evidence date: 2026-09-30. These observations concern only the five archives in `tmp/fw`, not every ROM with the same Android version. All DEX entries were extracted, input hashes checked, and relevant classes freshly disassembled with smali/baksmali 3.0.8. Patched `ComputerEngine` and `SettingsProvider` classes were assembled, disassembled again and structurally verified for all five samples. This is **VERIFIED_SAMPLE_LAYOUT / VERIFIED_LAYOUT**, not a flashed, signed or device-verified ROM artifact.

## Settings and installer matrix

| Included sample | Settings legacy String snippet | Settings call/query | Advanced probe path | Installer legacy API | InstallSourceInfo installing field |
|---|---|---|---|---|---|
| MIUI14 A13 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS1 A14 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS2 A15 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS3 A16 | UNSUPPORTED_LAYOUT | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |
| HyperOS4 A17 | NOT_APPLICABLE | VERIFIED_LAYOUT | Modern provider policy; NEEDS_DEVICE_TEST | VERIFIED_LAYOUT | VERIFIED_LAYOUT |

The older generic `shouldRemoveSetting` → `filterSettingValue` snippet cannot be inserted directly into the inspected `getGlobalSetting`/`getSecureSetting`/`getSystemSetting` methods: they return `SettingsState$Setting`, not a String, and Bundle packaging does not provide a universal namespace/name contract. No automated legacy String strategy is advertised. For the current Kaorios DEX, the verified call/query strategy also matches the included A13–A16 layouts. It requires the current `AdvancedPolicyService` bootstrap and existing Binder/SELinux integration; an older framework DEX without these entry points is not interchangeable. Do not add both architectures to A17.

Các method GET cũ trong sample trả `SettingsState$Setting`, nên không chèn trực tiếp snippet trả String. Với DEX Kaorios hiện tại, dùng đường call/query đã kiểm chứng cùng bootstrap/service và SELinux tương ứng. Không suy hỗ trợ mọi ROM A13–A17 từ bảng này.

| Sample | call anchor | query stock registers / object returns | Original identity in call/query |
|---|---|---|---|
| A13 | getRequestingUserId(Bundle) | .registers 10 / 7 | No clearCallingIdentity in either method |
| A14 | getRequestingUserId(Bundle) | .registers 10 / 7 | No clearCallingIdentity in either method |
| A15 | getRequestingUserId(Bundle) | .registers 11 / 7 | No clearCallingIdentity in either method |
| A16 | getRequestingUserId(Bundle) | .registers 10 / 7 | No clearCallingIdentity in either method |
| A17 | getDeviceId() preferred; both anchors present | .registers 11 / 8 | No clearCallingIdentity in either method |

The call hook runs after its anchor and before stock GET dispatch. Query filtering covers every object return. A runtime nonce response still requires the provider to reach the registered service with the original caller identity; host/sample tests cannot establish Binder behavior or SELinux access on a device.

## Actual installer hook sites

All inspected sites are in `Lcom/android/server/pm/ComputerEngine;`. The two public read methods share a private stock `getInstallSource` lookup but have different visibility filtering/return construction. Patching the private lookup would risk changing internal users of install provenance; the patcher instead filters the two public results.

| Sample | Legacy descriptor / stock installer | Modern descriptor / constructor installing argument | Stock UID source | Target / user source | Object return counts legacy / modern |
|---|---|---|---|---|---|
| A13 | getInstallerPackageName(String)String / v2 | getInstallSourceInfo(String)InstallSourceInfo / v11 | Binder.getCallingUid: legacy v0; modern v2 | p1; UserHandle.getUserId(caller UID) | 1 / 2 |
| A14 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v14 | Binder.getCallingUid: legacy v0; modern v9 | p1; p2 (modern saved as v8) | 1 / 2 |
| A15 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v14 | Binder.getCallingUid: legacy v0; modern v9 | p1; p2 (modern saved as v8) | 1 / 2 |
| A16 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v9 | Binder.getCallingUid: legacy v0; modern v1 | p1; p2 (modern saved as v2) | 1 / 2 |
| A17 | getInstallerPackageName(String,int)String / v2 | getInstallSourceInfo(String,int)InstallSourceInfo / v8 | Binder.getCallingUid: legacy v0; modern v1 | p1; p2 (modern saved as v2) | 1 / 2 |

These are **stock** register observations, not registers to copy into another ROM. Descriptor notation above is abbreviated; the actual descriptors use `Ljava/lang/String;`, `I`, and `Landroid/content/pm/InstallSourceInfo;`. None of these public methods clears Binder identity. The patch captures UID/target/user at method entry, retains original physical stock registers, then filters the stock String return or just the installing constructor argument. The early null modern result remains stock. Unknown source/argument/control-flow layouts fail closed without saving the input.

The `ContentResolver` argument is null: the current hook evaluates the in-memory Advanced snapshot, with no resolver dereference. Runtime hook exceptions return the stock value. No stored `InstallSource`, package ownership, install sessions, permissions, initiating/originating package, update owner or package-source classification is changed.

## Truthful checker / Checker không báo xanh giả

```sh
python script/check-framework-samples.py
python script/check-framework-samples.py --sample-dir /path/to/decompiled-generations --strict --format json
```

Default input is repository `tmp/fw`, never an implicit machine-specific work directory. Raw archives print `RAW_ARCHIVE_NOT_DECOMPILED — diagnostic skipped`, exit 0 normally and exit nonzero with `--strict`. A missing dataset reports `SAMPLE_MISSING`; class absence in an inspected decompiled tree reports `NOT_FOUND`. `FOUND` means diagnostic source presence, `DIFFERENT_LAYOUT` means a requested structural fact is absent, and conflicting class copies report `UNSUPPORTED_ANALYSIS`. Strict mode requires usable smali in every requested generation; it is not a full verifier or a promise that every hook is compatible. CI runs synthetic tests plus honest raw-archive diagnostics; it does not decompile the sample archives.

Raw archive chưa decompile không được gọi là `NOT_FOUND`. Khi cần audit thật, truyền rõ cây smali đã decompile. `--strict` không biến checker thành bộ verifier ROM.

## Read-only device Settings check

With Advanced OFF, run from the Toolbox/app caller context, using Android Settings API rather than a shell UID. Generate a fresh 16-byte SecureRandom value encoded as 32 lowercase hex characters. Read `kaorios_advanced_probe_<nonce>` separately through `Settings.Global.getString`, `Settings.Secure.getString`, and `Settings.System.getString`. Require exact `kaorios-advanced-v1:<namespace>:<nonce>`; print only PASS/FAIL for each namespace. Do not write or persist the key. Repeat with a new nonce, missing hooks, and the policy service unavailable. Normal settings without rules must remain stock.

Legacy handshake requires both stages on the same provider thread and consumes the challenge once. The modern provider/service path uses the same protocol independent of the Advanced flag. The app reports per-namespace success and path UNKNOWN because the response cannot distinguish the two implementations. Enabling Advanced requires all three reads to pass; failure leaves the switch OFF and reports the missing namespaces. The Settings response does not prove installer hooks exist.

## Installer device checklist / Checklist trên thiết bị

From the **same configured caller**, compare both `PackageManager.getInstallerPackageName(target)` and `PackageManager.getInstallSourceInfo(target)?.getInstallingPackageName()`:

- Installed non-system target: Play Store (`com.android.vending`).
- System target: stock unless the system-source option is on; then null.
- Caller querying itself: stock if self exemption is on; otherwise normal policy.
- Unconfigured caller and manager app: stock.
- Unknown/uninstalled target: preserve stock null/exception behavior.
- Shared UID: any eligible package rule may activate filtering; a manager package in that UID exempts it. Confirm intended behavior with the actual package list.
- Disable the rule or Advanced: stock restored after the normal `kaorios_time` snapshot refresh. Check a successful refresh and partial-write warning behavior.
- Save/cancel a rule, toggle its parent off/on and reopen: children and unrelated rule fields must survive; cancel must not persist edits.

Record PASS/FAIL for each API/case, successful boot and absence of new PackageManager failures/AVCs. Real install provenance and permission decisions must remain unchanged. No new installer Binder service or SELinux rules are required.
