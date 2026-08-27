# Android 17 note — make selected `Build` fields writable

This patch is **required on Android 17+** and has been tested on HyperOS 4
Beta. Android 17 blocks Java writes to `static final` fields through both
`Field.set()` and `sun.misc.Unsafe.putObject()`. Kaorios therefore cannot spoof
the selected `Build` properties until the ROM removes their `final` access
flag.

## Location

Patch the DEX inside `framework.jar` that contains:

```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

On the tested HyperOS Android 17 build both classes are in `classes3.dex`, but
the DEX number can differ by ROM. Locate the classes instead of assuming a
fixed number.

## Fields to patch

Remove `final` only from these declarations:

```text
Build.smali        : FINGERPRINT  BRAND  DEVICE  MANUFACTURER  MODEL  PRODUCT
                     ID  TIME  TAGS  TYPE  HARDWARE  USER
Build$VERSION.smali: RELEASE  SECURITY_PATCH  DEVICE_INITIAL_SDK_INT
```

Keep the field name, type, visibility, and hidden-API modifier (`whitelist`,
`greylist`, etc.) unchanged.

## Expected Dex Comparator result

<p align="center">
  <img src="images/android17-build-dex-comparator.jpg" alt="Dex Comparator showing Android 17 Build fields with final removed and explicit null initializers" width="420">
</p>

The example above compares the original DEX (top) with the patched DEX
(bottom). Highlighted fields such as `BRAND`, `DEVICE`, `FINGERPRINT`,
`HARDWARE`, and `ID` no longer contain `final`; the rebuild tool also displays
an explicit `= null` initializer.

The essential change is removal of `final`:

```smali
# Before
.field public static final whitelist BRAND:Ljava/lang/String;

# Valid after form
.field public static whitelist BRAND:Ljava/lang/String;
```

Some smali editors or DEX rebuild tools serialize a non-final reference field
with an explicit null initializer. This output is also valid and matches the
Dex Comparator result:

```smali
.field public static whitelist BRAND:Ljava/lang/String; = null
.field public static whitelist DEVICE:Ljava/lang/String; = null
.field public static whitelist FINGERPRINT:Ljava/lang/String; = null
.field public static whitelist HARDWARE:Ljava/lang/String; = null
.field public static whitelist ID:Ljava/lang/String; = null
```

`= null` is only the default value before `Build` class initialization. It does
not force the property to remain null and does not replace the value assigned
by the original class initializer. Do not manually add `= null` if the tool
does not emit it; removing `final` is the required part.

Do **not** modify nearby fields that are not in the list, such as
`BRAND_FOR_ATTESTATION`, `DEVICE_FOR_ATTESTATION`, `CPU_ABI`, `CPU_ABI2`,
`DISPLAY`, or `HOST`.

## Rebuild and verification

Reassemble with smali 3.x using `--api 29` or higher so hidden-API modifiers
remain valid. After rebuilding:

1. Open the rebuilt DEX in a comparator and confirm each selected field no
   longer contains `final`.
2. Confirm unrelated fields and the original class initializer were not
   changed.
3. Boot the ROM and verify normal `Build` values are populated.
4. Enable a Kaorios PIF/GPhotos profile and verify only configured processes
   receive spoofed values.

No method register changes are needed for this field-only patch. Default values
remain unchanged for processes that are not configured for spoofing.
