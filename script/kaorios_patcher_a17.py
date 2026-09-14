import os
import re
import difflib
import time

def slow_print(text, delay=0.01):
    for line in text.splitlines():
        print(line)
        time.sleep(delay)

# ==========================================
# CÁC HÀM PATCH KAORIOS HOOK
# ==========================================

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

def patch_system_server(content):
    if "KaoriosHook;->initSystemServer" in content:
        return content

    pattern = r'([ \t]*invoke-[^\n]*?Lcom/android/server/SystemServer;->startOtherServices\(Lcom/android/server/utils/TimingsTraceAndSlog;\)V)'
    def replacer(match):
        return "    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V\n\n" + match.group(1)
        
    return re.sub(pattern, replacer, content)

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

def process_files(root_dir, mode):
    targets = {}
    if mode in ['1', '3']:
        targets.update({
            "Instrumentation.smali": patch_instrumentation,
            "ApplicationPackageManager.smali": patch_app_pkg_manager,
            "AndroidKeyStoreKeyPairGeneratorSpi.smali": patch_keystore_generator,
            "AndroidKeyStoreSpi.smali": patch_keystore_spi,
            "SystemServer.smali": patch_system_server,
        })
    if mode in ['2', '3']:
        targets.update({
            "Build.smali": patch_build,
            "Build$VERSION.smali": patch_build_version
        })
    
    found_count = 0
    print(f"\n[*] Đang quét tự động tại thư mục: {os.path.abspath(root_dir)} ...")
    time.sleep(1)
    
    for subdir, _, files in os.walk(root_dir):
        for file in files:
            if file in targets:
                filepath = os.path.join(subdir, file)
                with open(filepath, 'r', encoding='utf-8') as f:
                    content = f.read()
                
                patched_content = targets[file](content)
                
                if patched_content != content:
                    diff_output = get_diff_text(content, patched_content, file)
                    slow_print(diff_output, delay=0.03)
                    
                    with open(filepath, 'w', encoding='utf-8', newline='\n') as f:
                        f.write(patched_content)
                    print(f"    [+] ĐÃ TỰ ĐỘNG LƯU: {file}\n")
                    time.sleep(0.5)
                else:
                    print(f"\n[-] {file}: Không tìm thấy đoạn code (hoặc ĐÃ ĐƯỢC PATCH TỪ TRƯỚC).")
                    time.sleep(0.2)
                found_count += 1
                
    print(f"\n[*] HOÀN TẤT. Đã quét qua {found_count}/{len(targets)} file mục tiêu.")

if __name__ == "__main__":
    print("========================================")
    print("   TOOL PATCH KAORIOS & A17 SPOOF (V6 - FINAL)")
    print("========================================")
    print("  [1]. Patch Kaorios Hook")
    print("  [2]. Patch Build Spoof (Android 17)")
    print("  [3]. Patch Cả Hai (All-in-One)")
    
    try:
        mode = input("\n-> Nhập lựa chọn (1/2/3): ").strip()
        if mode not in ['1', '2', '3']:
            print("Lựa chọn không hợp lệ!")
        else:
            work_dir = os.path.dirname(os.path.abspath(__file__))
            process_files(work_dir if work_dir else ".", mode)
    except Exception as e:
        print(f"\n[!] LỖI TOOL: {e}")
        
    print("\n" + "="*40)
    input(">>> NHẤN ENTER ĐỂ TẮT TOOL <<<")