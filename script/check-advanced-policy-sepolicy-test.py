#!/usr/bin/env python3
"""Fixture checks for SELinux policy verdicts."""
import subprocess
import tempfile
import unittest
from pathlib import Path

SCRIPT = Path(__file__).with_name("check-advanced-policy-sepolicy.sh")
MAPPING = "kaorios_advanced_policy u:object_r:kaorios_advanced_policy_service:s0\n"
TE = """type kaorios_advanced_policy_service, service_manager_type;
allow system_server kaorios_advanced_policy_service:service_manager { add find };
allow system_app kaorios_advanced_policy_service:service_manager find;
allow system_app system_server:binder call;
"""
CIL = """(type kaorios_advanced_policy_service)
(allow system_server kaorios_advanced_policy_service
    (service_manager (add find)))
(allow system_app kaorios_advanced_policy_service (service_manager (find)))
(allow system_app system_server (binder (call)))
"""


class PolicyVerdictTest(unittest.TestCase):
    def check_fixture(self, policy, expected, mapping=MAPPING, domain="system_app"):
        with tempfile.TemporaryDirectory() as temp:
            root = Path(temp)
            (root / "plat_service_contexts").write_text(mapping)
            if isinstance(policy, bytes):
                (root / "sepolicy").write_bytes(policy)
            else:
                name = "policy.cil" if policy.startswith("(") else "policy.te"
                (root / name).write_text(policy)
            cmd = ["bash", str(SCRIPT), "--root", str(root)]
            if domain:
                cmd += ["--settings-domain", domain]
            result = subprocess.run(cmd, text=True, capture_output=True)
            self.assertIn(f"VERDICT = {expected}", result.stdout, result.stdout + result.stderr)
            self.assertEqual({"PASS": 0, "FAIL": 1, "INCOMPLETE": 2}[expected], result.returncode)

    def test_valid_te_and_cil(self):
        self.check_fixture(TE, "PASS")
        self.check_fixture(CIL, "PASS")

    def test_missing_rules_fail(self):
        for rule in TE.splitlines():
            with self.subTest(rule=rule):
                self.check_fixture(TE.replace(rule + "\n", ""), "FAIL")
        for rule in CIL.splitlines():
            if rule.startswith("(allow system_server"):
                continue
            with self.subTest(rule=rule):
                self.check_fixture(CIL.replace(rule + "\n", ""), "FAIL")

    def test_conflicting_and_duplicate_mappings(self):
        self.check_fixture(TE, "FAIL", "")
        self.check_fixture(TE, "FAIL", MAPPING +
                           "kaorios_advanced_policy u:object_r:other_service:s0\n")
        self.check_fixture(TE, "PASS", MAPPING + MAPPING)

    def test_unknown_domain_and_binary_policy(self):
        self.check_fixture(TE, "INCOMPLETE", domain=None)
        self.check_fixture(b"\0\x01\x02", "INCOMPLETE")
        self.check_fixture(b"\xff\xfe", "INCOMPLETE")


if __name__ == "__main__":
    unittest.main()
