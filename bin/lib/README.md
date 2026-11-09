# Kaorios PIF Native Property Bridge

This directory contains prebuilt native shared ELF libraries (`.so`) for ARM64 (`arm64-v8a`) and ARM32 (`armeabi-v7a`) Android targets. These libraries are designed to intercept low-level Bionic libc property queries within native processes (such as DroidGuard in `com.google.android.gms.unstable`).

---

## 1. Binary Inventory & Structural Analysis

Inspection of the prebuilt ELF binaries in `arm64-v8a/` and `armeabi-v7a/` shows the following file characteristics:

| File Name | Architecture | Size (bytes) | Dynamic Symbols / Description |
|---|---|---:|---|
| `libkaoripif.so` | `arm64-v8a` / `armeabi-v7a` | ~290 KB / ~194 KB | Native shared object (internal `SONAME` is `libntpif.so`). Exports dynamic symbol `shadowhook_interceptor_glue` and imports Bionic libc symbols (`__system_property_find`, `__system_property_get`, and `__system_property_read_callback@LIBC_O`). |
| `libkaoriospif.so` | `arm64-v8a` / `armeabi-v7a` | ~290 KB / ~194 KB | Identical binary / alias copy of `libkaoripif.so` provided for runtime linker compatibility across diverse ROM configurations. |
| `libshadowhook_kaorios.so` | `arm64-v8a` / `armeabi-v7a` | 1,424 / 1,028 bytes | **Prebuilt companion stub library.** Contains an empty dynamic symbol table (`.dynsym` with 0 defined exports). It is packaged as an ELF placeholder; runtime behavior cannot be inferred from symbol presence alone. |

### 1.1 Do Not Confuse This `libkaoripif.so` With the Framework Installer

Two unrelated shared objects can carry the file name `libkaoripif.so`. They are not interchangeable:

| | This directory (`bin/lib/`) | Framework installer (not shipped here) |
|---|---|---|
| `SONAME` | `libntpif.so` | no `SONAME` set |
| Exports | `shadowhook_interceptor_glue` | `JNI_OnLoad`, `Java_android_security_kaorios_KaoriosPifInstaller_nativeInstallPif` |
| Loaded by | only if some external component injects it into a target process | `KaoriosPifInstaller`, which calls `System.load("/system_ext/lib64/libkaoripif.so")` |
| Deploy path | `/system/lib64/` or `/system/lib/` via `install.sh` | `/system_ext/lib64/` or `/system_ext/lib/` |
| Source | prebuilt reference binary | built from the private `native/libkaoripif/` module |

Consequences:

- Copying the binary from this directory to `/system_ext/lib64/libkaoripif.so` does **not** give the framework a working installer. The JNI symbol is absent, `System.load` succeeds, and `nativeInstallPif` then fails with `UnsatisfiedLinkError`, which `KaoriosPifInstaller` reports as `ERROR_LIBRARY_LOAD` (`-20`) and degrades to the Java property fallback.
- The reverse is equally wrong: the JNI installer is not an inline-hooking library and does not export `shadowhook_interceptor_glue`.
- Verify before deployment rather than trusting the file name:

```sh
readelf --dyn-syms --wide libkaoripif.so | grep -E 'shadowhook_interceptor_glue|KaoriosPifInstaller_nativeInstallPif'
readelf -d libkaoripif.so | grep -i soname
```

---

## 2. Low-Level Property Interfaces & Observed Limits

1. **Bionic Libc Property Interfaces:**
   Bionic libc defines property lookup interfaces queried by Android native processes:
   - `__system_property_read_callback`: Callback-based property lookup API (introduced in Android O / API 26).
   - `__system_property_get` and `__system_property_find`: Legacy and direct property lookup APIs.
2. **Observed Static Symbols vs. Unverified Runtime Attachment:**
   Static analysis confirms that `libkaoripif.so` imports these libc property symbols and exports `shadowhook_interceptor_glue`. However:
   - The presence of undefined imports in an ELF dynamic table does **not** establish that property queries are intercepted during system execution.
   - The repository provides `install.sh` to place files in `/system/lib[64]`, but contains no process injection, linker configuration, or preloading setup demonstrating how target processes load these libraries.
   - Whether initialization routines execute, whether instruction hooks attach successfully, and whether SELinux policies permit target processes to load these shared objects remain unverified by static host analysis.

---

## 3. Deployment & Installation

### Method 1: Automated Script Installation

The included shell installer deploys the libraries to an extracted ROM partition or mounted filesystem:

```sh
sh install.sh /path/to/extracted/rom_root
```

The installer performs the following operations:
- Locates `/system/lib64` (or `/system/system/lib64`) and copies the `arm64-v8a` libraries.
- Locates `/system/lib` (or `/system/system/lib`) and copies the `armeabi-v7a` libraries.
- Sets file permissions to `0644` (`rw-r--r--`) and ownership to `root:root` (`0:0`).
- Applies the SELinux file context `u:object_r:system_lib_file:s0` using `chcon` if the utility is present on the host.

### Method 2: Manual Partition Placement

```sh
# Deploy 64-bit libraries
cp arm64-v8a/*.so /path/to/rom/system/lib64/
chmod 0644 /path/to/rom/system/lib64/libkaori*.so /path/to/rom/system/lib64/libshadowhook_kaorios.so
chown 0:0 /path/to/rom/system/lib64/libkaori*.so /path/to/rom/system/lib64/libshadowhook_kaorios.so
chcon u:object_r:system_lib_file:s0 /path/to/rom/system/lib64/libkaori*.so /path/to/rom/system/lib64/libshadowhook_kaorios.so

# Deploy 32-bit libraries (if supported by ROM architecture)
cp armeabi-v7a/*.so /path/to/rom/system/lib/
chmod 0644 /path/to/rom/system/lib/libkaori*.so /path/to/rom/system/lib/libshadowhook_kaorios.so
chown 0:0 /path/to/rom/system/lib/libkaori*.so /path/to/rom/system/lib/libshadowhook_kaorios.so
chcon u:object_r:system_lib_file:s0 /path/to/rom/system/lib/libkaori*.so /path/to/rom/system/lib/libshadowhook_kaorios.so
```

### Method 3: `/system_ext` for the Framework Installer

`install.sh` targets `/system` only, and hard-codes the `u:object_r:system_lib_file:s0` label. A JNI library placed under `/system_ext/lib[64]/` is labelled by that partition's own `file_contexts` entry, which differs across ROM trees. Deploy it the way the ROM labels its other `/system_ext` libraries instead of reusing the command above:

```sh
cp libkaoripif.so /path/to/rom/system_ext/lib64/
chmod 0644 /path/to/rom/system_ext/lib64/libkaoripif.so
chown 0:0 /path/to/rom/system_ext/lib64/libkaoripif.so
grep -n '/system_ext/lib64' /path/to/rom/system_ext/etc/selinux/*/file_contexts
```

Apply the context those rules specify. A wrong label leaves the file readable but unloadable by the target process, which surfaces at runtime as a `System.load` failure rather than a packaging error.

---

## 4. Evidence Boundary

- **Host Inspection vs. Device Runtime:** Static analysis using `readelf` and `nm` verifies ELF architecture (ARM aarch64/ARM 32-bit), soname tagging, and dynamic import/export tables on the host machine.
- **Stub Library Characterization:** `libshadowhook_kaorios.so` is documented as an empty stub based on observed ELF header structures and zero exported symbols.
- **Attestation Outcome Limits:** Placing these prebuilt binaries into a ROM image does not prove that DroidGuard or Google Play Services loads them, that Bionic libc hooks attach without triggering SIGSEGV/SIGILL crashes, or that any Google Play Integrity verdict (MEETS_DEVICE_INTEGRITY or MEETS_STRONG_INTEGRITY) will be returned. Validation requires on-device testing with active process tracing and crash log monitoring (`logcat`, `tombstones`).
- **Name Collision Boundary:** Section 1.1 distinguishes this `libkaoripif.so` from the framework JNI installer by observed `SONAME` and exported symbols. That separation is proven statically. Whether a given ROM's linker resolves either file at runtime is not.
