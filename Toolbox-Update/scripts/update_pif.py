#!/usr/bin/env python3
"""Refresh the public PIF device catalog from a single pinned bot snapshot."""

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
CATALOG = ROOT / "Toolbox-data/pif-devices.json"
API = "https://api.github.com/repos/KOWX712/PlayIntegrityFix"
RAW = "https://raw.githubusercontent.com/KOWX712/PlayIntegrityFix"
FIELDS = {"FINGERPRINT", "MANUFACTURER", "MODEL", "SECURITY_PATCH", "DEVICE_INITIAL_SDK_INT"}
PRODUCT = re.compile(r"[a-z0-9]+_beta")
MODEL = re.compile(r"Pixel [A-Za-z0-9 ]+")


class NoRedirect(urllib.request.HTTPRedirectHandler):
    def redirect_request(self, request, fp, code, msg, headers, newurl):
        raise ValueError("Unexpected GitHub redirect")


def fetch(url, limit):
    """Read at most `limit` bytes, rejecting redirects and oversized bodies."""
    request = urllib.request.Request(url, headers={"User-Agent": "Kaorios-Toolbox-PIF-updater"})
    with urllib.request.build_opener(NoRedirect()).open(request, timeout=15) as response:
        if response.status != 200 or response.geturl() != url:
            raise ValueError("Unexpected GitHub response")
        payload = response.read(limit + 1)
    if len(payload) > limit:
        raise ValueError("GitHub response exceeds limit")
    return payload


def parse_prop(data, product, model):
    device = product.removesuffix("_beta")
    props = {}
    for line in data.decode("ascii").splitlines():
        if line.count("=") != 1:
            raise ValueError("Invalid property line")
        key, value = line.split("=", 1)
        if key not in FIELDS or key in props or not value or value != value.strip():
            raise ValueError("Invalid or duplicate property")
        props[key] = value
    sdk = props.get("DEVICE_INITIAL_SDK_INT", "")
    if (set(props) != FIELDS or props["MANUFACTURER"] != "Google" or props["MODEL"] != model
            or not sdk.isdigit() or not 1 <= int(sdk) <= 100):
        raise ValueError("Unexpected device properties")
    fingerprint = props["FINGERPRINT"]
    if not re.fullmatch(rf"google/{product}/{device}:CANARY/[A-Z0-9._-]+/[0-9]+:user/release-keys", fingerprint):
        raise ValueError("Unexpected fingerprint")
    patch = props["SECURITY_PATCH"]
    if not re.fullmatch(r"[0-9]{4}-[0-9]{2}-[0-9]{2}", patch):
        raise ValueError("Invalid security patch")
    datetime.date.fromisoformat(patch)
    return {
        "name": f"{model} ({device})", "MANUFACTURER": "Google", "BRAND": "google",
        "MODEL": model, "DEVICE": device, "PRODUCT": product,
        "FINGERPRINT": fingerprint, "SECURITY_PATCH": patch, "DEVICE_INITIAL_SDK_INT": sdk,
    }


def collect():
    branch = json.loads(fetch(f"{API}/branches/bot", 16384))
    sha = branch.get("commit", {}).get("sha") if isinstance(branch, dict) else None
    if not isinstance(sha, str) or not re.fullmatch(r"[0-9a-f]{40}", sha):
        raise ValueError("Invalid bot HEAD")
    manifest = json.loads(fetch(f"{RAW}/{sha}/device_list.json", 32768))
    if not isinstance(manifest, list) or not manifest:
        raise ValueError("Invalid device list")
    seen = set()
    catalog = []
    for entry in manifest:
        product = entry.get("product") if isinstance(entry, dict) else None
        model = entry.get("model") if isinstance(entry, dict) else None
        if (not isinstance(product, str) or not isinstance(model, str)
                or not PRODUCT.fullmatch(product) or not MODEL.fullmatch(model)
                or product in seen):
            raise ValueError("Invalid device list entry")
        seen.add(product)
        catalog.append(parse_prop(
            fetch(f"{RAW}/{sha}/device_prop/{product}.prop", 8192), product, model))
    return sha, {"devices": catalog}


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


def publish(catalog):
    original = CATALOG.read_bytes()
    contents = json.dumps(catalog, indent=2, ensure_ascii=True).encode() + b"\n"
    if contents == original:
        return False
    staged = stage(CATALOG, contents)
    try:
        os.replace(staged, CATALOG)
    finally:
        staged.unlink(missing_ok=True)
    return True


def main():
    sha, catalog = collect()
    changed = publish(catalog)
    print(f"Bot snapshot {sha}: {len(catalog['devices'])} devices, "
          f"{'catalog updated' if changed else 'catalog unchanged'}")


if __name__ == "__main__":
    try:
        main()
    except (ValueError, UnicodeError, KeyError, TypeError, OSError, urllib.error.URLError) as error:
        print(f"PIF update failed: {error}", file=sys.stderr)
        sys.exit(1)
