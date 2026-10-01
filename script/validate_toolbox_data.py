#!/usr/bin/env python3
"""Validate published Toolbox-data assets against the release schema."""
import json
import os
import re
import sys

from validate_keybox import KeyboxError, validate_file

STRING_FIELDS = {
    "MANUFACTURER",
    "MODEL",
    "BRAND",
    "DEVICE",
    "PRODUCT",
    "FINGERPRINT",
    "SECURITY_PATCH",
}

PIF_REQUIRED_SCALARS = ["MANUFACTURER", "MODEL", "FINGERPRINT"]
PIF_ALL_REQUIRED = [
    "MANUFACTURER",
    "MODEL",
    "DEVICE",
    "PRODUCT",
    "FINGERPRINT",
    "SECURITY_PATCH",
    "DEVICE_INITIAL_SDK_INT",
]


def check_props(obj: dict, path: str) -> None:
    for k, v in obj.items():
        if k in STRING_FIELDS and not isinstance(v, str):
            print(
                f"ERROR {path}: field '{k}' must be a string, got {type(v).__name__}",
                file=sys.stderr,
            )
            sys.exit(1)


def validate_pif_props(data_dir: str) -> None:
    path = os.path.join(data_dir, "Pif-props.json")
    if not os.path.isfile(path):
        print(f"ERROR: missing {path}", file=sys.stderr)
        sys.exit(1)

    with open(path, "r", encoding="utf-8") as f:
        try:
            pif = json.load(f)
        except Exception as e:
            print(f"ERROR Pif-props.json: invalid JSON: {e}", file=sys.stderr)
            sys.exit(1)

    if not isinstance(pif, dict):
        print("ERROR Pif-props.json: root must be an object", file=sys.stderr)
        sys.exit(1)

    for field in PIF_ALL_REQUIRED:
        if field not in pif:
            print(f"ERROR Pif-props.json: missing required field '{field}'", file=sys.stderr)
            sys.exit(1)
        if not isinstance(pif[field], str):
            print(f"ERROR Pif-props.json: field '{field}' must be a string", file=sys.stderr)
            sys.exit(1)
        if not pif[field].strip():
            print(f"ERROR Pif-props.json: required field '{field}' must not be blank", file=sys.stderr)
            sys.exit(1)

    for k, v in pif.items():
        if not isinstance(v, str) or isinstance(v, (dict, list)):
            print(f"ERROR Pif-props.json: field values must be scalar strings: {k}", file=sys.stderr)
            sys.exit(1)

    sdk = pif["DEVICE_INITIAL_SDK_INT"]
    if not re.fullmatch(r"[0-9]+", sdk) or int(sdk) <= 0:
        print(
            f"ERROR Pif-props.json: DEVICE_INITIAL_SDK_INT must be a positive integer string, got '{sdk}'",
            file=sys.stderr,
        )
        sys.exit(1)

    sp = pif["SECURITY_PATCH"]
    if not re.fullmatch(r"\d{4}-\d{2}-\d{2}", sp):
        print(f"ERROR Pif-props.json: SECURITY_PATCH must be YYYY-MM-DD, got '{sp}'", file=sys.stderr)
        sys.exit(1)


def validate_app_props(data_dir: str) -> None:
    path = os.path.join(data_dir, "app-props.json")
    if not os.path.isfile(path):
        print(f"ERROR: missing {path}", file=sys.stderr)
        sys.exit(1)

    with open(path, "r", encoding="utf-8") as f:
        try:
            data = json.load(f)
        except Exception as e:
            print(f"ERROR app-props.json: invalid JSON: {e}", file=sys.stderr)
            sys.exit(1)

    if not isinstance(data, dict):
        print("ERROR app-props.json: root must be an object", file=sys.stderr)
        sys.exit(1)
    if not data:
        print("ERROR app-props.json: empty object, expected package entries", file=sys.stderr)
        sys.exit(1)

    for pkg, props in data.items():
        if not isinstance(props, dict):
            print(f"ERROR app-props.json: entry '{pkg}' must be an object", file=sys.stderr)
            sys.exit(1)
        check_props(props, f"app-props.json[{pkg}]")


def validate_device_model(data_dir: str) -> None:
    path = os.path.join(data_dir, "device-model.json")
    if not os.path.isfile(path):
        print(f"ERROR: missing {path}", file=sys.stderr)
        sys.exit(1)

    with open(path, "r", encoding="utf-8") as f:
        try:
            data = json.load(f)
        except Exception as e:
            print(f"ERROR device-model.json: invalid JSON: {e}", file=sys.stderr)
            sys.exit(1)

    if not isinstance(data, dict) or not isinstance(data.get("devices"), list):
        print('ERROR device-model.json: root must be {"devices": [...]}', file=sys.stderr)
        sys.exit(1)

    if len(data["devices"]) == 0:
        print("ERROR device-model.json: devices[] must not be empty", file=sys.stderr)
        sys.exit(1)

    for i, entry in enumerate(data["devices"]):
        if not isinstance(entry, dict):
            print(f"ERROR device-model.json: devices[{i}] must be an object", file=sys.stderr)
            sys.exit(1)
        if "name" not in entry or not isinstance(entry["name"], str) or not entry["name"].strip():
            print(f"ERROR device-model.json: devices[{i}] missing or blank string 'name'", file=sys.stderr)
            sys.exit(1)
        check_props(entry, f"device-model.json[{i}]")


def main() -> None:
    data_dir = sys.argv[1] if len(sys.argv) > 1 else "Toolbox-data"
    if not os.path.isdir(data_dir):
        # Also check relative to repo root
        candidate = os.path.join(os.path.dirname(__file__), "..", data_dir)
        if os.path.isdir(candidate):
            data_dir = os.path.abspath(candidate)
        else:
            print(f"ERROR: directory '{data_dir}' not found", file=sys.stderr)
            sys.exit(1)

    validate_pif_props(data_dir)
    validate_app_props(data_dir)
    validate_device_model(data_dir)
    keybox = os.path.join(data_dir, "Keybox.xml")
    if os.path.isfile(keybox):
        try:
            validate_file(keybox)
        except (KeyboxError, OSError) as error:
            code = str(error) if isinstance(error, KeyboxError) else "FILE_READ_ERROR"
            print(f"ERROR Keybox.xml: {code}", file=sys.stderr)
            sys.exit(1)
    print("Published Toolbox-data schema validation passed.")


if __name__ == "__main__":
    main()
