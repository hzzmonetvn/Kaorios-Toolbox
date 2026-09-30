# Published Toolbox-data schema

CI runs `script/validate_toolbox_data.py` against the files in `Toolbox-data/` before publishing them.

- `Pif-props.json` requires nonblank string values for `MANUFACTURER`, `MODEL`, `DEVICE`, `PRODUCT`, `FINGERPRINT`, `SECURITY_PATCH`, and `DEVICE_INITIAL_SDK_INT`. The SDK value must be a positive integer string, and the security patch must use `YYYY-MM-DD`.
- `app-props.json` requires at least one package entry, and each entry must be an object.
- `device-model.json` requires a nonempty `devices` array. Each device must be an object with a nonblank string `name`.

The app accepts a smaller schema when loading custom or older data sources. That compatibility behavior does not relax the validation gate for files published in this repository.
