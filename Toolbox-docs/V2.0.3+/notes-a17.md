# Android 17 (SDK 37)

**English** | [Tiếng Việt](notes-a17_VI.md)

This page contains only the extra steps for target ROMs running **Android 17 / SDK 37 (Baklava)**.

---

## 3. Find the stock DEX containing `Build`

Inside the clean stock `framework.jar`, locate these classes:

```smali
Landroid/os/Build;
Landroid/os/Build$VERSION;
```

## 4. Remove `final` from the required fields

### `Build.smali`

**Reference smali:** [`Build.smali`](../Template/Template_V2060/framework/Build.smali)

Remove `final` and add `=null` at the end from this minimum set:

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

### `Build$VERSION.smali`

**Reference smali:** [`Build$VERSION.smali`](../Template/Template_V2060/framework/Build$VERSION.smali)

Remove `final` from:

```text
RELEASE
RELEASE_OR_CODENAME
RELEASE_OR_PREVIEW_DISPLAY
SECURITY_PATCH
DEVICE_INITIAL_SDK_INT
```

### Optional fields used by custom profiles

If your custom PIF / GameProps profiles actually modify additional fields, remove `final` from those specific fields as well, for example:

```text
DISPLAY
HOST
INCREMENTAL
SDK
*_FOR_ATTESTATION
```

> [!WARNING]
> Keep `SDK_INT` unchanged. **Do not** remove `final` from `SDK_INT` as part of this patch.

Do not mass-remove `final` from every field in `Build` just because it is faster. Patch only the fields Kaorios needs.

---

## 5. Smali before and after

Example with `BRAND`:

### Before — stock

```smali
.field public static final whitelist BRAND:Ljava/lang/String;
```

### After — patched

```smali
.field public static whitelist BRAND:Ljava/lang/String;
```

Only the `final` access flag is removed.

Some tools may serialize a non-final static field with an explicit initializer such as `= null`. That is valid and is not an error by itself.

Repeat the same change for the fields listed above.

---

Reference only: [`Build.smali`](../Template/Template_V2060/framework/Build.smali) and [`Build$VERSION.smali`](../Template/Template_V2060/framework/Build$VERSION.smali).
