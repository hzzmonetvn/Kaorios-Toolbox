#!/usr/bin/env python3
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
"""Prepare the complete historical COPG source for the Helper module."""
import argparse
import json
from pathlib import Path
import subprocess

ROOT = Path(__file__).resolve().parents[1]
CONFIG_DIR = '/data/adb/kaorios_helper/copg'
MODULE_DIR = '/data/adb/modules/kaorios_helper'
NOTICE = '// Modified by hzzmonetvn for Kaorios Helper on 2026-10-08.\n'

CHECK_CONFIG = '''static int helperCheckConfig() {
    try {
        std::ifstream file("/data/adb/kaorios_helper/copg/COPG.json");
        if (!file) return 1;
        json config;
        file >> config;
        if (!config.is_object()) return 1;
        bool has_targets = false;
        auto check_packages = [&has_targets](const json& packages) {
            if (!packages.is_array()) return false;
            for (const auto& package : packages) {
                if (!package.is_string() || package.get<std::string>().empty()) return false;
                const auto raw = package.get<std::string>();
                const auto name = raw.substr(0, raw.find(':'));
                if (name.empty()) return false;
                for (char c : name) {
                    if (!((c >= 'a' && c <= 'z') || (c >= 'A' && c <= 'Z') || (c >= '0' && c <= '9') || c == '.' || c == '_')) return false;
                }
            }
            has_targets = has_targets || !packages.empty();
            return true;
        };
        if (config.contains("cpu_spoof")) {
            const auto& cpu = config["cpu_spoof"];
            if (!cpu.is_object()) return 1;
            for (const char* key : {"blacklist", "cpu_only_packages"}) {
                if (cpu.contains(key) && !check_packages(cpu[key])) return 1;
            }
        }
        for (const auto& item : config.items()) {
            const auto& key = item.key();
            if (key.rfind("PACKAGES_", 0) != 0) continue;
            const bool is_device = key.size() >= 7 && key.compare(key.size() - 7, 7, "_DEVICE") == 0;
            if (is_device) {
                const auto& device = item.value();
                if (!device.is_object()) return 1;
                for (const char* field : {"BRAND", "DEVICE", "MANUFACTURER", "MODEL", "FINGERPRINT", "PRODUCT", "SERIAL", "ANDROID_ID"}) {
                    if (device.contains(field) && !device[field].is_string()) return 1;
                }
                if (device.contains("PROPS")) {
                    if (!device["PROPS"].is_object()) return 1;
                    for (const auto& prop : device["PROPS"].items()) if (!prop.value().is_string()) return 1;
                }
            } else {
                if (!check_packages(item.value())) return 1;
                if (!item.value().empty() && (!config.contains(key + "_DEVICE") || !config[key + "_DEVICE"].is_object())) return 1;
            }
        }
        return has_targets ? 0 : 1;
    } catch (const std::exception&) {
        return 1;
    }
}

int main(int argc, char** argv) {
    if (argc == 2 && std::string(argv[1]) == "--check-config") return helperCheckConfig();
    if (argc != 1) return 2;
'''

MIT_LICENSE = '''MIT License

Copyright (c) 2013-2025 Niels Lohmann
Copyright (c) 2016-2021 Evan Nemerson

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
'''


def prepare(source):
    pin = json.loads((ROOT / 'upstreams.json').read_text())['copg']['commit']
    actual = subprocess.check_output(['git', '-C', str(source), 'rev-parse', 'HEAD'], text=True).strip()
    if actual != pin:
        raise ValueError('COPG source does not match the pinned commit')
    if subprocess.check_output(['git', '-C', str(source), 'status', '--porcelain'], text=True).strip():
        raise ValueError('Prepare requires a clean source checkout')
    changed = {}

    def replace(name, old, new, count=1):
        text = changed.get(name, (source / name).read_text())
        if text.count(old) != count:
            raise ValueError(f'Unexpected upstream content: {name}')
        changed[name] = text.replace(old, new)

    native = 'src/spoof_module.cpp'
    replace(native, 'REGISTER_ZYGISK_MODULE(COPGModule)',
            'zygisk::ModuleBase& helperCopgModule() { static COPGModule module; return module; }')
    replace(native, '#include <jni.h>', '#include <jni.h>\n#include "copg_config.hpp"')
    replace(native, '        std::string command = buffer;',
            '        std::string command = buffer;\n        if (helperCompanionRequest(fd, command, "' + CONFIG_DIR + '/COPG.json")) return;')
    replace(native, '        struct stat file_stat;\n        if (stat(config_path.c_str(), &file_stat) != 0) return;\n\n'
            '        time_t current_mtime = file_stat.st_mtime;\n        if (!force && current_mtime == last_config_mtime) return;\n\n'
            '        CONFIG_LOG("Loading config...");\n        std::ifstream file(config_path);\n        if (!file.is_open()) return;\n\n'
            '        try {\n            json config = json::parse(file);',
            '        if (!force) return;\n        std::string config_text;\n        if (!helperCopgConfig(api, config_text)) return;\n\n'
            '        try {\n            json config = json::parse(config_text);')
    replace(native, '            last_config_mtime = current_mtime;\n', '')
    replace(native, '        file.close();\n    }\n\n    void spoofDevice', '    }\n\n    void spoofDevice')
    replace(native, '/data/adb/modules/COPG/COPG.json', CONFIG_DIR + '/COPG.json')
    replace(native, '/data/adb/modules/COPG/cpuinfo_spoof', MODULE_DIR + '/copg/cpuinfo_spoof')
    controller = 'src/unified_controller.cpp'
    replace(controller, '    #include <sys/inotify.h>', '    #include <fcntl.h>\n    #include <sys/inotify.h>')
    replace(controller, '/data/adb/modules/COPG/COPG.json', CONFIG_DIR + '/COPG.json')
    replace(controller, '/data/adb/copg_defaults', CONFIG_DIR + '/defaults')
    replace(controller, 'int main() {\n', CHECK_CONFIG)

    data = 'webroot/js/copg-data.js'
    replace(data, "  const MODULE_DIR = '/data/adb/modules/COPG';",
            f"  const MODULE_DIR = '{MODULE_DIR}/copg';\n  const CONFIG_DIR = '{CONFIG_DIR}';")
    replace(data, '${MODULE_DIR}/COPG.json', '${CONFIG_DIR}/COPG.json')
    replace(data, "await execCommand(`echo '${shq(cfgStr)}' > ${CONFIG_PATH}`);",
            "await execCommand(`umask 077; echo '${shq(cfgStr)}' > ${CONFIG_PATH}`);")
    replace(data, "await execCommand(`echo '${shq(listStr)}' > ${LIST_PATH}`);",
            "await execCommand(`umask 077; echo '${shq(listStr)}' > ${LIST_PATH}`);")
    replace(data, 'chmod 644 ${CONFIG_PATH} ${LIST_PATH}', 'chmod 600 ${CONFIG_PATH} ${LIST_PATH}')
    replace(data, '${MODULE_DIR}/list.json', '${CONFIG_DIR}/list.json')
    replace(data, '/sdcard/Download/COPG', '/sdcard/Download/KaoriosHelper/COPG', count=2)
    replace(data, 'refs/heads/JSON/module', pin + '/module', count=2)
    replace(data, "'../COPG.json'", "'../../copg/COPG.json'")
    replace(data, "'../list.json'", "'../../copg/list.json'")
    replace(data, '/data/adb/modules/COPG/module.prop', MODULE_DIR + '/module.prop')
    replace(data, '/data/adb/modules/COPG/disable', MODULE_DIR + '/disable')
    replace(data, '/data/adb/modules/COPG/webroot/icons', MODULE_DIR + '/webroot/copg/icons')
    replace(data, '/data/adb/modules/COPG/icons_fetch.sh', MODULE_DIR + '/copg/icons_fetch.sh')
    replace(data, "const MODULE_ID = 'COPG';", "const MODULE_ID = 'kaorios_helper';")
    replace(data, "w['$' + SANITIZED_ID] || w.$COPG || w.$copg || null", "w['$' + SANITIZED_ID] || null")
    replace(data, "    else if (primary && primary.name === 'Magisk') zygisk = { variant: 'Magisk Zygisk', version: '', on: true };\n", '')
    replace('webroot/js/library.js', '/data/adb/modules/COPG', CONFIG_DIR)

    # Keep the two permissive notices verbatim and include the JSON/Hedley MIT terms.
    licenses = {'JSON-HEDLEY-LICENSE-MIT.txt': MIT_LICENSE}
    for name, destination in (('src/include/zygisk.hpp', 'ZYGISK-LICENSE-ISC.txt'),
                              ('src/atexit.cpp', 'ATEXIT-LICENSE-BSD-2-Clause.txt')):
        text = (source / name).read_text()
        if not text.startswith('/*') or '*/' not in text:
            raise ValueError(f'Missing dependency notice: {name}')
        licenses[destination] = text[:text.index('*/') + 2] + '\n'
    for name, text in changed.items():
        (source / name).write_text(NOTICE + text)
    license_dir = source / 'helper-dependencies/licenses'
    license_dir.mkdir(parents=True)
    for name, text in licenses.items():
        (license_dir / name).write_text(text)
    (source / 'KAORIOS-CHANGES.md').write_text(
        f'# Kaorios Helper COPG fork changes — 2026-10-08\n\nUpstream: {pin}\n\n'
        'Historical COPG 5.1.1 source snapshot; this is not the current COPG 7.3.0 binary.\n\n'
        'Modified by hzzmonetvn. Original copyright and licenses are retained.\n\n'
        + ''.join(f'- {name}\n' for name in changed)
        + '\nReproduce using Kaorios-Helper/tools/prepare_copg.py.\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('source', type=Path)
    args = parser.parse_args()
    prepare(args.source.resolve())
