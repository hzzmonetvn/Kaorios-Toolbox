#!/usr/bin/env python3
"""Authoritative Kaorios Toolbox hook ABI and patch specification.

Derived directly from the live Java/Kotlin/SELinux framework sources for
clean, unpatched stock Android 13-17 ROMs.
"""

from __future__ import annotations

from dataclasses import dataclass
from typing import Mapping, Sequence


# R8-kept classes inside KaoriosFramework-release.apk (classes.dex).
# See framework/proguard-rules.pro for the exact keep contract.
PAYLOAD_REQUIRED_CLASSES: Mapping[str, tuple[tuple[str, str], ...]] = {
    "Landroid/security/kaorios/KaoriosHook;": (
        ("initContext", "(Landroid/content/Context;)V"),
        ("initActivityThread", "(Ljava/lang/Object;)V"),
        ("initActivityThread", "(Ljava/lang/String;Ljava/lang/String;)V"),
        ("getSpoofedProperty", "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"),
        ("hasSystemFeature", "(Ljava/lang/String;I)Ljava/lang/Boolean;"),
        ("initGenerateSoftwareKeyPair", "(Ljava/lang/Object;)Ljava/security/KeyPair;"),
        (
            "CertificateChainIfNeeded",
            "(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;",
        ),
        (
            "shouldHideDevStatusFromNameValueCache",
            "(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;",
        ),
        ("initSystemServer", "()V"),
        ("shouldHideAppListForCaller", "(ILjava/lang/String;I)Z"),
        (
            "filterInstallerPackageName",
            "(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
        ),
        (
            "spoofFakeGAppsPackageInfo",
            "(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;",
        ),
        ("isSecureFlag", "()Z"),
    ),
    "Landroid/security/kaorios/settings/AdvancedPolicyService;": (
        ("initSystemServer", "(Landroid/content/ContentResolver;)V"),
        ("filterSettingsCall", "(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;"),
    ),
    "Lcom/kousei/framework/KaoriosFramework;": (
        ("getFrameworkVersion", "()Ljava/lang/String;"),
        ("obtainContentResolver", "()Landroid/content/ContentResolver;"),
    ),
    "Landroid/security/kaorios/settings/AdvancedPolicyClient;": (
        ("getService", "()Landroid/security/kaorios/settings/IAdvancedPolicyService;"),
        ("getRuntimeStatus", "()Landroid/security/kaorios/settings/AdvancedPolicyRuntimeStatus;"),
    ),
    "Landroid/security/kaorios/settings/AdvancedPolicyRuntimeStatus;": (),
    "Landroid/security/kaorios/settings/AdvancedPolicySnapshot;": (),
    "Landroid/security/kaorios/settings/IAdvancedPolicyService;": (),
    "Landroid/security/kaorios/settings/SettingDecisionParcel;": (),
    "Landroid/security/kaorios/settings/ServiceManagerBridge;": (),
    "Landroid/security/kaorios/KaoriosPifInstaller;": (
        ("setContext", "(Landroid/content/Context;)V"),
        ("installNativePif", "([Ljava/lang/String;[Ljava/lang/String;)I"),
        ("nativeInstallPif", "([Ljava/lang/String;[Ljava/lang/String;)I"),
    ),
    "Landroid/security/kaorios/PifNative;": (
        ("initialize", "()Landroid/security/kaorios/PifNativeStatus;"),
        ("nativeResolve", "(Ljava/lang/String;)Ljava/lang/String;"),
    ),
    "Landroid/security/kaorios/PifNativeStatus;": (),
}

# Classes/methods that MUST NOT be called from smali hooks:
# - KaoriosHooks is repackaged/obfuscated by R8 in release classes.dex.
# - No-op legacy methods on KaoriosHook do nothing and must not be hooked.
FORBIDDEN_HOOK_TOKENS: tuple[str, ...] = (
    "Landroid/security/kaorios/KaoriosHooks;",
    "Landroid/security/kaorios/KaoriosHook;->OnGetKeyEntry(",
    "Landroid/security/kaorios/KaoriosHook;->Remove(",
    "Landroid/security/kaorios/KaoriosHook;->generateKey(",
    "Landroid/security/kaorios/KaoriosHook;->filterPhenotypeQueryResult(",
)

CLEAN_STOCK_FORBIDDEN_PREFIXES: tuple[str, ...] = (
    "Landroid/security/kaorios/",
    "Lcom/kousei/framework/",
)


@dataclass(frozen=True)
class HookTargetSpec:
    """Declarative specification for one smali hook target."""

    hook_id: str
    container: str  # "framework" | "services" | "settings_provider"
    target_class: str
    callee: str
    optional: bool = False
    feature_group: str = "core"  # "core" | "secure_flag" | "corepatch" | "advanced_settings"
    fallback_classes: tuple[str, ...] = ()


FRAMEWORK_CORE_SPECS: tuple[HookTargetSpec, ...] = (
    HookTargetSpec(
        hook_id="F1_instrumentation_new_application",
        container="framework",
        target_class="Landroid/app/Instrumentation;",
        callee="Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V",
    ),
    HookTargetSpec(
        hook_id="F2_activity_thread_bind_application",
        container="framework",
        target_class="Landroid/app/ActivityThread;",
        callee="Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V",
    ),
    HookTargetSpec(
        hook_id="F3_system_properties_get",
        container="framework",
        target_class="Landroid/os/SystemProperties;",
        callee="Landroid/security/kaorios/KaoriosHook;->getSpoofedProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
    ),
    HookTargetSpec(
        hook_id="F4_package_manager_has_system_feature",
        container="framework",
        target_class="Landroid/app/ApplicationPackageManager;",
        callee="Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;",
    ),
    HookTargetSpec(
        hook_id="F5_keystore_generate_keypair",
        container="framework",
        target_class="Landroid/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi;",
        callee="Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;",
    ),
    HookTargetSpec(
        hook_id="F6_keystore_get_certificate_chain",
        container="framework",
        target_class="Landroid/security/keystore2/AndroidKeyStoreSpi;",
        callee="Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded(Ljava/lang/Object;Ljava/lang/String;[Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;",
    ),
    HookTargetSpec(
        hook_id="F7_settings_name_value_cache",
        container="framework",
        target_class="Landroid/provider/Settings$NameValueCache;",
        callee="Landroid/security/kaorios/KaoriosHook;->shouldHideDevStatusFromNameValueCache(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;",
    ),
)

SERVICES_CORE_SPECS: tuple[HookTargetSpec, ...] = (
    HookTargetSpec(
        hook_id="S1_system_server_start_other_services",
        container="services",
        target_class="Lcom/android/server/SystemServer;",
        callee="Landroid/security/kaorios/KaoriosHook;->initSystemServer()V",
    ),
    HookTargetSpec(
        hook_id="S2_package_manager_hide_app_list",
        container="services",
        target_class="Lcom/android/server/pm/ComputerEngine;",
        fallback_classes=("Lcom/android/server/pm/AppsFilterBase;",),
        callee="Landroid/security/kaorios/KaoriosHook;->shouldHideAppListForCaller(ILjava/lang/String;I)Z",
    ),
    HookTargetSpec(
        hook_id="S3_package_manager_installer_source",
        container="services",
        target_class="Lcom/android/server/pm/ComputerEngine;",
        fallback_classes=("Lcom/android/server/pm/IPackageManagerBase;",),
        callee="Landroid/security/kaorios/KaoriosHook;->filterInstallerPackageName(Landroid/content/ContentResolver;IILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;",
    ),
    HookTargetSpec(
        hook_id="S4_package_manager_fakegapps",
        container="services",
        target_class="Lcom/android/server/pm/ComputerEngine;",
        callee="Landroid/security/kaorios/KaoriosHook;->spoofFakeGAppsPackageInfo(Landroid/content/pm/PackageInfo;J)Landroid/content/pm/PackageInfo;",
    ),
)

SERVICES_SECURE_FLAG_SPECS: tuple[HookTargetSpec, ...] = (
    HookTargetSpec(
        hook_id="S5_window_state_is_secure_locked",
        container="services",
        target_class="Lcom/android/server/wm/WindowState;",
        callee="Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z",
        optional=True,
        feature_group="secure_flag",
    ),
    HookTargetSpec(
        hook_id="S5b_window_manager_is_secure_locked",
        container="services",
        target_class="Lcom/android/server/wm/WindowManagerService;",
        callee="Landroid/security/kaorios/KaoriosHook;->isSecureFlag()Z",
        optional=True,
        feature_group="secure_flag",
    ),
)

SETTINGS_PROVIDER_SPECS: tuple[HookTargetSpec, ...] = (
    HookTargetSpec(
        hook_id="SP1_settings_provider_call",
        container="settings_provider",
        target_class="Lcom/android/providers/settings/SettingsProvider;",
        callee="Landroid/security/kaorios/settings/AdvancedPolicyService;->filterSettingsCall(Ljava/lang/String;Ljava/lang/String;)Landroid/os/Bundle;",
        optional=True,
        feature_group="advanced_settings",
    ),
)

COREPATCH_CLASSES: Mapping[str, tuple[str, ...]] = {
    "framework": (
        "Landroid/content/pm/SigningDetails;",
        "Landroid/util/apk/ApkSignatureVerifier;",
    ),
    "services": (
        "Lcom/android/server/pm/PackageManagerServiceUtils;",
    ),
}

SEPOLICY_SERVICE_NAME = "kaorios_advanced_policy"
SEPOLICY_SERVICE_TYPE = "kaorios_advanced_policy_service"
SEPOLICY_CONTEXT_LINE = f"{SEPOLICY_SERVICE_NAME} u:object_r:{SEPOLICY_SERVICE_TYPE}:s0"


def class_descriptor_to_relpath(desc: str) -> str:
    """Convert ``Landroid/app/Instrumentation;`` to ``android/app/Instrumentation.smali``."""
    if not (desc.startswith("L") and desc.endswith(";")):
        raise ValueError(f"Invalid Dalvik class descriptor: {desc!r}")
    return f"{desc[1:-1]}.smali"


def required_target_classes_for_framework(enable_corepatch: bool = False) -> Sequence[str]:
    """Return every stock Dalvik class descriptor needed when patching framework.jar."""
    classes = [spec.target_class for spec in FRAMEWORK_CORE_SPECS]
    if enable_corepatch:
        classes.extend(COREPATCH_CLASSES["framework"])
    return tuple(dict.fromkeys(classes))


def required_target_classes_for_services(
    enable_secure_flag: bool = False,
    enable_corepatch: bool = False,
) -> Sequence[str]:
    """Return stock Dalvik class descriptors searched when patching services.jar."""
    classes: list[str] = []
    for spec in SERVICES_CORE_SPECS:
        classes.append(spec.target_class)
        classes.extend(spec.fallback_classes)
    if enable_secure_flag:
        for spec in SERVICES_SECURE_FLAG_SPECS:
            classes.append(spec.target_class)
    if enable_corepatch:
        classes.extend(COREPATCH_CLASSES["services"])
    return tuple(dict.fromkeys(classes))
