# Android 17 (SDK 37) — Beginner Notes for Kaorios 2.0.6.0

**English** | [Tiếng Việt](notes-a17_VI.md)

This page contains only the extra steps needed when the target ROM is **Android 17 / SDK 37 (Baklava)**.

> [!IMPORTANT]
> Start from the **clean stock Android 17 `framework.jar` from the target ROM**.
>
> If the framework was already patched by Kaorios, another framework mod, or an older manual patch, this page does not try to merge or repair those changes. Restore a clean copy first, or handle the merge yourself.

The normal 2.0.6.0 integration is documented in [`Patch_Guide_2.0.6.0.md`](Patch_Guide_2.0.6.0.md).

---

## 1. Why Android 17 needs an extra patch

Kaorios changes selected `android.os.Build` values at runtime for features such as property spoofing, PIF profiles, Google Photos profiles, and GameProps.

On Android 17, the selected fields cannot be reliably changed while they remain declared `static final`. For that reason, the stock ROM's `Build.smali` and `Build$VERSION.smali` need a small access-flag change: remove only the `final` flag from the fields Kaorios may modify.

You are **not replacing the `Build` classes** and you are **not copying the template class into your ROM**. You are editing the two stock classes from your own ROM.

---

## 2. Use smali / baksmali 3.x

Android 17 framework DEX files can contain newer Hidden API restriction flags that older baksmali builds do not understand.

Do not use baksmali 2.5.2 for this job. A typical failure is:

```text
java.lang.ArrayIndexOutOfBoundsException: Index 6 out of bounds for length 6
```

at:

```text
org.jf.dexlib2.HiddenApiRestriction.getAllFlags
```

Use **smali/baksmali 3.0 or newer** with API 37.

Example:

```bash
java -jar baksmali-3.0.8.jar d classes3.dex --api 37 -o fw3
java -jar smali-3.0.8.jar a -a 37 fw3 -o classes3.dex
```

`classes3.dex` is only an example. First find which stock DEX actually contains `Build` on your ROM.

---

## 3. Find the stock DEX containing `Build`

Inside the clean `framework.jar`, locate these classes:

```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

On some HyperOS Android 17 builds they are in `classes3.dex`, but that is **not guaranteed**.

A safe workflow is:

1. Extract all `classes*.dex` from the clean `framework.jar`.
2. Search/list classes until you find `android/os/Build` and `android/os/Build$VERSION`.
3. Disassemble that DEX with baksmali 3.x and `--api 37`.
4. Edit only those two stock smali files.

Do not edit the Kaorios `classesN.dex` you added during the main integration. The `Build` classes belong to the stock framework DEX.

---

## 4. Remove `final` from the selected fields

### `Build.smali`

Remove `final` from this minimum set:

```text
BRAND
DEVICE
FINGERPRINT
HARDWARE
ID
MANUFACTURER
MODEL
PRODUCT
TAGS
TIME
TYPE
USER
```

### `Build$VERSION.smali`

Remove `final` from:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

### Optional profile fields

If your custom PIF / GameProps profiles actually modify additional Build fields, remove `final` from those specific fields as well, for example:

```text
DISPLAY
HOST
INCREMENTAL
SDK
*_FOR_ATTESTATION
```

> [!WARNING]
> Keep `SDK_INT` unchanged. Do **not** remove `final` from `SDK_INT` as part of this patch.

Do not mass-remove `final` from every field in `Build` just because it is easier. Patch only the fields Kaorios needs.

---

## 5. What the smali edit looks like

Example for `BRAND`:

### Before — stock

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

### After — patched

```smali
.field public static whitelist BRAND:Ljava/lang/String;
```

Only the `final` access flag is removed.

Some tools can serialize a non-final static reference field with an explicit initializer such as `= null`. That is valid and is not, by itself, an error.

Repeat the same access-flag change for the selected fields listed above.

---

## 6. Rebuild the same stock DEX

After editing `Build.smali` and `Build$VERSION.smali`, assemble the directory back into the **same DEX slot** it came from.

Example:

```bash
java -jar smali-3.0.8.jar a -a 37 fw3 -o classes3.dex
```

Then replace only that DEX entry in your working copy of `framework.jar`.

Do not rename the rebuilt stock `classes3.dex` to a new DEX number. The extra Kaorios DEX and the edited stock DEX are two separate things:

```text
stock classes3.dex  -> contains patched Build / Build$VERSION
new classes7.dex    -> example Kaorios Framework DEX
```

The exact numbers depend on the ROM.

---

## 7. DEX header: `039` vs `040`

Android 17 ART supports both DEX `039` and `040`. Real Android 17 ROMs can still ship framework DEX files using `039`.

For this patch, the important rule is simple:

**Do not intentionally convert a stock DEX from one version to another just because the Android version is 17.**

Use a current smali/baksmali toolchain with API 37 and rebuild the stock DEX normally. The presence of a `039` header on Android 17 is not automatically a problem.

If you want to inspect a DEX header:

```bash
xxd -l 8 classes3.dex
```

Typical output identifies one of these magic values:

```text
dex\n039\0
dex\n040\0
```

---

## 8. Verify before flashing

Before replacing the ROM file, check that the rebuilt DEX can be read again:

```bash
java -jar baksmali-3.0.8.jar list classes classes3.dex >/dev/null
```

Then disassemble it again if needed and confirm:

- the selected fields no longer contain `final`;
- `SDK_INT` still has its original flags;
- both `Build` classes are still present;
- you rebuilt the original stock DEX slot rather than overwriting the added Kaorios DEX.

A simple source-tree check after disassembly can be done with:

```bash
rg -n '^\.field .* final .* (BRAND|DEVICE|FINGERPRINT|HARDWARE|ID|MANUFACTURER|MODEL|PRODUCT|TAGS|TIME|TYPE|USER):' android/os/Build.smali
```

Any listed field still matched by that command still contains `final`.

---

## 9. Common Android 17 mistakes

| Mistake | Result / symptom | Fix |
|---|---|---|
| Using baksmali 2.5.2 | HiddenApiRestriction crash while disassembling | Use smali/baksmali 3.x with API 37 |
| Assuming `Build` is always in `classes3.dex` | You edit the wrong DEX or cannot find the class | Locate the class in the target ROM first |
| Editing the added Kaorios DEX | Nothing useful changes, or classes are confused | Edit the stock DEX containing `android.os.Build` |
| Removing `final` from every Build field | Unnecessary framework changes | Patch only the required profile fields |
| Removing `final` from `SDK_INT` | Unwanted behavior / harder debugging | Leave `SDK_INT` unchanged |
| Copying the whole template `Build.smali` into another ROM | OEM-specific differences are lost | Apply only the access-flag edits to your own stock class |
| Treating DEX `039` as invalid on Android 17 | Unnecessary conversion/rebuild work | `039` is valid; use the proper API 37 toolchain |
| Replacing the wrong `classesN.dex` in the JAR | Bootloop or missing classes | Put the rebuilt stock DEX back into its original slot |

---

## 10. Android 17 checklist

Before continuing with the main 2.0.6.0 patch guide:

- [ ] The source `framework.jar` was clean stock from the target ROM.
- [ ] smali/baksmali 3.x was used with API 37.
- [ ] The actual stock DEX containing `Build` was identified instead of assuming a DEX number.
- [ ] Only the selected `Build` / `Build$VERSION` fields had `final` removed.
- [ ] `SDK_INT` was left unchanged.
- [ ] The edited stock DEX was rebuilt back into the same `classesN.dex` slot.
- [ ] The rebuilt DEX can be parsed by baksmali again.

After this is complete, return to [`Patch_Guide_2.0.6.0.md`](Patch_Guide_2.0.6.0.md) and continue the normal Kaorios integration.

Reference only: [`Template/Template_V2060/Build.smali`](../Template/Template_V2060/Build.smali) and [`Template/Template_V2060/Build$VERSION.smali`](../Template/Template_V2060/Build$VERSION.smali).