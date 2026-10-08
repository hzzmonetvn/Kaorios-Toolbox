# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
import importlib.util
from pathlib import Path
import shutil
import subprocess
import tempfile
import unittest

ROOT = Path(__file__).resolve().parents[1]
spec = importlib.util.spec_from_file_location('build_native', ROOT / 'tools/build_native.py')
builder = importlib.util.module_from_spec(spec)
spec.loader.exec_module(builder)

HEADER = r'''
#pragma once
#include <fcntl.h>
#include <string>
#include <vector>
#include <unistd.h>
#define ZYGISK_API_VERSION 4
struct JNIEnv {};
inline std::vector<std::string> calls;
namespace zygisk {
struct AppSpecializeArgs {};
struct ServerSpecializeArgs {};
enum Option { DLCLOSE_MODULE_LIBRARY = 1 };
struct Api {
    int dir = -1;
    int unloads = 0;
    int connectCompanion() { return -1; }
    int getModuleDir() { return dir < 0 ? -1 : dup(dir); }
    void setOption(Option) { ++unloads; }
};
class ModuleBase {
public:
    virtual ~ModuleBase() = default;
    virtual void onLoad(Api*, JNIEnv*) {}
    virtual void preAppSpecialize(AppSpecializeArgs*) {}
    virtual void postAppSpecialize(const AppSpecializeArgs*) {}
    virtual void preServerSpecialize(ServerSpecializeArgs*) {}
    virtual void postServerSpecialize(const ServerSpecializeArgs*) {}
};
}
class ZygoteLoaderModule : public zygisk::ModuleBase {
public:
    void onLoad(zygisk::Api* api, JNIEnv*) override {
        calls.push_back("hma-load");
        api->setOption(zygisk::DLCLOSE_MODULE_LIBRARY);
    }
    void preServerSpecialize(zygisk::ServerSpecializeArgs*) override { calls.push_back("hma-pre"); }
    void postServerSpecialize(const zygisk::ServerSpecializeArgs*) override { calls.push_back("hma-post"); }
};
#define REGISTER_ZYGISK_MODULE(clazz)
'''
HARNESS = r'''
#include "helper.cpp"
#include <cassert>
#include <fstream>
#include <cstdio>
class Copg : public zygisk::ModuleBase {
public:
    void onLoad(zygisk::Api*, JNIEnv*) override { calls.push_back("copg-load"); }
    void preAppSpecialize(zygisk::AppSpecializeArgs*) override { calls.push_back("copg-pre"); }
    void postAppSpecialize(const zygisk::AppSpecializeArgs*) override { calls.push_back("copg-post"); }
};
zygisk::ModuleBase& helperCopgModule() { static Copg copg; return copg; }
int main(int argc, char** argv) {
    assert(argc == 4);
    std::string mode = argv[1];
    zygisk::Api api;
    api.dir = mode == "missing-dir" ? -1 : open(argv[2], O_RDONLY | O_DIRECTORY);
    assert(mode == "missing-dir" || api.dir >= 0);
    JNIEnv env;
    KaoriosHelperModule module;
    module.onLoad(&api, &env);
    assert(calls.empty() && api.unloads == 0);
    zygisk::AppSpecializeArgs app;
    zygisk::ServerSpecializeArgs server;
    if (mode == "server") {
        module.preServerSpecialize(&server);
        module.postServerSpecialize(&server);
        assert((calls == std::vector<std::string>{"hma-load", "hma-pre", "hma-post"}));
        assert(api.unloads == 1);
    } else {
        module.preAppSpecialize(&app);
        // After specialization the app cannot read the root-owned opt-in file.
        if (mode == "enabled") std::remove(argv[3]);
        module.postAppSpecialize(&app);
        if (mode == "enabled") {
            assert((calls == std::vector<std::string>{"copg-load", "copg-pre", "copg-post"}));
            assert(api.unloads == 0);
        } else {
            assert(calls.empty() && api.unloads == 1);
        }
    }
    if (api.dir >= 0) close(api.dir);
}
'''


class NativeRoutingTest(unittest.TestCase):
    @classmethod
    def setUpClass(cls):
        compiler = shutil.which('c++')
        if compiler is None:
            raise unittest.SkipTest('Host C++ compiler is required')
        cls.temp = tempfile.TemporaryDirectory()
        cls.addClassCleanup(cls.temp.cleanup)
        cls.base = Path(cls.temp.name)
        cls.module = cls.base / 'module'
        cls.module.mkdir()
        cls.flag = cls.base / 'copg.enabled'
        (cls.base / 'main.hpp').write_text(HEADER)
        source = (ROOT / 'native/helper.cpp').read_text()
        source = source.replace('/data/adb/kaorios_helper/copg.enabled', str(cls.flag))
        (cls.base / 'helper.cpp').write_text(source)
        (cls.base / 'copg_config.hpp').write_text((ROOT / 'native/copg_config.hpp').read_text())
        (cls.base / 'test.cpp').write_text(HARNESS.replace('FLAG_PATH', str(cls.flag)))
        cls.binary = cls.base / 'routing-test'
        subprocess.run([compiler, '-std=c++17', '-Wall', '-Wextra', '-Werror',
                        '-pthread', str(cls.base / 'test.cpp'), '-o', str(cls.binary)], check=True, capture_output=True)

    def tearDown(self):
        self.flag.unlink(missing_ok=True)
        for marker in ('disable', 'remove'):
            (self.module / marker).unlink(missing_ok=True)

    def run_case(self, case):
        subprocess.run([str(self.binary), case, str(self.module), str(self.flag)],
                       check=True, capture_output=True, timeout=5)

    def test_hma_initializes_only_in_system_server(self):
        self.flag.touch()
        self.run_case('server')

    def test_disabled_copg_never_initializes_in_app(self):
        self.run_case('disabled')

    def test_enabled_copg_survives_until_post_callback_without_hma_dlclose(self):
        self.flag.touch()
        self.run_case('enabled')

    def test_disabled_or_removing_module_rejects_copg_opt_in(self):
        for marker in ('disable', 'remove'):
            with self.subTest(marker=marker):
                self.flag.touch()
                (self.module / marker).touch()
                self.run_case(marker)
                (self.module / marker).unlink()

    def test_missing_module_directory_fails_closed(self):
        self.flag.touch()
        self.run_case('missing-dir')


class NativeInputsTest(unittest.TestCase):
    def test_headers_must_have_matching_api_and_layout(self):
        with tempfile.TemporaryDirectory() as directory:
            loader = Path(directory) / 'loader.hpp'
            copg = Path(directory) / 'copg.hpp'
            loader.write_text('#include <sys/types.h>\n#define ZYGISK_API_VERSION 4\nstruct Args {};\n')
            copg.write_text('#define ZYGISK_API_VERSION 4\nstruct Args {};')
            builder.check_api(loader, copg)
            copg.write_text('#define ZYGISK_API_VERSION 4\nstruct Args { int extra; };')
            with self.assertRaisesRegex(ValueError, 'APIs differ'):
                builder.check_api(loader, copg)
            loader.write_text('#define ZYGISK_API_VERSION 5\n')
            with self.assertRaisesRegex(ValueError, 'API version'):
                builder.check_api(loader, copg)

    def test_loader_registration_is_removed_once_without_touching_callbacks(self):
        with tempfile.TemporaryDirectory() as directory:
            path = Path(directory) / 'main.cpp'
            source = 'void preServerSpecialize() {}\nREGISTER_ZYGISK_MODULE(ZygoteLoaderModule)\n'
            path.write_text(source)
            self.assertEqual('void preServerSpecialize() {}\n\n', builder.loader_without_registration(path))
            self.assertEqual(source, path.read_text())
            path.write_text(source + source)
            with self.assertRaisesRegex(ValueError, 'registration'):
                builder.loader_without_registration(path)


if __name__ == '__main__':
    unittest.main()
