REQUIRED on Android 17+ (Tested on HyperOS 4 Beta) — Remove the `final` Flag from Build Fields

Android 17 (with libcore synced to newer OpenJDK behavior) **blocks all Java-based writes to static-final fields**: both `Field.set` and `sun.misc.Unsafe.putObject` are blocked, as confirmed via logcat.

Therefore, the framework cannot spoof Build fields unless the ROM patch removes the `final` flag first.

**File:** `framework.jar` → DEX containing `Landroid/os/Build;` and `Landroid/os/Build$VERSION;`
(On HyperOS A17, both are located in `classes3.dex`.)

**Modification:** For each field below, remove the `final` token from its `.field` declaration:

```text
Build.smali        : FINGERPRINT  BRAND  DEVICE  MANUFACTURER  MODEL  PRODUCT
                     ID  TIME  TAGS  TYPE  HARDWARE  USER
Build$VERSION.smali: RELEASE  SECURITY_PATCH  DEVICE_INITIAL_SDK_INT
```

Example:

```smali
# Before
.field public static final whitelist FINGERPRINT:Ljava/lang/String;

# After
.field public static whitelist FINGERPRINT:Ljava/lang/String;
```

After removing the flag, writes through reflection work again as on Android ≤16, without requiring `Unsafe`.

Default values remain unchanged — only processes configured through the PIF JSON / GPhotos toggle will have these values overridden.

> Reassemble the DEX using smali ≥3.x with `--api 29` or higher so that `whitelist` / `blacklist` modifiers (hidden API flags) emitted by baksmali are recognized.

---

* Adjust register counts carefully when adding new instructions.
* Keep register usage consistent inside each method.
* Make sure the **Fake Locked** value/property is shown in **green**.
