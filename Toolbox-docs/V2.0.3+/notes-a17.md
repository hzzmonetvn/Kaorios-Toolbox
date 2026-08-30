# Android 17 (SDK 37)

**English** | [Tiếng Việt](notes-a17-vi.md)

This page only contains additional steps specifically for target ROMs running **Android 17 / SDK 37 (Baklava)**.

On Android 17, some features may not work correctly (most notably Google Photos spoofing). The following steps provide a workaround.

---

## 3. Find the stock DEX containing `Build`

In `framework.jar`, locate the following classes:

```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

## 4. Remove `final` from the required fields

### `Build.smali`

**Smali example:** [`Build.smali`](../Template/Template_V2060/framework/Build.smali)

Remove `final` and append `= null` to at least the following fields:

```text
BRAND
BRAND_FOR_ATTESTATION
DEVICE
DEVICE_FOR_ATTESTATION
FINGERPRINT
HARDWARE
ID
MANUFACTURER
MANUFACTURER_FOR_ATTESTATION
MODEL
MODEL_FOR_ATTESTATION
PRODUCT
PRODUCT_FOR_ATTESTATION
TAGS
TIME
TYPE
USER
```

Example with `BRAND`:

### Before — stock

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

### After — patched

```smali
.field public static whitelist BRAND:Ljava/lang/String; = null
```

### `Build$VERSION.smali`

**Smali example:** [`Build$VERSION.smali`](../Template/Template_V2060/framework/Build$VERSION.smali)

Remove `final` from:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

(Unlike the fields in `Build.smali`, you do **not** need to append `= null` here.)

### Optional fields depending on your profile

If your custom PIF / GameProps profile actually modifies additional fields, remove `final` only from those specific fields, for example:

```text
DISPLAY
HOST
INCREMENTAL
SDK
*_FOR_ATTESTATION
```

> [!WARNING]
> Keep `SDK_INT` unchanged. **Do not** remove `final` from `SDK_INT` in this patch.

Do not blindly remove `final` from every field. Only modify the fields that are actually required.

---