#!/usr/bin/env python3
# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
"""Build one source-composed HMA/COPG Zygisk runtime and its controller."""
import argparse
import hashlib
import json
from pathlib import Path
import shutil
import subprocess
import tempfile

ROOT = Path(__file__).resolve().parents[1]


def check_api(loader_header, copg_header):
    loader = loader_header.read_text()
    copg = copg_header.read_text()
    if '#define ZYGISK_API_VERSION 4' not in loader:
        raise ValueError('Unsupported Zygisk API version')
    # The pinned COPG header omits this system include; the API declarations match.
    if loader.replace('#include <sys/types.h>\n', '').strip() != copg.replace('#include <sys/types.h>\n', '').strip():
        raise ValueError('COPG and ZygoteLoader Zygisk APIs differ')


def loader_without_registration(source):
    registration = 'REGISTER_ZYGISK_MODULE(ZygoteLoaderModule)'
    text = source.read_text()
    if text.count(registration) != 1:
        raise ValueError('Unexpected ZygoteLoader module registration')
    return text.replace(registration, '')


def build(copg, loader, ndk, output):
    cpp = loader / 'runtime/src/main/cpp'
    check_api(cpp / 'ext/zygisk.hpp', copg / 'src/include/zygisk.hpp')
    text = (copg / 'src/spoof_module.cpp').read_text()
    if text.count('helperCopgModule()') != 1 or 'REGISTER_ZYGISK_MODULE(COPGModule)' in text:
        raise ValueError('COPG source has not been prepared for Helper')
    if text.count('REGISTER_ZYGISK_COMPANION(companion)') != 1:
        raise ValueError('COPG companion registration is missing or duplicated')
    toolchain = ndk / 'build/cmake/android.toolchain.cmake'
    if not toolchain.is_file() or 'Pkg.Revision = 27.3.' not in (ndk / 'source.properties').read_text():
        raise ValueError('Android NDK 27.3 is required')
    adapted = loader_without_registration(cpp / 'main.cpp')
    output.mkdir(parents=True, exist_ok=True)
    with tempfile.TemporaryDirectory(prefix='helper-native-') as scratch:
        scratch = Path(scratch)
        main = scratch / 'loader-main.cpp'
        main.write_text(adapted)
        build_dir = scratch / 'build'
        subprocess.run(['cmake', '-S', str(ROOT / 'native'), '-B', str(build_dir),
                        '-DCMAKE_BUILD_TYPE=Release', '-DCMAKE_TOOLCHAIN_FILE=' + str(toolchain),
                        '-DANDROID_ABI=arm64-v8a', '-DANDROID_PLATFORM=android-31',
                        '-DANDROID_STL=c++_static', '-DCOPG_SOURCE=' + str(copg),
                        '-DZYGOTE_LOADER_SOURCE=' + str(loader), '-DZYGOTE_LOADER_MAIN=' + str(main)], check=True)
        subprocess.run(['cmake', '--build', str(build_dir), '--parallel', '2'], check=True)
        strip = next((ndk / 'toolchains/llvm/prebuilt').glob('*/bin/llvm-strip'))
        for original, target in [('libkaorios_helper.so', 'zygisk/arm64-v8a.so'),
                                 ('copg_controller', 'copg/controller')]:
            destination = output / target
            destination.parent.mkdir(parents=True, exist_ok=True)
            shutil.copyfile(build_dir / original, destination)
            subprocess.run([str(strip), '--strip-unneeded', str(destination)], check=True)
            destination.chmod(0o755)
    notices = output / 'licenses/native'
    notices.mkdir(parents=True, exist_ok=True)
    shutil.copyfile(ndk / 'NOTICE', notices / 'NDK-NOTICE')
    hashes = {}
    for source in [ROOT / 'native/helper.cpp', ROOT / 'native/CMakeLists.txt',
                   cpp / 'main.cpp', cpp / 'dex.cpp', cpp / 'atexit.cpp', cpp / 'ext/zygisk.hpp',
                   copg / 'src/spoof_module.cpp', copg / 'src/unified_controller.cpp']:
        hashes[str(source.relative_to(ROOT)) if source.is_relative_to(ROOT) else source.name] = hashlib.sha256(source.read_bytes()).hexdigest()
    (output / 'native-build.json').write_text(json.dumps({
        'abi': 'arm64-v8a', 'api': 31, 'ndk': '27.3.13750724',
        'module': 'KaoriosHelperModule', 'companion': 'COPG',
        'adaptation': 'ZygoteLoader main.cpp module registration removed; callbacks delegated by Helper.',
        'loader_main_sha256': hashlib.sha256(adapted.encode()).hexdigest(),
        'input_sha256': hashes,
    }, indent=2) + '\n')


if __name__ == '__main__':
    parser = argparse.ArgumentParser()
    parser.add_argument('--copg', type=Path, required=True)
    parser.add_argument('--zygote-loader', type=Path, required=True)
    parser.add_argument('--ndk', type=Path, required=True)
    parser.add_argument('--output', type=Path, required=True)
    args = parser.parse_args()
    build(args.copg.resolve(), args.zygote_loader.resolve(), args.ndk.resolve(), args.output.resolve())
