# Kaorios PIF Native Property Bridge

This directory contains prebuilt native shared ELF libraries (`.so`) for ARM64 (`arm64-v8a`) and ARM32 (`armeabi-v7a`) Android targets. These libraries are designed to intercept low-level Bionic libc property queries within native processes (such as DroidGuard in `com.google.android.gms.unstable`).

---

## Deployment & Installation


### Method: Manual Partition Placement

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

