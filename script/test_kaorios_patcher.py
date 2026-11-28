#!/usr/bin/env python3
"""Comprehensive test suite for the unified Kaorios Toolbox patcher and guides."""

from __future__ import annotations

import hashlib
import os
from pathlib import Path
import re
import sys
import tempfile
import unittest
import zipfile

SCRIPT_DIR = Path(__file__).resolve().parent
ROOT_DIR = SCRIPT_DIR.parent
if str(SCRIPT_DIR) not in sys.path:
    sys.path.insert(0, str(SCRIPT_DIR))

from dex_packager import (  # noqa: E402
    discover_smali_toolchain,
    inspect_dex,
    next_dex_slot,
    smali_assemble,
)
from kaorios_hook_spec import (  # noqa: E402
    FRAMEWORK_CORE_SPECS,
    PAYLOAD_REQUIRED_CLASSES,
    SERVICES_CORE_SPECS,
    SERVICES_SECURE_FLAG_SPECS,
    SETTINGS_PROVIDER_SPECS,
)
import kaorios_patcher  # noqa: E402
from package_patcher import BUNDLE_FILES, build_patcher_zip  # noqa: E402
from smali_engine import (  # noqa: E402
    AlreadyPatchedError,
    SmaliPatchError,
    patch_corepatch_framework_apk_verifier,
    patch_corepatch_framework_signing_details,
    patch_corepatch_services_pms_utils,
    patch_framework_f1_instrumentation,
    patch_framework_f2_activity_thread,
    patch_framework_f3_system_properties,
    patch_framework_f4_has_system_feature,
    patch_framework_f5_generate_keypair,
    patch_framework_f6_certificate_chain,
    patch_framework_f7_name_value_cache,
    patch_services_computer_engine,
    patch_services_s1_system_server,
    patch_services_s2_hide_app_list,
    patch_services_s3_installer_source,
    patch_services_s4_fakegapps,
    patch_services_s5_secure_flag,
    patch_settings_provider_call,
)


def _java_type_to_jvm(java_type: str) -> str:
    java_type = java_type.strip()
    array_dim = 0
    while java_type.endswith("[]"):
        array_dim += 1
        java_type = java_type[:-2].strip()
    primitives = {
        "void": "V",
        "boolean": "Z",
        "byte": "B",
        "short": "S",
        "char": "C",
        "int": "I",
        "long": "J",
        "float": "F",
        "double": "D",
    }
    if java_type in primitives:
        base = primitives[java_type]
    else:
        aliases = {
            "String": "Ljava/lang/String;",
            "Object": "Ljava/lang/Object;",
            "Boolean": "Ljava/lang/Boolean;",
            "Context": "Landroid/content/Context;",
            "ContentResolver": "Landroid/content/ContentResolver;",
            "KeyPair": "Ljava/security/KeyPair;",
            "Certificate": "Ljava/security/cert/Certificate;",
            "PackageInfo": "Landroid/content/pm/PackageInfo;",
            "Bundle": "Landroid/os/Bundle;",
            "PifNativeStatus": "Landroid/security/kaorios/PifNativeStatus;",
            "IAdvancedPolicyService": "Landroid/security/kaorios/settings/IAdvancedPolicyService;",
            "AdvancedPolicyRuntimeStatus": "Landroid/security/kaorios/settings/AdvancedPolicyRuntimeStatus;",
            "android.content.Context": "Landroid/content/Context;",
            "android.content.ContentResolver": "Landroid/content/ContentResolver;",
            "android.content.pm.PackageInfo": "Landroid/content/pm/PackageInfo;",
            "android.os.Bundle": "Landroid/os/Bundle;",
        }
        base = aliases.get(java_type, "L" + java_type.replace(".", "/") + ";")
    return ("[" * array_dim) + base


def _require_toolchain():
    return discover_smali_toolchain()


def _assemble_smali_map(smali_files: dict[str, str]) -> bytes:
    toolchain = _require_toolchain()
    with tempfile.TemporaryDirectory() as tmpdir:
        tmp = Path(tmpdir)
        sdir = tmp / "smali"
        for rel, body in smali_files.items():
            dst = sdir / rel
            dst.parent.mkdir(parents=True, exist_ok=True)
            dst.write_text(body, encoding="utf-8")
        out_dex = tmp / "out.dex"
        smali_assemble(toolchain, sdir, out_dex, api=34)
        return out_dex.read_bytes()


def _build_synthetic_payload_dex() -> bytes:
    """Compile a minimal R8-compliant payload DEX defining all PAYLOAD_REQUIRED_CLASSES."""
    smali_map: dict[str, str] = {}
    for cls_desc, methods in PAYLOAD_REQUIRED_CLASSES.items():
        rel = cls_desc[1:-1] + ".smali"
        is_iface = "IAdvancedPolicyService" in cls_desc
        class_hdr = (
            f".class public interface abstract {cls_desc}\n"
            if is_iface
            else f".class public {cls_desc}\n"
        )
        lines = [class_hdr, ".super Ljava/lang/Object;\n"]
        if not is_iface:
            lines.append(
                ".method public constructor <init>()V\n"
                "    .locals 1\n"
                "    invoke-direct {p0}, Ljava/lang/Object;-><init>()V\n"
                "    return-void\n"
                ".end method\n"
            )
        for m_name, m_proto in methods:
            ret_type = m_proto.split(")")[1]
            # All required methods on facade/payload classes are static except interface/binder ones.
            mod = "public abstract" if is_iface else "public static"
            if is_iface:
                lines.append(f".method {mod} {m_name}{m_proto}\n.end method\n")
            else:
                if ret_type == "V":
                    ret_body = "    .locals 0\n    return-void\n"
                elif ret_type in ("Z", "I", "B", "S", "C"):
                    ret_body = "    .locals 1\n    const/4 v0, 0x0\n    return v0\n"
                elif ret_type in ("J", "D"):
                    ret_body = "    .locals 2\n    const-wide/16 v0, 0x0\n    return-wide v0\n"
                else:
                    ret_body = "    .locals 1\n    const/4 v0, 0x0\n    return-object v0\n"
                lines.append(f".method {mod} {m_name}{m_proto}\n{ret_body}.end method\n")
        smali_map[rel] = "".join(lines)
    return _assemble_smali_map(smali_map)


# Clean-stock smali fixtures covering normal and extreme register pressure.
FIXTURE_INSTRUMENTATION_SMALI = """\
.class public Landroid/app/Instrumentation;
.super Ljava/lang/Object;

.method public newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;
    .locals 15
    .param p1, "cl"
    .param p2, "className"
    .param p3, "context"
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    const/4 v0, 0x0
    if-eqz p2, :ret_early
    return-object v0
    :ret_early
    const/4 v1, 0x0
    return-object v1
.end method

.method public static newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;
    .registers 20
    const/4 v0, 0x0
    return-object v0
.end method
"""

FIXTURE_ACTIVITY_THREAD_SMALI = """\
.class public final Landroid/app/ActivityThread;
.super Ljava/lang/Object;

.method private handleBindApplication(Landroid/app/ActivityThread$AppBindData;)V
    .locals 16
    .param p1, "data"
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param
    .prologue
    .line 100
    :try_start_0
    return-void
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    :catch_0
    return-void
.end method
"""

FIXTURE_SYSTEM_PROPERTIES_SMALI = """\
.class public Landroid/os/SystemProperties;
.super Ljava/lang/Object;

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 16
    if-nez p0, :use_def
    return-object p1
    :use_def
    return-object p1
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    const-string v0, ""
    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    move-result-object v0
    return-object v0
.end method
"""

FIXTURE_SYSTEM_PROPERTIES_DIRECT_SMALI = """\
.class public Landroid/os/SystemProperties;
.super Ljava/lang/Object;

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    const-string v0, ""
    return-object v0
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    const-string v0, "direct"
    return-object v0
.end method
"""

FIXTURE_APP_PM_SMALI = """\
.class public Landroid/app/ApplicationPackageManager;
.super Ljava/lang/Object;

.method public hasSystemFeature(Ljava/lang/String;I)Z
    .locals 15
    const/4 v0, 0x0
    return v0
.end method
"""

FIXTURE_KEYPAIR_GEN_SMALI = """\
.class public abstract Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;
.super Ljava/security/KeyPairGeneratorSpi;

.method public generateKeyPair()Ljava/security/KeyPair;
    .locals 16
    const/4 v0, 0x0
    return-object v0
.end method
"""

FIXTURE_KEYSTORE_SPI_SMALI = """\
.class public Landroid/security/keystore2/AndroidKeyStoreSpi;
.super Ljava/security/KeyStoreSpi;

.method public engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;
    .locals 15
    const/4 v1, 0x0
    if-eqz p1, :ret_null
    return-object v1
    :ret_null
    const/4 v0, 0x0
    return-object v0
.end method
"""

FIXTURE_NAME_VALUE_CACHE_SMALI = """\
.class Landroid/provider/Settings$NameValueCache;
.super Ljava/lang/Object;

.method public getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 14
    const/4 v0, 0x0
    return-object v0
.end method
"""

FIXTURE_SYSTEM_SERVER_SMALI = """\
.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2
    return-void
.end method
"""

FIXTURE_COMPUTER_ENGINE_SMALI = """\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;

.method public shouldFilterApplicationIncludingUninstalled(Lcom/android/server/pm/pkg/PackageStateInternal;II)Z
    .locals 15
    const/4 v0, 0x0
    return v0
.end method

.method public shouldFilterApplication(Lcom/android/server/pm/pkg/PackageStateInternal;ILandroid/content/ComponentName;II)Z
    .locals 0
    const/4 v0, 0x0
    return v0
.end method

.method public getInstallerPackageName(Ljava/lang/String;I)Ljava/lang/String;
    .locals 16
    const/4 v3, 0x0
    if-eqz p1, :ret_null
    return-object v3
    :ret_null
    const/4 v0, 0x0
    return-object v0
.end method

.method public generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;JI)Landroid/content/pm/PackageInfo;
    .locals 13
    const/4 v0, 0x0
    if-nez p1, :ret_pi
    return-object v0
    :ret_pi
    const/4 v1, 0x0
    return-object v1
.end method
"""

FIXTURE_COMPUTER_ENGINE_INT_FLAGS_SMALI = """\
.class public Lcom/android/server/pm/ComputerEngine;
.super Ljava/lang/Object;

.method public generatePackageInfo(Lcom/android/server/pm/pkg/PackageStateInternal;II)Landroid/content/pm/PackageInfo;
    .locals 15
    const/4 v0, 0x0
    return-object v0
.end method
"""

FIXTURE_APPS_FILTER_BASE_SMALI = """\
.class public Lcom/android/server/pm/AppsFilterBase;
.super Ljava/lang/Object;

.method protected shouldFilterApplication(Lcom/android/server/pm/snapshot/PackageDataSnapshot;ILjava/lang/Object;Lcom/android/server/pm/pkg/PackageStateInternal;I)Z
    .locals 15
    const/4 v0, 0x0
    return v0
.end method
"""

FIXTURE_IPACKAGE_MANAGER_BASE_SMALI = """\
.class public abstract Lcom/android/server/pm/IPackageManagerBase;
.super Ljava/lang/Object;

.method public getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    const/4 v0, 0x0
    return-object v0
.end method
"""

FIXTURE_WINDOW_STATE_SMALI = """\
.class Lcom/android/server/wm/WindowState;
.super Ljava/lang/Object;

.method public isSecureLocked()Z
    .locals 0
    const/4 v0, 0x1
    return v0
.end method
"""

FIXTURE_WMS_SMALI = """\
.class public Lcom/android/server/wm/WindowManagerService;
.super Ljava/lang/Object;

.method isSecureLocked(Lcom/android/server/wm/WindowState;)Z
    .locals 16
    const/4 v0, 0x1
    return v0
.end method
"""

FIXTURE_SETTINGS_PROVIDER_SMALI = """\
.class public Lcom/android/providers/settings/SettingsProvider;
.super Ljava/lang/Object;

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 15
    const/4 v0, 0x0
    return-object v0
.end method
"""

FIXTURE_SIGNING_DETAILS_SMALI = """\
.class public final Landroid/content/pm/SigningDetails;
.super Ljava/lang/Object;

.method public checkCapability(Landroid/content/pm/SigningDetails;I)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public checkCapability(Ljava/lang/String;I)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method

.method public hasAncestorOrSelf(Landroid/content/pm/SigningDetails;)Z
    .locals 1
    const/4 v0, 0x0
    return v0
.end method
"""

FIXTURE_APK_VERIFIER_SMALI = """\
.class public Landroid/util/apk/ApkSignatureVerifier;
.super Ljava/lang/Object;

.method public static getMinimumSignatureSchemeVersionForTargetSdk(I)I
    .locals 1
    const/4 v0, 0x2
    return v0
.end method
"""

FIXTURE_PMS_UTILS_SMALI = """\
.class public final Lcom/android/server/pm/PackageManagerServiceUtils;
.super Ljava/lang/Object;

.method public static checkDowngrade(Lcom/android/server/pm/pkg/AndroidPackage;Landroid/content/pm/PackageInfoLite;)V
    .locals 0
    return-void
.end method

.method public static compareSignatures([Landroid/content/pm/Signature;[Landroid/content/pm/Signature;)I
    .locals 1
    const/4 v0, -0x3
    return v0
.end method
"""


class KaoriosPatcherTest(unittest.TestCase):
    def test_abi_contract_matches_live_java_and_proguard(self):
        from kaorios_hook_spec import FORBIDDEN_HOOK_TOKENS

        # Always verify internal consistency: every hook callee maps cleanly to an
        # R8-kept class & method descriptor in PAYLOAD_REQUIRED_CLASSES and avoids forbidden tokens.
        for spec in (
            *FRAMEWORK_CORE_SPECS,
            *SERVICES_CORE_SPECS,
            *SERVICES_SECURE_FLAG_SPECS,
            *SETTINGS_PROVIDER_SPECS,
        ):
            for bad in FORBIDDEN_HOOK_TOKENS:
                self.assertNotIn(bad, spec.callee)
            cls_part, member_part = spec.callee.split("->")
            self.assertIn(cls_part, PAYLOAD_REQUIRED_CLASSES)
            paren = member_part.index("(")
            method_name = member_part[:paren]
            method_proto = member_part[paren:]
            self.assertIn(
                (method_name, method_proto),
                PAYLOAD_REQUIRED_CLASSES[cls_part],
                f"Hook callee {spec.callee} missing from PAYLOAD_REQUIRED_CLASSES",
            )

        # When private source tree is present under src/, also cross-check live Java & Proguard rules.
        proguard_path = ROOT_DIR / "src/framework/proguard-rules.pro"
        if proguard_path.is_file():
            proguard = proguard_path.read_text(encoding="utf-8")
            kaorios_hook_java = (
                ROOT_DIR / "src/framework/src/main/java/android/security/kaorios/KaoriosHook.java"
            ).read_text(encoding="utf-8")
            adv_policy_java = (
                ROOT_DIR
                / "src/framework/src/main/java/android/security/kaorios/settings/AdvancedPolicyService.java"
            ).read_text(encoding="utf-8")

            for cls_desc in PAYLOAD_REQUIRED_CLASSES:
                dot_name = cls_desc[1:-1].replace("/", ".")
                self.assertIn(dot_name, proguard, f"R8 keep rule missing for {dot_name}")

            for spec in (
                *FRAMEWORK_CORE_SPECS,
                *SERVICES_CORE_SPECS,
                *SERVICES_SECURE_FLAG_SPECS,
                *SETTINGS_PROVIDER_SPECS,
            ):
                cls_part, member_part = spec.callee.split("->")
                method_name = member_part.split("(")[0]
                src_text = adv_policy_java if "AdvancedPolicyService" in cls_part else kaorios_hook_java
                self.assertRegex(
                    src_text,
                    re.compile(rf"public\s+(?:synchronized\s+)?static\s+[^;{{]+\b{re.escape(method_name)}\s*\("),
                    f"Hook method {spec.callee} missing or not public static in Java source",
                )

    def test_guides_match_r8_kept_contract_and_forbid_obfuscated_hooks(self):
        guides = list((ROOT_DIR / "Toolbox-docs/2.0.6+").glob("*.md")) + [SCRIPT_DIR / "README.md"]
        self.assertGreaterEqual(len(guides), 7)

        allowed_callees = {
            s.callee
            for s in (
                *FRAMEWORK_CORE_SPECS,
                *SERVICES_CORE_SPECS,
                *SERVICES_SECURE_FLAG_SPECS,
                *SETTINGS_PROVIDER_SPECS,
            )
        }
        invoke_ref_re = re.compile(
            r"invoke-[a-z/]+\s+\{[^}]*\},\s+(Landroid/security/kaorios/[^;]+;->\S+)"
        )
        for guide in guides:
            text = guide.read_text(encoding="utf-8")
            self.assertNotIn("/home/", text, f"Personal home path leaked in {guide}")
            self.assertNotIn("Co-Authored-By", text, f"AI trailer found in {guide}")
            for match in invoke_ref_re.finditer(text):
                callee = match.group(1)
                self.assertIn(callee, allowed_callees, f"Guide {guide.name} invokes non-contract target {callee}")

    def test_all_smali_hooks_assemble_cleanly_under_high_register_pressure(self):
        cases = [
            ("android/app/Instrumentation.smali", patch_framework_f1_instrumentation, FIXTURE_INSTRUMENTATION_SMALI),
            ("android/app/ActivityThread.smali", patch_framework_f2_activity_thread, FIXTURE_ACTIVITY_THREAD_SMALI),
            ("android/os/SystemProperties.smali", patch_framework_f3_system_properties, FIXTURE_SYSTEM_PROPERTIES_SMALI),
            ("android/app/ApplicationPackageManager.smali", patch_framework_f4_has_system_feature, FIXTURE_APP_PM_SMALI),
            (
                "android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.smali",
                patch_framework_f5_generate_keypair,
                FIXTURE_KEYPAIR_GEN_SMALI,
            ),
            ("android/security/keystore2/AndroidKeyStoreSpi.smali", patch_framework_f6_certificate_chain, FIXTURE_KEYSTORE_SPI_SMALI),
            ("android/provider/Settings$NameValueCache.smali", patch_framework_f7_name_value_cache, FIXTURE_NAME_VALUE_CACHE_SMALI),
            ("com/android/server/SystemServer.smali", patch_services_s1_system_server, FIXTURE_SYSTEM_SERVER_SMALI),
            ("com/android/server/pm/AppsFilterBase.smali", patch_services_s2_hide_app_list, FIXTURE_APPS_FILTER_BASE_SMALI),
            ("com/android/server/pm/IPackageManagerBase.smali", patch_services_s3_installer_source, FIXTURE_IPACKAGE_MANAGER_BASE_SMALI),
            ("com/android/server/pm/ComputerEngine.smali", patch_services_s4_fakegapps, FIXTURE_COMPUTER_ENGINE_INT_FLAGS_SMALI),
            ("com/android/server/wm/WindowState.smali", patch_services_s5_secure_flag, FIXTURE_WINDOW_STATE_SMALI),
            ("com/android/server/wm/WindowManagerService.smali", patch_services_s5_secure_flag, FIXTURE_WMS_SMALI),
            ("com/android/providers/settings/SettingsProvider.smali", patch_settings_provider_call, FIXTURE_SETTINGS_PROVIDER_SMALI),
            ("android/content/pm/SigningDetails.smali", patch_corepatch_framework_signing_details, FIXTURE_SIGNING_DETAILS_SMALI),
            ("android/util/apk/ApkSignatureVerifier.smali", patch_corepatch_framework_apk_verifier, FIXTURE_APK_VERIFIER_SMALI),
            ("com/android/server/pm/PackageManagerServiceUtils.smali", patch_corepatch_services_pms_utils, FIXTURE_PMS_UTILS_SMALI),
        ]

        patched_map: dict[str, str] = {}
        for rel, fn, stock_src in cases:
            out_lines = fn(stock_src.splitlines(keepends=True), rel)
            patched_text = "".join(out_lines)
            # Re-patching patched output MUST fail clean-stock guard (except CorePatch pure smali with no Kaorios ref)
            if "Landroid/security/kaorios/" in patched_text:
                with self.assertRaises(AlreadyPatchedError):
                    fn(patched_text.splitlines(keepends=True), rel)
            # Assemble individually with real smali-3.0.8 to ensure valid Dalvik encoding!
            dex_bytes = _assemble_smali_map({rel: patched_text})
            idx = inspect_dex(dex_bytes)
            self.assertEqual(1, len(idx.defined_classes), f"Assembly failed for {rel}")
            patched_map[rel] = patched_text

        # ComputerEngine combined S2+S3+S4 (64-bit long flags with split 15/16 register pair!)
        ce_out, status = patch_services_computer_engine(
            FIXTURE_COMPUTER_ENGINE_SMALI.splitlines(keepends=True), "ComputerEngine.smali"
        )
        self.assertEqual({"S2": True, "S3": True, "S4": True}, status)
        ce_dex = _assemble_smali_map({"com/android/server/pm/ComputerEngine.smali": "".join(ce_out)})
        ce_idx = inspect_dex(ce_dex)
        for spec in SERVICES_CORE_SPECS[1:]:
            cls_p, m_p = spec.callee.split("->")
            m_n = m_p.split("(")[0]
            m_pr = "(" + m_p.split("(")[1]
            self.assertIn((cls_p, m_n, m_pr), ce_idx.referenced_methods)

    def test_system_properties_delegating_vs_direct_1arg(self):
        delegating_out = "".join(
            patch_framework_f3_system_properties(
                FIXTURE_SYSTEM_PROPERTIES_SMALI.splitlines(keepends=True)
            )
        )
        self.assertEqual(2, delegating_out.count("KaoriosHook;->getSpoofedProperty"))

        direct_out = "".join(
            patch_framework_f3_system_properties(
                FIXTURE_SYSTEM_PROPERTIES_DIRECT_SMALI.splitlines(keepends=True)
            )
        )
        self.assertEqual(2, direct_out.count("KaoriosHook;->getSpoofedProperty"))
        _assemble_smali_map({"android/os/SystemProperties.smali": delegating_out})
        _assemble_smali_map({"android/os/SystemProperties.smali": direct_out})

    def test_invoke_move_result_adjacency_guard(self):
        broken_adjacent = """\
.class Landroid/os/SystemProperties;
.super Ljava/lang/Object;

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    return-object p1
.end method
"""
        with self.assertRaises(SmaliPatchError):
            patch_framework_f3_system_properties(broken_adjacent.splitlines(keepends=True))

    def test_end_to_end_framework_services_settings_provider_pipeline(self):
        payload_dex = _build_synthetic_payload_dex()
        self.assertEqual("classes6.dex", next_dex_slot(["classes.dex", "classes2.dex", "classes3.dex", "classes4.dex", "classes5.dex"]))

        fw_dex1 = _assemble_smali_map(
            {
                "android/app/Instrumentation.smali": FIXTURE_INSTRUMENTATION_SMALI,
                "android/app/ActivityThread.smali": FIXTURE_ACTIVITY_THREAD_SMALI,
                "android/os/SystemProperties.smali": FIXTURE_SYSTEM_PROPERTIES_SMALI,
                "android/content/pm/SigningDetails.smali": FIXTURE_SIGNING_DETAILS_SMALI,
            }
        )
        fw_dex2 = _assemble_smali_map(
            {
                "android/app/ApplicationPackageManager.smali": FIXTURE_APP_PM_SMALI,
                "android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.smali": FIXTURE_KEYPAIR_GEN_SMALI,
                "android/security/keystore2/AndroidKeyStoreSpi.smali": FIXTURE_KEYSTORE_SPI_SMALI,
                "android/provider/Settings$NameValueCache.smali": FIXTURE_NAME_VALUE_CACHE_SMALI,
                "android/util/apk/ApkSignatureVerifier.smali": FIXTURE_APK_VERIFIER_SMALI,
            }
        )
        svc_dex1 = _assemble_smali_map(
            {
                "com/android/server/SystemServer.smali": FIXTURE_SYSTEM_SERVER_SMALI,
                "com/android/server/wm/WindowState.smali": FIXTURE_WINDOW_STATE_SMALI,
            }
        )
        svc_dex2 = _assemble_smali_map(
            {
                "com/android/server/pm/ComputerEngine.smali": FIXTURE_COMPUTER_ENGINE_SMALI,
                "com/android/server/pm/PackageManagerServiceUtils.smali": FIXTURE_PMS_UTILS_SMALI,
            }
        )
        sp_dex = _assemble_smali_map(
            {"com/android/providers/settings/SettingsProvider.smali": FIXTURE_SETTINGS_PROVIDER_SMALI}
        )

        with tempfile.TemporaryDirectory() as tmpdir:
            tmp = Path(tmpdir)
            payload_path = tmp / "classes.dex"
            payload_path.write_bytes(payload_dex)

            stock_fw = tmp / "stock-framework.jar"
            with zipfile.ZipFile(stock_fw, "w") as zf:
                zf.writestr("classes.dex", fw_dex1)
                zf.writestr("classes2.dex", fw_dex2)

            stock_svc = tmp / "stock-services.jar"
            with zipfile.ZipFile(stock_svc, "w") as zf:
                zf.writestr("classes.dex", svc_dex1)
                zf.writestr("classes2.dex", svc_dex2)

            stock_sp = tmp / "stock-SettingsProvider.apk"
            with zipfile.ZipFile(stock_sp, "w") as zf:
                zf.writestr("classes.dex", sp_dex, compress_type=zipfile.ZIP_STORED)
                zf.writestr("AndroidManifest.xml", b"manifest")

            out_fw = tmp / "patched-framework.jar"
            out_svc = tmp / "patched-services.jar"
            out_sp = tmp / "patched-SettingsProvider.apk"

            self.assertEqual(0, kaorios_patcher.main(["inspect-payload", "--payload", str(payload_path)]))
            self.assertEqual(
                0,
                kaorios_patcher.main(
                    [
                        "patch-framework",
                        "--input", str(stock_fw),
                        "--payload", str(payload_path),
                        "--output", str(out_fw),
                        "--enable-corepatch",
                    ]
                ),
            )
            self.assertEqual(
                0,
                kaorios_patcher.main(
                    [
                        "patch-services",
                        "--input", str(stock_svc),
                        "--output", str(out_svc),
                        "--enable-secure-flag",
                        "--enable-corepatch",
                    ]
                ),
            )
            self.assertEqual(
                0,
                kaorios_patcher.main(
                    [
                        "patch-settings-provider",
                        "--input", str(stock_sp),
                        "--output", str(out_sp),
                    ]
                ),
            )
            self.assertEqual(
                0,
                kaorios_patcher.main(
                    [
                        "verify",
                        "--framework", str(out_fw),
                        "--services", str(out_svc),
                        "--settings-provider", str(out_sp),
                        "--payload", str(payload_path),
                        "--expect-secure-flag",
                        "--expect-corepatch",
                    ]
                ),
            )

            # SettingsProvider APK must store classes.dex uncompressed (ZIP_STORED).
            with zipfile.ZipFile(out_sp, "r") as zf:
                self.assertEqual(zipfile.ZIP_STORED, zf.getinfo("classes.dex").compress_type)

            # Re-patching already patched framework must fail clean-stock guard!
            self.assertNotEqual(
                0,
                kaorios_patcher.main(
                    [
                        "patch-framework",
                        "--input", str(out_fw),
                        "--payload", str(payload_path),
                        "--output", str(tmp / "double.jar"),
                    ]
                ),
            )

            # Verify must fail on unpatched stock archives!
            self.assertNotEqual(
                0,
                kaorios_patcher.main(
                    ["verify", "--framework", str(stock_fw), "--services", str(stock_svc)]
                ),
            )

    def test_sepolicy_checker_against_live_policy_files(self):
        se_dir = ROOT_DIR / "deployment/android17-sepolicy"
        svc_ctx = se_dir / "service_contexts.fragment"
        te_file = se_dir / "kaorios_advanced_policy.te"
        cil_file = se_dir / "kaorios_advanced_policy.cil"

        self.assertEqual([], kaorios_patcher.check_sepolicy_files(svc_ctx, te_file, "system_app"))
        self.assertEqual([], kaorios_patcher.check_sepolicy_files(svc_ctx, cil_file, "system_app"))

        with tempfile.TemporaryDirectory() as tmpdir:
            bad_te = Path(tmpdir) / "bad.te"
            bad_te.write_text(
                "type kaorios_advanced_policy_service, service_manager_type;\n"
                "allow untrusted_app kaorios_advanced_policy_service:service_manager find;\n",
                encoding="utf-8",
            )
            errs = kaorios_patcher.check_sepolicy_files(svc_ctx, bad_te, "system_app")
            self.assertTrue(any("untrusted_app" in e for e in errs))
            self.assertTrue(any("neverallow" in e for e in errs))

    def test_package_patcher_zip_is_deterministic_and_complete(self):
        with tempfile.TemporaryDirectory() as tmpdir:
            z1 = build_patcher_zip(Path(tmpdir) / "a.zip")
            z2 = build_patcher_zip(Path(tmpdir) / "b.zip")
            self.assertEqual(
                hashlib.sha256(z1.read_bytes()).hexdigest(),
                hashlib.sha256(z2.read_bytes()).hexdigest(),
            )
            with zipfile.ZipFile(z1, "r") as zf:
                self.assertEqual(sorted(BUNDLE_FILES), sorted(zf.namelist()))


if __name__ == "__main__":
    unittest.main()
