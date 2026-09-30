#!/usr/bin/env python3
"""Kaorios Android 17 Auto-Patcher (v8 - Fail-Closed & Verifier-Enforced)

Supports automated surgical patching of Android 17 / SDK 37 smali files:
- ActivityThread.smali (process initialization hook)
- ComputerEngine.smali (Hidden App / package visibility filter hook)
- SettingsProvider.smali (per-app Advanced Settings spoof hook with call & query)
- SystemServer.smali (initSystemServer lifecycle hook)
- AndroidKeyStoreKeyPairGeneratorSpi.smali (keypair generation hook)
- AndroidKeyStoreSpi.smali (certificate chain hook)
- Instrumentation.smali & ApplicationPackageManager.smali (legacy hooks)
- Build.smali & Build$VERSION.smali (Android 17 build properties spoofing)
"""
from __future__ import annotations

import argparse
import difflib
import hashlib
import importlib.util
import os
import re
import sys
import time
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent


def _unique_label(base: str, method_body: str) -> str:
    """Return base if not already a label in method_body, else base + _<hex4>."""
    candidate = base
    suffix = hashlib.sha256(method_body.encode()).hexdigest()[:4]
    while re.search(rf'(?m)^\s*{re.escape(candidate)}\s*$', method_body):
        candidate = f"{base}_{suffix}"
        suffix = hashlib.sha256((method_body + suffix).encode()).hexdigest()[:4]
    return candidate


def slow_print(text: str, delay: float = 0.01) -> None:
    for line in text.splitlines():
        print(line)
        time.sleep(delay)


def _load_sibling(filename: str, module_name: str):
    target = SCRIPT_DIR / filename
    if target.is_file():
        spec = importlib.util.spec_from_file_location(module_name, target)
        if spec and spec.loader:
            mod = importlib.util.module_from_spec(spec)
            spec.loader.exec_module(mod)
            return mod
    return None


mod_at = _load_sibling("patch-activitythread-a17.py", "at_patcher")
mod_ce = _load_sibling("patch-services-a17.py", "ce_patcher")
mod_ss = _load_sibling("patch-systemserver-a17.py", "ss_patcher")
mod_sp = _load_sibling("patch-settingsprovider-a17.py", "sp_patcher")

mod_v_fw = _load_sibling("verify-framework-a17-hooks.py", "v_fw")
mod_v_ce = _load_sibling("verify-services-a17-hooks.py", "v_ce")
mod_v_ss = _load_sibling("verify-systemserver-a17-hooks.py", "v_ss")
mod_v_sp = _load_sibling("verify-settingsprovider-a17-hooks.py", "v_sp")


class PatchStatus:
    PATCHED = "PATCHED"
    ALREADY_PATCHED = "ALREADY_PATCHED"
    UNSUPPORTED_LAYOUT = "UNSUPPORTED_LAYOUT"
    FAILED = "FAILED"
    NOT_TARGET = "NOT_TARGET"


# ==========================================
# CÁC HÀM PATCH KAORIOS HOOK (ANDROID 17)
# ==========================================

def patch_activity_thread(content: str) -> tuple[str, bool]:
    if mod_at is not None:
        patched, changed = mod_at.patch(content)
        return patched, changed

    if "KaoriosHook;->initActivityThread" in content:
        return content, False

    target_assign = re.search(
        r"(?m)^(?P<indent>[ \t]*)iput-object\s+p1,\s*p0,\s*Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread\$AppBindData;[ \t]*(?:\r?\n|$)",
        content
    )
    if target_assign:
        indent = target_assign.group("indent")
        newline = "\r\n" if "\r\n" in content else "\n"
        inject = f"{indent}invoke-static {{p1}}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V{newline}"
        return content[:target_assign.end()] + inject + content[target_assign.end():], True
    raise ValueError("ActivityThread: target anchor not found and hook missing")


def patch_computer_engine(content: str) -> tuple[str, bool]:
    if mod_ce is not None:
        return mod_ce.patch(content)
    raise ValueError("patch-services-a17.py required for ComputerEngine patch but unavailable")


def patch_system_server(content: str) -> tuple[str, bool]:
    if mod_ss is not None:
        patched = mod_ss.patch(content)
        return patched, (patched != content)

    if "KaoriosHook;->initSystemServer" in content:
        return content, False

    loop_match = re.search(r"(?m)^(?P<indent>[ \t]*)invoke-static\s*\{\},\s*Landroid/os/Looper;->loop\(\)V", content)
    if loop_match:
        indent = loop_match.group("indent")
        inject = f"{indent}invoke-static {{}}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V\n\n"
        return content[:loop_match.start()] + inject + content[loop_match.start():], True

    pattern = r'([ \t]*invoke-[^\n]*?Lcom/android/server/SystemServer;->startOtherServices\(Lcom/android/server/utils/TimingsTraceAndSlog;\)V)'
    def replacer(match):
        return "    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V\n\n" + match.group(1)
    patched = re.sub(pattern, replacer, content)
    if patched == content:
        raise ValueError("SystemServer: target anchor not found and hook missing")
    return patched, True


def patch_settings_provider(content: str) -> tuple[str, bool]:
    if mod_sp is not None:
        return mod_sp.patch(content)
    raise ValueError("patch-settingsprovider-a17.py required for SettingsProvider patch but unavailable")


def _canonicalize_param_aliases(method_body: str, registers: int, param_count: int) -> str:
    """Replace v(R-P+N) aliases with pN so .registers bump doesn't corrupt them."""
    first_param_v = registers - param_count
    for n in range(param_count):
        vN = f"v{first_param_v + n}"
        pN = f"p{n}"
        # Replace only whole-word occurrences — e.g. v5 but not v50
        method_body = re.sub(rf'\b{re.escape(vN)}\b', pN, method_body)
    return method_body


def patch_keystore_generator(content: str) -> tuple[str, bool]:
    start = content.find("generateKeyPair()Ljava/security/KeyPair;")
    if start == -1:
        raise ValueError("generateKeyPair() anchor method not found in KeyPairGeneratorSpi")
    end = content.find('.end method', start)
    if end == -1:
        raise ValueError("unterminated generateKeyPair method in KeyPairGeneratorSpi")

    method_body = content[start:end]
    if "KaoriosHook;->initGenerateSoftwareKeyPair" in method_body:
        return content, False

    match = re.search(r'\.(registers|locals)\s+(\d+)', method_body)
    if not match:
        raise ValueError(".registers or .locals directive not found in generateKeyPair")

    directive = match.group(1)
    old_reg = int(match.group(2))
    new_reg = old_reg + 1

    if directive == "registers":
        # generateKeyPair() is a virtual (non-static) method with 1 implicit param (p0=this)
        method_body = _canonicalize_param_aliases(method_body, old_reg, 1)
        v_target = f"v{new_reg - 2}"
        p0_num = new_reg - 1
    else:
        method_body = _canonicalize_param_aliases(method_body, old_reg + 1, 1)
        v_target = f"v{old_reg}"
        p0_num = old_reg + 1

    lbl = _unique_label(":cond_kaorios_gen_stock", method_body)
    if p0_num > 15:
        invoke_str = "invoke-static/range {p0 .. p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;"
    else:
        invoke_str = "invoke-static {p0}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;"

    inject = f"""
    {invoke_str}
    move-result-object {v_target}

    if-eqz {v_target}, {lbl}
    return-object {v_target}

    {lbl}
"""
    new_body = method_body[:match.start()] + f".{directive} {new_reg}" + inject + method_body[match.end():]
    return content[:start] + new_body + content[end:], True


def patch_keystore_spi(content: str) -> tuple[str, bool]:
    start = content.find("engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;")
    if start == -1:
        raise ValueError("engineGetCertificateChain anchor method not found in KeyStoreSpi")
    end = content.find('.end method', start)
    if end == -1:
        raise ValueError("unterminated engineGetCertificateChain method in KeyStoreSpi")

    method_body = content[start:end]
    if "KaoriosHook;->CertificateChainIfNeeded" in method_body:
        return content, False

    # The actual A13-A17 methods have two null returns and one populated
    # certificate array return. Match the leaf insertion immediately before
    # that return; a loop's earlier aput-object is not a safe hook point.
    pattern = re.compile(
        r'(?P<aput>aput-object\s+[vp]\d+,\s*(?P<array>[vp]\d+),\s*[vp]\d+)'
        r'(?P<gap>(?:[ \t]*\.(?:line|local|end local|restart local)[^\n]*\n|[ \t]*\n)*)'
        r'[ \t]*(?P<ret>return-object\s+(?P=array))'
    )
    matches = list(pattern.finditer(method_body))
    if not matches:
        raise ValueError("engineGetCertificateChain: leaf-array return not found")
    returns = re.findall(r'\breturn-object\s+([vp]\d+)', method_body)
    if len(returns) == 3 and len(matches) == 1:
        null_reg = returns[0]
        if returns != [null_reg, matches[0].group('array'), null_reg] or not re.search(
            rf'const/4\s+{null_reg},\s*0x0\b', method_body[:matches[0].start()]
        ):
            raise ValueError("engineGetCertificateChain: unsupported null-return layout")
    elif len(returns) != len(matches):
        raise ValueError("engineGetCertificateChain: unsupported return layout")

    reg_match = re.search(r'\.(registers|locals)\s+(\d+)', method_body)
    if not reg_match:
        raise ValueError("engineGetCertificateChain register directive not found")
    reg_count = int(reg_match.group(2))
    param_base = reg_count - 2 if reg_match.group(1) == "registers" else reg_count
    new_body = method_body
    for match in reversed(matches):
        array = match.group('array')
        physical = param_base + int(array[1:]) if array.startswith('p') else int(array[1:])
        source = f"{{{array} .. {array}}}" if physical > 15 else f"{{{array}}}"
        opcode = "invoke-static/range" if physical > 15 else "invoke-static"
        invoke = f"{opcode} {source}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;"
        inject = f"{invoke}\n    move-result-object {array}\n    "
        new_body = new_body[:match.start('ret')] + inject + new_body[match.start('ret'):]
    return content[:start] + new_body + content[end:], True


def patch_instrumentation(content: str) -> tuple[str, bool]:
    def patch_method(text: str, method_name: str, param: str) -> tuple[str, bool]:
        start = text.find(method_name)
        if start == -1:
            raise ValueError(f"{method_name} anchor method not found in Instrumentation")
        end = text.find('.end method', start)
        if end == -1:
            raise ValueError(f"unterminated {method_name} method in Instrumentation")

        method_body = text[start:end]
        header = text[text.rfind('.method', 0, start):start]
        if "Class;" in method_name and re.search(r'\bstatic\b', header):
            param = "p1"
        if "KaoriosHook;->initContext" in method_body:
            return text, False

        matches = list(re.finditer(r'(return-object\s+[vp]\d+\s*)', method_body))
        if not matches:
            raise ValueError(f"return-object not found in {method_name}")

        reg_match = re.search(r'\.(registers|locals)\s+(\d+)', method_body)
        real_reg_num = 0
        if reg_match:
            directive = reg_match.group(1)
            count = int(reg_match.group(2))
            param_num = int(param[1:])
            if directive == "registers":
                p_count = (2 if param == "p1" else 3) if "Class;" in method_name else 4
                real_reg_num = count - p_count + param_num
            else:
                real_reg_num = count + param_num

        if real_reg_num > 15:
            invoke_str = f"invoke-static/range {{{param} .. {param}}}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V"
        else:
            invoke_str = f"invoke-static {{{param}}}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V"

        # Patch every return path, not just the last one.
        # Work backwards so offsets stay valid.
        new_body = method_body
        for m in reversed(matches):
            inject = f"{invoke_str}\n\n    {m.group(1)}"
            new_body = new_body[:m.start()] + inject + new_body[m.end():]
        return text[:start] + new_body + text[end:], True

    content, c1 = patch_method(content, "newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;", "p2")
    content, c2 = patch_method(content, "newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;", "p3")
    return content, (c1 or c2)


def patch_app_pkg_manager(content: str) -> tuple[str, bool]:
    pattern = r'(\.method[^\n]*?hasSystemFeature\(Ljava/lang/String;I\)Z.*?\.end method)'
    match = re.search(pattern, content, flags=re.DOTALL)
    if not match:
        raise ValueError("hasSystemFeature(Ljava/lang/String;I)Z method not found in ApplicationPackageManager")

    method_body = match.group(1)
    if "KaoriosHook;->hasSystemFeature" in method_body:
        return content, False

    reg_match = re.search(r'\.(registers|locals)\s+(\d+)([^\n]*)', method_body)
    if not reg_match:
        raise ValueError(".registers or .locals directive not found in hasSystemFeature")

    directive = reg_match.group(1)
    old_count = int(reg_match.group(2))
    new_count = old_count + 1

    if directive == "locals":
        # .locals N: locals are v0..v{N-1}; new slot is v{N} (= v{old_count})
        scratch = f"v{old_count}"
        method_body = _canonicalize_param_aliases(method_body, old_count + 3, 3)
        scratch_num = old_count
        p1_num = old_count + 1 + 1 # p0=v{old_count+1}, p1=v{old_count+2}, p2=v{old_count+3}
        p2_num = old_count + 1 + 2
    else:
        # .registers N: total = locals + params; params for instance method with (String;I) = p0,p1,p2 = 3
        # locals = N - 3; new scratch local after bump = v{N - 3} (was v{N-4} before bump)
        param_count = 3  # p0=this, p1=String, p2=int
        method_body = _canonicalize_param_aliases(method_body, old_count, param_count)
        scratch = f"v{new_count - param_count - 1}"
        scratch_num = new_count - param_count - 1
        p1_num = new_count - param_count + 1
        p2_num = new_count - param_count + 2

    new_directive = f".{directive} {new_count}{reg_match.group(3)}"
    lbl = _unique_label(":cond_kaorios_feature_stock", method_body)

    if p1_num > 15 or p2_num > 15:
        invoke_static_str = "invoke-static/range {p1 .. p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;"
    else:
        invoke_static_str = "invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;"

    if scratch_num > 15:
        invoke_virtual_str = f"invoke-virtual/range {{{scratch} .. {scratch}}}, Ljava/lang/Boolean;->booleanValue()Z"
    else:
        invoke_virtual_str = f"invoke-virtual {{{scratch}}}, Ljava/lang/Boolean;->booleanValue()Z"

    inject = f"""
    {invoke_static_str}
    move-result-object {scratch}

    if-eqz {scratch}, {lbl}
    {invoke_virtual_str}
    move-result {scratch}
    return {scratch}

    {lbl}"""
    new_method = (
        method_body[:reg_match.start()]
        + new_directive
        + inject
        + method_body[reg_match.end():]
    )
    return content[:match.start()] + new_method + content[match.end():], True


# ==========================================
# CÁC HÀM PATCH ANDROID 17 SPOOF
# ==========================================

def patch_build(content: str) -> tuple[str, bool]:
    fields_null = [
        "BRAND", "BRAND_FOR_ATTESTATION", "DEVICE", "DEVICE_FOR_ATTESTATION",
        "FINGERPRINT", "HARDWARE", "ID", "MANUFACTURER", "MANUFACTURER_FOR_ATTESTATION",
        "MODEL", "MODEL_FOR_ATTESTATION", "PRODUCT", "PRODUCT_FOR_ATTESTATION",
        "TAGS", "TYPE", "USER"
    ]
    anchor = fields_null[0]
    if not re.search(rf'\.field public static[^\n]*? {anchor}:Ljava/lang/String;', content):
        raise ValueError(f"Build.smali: expected field {anchor} not found — unsupported layout")
    if not re.search(r'\.field public static[^\n]*? TIME:J', content):
        raise ValueError("Build.smali: expected field TIME:J not found — unsupported layout")

    patched = content
    for f in fields_null:
        patched = re.sub(rf'(\.field public static[^\n]*?)final([^\n]*? {f}:Ljava/lang/String;)', r'\1\2 = null', patched)

    patched = re.sub(r'(\.field public static[^\n]*?)final([^\n]*? TIME:J)', r'\1\2', patched)
    return patched, (patched != content)


def patch_build_version(content: str) -> tuple[str, bool]:
    fields_version = [
        "RELEASE", "RELEASE_OR_CODENAME", "RELEASE_OR_PREVIEW_DISPLAY",
        "SECURITY_PATCH", "DEVICE_INITIAL_SDK_INT"
    ]
    anchor = fields_version[0]
    if not re.search(rf'\.field public static[^\n]*? {anchor}:[^\s]+', content):
        raise ValueError(f"Build$VERSION.smali: expected field {anchor} not found — unsupported layout")

    patched = content
    for f in fields_version:
        patched = re.sub(rf'(\.field public static[^\n]*?)final([^\n]*? {f}:[^\s]+)', r'\1\2', patched)
    return patched, (patched != content)


# ==========================================
# HỆ THỐNG ĐIỀU KHIỂN & VERIFIER
# ==========================================

def get_diff_text(old_text: str, new_text: str, filename: str) -> str:
    diff = difflib.unified_diff(
        old_text.splitlines(), new_text.splitlines(),
        fromfile=f'{filename} (GỐC)', tofile=f'{filename} (ĐÃ PATCH)', lineterm=''
    )
    result = []
    has_diff = False
    for line in diff:
        has_diff = True
        if line.startswith('+') and not line.startswith('+++'): result.append(f"[THÊM] {line[1:]}")
        elif line.startswith('-') and not line.startswith('---'): result.append(f"[XÓA ] {line[1:]}")
        elif line.startswith('@@'): result.append(f"\n--- Vị trí: {line} ---")

    if has_diff:
        return f"\n[{'='*50}]\n CHI TIẾT SỬA ĐỔI FILE: {filename}\n[{'='*50}]\n" + "\n".join(result)
    return ""


def _extract_method_body(content: str, method_anchor: str, label: str) -> str:
    """Return the text of the method containing method_anchor, exclusive of .end method."""
    start = content.find(method_anchor)
    if start == -1:
        raise ValueError(f"{label}: method anchor '{method_anchor}' not found")
    end = content.find('.end method', start)
    if end == -1:
        raise ValueError(f"{label}: unterminated method at '{method_anchor}'")
    return content[start:end]


def verify_target_content(filename: str, content: str) -> None:
    """Run dedicated verification on smali content after patch or when already patched."""
    if filename == "ActivityThread.smali":
        if mod_at is not None:
            mod_at.verify(content)
    elif filename == "ComputerEngine.smali":
        if mod_ce is not None:
            mod_ce.verify(content)
    elif filename == "SystemServer.smali":
        if mod_ss is not None:
            mod_ss.verify(content)
    elif filename == "SettingsProvider.smali":
        if mod_sp is not None:
            mod_sp.verify(content)
    elif filename == "AndroidKeyStoreKeyPairGeneratorSpi.smali":
        body = _extract_method_body(
            content,
            "generateKeyPair()Ljava/security/KeyPair;",
            "AndroidKeyStoreKeyPairGeneratorSpi"
        )
        count = len(re.findall(r'KaoriosHook;->initGenerateSoftwareKeyPair', body))
        if count != 1:
            raise ValueError(
                f"AndroidKeyStoreKeyPairGeneratorSpi: expected exactly 1 initGenerateSoftwareKeyPair hook in generateKeyPair, found {count}"
            )
    elif filename == "AndroidKeyStoreSpi.smali":
        body = _extract_method_body(
            content,
            "engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;",
            "AndroidKeyStoreSpi"
        )
        returns = re.findall(r'return-object\s+([vp]\d+)', body)
        return_count = len(returns)
        hook_count = len(re.findall(r'KaoriosHook;->CertificateChainIfNeeded', body))
        if return_count == 0:
            raise ValueError("AndroidKeyStoreSpi: no return-object found in engineGetCertificateChain")
        expected_hooks = 1 if return_count == 3 else return_count
        if hook_count != expected_hooks:
            raise ValueError(
                f"AndroidKeyStoreSpi: expected {expected_hooks} CertificateChainIfNeeded hooks, found {hook_count}"
            )
        pairs = list(re.finditer(
            r'aput-object\s+[vp]\d+,\s*(?P<array>[vp]\d+),\s*[vp]\d+'
            r'(?:\s*\.(?:line|local|end local|restart local)[^\n]*\n|\s*\n)*\s*'
            r'invoke-static(?:/range)?\s*\{(?P=array)(?:\s*\.\.\s*(?P=array))?\},\s*'
            r'Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded\(\[Ljava/security/cert/Certificate;\)\[Ljava/security/cert/Certificate;\s+'
            r'move-result-object\s+(?P=array)\s+'
            r'return-object\s+(?P=array)', body
        ))
        if len(pairs) != hook_count:
            raise ValueError("AndroidKeyStoreSpi: dataflow mismatch; hook must directly dominate its return")
        if return_count == 3:
            null_reg = returns[0]
            if returns != [null_reg, pairs[0].group('array'), null_reg] or not re.search(
                rf'const/4\s+{null_reg},\s*0x0\b', body[:pairs[0].start()]
            ):
                raise ValueError("AndroidKeyStoreSpi: unsupported null-return layout")
        elif return_count != hook_count:
            raise ValueError("AndroidKeyStoreSpi: unsupported return layout")
    elif filename == "Instrumentation.smali":
        body1 = _extract_method_body(
            content,
            "newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;",
            "Instrumentation"
        )
        body2 = _extract_method_body(
            content,
            "newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;",
            "Instrumentation"
        )
        returns1 = len(re.findall(r'return-object\s+[vp]\d+', body1))
        returns2 = len(re.findall(r'return-object\s+[vp]\d+', body2))
        hooks1 = len(re.findall(r'KaoriosHook;->initContext', body1))
        hooks2 = len(re.findall(r'KaoriosHook;->initContext', body2))
        if returns1 > 0 and hooks1 != returns1:
            raise ValueError(
                f"Instrumentation: newApplication(Class,Context) expected {returns1} initContext hooks, found {hooks1}"
            )
        if returns2 > 0 and hooks2 != returns2:
            raise ValueError(
                f"Instrumentation: newApplication(ClassLoader,String,Context) expected {returns2} initContext hooks, found {hooks2}"
            )
        if hooks1 == 0 and hooks2 == 0:
            raise ValueError("Instrumentation: KaoriosHook initContext hook not found in either newApplication method")
        class_header = content[content.rfind('.method', 0, content.find("newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;")):content.find("newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;")]
        class_context = 'p1' if re.search(r'\bstatic\b', class_header) else 'p2'
        for body, context_reg in ((body1, class_context), (body2, 'p3')):
            for ret in re.finditer(r'\breturn-object\s+[vp]\d+', body):
                preceding = body[:ret.start()]
                hook = re.search(
                    rf'invoke-static(?:/range)?\s*\{{{context_reg}(?:\s*\.\.\s*{context_reg})?\}},\s*'
                    r'Landroid/security/kaorios/KaoriosHook;->initContext\(Landroid/content/Context;\)V\s*$',
                    preceding
                )
                if hook is None:
                    raise ValueError("Instrumentation: initContext must directly dominate each return with the Context parameter")
    elif filename == "ApplicationPackageManager.smali":
        pat = re.search(r'(\.method[^\n]*?hasSystemFeature\(Ljava/lang/String;I\)Z.*?\.end method)', content, flags=re.DOTALL)
        if pat is None:
            raise ValueError("ApplicationPackageManager: hasSystemFeature(Ljava/lang/String;I)Z method not found")
        body = pat.group(1)
        sequence = re.search(
            r'invoke-static(?:/range)?\s*\{p1(?:,\s*p2|\s*\.\.\s*p2)\},\s*'
            r'Landroid/security/kaorios/KaoriosHook;->hasSystemFeature\(Ljava/lang/String;I\)Ljava/lang/Boolean;\s+'
            r'move-result-object\s+(?P<scratch>v\d+)\s+'
            r'if-eqz\s+(?P=scratch),\s*(?P<label>:[\w$]+)\s+'
            r'invoke-virtual(?:/range)?\s*\{(?P=scratch)(?:\s*\.\.\s*(?P=scratch))?\},\s*'
            r'Ljava/lang/Boolean;->booleanValue\(\)Z\s+'
            r'move-result\s+(?P=scratch)\s+'
            r'return\s+(?P=scratch)\s+'
            r'(?:\.line\s+\d+\s+)*'
            r'(?P=label)\b', body
        )
        if sequence is None or body.count('KaoriosHook;->hasSystemFeature') != 1:
            raise ValueError("ApplicationPackageManager: invalid hasSystemFeature hook control flow")
        if len(re.findall(rf'(?m)^\s*{re.escape(sequence.group("label"))}\s*$', body)) != 1:
            raise ValueError("ApplicationPackageManager: stock branch target is not unique")
        prefix = body[:sequence.start()]
        prefix = re.sub(r'(?m)^\s*\.(?:method|registers|locals|param|line)\b[^\n]*$', '', prefix)
        if prefix.strip():
            raise ValueError("ApplicationPackageManager: hook is after stock logic")
    elif filename == "Build.smali":
        fields_null = [
            "BRAND", "BRAND_FOR_ATTESTATION", "DEVICE", "DEVICE_FOR_ATTESTATION",
            "FINGERPRINT", "HARDWARE", "ID", "MANUFACTURER", "MANUFACTURER_FOR_ATTESTATION",
            "MODEL", "MODEL_FOR_ATTESTATION", "PRODUCT", "PRODUCT_FOR_ATTESTATION",
            "TAGS", "TYPE", "USER"
        ]
        for f in fields_null:
            m = re.search(rf'\.field public static[^\n]* {f}:Ljava/lang/String;', content)
            if not m:
                raise ValueError(f"Build.smali post-patch: field {f} not found")
            if "final" in m.group(0):
                raise ValueError(f"Build.smali post-patch: field {f} still has 'final' modifier — patch did not apply")
        m_time = re.search(r'\.field public static[^\n]* TIME:J', content)
        if not m_time:
            raise ValueError("Build.smali post-patch: field TIME:J not found")
        if "final" in m_time.group(0):
            raise ValueError("Build.smali post-patch: field TIME:J still has 'final' modifier — patch did not apply")
    elif filename == "Build$VERSION.smali":
        fields_version = [
            "RELEASE", "RELEASE_OR_CODENAME", "RELEASE_OR_PREVIEW_DISPLAY",
            "SECURITY_PATCH", "DEVICE_INITIAL_SDK_INT"
        ]
        for f in fields_version:
            m = re.search(rf'\.field public static[^\n]* {f}:[^\s]+', content)
            if not m:
                raise ValueError(f"Build$VERSION.smali post-patch: field {f} not found")
            if "final" in m.group(0):
                raise ValueError(f"Build$VERSION.smali post-patch: field {f} still has 'final' modifier — patch did not apply")


def apply_target_patch(filename: str, content: str, targets: dict) -> tuple[str, str, str | None]:
    """Execute patch and verification for a target. Returns (status, patched_content, error_message)."""
    patch_fn = targets.get(filename)
    if patch_fn is None:
        return PatchStatus.NOT_TARGET, content, None

    try:
        patched_content, changed = patch_fn(content)
        # Verify the content satisfies all hook constraints
        verify_target_content(filename, patched_content)
        if changed:
            return PatchStatus.PATCHED, patched_content, None
        else:
            return PatchStatus.ALREADY_PATCHED, content, None
    except ValueError as e:
        msg = str(e)
        if any(term in msg.lower() for term in ("anchor", "not found", "ambiguous", "unterminated", "unsupported", "missing", "expected exactly one", "found 0")):
            return PatchStatus.UNSUPPORTED_LAYOUT, content, msg
        return PatchStatus.FAILED, content, msg
    except Exception as e:
        return PatchStatus.FAILED, content, str(e)


def run_directory_verifiers(root_path: Path, processed_filenames: set[str]) -> list[str]:
    """Run tree-level verifiers if target components were present in the directory."""
    errors = []
    if "ActivityThread.smali" in processed_filenames and mod_v_fw is not None:
        try:
            mod_v_fw.verify_caller(root_path)
        except Exception as e:
            errors.append(f"Framework verifier (ActivityThread): {e}")

    if "ComputerEngine.smali" in processed_filenames and mod_v_ce is not None:
        try:
            mod_v_ce.verify_caller(root_path)
        except Exception as e:
            errors.append(f"Services verifier (ComputerEngine): {e}")

    if "SystemServer.smali" in processed_filenames and mod_v_ss is not None:
        try:
            mod_v_ss.verify_caller(root_path)
        except Exception as e:
            errors.append(f"Services verifier (SystemServer): {e}")

    if "SettingsProvider.smali" in processed_filenames and mod_v_sp is not None:
        try:
            mod_v_sp.verify_caller(root_path)
        except Exception as e:
            errors.append(f"SettingsProvider verifier: {e}")

    return errors


def process_files(root_path: str | Path, mode: str, slow: bool = True) -> bool:
    targets = {}
    if mode in ['1', '3']:
        targets.update({
            "ActivityThread.smali": patch_activity_thread,
            "ComputerEngine.smali": patch_computer_engine,
            "SettingsProvider.smali": patch_settings_provider,
            "SystemServer.smali": patch_system_server,
            "AndroidKeyStoreKeyPairGeneratorSpi.smali": patch_keystore_generator,
            "AndroidKeyStoreSpi.smali": patch_keystore_spi,
            "Instrumentation.smali": patch_instrumentation,
            "ApplicationPackageManager.smali": patch_app_pkg_manager,
        })
    if mode in ['2', '3']:
        targets.update({
            "Build.smali": patch_build,
            "Build$VERSION.smali": patch_build_version
        })

    p = Path(root_path)

    # Single file target
    if p.is_file():
        file = p.name
        if file not in targets:
            print(f"[-] {file} không nằm trong danh sách mục tiêu patch của mode {mode}.")
            return False

        content = p.read_text(encoding="utf-8")
        status, patched_content, err_msg = apply_target_patch(file, content, targets)

        if status == PatchStatus.PATCHED:
            diff_output = get_diff_text(content, patched_content, file)
            if slow:
                slow_print(diff_output, delay=0.01)
            else:
                print(diff_output)
            p.write_bytes(patched_content.encode("utf-8"))
            print(f"    [+] ĐÃ TỰ ĐỘNG LƯU: {file} (Status: {status})\n")
            return True
        elif status == PatchStatus.ALREADY_PATCHED:
            print(f"    [=] {file}: ĐÃ ĐƯỢC PATCH TỪ TRƯỚC (Verifier PASS).\n")
            return True
        elif status == PatchStatus.UNSUPPORTED_LAYOUT:
            print(f"    [!] {file}: BỐ CỤC KHÔNG HỖ TRỢ (UNSUPPORTED LAYOUT): {err_msg}\n")
            return False
        else:
            print(f"    [!] {file}: THẤT BẠI (FAILED): {err_msg}\n")
            return False

    if not p.is_dir():
        print(f"[!] Đường dẫn không tồn tại: {p.resolve()}")
        return False

    print(f"\n[*] Đang quét tự động tại thư mục: {p.resolve()} ...")
    if slow:
        time.sleep(0.3)

    processed_targets: set[str] = set()
    patched_count = 0
    already_patched_count = 0
    unsupported_count = 0
    failed_count = 0

    for subdir, _, files in os.walk(str(p)):
        for file in files:
            if file in targets:
                filepath = Path(subdir) / file
                content = filepath.read_text(encoding="utf-8")
                status, patched_content, err_msg = apply_target_patch(file, content, targets)
                processed_targets.add(file)

                if status == PatchStatus.PATCHED:
                    diff_output = get_diff_text(content, patched_content, file)
                    if slow:
                        slow_print(diff_output, delay=0.01)
                    else:
                        print(diff_output)
                    filepath.write_bytes(patched_content.encode("utf-8"))
                    print(f"    [+] ĐÃ TỰ ĐỘNG LƯU: {file} (Status: {status})\n")
                    patched_count += 1
                    if slow:
                        time.sleep(0.1)
                elif status == PatchStatus.ALREADY_PATCHED:
                    print(f"    [=] {file}: ĐÃ ĐƯỢC PATCH TỪ TRƯỚC (Verifier PASS).\n")
                    already_patched_count += 1
                elif status == PatchStatus.UNSUPPORTED_LAYOUT:
                    print(f"    [!] {file}: BỐ CỤC KHÔNG HỖ TRỢ (UNSUPPORTED LAYOUT): {err_msg}\n")
                    unsupported_count += 1
                else:
                    print(f"    [!] {file}: THẤT BẠI (FAILED): {err_msg}\n")
                    failed_count += 1

    total_processed = patched_count + already_patched_count + unsupported_count + failed_count
    if total_processed == 0:
        print("[-] Không tìm thấy file mục tiêu nào trong thư mục.")
        return False

    # If any target encountered error or unsupported layout, fail closed
    if failed_count > 0 or unsupported_count > 0:
        print(f"\n[!] THẤT BẠI: Có {failed_count + unsupported_count} file gặp lỗi / unsupported layout.")
        return False

    # Run directory-level verifications
    tree_errors = run_directory_verifiers(p, processed_targets)
    if tree_errors:
        print("\n[!] VERIFIER CÂY THƯ MỤC THẤT BẠI:")
        for err in tree_errors:
            print(f"    - {err}")
        return False

    print(f"\n[+] HOÀN TẤT: Đã xử lý {total_processed} file mục tiêu ({patched_count} đã patch, {already_patched_count} đã patch từ trước). Tất cả verifier đều PASS.")
    return True


def main() -> None:
    parser = argparse.ArgumentParser(description="Kaorios A17 Auto-Patcher")
    parser.add_argument("path", nargs="?", default=None, help="Directory or smali file to patch")
    parser.add_argument("--mode", choices=["1", "2", "3"], default=None, help="1=Hooks, 2=Build Spoof, 3=All")
    parser.add_argument("--no-delay", action="store_true", help="Disable output animation delays")
    args = parser.parse_args()

    # Non-interactive CLI mode
    if args.path is not None and args.mode is not None:
        success = process_files(args.path, args.mode, slow=not args.no_delay)
        sys.exit(0 if success else 1)

    # Interactive mode
    print("========================================")
    print("   TOOL PATCH KAORIOS & A17 SPOOF (V8)")
    print("========================================")
    print("  [1]. Patch Kaorios Hook (ActivityThread, Services, Settings, KeyStore)")
    print("  [2]. Patch Build Spoof (Android 17)")
    print("  [3]. Patch Cả Hai (All-in-One)")

    try:
        mode = args.mode
        if mode is None:
            mode = input("\n-> Nhập lựa chọn (1/2/3): ").strip()
        if mode not in ['1', '2', '3']:
            print("Lựa chọn không hợp lệ!")
            sys.exit(1)

        target_dir = args.path
        if target_dir is None:
            target_dir = input("-> Nhập đường dẫn thư mục smali (nhấn Enter để dùng thư mục hiện tại): ").strip()
            if not target_dir:
                target_dir = str(SCRIPT_DIR)

        success = process_files(target_dir, mode, slow=not args.no_delay)
        if not success:
            sys.exit(1)
    except Exception as e:
        print(f"\n[!] LỖI TOOL: {e}")
        sys.exit(1)

    print("\n" + "="*40)
    if sys.stdin.isatty():
        input(">>> NHẤN ENTER ĐỂ TẮT TOOL <<<")


if __name__ == "__main__":
    main()
