# KaoriHelper (resetprop-rs)

Standalone ARM64 (aarch64) system property manipulation binary for Android init and runtime property overrides.

## Binary

- **File:** `kaorihelper`
- **Architecture:** ARM64 (`aarch64-linux-android`)
- **Version:** v0.6.0
- **Upstream:** [Enginex0/resetprop-rs](https://github.com/Enginex0/resetprop-rs)

## Usage

### Init Mode (`init.rc`)

```rc
exec u:r:init:s0 root root -- /system/bin/kaorihelper --init <property> <value>
```

See [`bin/init/resetprop.md`](../init/resetprop.md) for the complete list of system property overrides grouped by device manufacturer.

### CLI Mode (Root Shell)

```sh
# Get property
kaorihelper <property>

# Set property
kaorihelper <property> <value>

# Delete property
kaorihelper --delete <property>
```

## Credits

- **[resetprop-rs](https://github.com/Enginex0/resetprop-rs)** by [Enginex0](https://github.com/Enginex0) (Release [v0.6.0](https://github.com/Enginex0/resetprop-rs/releases/tag/v0.6.0))
