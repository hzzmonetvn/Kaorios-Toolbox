#!/usr/bin/env python3
"""Offline fixtures for the pinned bot PIF updater."""

import base64
from contextlib import contextmanager
import importlib.util
import json
import os
from pathlib import Path
import tempfile
import unittest
from unittest.mock import patch

SCRIPT = Path(__file__).with_name("update_pif.py")
SPEC = importlib.util.spec_from_file_location("update_pif", SCRIPT)
updater = importlib.util.module_from_spec(SPEC)
SPEC.loader.exec_module(updater)
SHA = "08592e9d4488813a182e51470220811e643e59c1"


class Response:
    status = 200

    def __init__(self, url, data):
        self.url = url
        self.data = data

    def __enter__(self):
        return self

    def __exit__(self, *_):
        pass

    def geturl(self):
        return self.url

    def read(self, length):
        return self.data[:length]


class Opener:
    def __init__(self, files, sha=SHA):
        self.sha = sha
        self.files = files
        self.urls = []

    def open(self, request, timeout):
        url = request.full_url
        self.urls.append(url)
        if url == updater.API + "/branches/bot":
            result = {"commit": {"sha": self.sha}}
        else:
            prefix = updater.API + "/contents/"
            if not url.startswith(prefix) or not url.endswith("?ref=" + SHA):
                raise ValueError("Unpinned content URL")
            file = self.files[url[len(prefix):-len("?ref=" + SHA)]]
            result = {"encoding": "base64", "size": len(file),
                      "content": base64.b64encode(file).decode()}
        return Response(url, json.dumps(result).encode())


class PifUpdateTest(unittest.TestCase):
    def setUp(self):
        self.folder = tempfile.TemporaryDirectory()
        self.addCleanup(self.folder.cleanup)
        self.root = Path(self.folder.name)
        self.default = self.root / "Pif-props.json"
        self.catalog = self.root / "pif-devices.json"
        self.default.write_bytes(b'{"old":"default"}\n')
        self.catalog.write_bytes(b'{"old":"catalog"}\n')
        self.original = (self.default.read_bytes(), self.catalog.read_bytes())
        self.patches = [patch.object(updater, "DEFAULT", self.default),
                        patch.object(updater, "CATALOG", self.catalog)]
        for item in self.patches:
            item.start()
            self.addCleanup(item.stop)
        self.files = {"device_list.json": json.dumps([
            {"model": model, "product": device + "_beta"}
            for device, model, _ in updater.DEVICES
        ] + [{"model": "Pixel 10", "product": "frankel_beta"}]).encode()}
        for device, model, sdk in updater.DEVICES:
            self.files[f"device_prop/{device}_beta.prop"] = (
                f"FINGERPRINT=google/{device}_beta/{device}:CANARY/ZP11.260918.007/16484274:user/release-keys\n"
                f"MANUFACTURER=Google\nMODEL={model}\nSECURITY_PATCH=2026-10-05\n"
                f"DEVICE_INITIAL_SDK_INT={sdk}\n").encode()

    @contextmanager
    def network(self, sha=SHA):
        opener = Opener(self.files, sha)
        with patch.object(updater.urllib.request, "build_opener", return_value=opener):
            yield opener

    def assert_untouched(self):
        self.assertEqual(self.original, (self.default.read_bytes(), self.catalog.read_bytes()))

    def test_pinned_snapshot_and_four_devices(self):
        with self.network() as server:
            sha, default, catalog = updater.collect()
        self.assertEqual(sha, SHA)
        self.assertEqual(len(server.urls), 6)
        self.assertTrue(all("?ref=" + SHA in url for url in server.urls[1:]))
        self.assertEqual([entry["DEVICE"] for entry in catalog["devices"]],
                         ["cheetah", "panther", "lynx", "bluejay"])
        self.assertEqual(default["FINGERPRINT"], catalog["devices"][0]["FINGERPRINT"])
        self.assertEqual(default["PRODUCT"], "cheetah_beta")
        self.assertTrue(updater.publish(default, catalog))
        self.assertEqual(json.loads(self.default.read_bytes())["DEVICE"], "cheetah")
        self.assertEqual(len(json.loads(self.catalog.read_bytes())["devices"]), 4)
        self.assertFalse(updater.publish(default, catalog))

    def test_unchanged_default_still_replaces_stale_catalog(self):
        with self.network():
            _, default, catalog = updater.collect()
        self.default.write_bytes(json.dumps(default, indent=2).encode() + b"\n")
        previous_default = self.default.read_bytes()
        self.catalog.write_bytes(json.dumps({"devices": [{"DEVICE": str(n)} for n in range(7)]}).encode())
        self.assertTrue(updater.publish(default, catalog))
        self.assertEqual(self.default.read_bytes(), previous_default)
        self.assertEqual(len(json.loads(self.catalog.read_bytes())["devices"]), 4)

    def test_invalid_head_preserves_files(self):
        with self.network("not-a-commit"):
            with self.assertRaises(ValueError):
                updater.collect()
        self.assert_untouched()

    def test_missing_or_conflicting_manifest_preserves_files(self):
        self.files["device_list.json"] = b'[{"model":"Pixel 7", "product":"cheetah_beta"}]'
        with self.network():
            with self.assertRaises(ValueError):
                updater.collect()
        self.assert_untouched()

    def test_rejects_malformed_and_injected_properties(self):
        name = "device_prop/cheetah_beta.prop"
        original = self.files[name]
        cases = (b"MODEL=Pixel 8", b"MODEL=$(touch /tmp/unwanted)",
                 b"DEVICE_INITIAL_SDK_INT=34", b"SECURITY_PATCH=2026-02-30",
                 b"FINGERPRINT=google/cheetah/cheetah:CANARY/Z/1:user/release-keys",
                 b"EXTRA=anything", b"MODEL=Pixel 7 Pro=wrong")
        for bad in cases:
            with self.subTest(bad=bad):
                self.files[name] = original + bad + b"\n"
                with self.network():
                    with self.assertRaises(ValueError):
                        updater.collect()
                self.assert_untouched()
        self.files[name] = original

    def test_rejects_non_canary_fingerprint(self):
        name = "device_prop/cheetah_beta.prop"
        self.files[name] = self.files[name].replace(b":CANARY/", b":STABLE/")
        with self.network():
            with self.assertRaises(ValueError):
                updater.collect()
        self.assert_untouched()

    def test_oversized_response_fails_closed(self):
        self.files["device_prop/cheetah_beta.prop"] = b"X" * 8193
        with self.network():
            with self.assertRaises(ValueError):
                updater.collect()
        self.assert_untouched()

    def test_staging_failure_preserves_both_files(self):
        with self.network():
            _, default, catalog = updater.collect()
        stage = updater.stage
        calls = 0

        def fail_second(path, data):
            nonlocal calls
            calls += 1
            if calls == 2:
                raise OSError("simulated staging failure")
            return stage(path, data)

        with patch.object(updater, "stage", side_effect=fail_second):
            with self.assertRaises(OSError):
                updater.publish(default, catalog)
        self.assert_untouched()
        self.assertEqual(list(self.root.glob(".pif-*")), [])

    def test_second_replacement_failure_rolls_back_first(self):
        with self.network():
            _, default, catalog = updater.collect()
        replace = os.replace
        calls = 0

        def fail_second(source, target):
            nonlocal calls
            calls += 1
            if calls == 2:
                raise OSError("simulated catalog write failure")
            return replace(source, target)

        with patch.object(updater.os, "replace", side_effect=fail_second):
            with self.assertRaises(OSError):
                updater.publish(default, catalog)
        self.assert_untouched()

    def test_failed_rollback_retains_original_default_backup(self):
        with self.network():
            _, default, catalog = updater.collect()
        replace = os.replace
        calls = 0

        def fail_catalog_and_restore(source, target):
            nonlocal calls
            calls += 1
            if calls in (2, 3):
                raise OSError("simulated replacement failure")
            return replace(source, target)

        with patch.object(updater.os, "replace", side_effect=fail_catalog_and_restore):
            with self.assertRaisesRegex(OSError, "backup retained at"):
                updater.publish(default, catalog)
        self.assertEqual(self.catalog.read_bytes(), self.original[1])
        backups = list(self.root.glob(".pif-*"))
        self.assertEqual(len(backups), 1)
        self.assertEqual(backups[0].read_bytes(), self.original[0])


if __name__ == "__main__":
    unittest.main()
