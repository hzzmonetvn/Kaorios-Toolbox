#!/usr/bin/env python3
"""Refresh the public PIF presets from a single pinned bot snapshot."""

import base64
import datetime
import json
import os
from pathlib import Path
import re
import stat
import sys
import tempfile
import urllib.error
import urllib.request

ROOT = Path(__file__).resolve().parents[2]
DEFAULT = ROOT / "Toolbox-data/Pif-props.json"
CATALOG = ROOT / "Toolbox-data/pif-devices.json"
API = "https://api.github.com/repos/KOWX712/PlayIntegrityFix"
DEVICES = (
    ("cheetah", "Pixel 7 Pro", "33"),
    ("panther", "Pixel 7", "33"),
    ("lynx", "Pixel 7a", "33"),
    ("bluejay", "Pixel 6a", "32"),
)
FIELDS = {"FINGERPRINT", "MANUFACTURER", "MODEL", "SECURITY_PATCH", "DEVICE_INITIAL_SDK_INT"}


class NoRedirect(urllib.request.HTTPRedirectHandler):
    def redirect_request(self, request, fp, code, msg, headers, newurl):
        raise ValueError("Unexpected GitHub redirect")


def fetch_json(url, limit):
    request = urllib.request.Request(url, headers={
        "Accept": "application/vnd.github+json", "User-Agent": "Kaorios-Toolbox-PIF-updater"
    })
    with urllib.request.build_opener(NoRedirect()).open(request, timeout=10) as response:
        if response.status != 200 or response.geturl() != url:
            raise ValueError("Unexpected GitHub response")
        payload = response.read(limit + 1)
    if len(payload) > limit:
        raise ValueError("GitHub response exceeds limit")
    return json.loads(payload)


def snapshot_file(path, sha, limit):
    response = fetch_json(f"{API}/contents/{path}?ref={sha}", limit * 2 + 4096)
    if (not isinstance(response, dict) or response.get("encoding") != "base64"
            or not isinstance(response.get("size"), int) or response["size"] > limit
            or not isinstance(response.get("content"), str)):
        raise ValueError("Invalid GitHub file response")
    data = base64.b64decode("".join(response["content"].split()), validate=True)
    if len(data) != response["size"]:
        raise ValueError("GitHub file length mismatch")
    return data


def parse_prop(data, device, model, sdk):
    props = {}
    for line in data.decode("ascii").splitlines():
        if line.count("=") != 1:
            raise ValueError("Invalid property line")
        key, value = line.split("=", 1)
        if key not in FIELDS or key in props or not value or value != value.strip():
            raise ValueError("Invalid or duplicate property")
        props[key] = value
    if set(props) != FIELDS or props["MANUFACTURER"] != "Google" or props["MODEL"] != model or props["DEVICE_INITIAL_SDK_INT"] != sdk:
        raise ValueError("Unexpected device properties")
    fingerprint = props["FINGERPRINT"]
    if not re.fullmatch(rf"google/{device}_beta/{device}:CANARY/[A-Z0-9._-]+/[0-9]+:user/release-keys", fingerprint):
        raise ValueError("Unexpected fingerprint")
    patch = props["SECURITY_PATCH"]
    if not re.fullmatch(r"[0-9]{4}-[0-9]{2}-[0-9]{2}", patch):
        raise ValueError("Invalid security patch")
    datetime.date.fromisoformat(patch)
    return {
        "name": f"{model} ({device})", "MANUFACTURER": "Google", "BRAND": "google",
        "MODEL": model, "DEVICE": device, "PRODUCT": f"{device}_beta",
        "FINGERPRINT": fingerprint, "SECURITY_PATCH": patch, "DEVICE_INITIAL_SDK_INT": sdk,
    }


def collect():
    branch = fetch_json(f"{API}/branches/bot", 16384)
    sha = branch.get("commit", {}).get("sha") if isinstance(branch, dict) else None
    if not isinstance(sha, str) or not re.fullmatch(r"[0-9a-f]{40}", sha):
        raise ValueError("Invalid bot HEAD")
    manifest = json.loads(snapshot_file("device_list.json", sha, 32768))
    if not isinstance(manifest, list):
        raise ValueError("Invalid device list")
    for device, model, _ in DEVICES:
        matches = [item for item in manifest if isinstance(item, dict) and item.get("product") == f"{device}_beta" and item.get("model") == model]
        if len(matches) != 1:
            raise ValueError("Missing or duplicate eligible device")
        if any(isinstance(item, dict) and item.get("product") == f"{device}_beta" and item.get("model") != model for item in manifest):
            raise ValueError("Conflicting eligible device")
    catalog = [parse_prop(snapshot_file(f"device_prop/{device}_beta.prop", sha, 8192), device, model, sdk)
               for device, model, sdk in DEVICES]
    default = {key: catalog[0][key] for key in (
        "MANUFACTURER", "MODEL", "FINGERPRINT", "PRODUCT", "DEVICE", "SECURITY_PATCH", "DEVICE_INITIAL_SDK_INT"
    )}
    return sha, default, {"devices": catalog}


def stage(path, data):
    with tempfile.NamedTemporaryFile(dir=path.parent, prefix=".pif-", delete=False) as output:
        staged = Path(output.name)
        try:
            output.write(data)
            output.flush()
            os.fsync(output.fileno())
            staged.chmod(stat.S_IMODE(path.stat().st_mode))
        except BaseException:
            staged.unlink(missing_ok=True)
            raise
    return staged


def publish(default, catalog):
    paths = (DEFAULT, CATALOG)
    originals = [path.read_bytes() for path in paths]
    contents = [json.dumps(value, indent=2, ensure_ascii=True).encode() + b"\n" for value in (default, catalog)]
    if contents == originals:
        return False
    staged = []
    try:
        for path, data in zip(paths, contents):
            staged.append(stage(path, data))
        backup = stage(paths[0], originals[0])
        staged.append(backup)
        os.replace(staged[0], paths[0])
        try:
            os.replace(staged[1], paths[1])
        except BaseException:
            try:
                os.replace(backup, paths[0])
            except BaseException as error:
                staged.remove(backup)
                raise OSError(f"Failed to restore PIF default; backup retained at {backup}") from error
            raise
    finally:
        for path in staged:
            path.unlink(missing_ok=True)
    return True


def main():
    sha, default, catalog = collect()
    changed = publish(default, catalog)
    print(f"Bot snapshot {sha}: {'updated both PIF files' if changed else 'PIF files unchanged'}")


if __name__ == "__main__":
    try:
        main()
    except (ValueError, UnicodeError, KeyError, TypeError, OSError, urllib.error.URLError) as error:
        print(f"PIF update failed: {error}", file=sys.stderr)
        sys.exit(1)
