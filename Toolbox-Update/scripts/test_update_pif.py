#!/usr/bin/env python3
"""Offline checks for update_pif.py.

The updater runs from a daily cron and commits straight to the public
Toolbox-data catalog, so the checks here are about the two ways that can go
wrong: a malformed bot snapshot reaching the repository, and a publish that
replaces the catalog without preserving it. No network is used, and the data
file is a temporary copy.

Run: python3 -I Toolbox-Update/scripts/test_update_pif.py
"""

import importlib.util
import json
import os
import pathlib
import stat
import tempfile
import unittest
import urllib.error
from unittest import mock

SCRIPT = pathlib.Path(__file__).with_name("update_pif.py")
SPEC = importlib.util.spec_from_file_location("update_pif", SCRIPT)
update_pif = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(update_pif)

SHA = "a" * 40

MANIFEST = [
    {"product": "cheetah_beta", "model": "Pixel 7 Pro"},
    {"product": "bluejay_beta", "model": "Pixel 6a"},
    {"product": "yogi_beta", "model": "Pixel 11 Pro Fold"},
]


def prop(product, model, sdk, **overrides):
    device = product.removesuffix("_beta")
    fields = {
        "MANUFACTURER": "Google",
        "MODEL": model,
        "FINGERPRINT": (
            f"google/{product}/{device}:CANARY/{device.upper()}.20260101.001/1:user/release-keys"
        ),
        "SECURITY_PATCH": "2026-10-05",
        "DEVICE_INITIAL_SDK_INT": sdk,
    }
    fields.update(overrides)
    return "".join(f"{key}={value}\n" for key, value in fields.items()).encode("ascii")


class Response:
    def __init__(self, url, body):
        self._url = url
        self._body = body

    @property
    def status(self):
        return 200

    def geturl(self):
        return self._url

    def read(self, amount):
        return self._body[:amount]

    def __enter__(self):
        return self

    def __exit__(self, *exc):
        return False


class Opener:
    def __init__(self, routes):
        self._routes = routes

    def open(self, request, timeout=None):
        try:
            return self._routes[request.full_url]
        except KeyError:
            raise urllib.error.URLError(f"no route for {request.full_url}")


def routes(overrides=None, manifest=None):
    """A complete, valid set of bot responses, with optional deviations."""
    if manifest is None:
        manifest = MANIFEST
    props = {entry["product"]: prop(entry["product"], entry["model"], "33")
             for entry in manifest}
    if overrides:
        props.update(overrides)
    built = {
        f"{update_pif.API}/branches/bot": Response(
            f"{update_pif.API}/branches/bot",
            json.dumps({"commit": {"sha": SHA}}).encode("ascii")),
        f"{update_pif.RAW}/{SHA}/device_list.json": Response(
            f"{update_pif.RAW}/{SHA}/device_list.json",
            json.dumps(manifest).encode("ascii")),
    }
    for product, body in props.items():
        url = f"{update_pif.RAW}/{SHA}/device_prop/{product}.prop"
        built[url] = Response(url, body)
    return built


class CollectTest(unittest.TestCase):
    def collect(self, route_map):
        with mock.patch.object(update_pif.urllib.request, "build_opener",
                               lambda *a, **k: Opener(route_map)):
            return update_pif.collect()

    def test_collect_emits_every_device_in_the_manifest(self):
        sha, catalog = self.collect(routes())

        self.assertEqual(SHA, sha)
        self.assertEqual(["cheetah", "bluejay", "yogi"],
                         [entry["DEVICE"] for entry in catalog["devices"]])
        self.assertEqual("Pixel 11 Pro Fold", catalog["devices"][-1]["MODEL"])
        self.assertEqual("Pixel 6a (bluejay)", catalog["devices"][1]["name"])
        self.assertEqual("33", catalog["devices"][1]["DEVICE_INITIAL_SDK_INT"])

    def test_every_entry_carries_the_schema_the_app_parses(self):
        _, catalog = self.collect(routes())

        for entry in catalog["devices"]:
            self.assertEqual(
                {"name", "MANUFACTURER", "BRAND", "MODEL", "DEVICE", "PRODUCT",
                 "FINGERPRINT", "SECURITY_PATCH", "DEVICE_INITIAL_SDK_INT"},
                set(entry))
            self.assertEqual("Google", entry["MANUFACTURER"])
            self.assertEqual("google", entry["BRAND"])
            self.assertEqual(entry["PRODUCT"].removesuffix("_beta"), entry["DEVICE"])

    def test_a_larger_manifest_scales_without_a_fixed_device_list(self):
        manifest = [{"product": f"dev{i}_beta", "model": f"Pixel {i}"} for i in range(1, 21)]

        _, catalog = self.collect(routes(manifest=manifest))

        self.assertEqual(20, len(catalog["devices"]))
        self.assertEqual("dev20", catalog["devices"][-1]["DEVICE"])

    def test_collect_rejects_a_prop_missing_a_field(self):
        bad = prop("cheetah_beta", "Pixel 7 Pro", "33").replace(b"SECURITY_PATCH=2026-10-05\n", b"")

        with self.assertRaises(ValueError):
            self.collect(routes(overrides={"cheetah_beta": bad}))

    def test_collect_rejects_an_unknown_property_key(self):
        bad = prop("cheetah_beta", "Pixel 7 Pro", "33", EXTRA="x")

        with self.assertRaises(ValueError):
            self.collect(routes(overrides={"cheetah_beta": bad}))

    def test_collect_rejects_a_stable_fingerprint(self):
        bad = prop("cheetah_beta", "Pixel 7 Pro", "33",
                   FINGERPRINT="google/cheetah/cheetah:17/build/1:user/release-keys")

        with self.assertRaises(ValueError):
            self.collect(routes(overrides={"cheetah_beta": bad}))

    def test_collect_rejects_a_prop_whose_model_disagrees_with_the_manifest(self):
        bad = prop("cheetah_beta", "Pixel 7", "33")

        with self.assertRaises(ValueError):
            self.collect(routes(overrides={"cheetah_beta": bad}))

    def test_collect_rejects_an_impossible_patch_date(self):
        bad = prop("cheetah_beta", "Pixel 7 Pro", "33", SECURITY_PATCH="2026-13-45")

        with self.assertRaises(ValueError):
            self.collect(routes(overrides={"cheetah_beta": bad}))

    def test_collect_rejects_a_non_numeric_sdk(self):
        bad = prop("cheetah_beta", "Pixel 7 Pro", "thirty-three")

        with self.assertRaises(ValueError):
            self.collect(routes(overrides={"cheetah_beta": bad}))

    def test_collect_rejects_an_unsafe_product_name(self):
        manifest = [{"product": "cheetah/../x", "model": "Pixel 7 Pro"}]

        with self.assertRaises(ValueError):
            self.collect(routes(manifest=manifest))

    def test_collect_rejects_a_model_outside_the_pixel_namespace(self):
        manifest = [{"product": "cheetah_beta", "model": "Not A Pixel"}]

        with self.assertRaises(ValueError):
            self.collect(routes(manifest=manifest))

    def test_collect_rejects_a_duplicate_product(self):
        manifest = MANIFEST + [{"product": "cheetah_beta", "model": "Pixel 7 Pro"}]

        with self.assertRaises(ValueError):
            self.collect(routes(manifest=manifest))

    def test_collect_rejects_an_empty_manifest(self):
        with self.assertRaises(ValueError):
            self.collect(routes(manifest=[]))

    def test_fetch_rejects_an_oversized_body(self):
        url = f"{update_pif.RAW}/{SHA}/device_prop/cheetah_beta.prop"

        with mock.patch.object(update_pif.urllib.request, "build_opener",
                               lambda *a, **k: Opener({url: Response(url, b"x" * 11)})):
            with self.assertRaisesRegex(ValueError, "exceeds limit"):
                update_pif.fetch(url, 10)

    def test_collect_rejects_a_bot_head_that_is_not_a_commit_sha(self):
        route_map = routes()
        url = f"{update_pif.API}/branches/bot"
        route_map[url] = Response(url, json.dumps({"commit": {"sha": "main"}}).encode("ascii"))

        with self.assertRaises(ValueError):
            self.collect(route_map)

    def test_collect_rejects_a_non_google_manufacturer(self):
        bad = prop("cheetah_beta", "Pixel 7 Pro", "33", MANUFACTURER="Samsung")

        with self.assertRaises(ValueError):
            self.collect(routes(overrides={"cheetah_beta": bad}))

    def test_collect_rejects_an_oversized_body(self):
        route_map = routes()
        url = f"{update_pif.RAW}/{SHA}/device_prop/cheetah_beta.prop"
        route_map[url] = Response(url, b"x" * 9000)

        with self.assertRaises(ValueError):
            self.collect(route_map)


class PublishTest(unittest.TestCase):
    def setUp(self):
        self.tmp = tempfile.TemporaryDirectory()
        self.catalog = pathlib.Path(self.tmp.name) / "pif-devices.json"
        self.catalog.write_bytes(b'{"devices": []}\n')
        patcher = mock.patch.object(update_pif, "CATALOG", self.catalog)
        patcher.start()
        self.addCleanup(patcher.stop)
        self.addCleanup(self.tmp.cleanup)

    def test_matching_content_is_not_rewritten(self):
        self.catalog.write_bytes(json.dumps({"devices": []}, indent=2).encode() + b"\n")
        before = self.catalog.stat().st_mtime_ns

        self.assertFalse(update_pif.publish({"devices": []}))
        self.assertEqual(before, self.catalog.stat().st_mtime_ns)

    def test_the_catalog_is_replaced(self):
        self.assertTrue(update_pif.publish({"devices": [1]}))

        self.assertEqual({"devices": [1]}, json.loads(self.catalog.read_text()))
        self.assertEqual([], list(self.catalog.parent.glob(".pif-*")))

    def test_the_replaced_file_keeps_its_mode(self):
        os.chmod(self.catalog, 0o640)

        self.assertTrue(update_pif.publish({"devices": [1]}))

        self.assertEqual(0o640, stat.S_IMODE(self.catalog.stat().st_mode))

    def test_a_failed_replace_leaves_the_catalog_intact(self):
        with mock.patch.object(update_pif.os, "replace", side_effect=OSError("simulated failure")):
            with self.assertRaises(OSError):
                update_pif.publish({"devices": [1]})

        self.assertEqual({"devices": []}, json.loads(self.catalog.read_text()))
        self.assertEqual([], list(self.catalog.parent.glob(".pif-*")))


if __name__ == "__main__":
    unittest.main()
