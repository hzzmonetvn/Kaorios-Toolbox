#!/usr/bin/env python3
"""Kaorios Android 17 Auto-Patcher (v7)

Supports automated surgical patching of Android 17 / SDK 37 smali files:
- ActivityThread.smali (process initialization hook)
- ComputerEngine.smali (Hidden App / package visibility filter hook)
- SettingsProvider.smali (per-app Advanced Settings spoof hook)
- SystemServer.smali (initSystemServer lifecycle hook)
- AndroidKeyStoreKeyPairGeneratorSpi.smali (keypair generation hook)
- AndroidKeyStoreSpi.smali (certificate chain hook)
- Instrumentation.smali & ApplicationPackageManager.smali (legacy hooks)
- Build.smali & Build$VERSION.smali (Android 17 build properties spoofing)
"""
import argparse
import difflib
import importlib.util
import os
import re
import sys
import time
from pathlib import Path

SCRIPT_DIR = Path(__file__).resolve().parent


def slow_print(text, delay=0.01):
    for line in text.splitlines():
        print(line)
        time.sleep(delay)


def _load_sibling(filename, module_name):
    target = SCRIPT_DIR / filename
    if target.is_file():
        try:
            spec = importlib.util.spec_from_file_location(module_name, target)
            mod = importlib.util.module_from_spec(spec)
            spec.loader.exec_module(mod)
            return mod
        except Exception:
            return None
    return None


mod_at = _load_sibling("patch-activitythread-a17.py", "at_patcher")
mod_ce = _load_sibling("patch-services-a17.py", "ce_patcher")
mod_ss = _load_sibling("patch-systemserver-a17.py", "ss_patcher")
mod_sp = _load_sibling("patch-settingsprovider-a17.py", "sp_patcher")


# ==========================================
# CÁC HÀM PATCH KAORIOS HOOK (ANDROID 17)
# ==========================================

def patch_activity_thread(content):
    if mod_at is not None:
        try:
            patched, changed = mod_at.patch(content)
            return patched
        except Exception:
            pass

    if "KaoriosHook;->initActivityThread" in content:
        return content

    target_assign = re.search(
        r"(?m)^(?P<indent>[ \t]*)iput-object\s+p1,\s*p0,\s*Landroid/app/ActivityThread;->mBoundApplication:Landroid/app/ActivityThread\$AppBindData;[ \t]*(?:\r?\n|$)",
        content
    )
    if target_assign:
        indent = target_assign.group("indent")
        newline = "\r\n" if "\r\n" in content else "\n"
        inject = f"{indent}invoke-static {{p1}}, Landroid/security/kaorios/KaoriosHook;->initActivityThread(Ljava/lang/Object;)V{newline}"
        return content[:target_assign.end()] + inject + content[target_assign.end():]
    return content


def patch_computer_engine(content):
    if mod_ce is not None:
        try:
            patched, changed = mod_ce.patch(content)
            return patched
        except Exception:
            pass
    return content


def patch_system_server(content):
    if mod_ss is not None:
        try:
            return mod_ss.patch(content)
        except Exception:
            pass

    if "KaoriosHook;->initSystemServer" in content:
        return content

    # Android 17 anchor: before Looper.loop() in run()V
    loop_match = re.search(r"(?m)^(?P<indent>[ \t]*)invoke-static\s*\{\},\s*Landroid/os/Looper;->loop\(\)V", content)
    if loop_match:
        indent = loop_match.group("indent")
        inject = f"{indent}invoke-static {{}}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V\n\n"
        return content[:loop_match.start()] + inject + content[loop_match.start():]

    # Fallback legacy anchor: before startOtherServices
    pattern = r'([ \t]*invoke-[^\n]*?Lcom/android/server/SystemServer;->startOtherServices\(Lcom/android/server/utils/TimingsTraceAndSlog;\)V)'
    def replacer(match):
        return "    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V\n\n" + match.group(1)
    return re.sub(pattern, replacer, content)


def patch_settings_provider(content):
    if mod_sp is not None:
        try:
            patched, changed = mod_sp.patch(content)
            return patched
        except Exception:
            pass
    return content


def patch_keystore_generator(content):
    start = content.find("generateKeyPair()Ljava/security/KeyPair;")
    if start == -1: return content
    end = content.find('.end method', start)
    if end == -1: return content

    method_body = content[start:end]
    if "KaoriosHook;->initGenerateSoftwareKeyPair" in method_body:
        return content

    match = re.search(r'\.(registers|locals)\s+(\d+)', method_body)
    if match:
        directive = match.group(1)
        old_reg = int(match.group(2))
        new_reg = old_reg + 1

        if directive == "registers":
            v_target = f"v{new_reg - 2}"
        else:
            v_target = f"v{old_reg}"

        inject = f"""
    invoke-static {{p0}}, Landroid/security/kaorios/KaoriosHook;->initGenerateSoftwareKeyPair(Ljava/lang/Object;)Ljava/security/KeyPair;
    move-result-object {v_target}

    if-eqz {v_target}, :cond_kaorios_gen_stock
    return-object {v_target}

    :cond_kaorios_gen_stock
"""
        new_body = method_body[:match.start()] + f".{directive} {new_reg}" + inject + method_body[match.end():]
        return content[:start] + new_body + content[end:]
    return content


def patch_keystore_spi(content):
    start = content.find("engineGetCertificateChain(Ljava/lang/String;)[Ljava/security/cert/Certificate;")
    if start == -1: return content
    end = content.find('.end method', start)
    if end == -1: return content

    method_body = content[start:end]
    if "KaoriosHook;->CertificateChainIfNeeded" in method_body:
        return content

    return_matches = list(re.finditer(r'return-object\s+([vp]\d+)', method_body))
    if not return_matches: return content
    last_return = return_matches[-1]
    v_return = last_return.group(1)

    block_before = method_body[:last_return.start()]
    aput_matches = list(re.finditer(r'(aput-object\s+[vp]\d+,\s*([vp]\d+),\s*[vp]\d+)', block_before))

    if aput_matches:
        last_aput = aput_matches[-1]
        vC = last_aput.group(2)
        inject = f"\n\n    invoke-static {{{vC}}}, Landroid/security/kaorios/KaoriosHook;->CertificateChainIfNeeded([Ljava/security/cert/Certificate;)[Ljava/security/cert/Certificate;\n    move-result-object {v_return}\n\n    "
        new_body = method_body[:last_aput.end()] + inject + method_body[last_aput.end():]
        return content[:start] + new_body + content[end:]
    return content


def patch_instrumentation(content):
    def patch_method(text, method_name, param):
        start = text.find(method_name)
        if start == -1: return text
        end = text.find('.end method', start)
        if end == -1: return text

        method_body = text[start:end]
        if "KaoriosHook;->initContext" in method_body:
            return text

        matches = list(re.finditer(r'(return-object\s+[vp]\d+\s*)', method_body))
        if matches:
            last_match = matches[-1]
            inject = f"invoke-static {{{param}}}, Landroid/security/kaorios/KaoriosHook;->initContext(Landroid/content/Context;)V\n\n    {last_match.group(1)}"
            new_body = method_body[:last_match.start()] + inject + method_body[last_match.end():]
            return text[:start] + new_body + text[end:]
        return text

    content = patch_method(content, "newApplication(Ljava/lang/Class;Landroid/content/Context;)Landroid/app/Application;", "p1")
    content = patch_method(content, "newApplication(Ljava/lang/ClassLoader;Ljava/lang/String;Landroid/content/Context;)Landroid/app/Application;", "p3")
    return content


def patch_app_pkg_manager(content):
    pattern = r'(\.method[^\n]*?hasSystemFeature\(Ljava/lang/String;I\)Z.*?\.end method)'

    def replacer(match):
        method_body = match.group(1)
        if "KaoriosHook;->hasSystemFeature" in method_body:
            return method_body

        reg_match = re.search(r'(\.(?:registers|locals)\s+\d+[^\n]*)', method_body)
        if reg_match:
            inject = """\n
    invoke-static {p1, p2}, Landroid/security/kaorios/KaoriosHook;->hasSystemFeature(Ljava/lang/String;I)Ljava/lang/Boolean;
    move-result-object v0

    if-eqz v0, :cond_kaorios_feature_stock
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
    move-result v0
    return v0

    :cond_kaorios_feature_stock"""
            return method_body[:reg_match.end()] + inject + method_body[reg_match.end():]
        return method_body

    return re.sub(pattern, replacer, content, flags=re.DOTALL)


# ==========================================
# CÁC HÀM PATCH ANDROID 17 SPOOF
# ==========================================

def patch_build(content):
    fields_null = [
        "BRAND", "BRAND_FOR_ATTESTATION", "DEVICE", "DEVICE_FOR_ATTESTATION",
        "FINGERPRINT", "HARDWARE", "ID", "MANUFACTURER", "MANUFACTURER_FOR_ATTESTATION",
        "MODEL", "MODEL_FOR_ATTESTATION", "PRODUCT", "PRODUCT_FOR_ATTESTATION",
        "TAGS", "TYPE", "USER"
    ]
    for f in fields_null:
        content = re.sub(rf'(\.field public static[^\n]*?)final([^\n]*? {f}:Ljava/lang/String;)', r'\1\2 = null', content)

    content = re.sub(r'(\.field public static[^\n]*?)final([^\n]*? TIME:J)', r'\1\2', content)
    return content


def patch_build_version(content):
    fields_version = [
        "RELEASE", "RELEASE_OR_CODENAME", "RELEASE_OR_PREVIEW_DISPLAY",
        "SECURITY_PATCH", "DEVICE_INITIAL_SDK_INT"
    ]
    for f in fields_version:
        content = re.sub(rf'(\.field public static[^\n]*?)final([^\n]*? {f}:[^\s]+)', r'\1\2', content)
    return content


# ==========================================
# HỆ THỐNG ĐIỀU KHIỂN
# ==========================================

def get_diff_text(old_text, new_text, filename):
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


def process_files(root_path, mode, slow=True):
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

    found_count = 0
    p = Path(root_path)

    # Single file target
    if p.is_file():
        file = p.name
        if file in targets:
            content = p.read_text(encoding="utf-8")
            patched_content = targets[file](content)
            if patched_content != content:
                diff_output = get_diff_text(content, patched_content, file)
                if slow:
                    slow_print(diff_output, delay=0.01)
                else:
                    print(diff_output)
                p.write_text(patched_content, encoding="utf-8", newline="\n")
                print(f"    [+] ĐÃ TỰ ĐỘNG LƯU: {file}\n")
            else:
                print(f"[-] {file}: Không tìm thấy đoạn code (hoặc ĐÃ ĐƯỢC PATCH TỪ TRƯỚC).")
            return 1
        else:
            print(f"[-] {file} không nằm trong danh sách mục tiêu patch.")
            return 0

    print(f"\n[*] Đang quét tự động tại thư mục: {p.resolve()} ...")
    if slow:
        time.sleep(0.5)

    for subdir, _, files in os.walk(str(p)):
        for file in files:
            if file in targets:
                filepath = os.path.join(subdir, file)
                with open(filepath, 'r', encoding='utf-8') as f:
                    content = f.read()

                patched_content = targets[file](content)

                if patched_content != content:
                    diff_output = get_diff_text(content, patched_content, file)
                    if slow:
                        slow_print(diff_output, delay=0.01)
                    else:
                        print(diff_output)

                    with open(filepath, 'w', encoding='utf-8', newline='\n') as f:
                        f.write(patched_content)
                    print(f"    [+] ĐÃ TỰ ĐỘNG LƯU: {file}\n")
                    if slow:
                        time.sleep(0.2)
                else:
                    print(f"[-] {file}: Không tìm thấy đoạn code (hoặc ĐÃ ĐƯỢC PATCH TỪ TRƯỚC).")
                found_count += 1

    print(f"\n[*] HOÀN TẤT. Đã xử lý {found_count} file mục tiêu.")
    return found_count


def main():
    parser = argparse.ArgumentParser(description="Kaorios A17 Auto-Patcher")
    parser.add_argument("path", nargs="?", default=None, help="Directory or smali file to patch")
    parser.add_argument("--mode", choices=["1", "2", "3"], default=None, help="1=Hooks, 2=Build Spoof, 3=All")
    parser.add_argument("--no-delay", action="store_true", help="Disable output animation delays")
    args = parser.parse_args()

    # Non-interactive CLI mode
    if args.path is not None and args.mode is not None:
        process_files(args.path, args.mode, slow=not args.no_delay)
        return

    # Interactive mode
    print("========================================")
    print("   TOOL PATCH KAORIOS & A17 SPOOF (V7)")
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
            return

        target_dir = args.path
        if target_dir is None:
            target_dir = input("-> Nhập đường dẫn thư mục smali (nhấn Enter để dùng thư mục hiện tại): ").strip()
            if not target_dir:
                target_dir = str(SCRIPT_DIR)

        process_files(target_dir, mode, slow=not args.no_delay)
    except Exception as e:
        print(f"\n[!] LỖI TOOL: {e}")

    print("\n" + "="*40)
    if sys.stdin.isatty():
        input(">>> NHẤN ENTER ĐỂ TẮT TOOL <<<")


if __name__ == "__main__":
    main()
