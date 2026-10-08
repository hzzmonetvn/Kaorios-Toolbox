# SPDX-License-Identifier: AGPL-3.0-only
# Copyright (C) 2026 hzzmonetvn
from pathlib import Path
import json
import os
import signal
import subprocess
import tempfile
import time
import unittest

ROOT = Path(__file__).resolve().parents[1]


class CombinedLifecycleTest(unittest.TestCase):
    def setUp(self):
        self.temp = tempfile.TemporaryDirectory()
        self.addCleanup(self.temp.cleanup)
        self.base = Path(self.temp.name)
        self.adb = self.base / 'adb'
        self.module = self.adb / 'modules/kaorios_helper'
        self.config = self.adb / 'kaorios_helper'
        self.module.mkdir(parents=True)
        for component in ('tee', 'copg'):
            (self.module / component).mkdir()
            (self.config / component).mkdir(parents=True)
        self.script = (ROOT / 'module/helperctl.sh').read_text().replace('/data/adb', str(self.adb))
        self.script = self.script.replace('id -u', 'printf 0')
        self.ctl = self.module / 'helperctl.sh'
        self.ctl.write_text(self.script)
        (self.module / 'module.prop').write_text('version=host-lifecycle-fixture\n')
        (self.module / 'zygisk.sh').write_text((ROOT / 'module/zygisk.sh').read_text().replace('/data/adb', str(self.adb)))
        provider = self.adb / 'modules/zygisk_provider'
        (provider / 'bin').mkdir(parents=True)
        (provider / 'module.prop').write_text('id=zygisk_provider\n')
        (provider / 'bin/zygiskd').touch()
        self.env = dict(os.environ, KSU='true', APATCH='', ZYGISK_ENABLED='')
        (self.config / 'tee/keybox.xml').write_text('opaque host-owned placeholder')
        (self.config / 'tee/target.txt').write_text('com.example.target\n')
        for name in ('daemon', 'inject', 'libTEESimulator.so', 'libcertgen.so', 'classes.dex'):
            (self.module / 'tee' / name).write_text('host runtime boundary')
        self.copg_config = self.config / 'copg/COPG.json'
        self.copg_config.write_text('configured host target\n')
        self.binary = self.base / 'runtime'
        source = self.base / 'runtime.c'
        source.write_text(r'''
#include <fcntl.h>
#include <signal.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
static volatile sig_atomic_t stopping;
static void on_term(int signo) { (void)signo; stopping = 1; }
int main(int argc, char **argv) {
    char path[4096];
    if (argc == 2 && strcmp(argv[1], "--check-config") == 0) {
        const char *gate = getenv("TEST_CONFIG_GATE");
        if (gate) {
            snprintf(path, sizeof(path), "%s.entered", gate);
            FILE *f = fopen(path, "w"); if (!f) return 1; fclose(f);
            while (access(gate, F_OK) != 0) usleep(10000);
        }
        FILE *f = fopen(CONFIG_PATH, "r");
        if (!f) return 1;
        char text[128] = {0}; fgets(text, sizeof(text), f); fclose(f);
        return strcmp(text, "configured host target\n") != 0;
    }
    snprintf(path, sizeof(path), "%s.pids", argv[0]);
    FILE *f = fopen(path, "a"); if (!f) return 1;
    fprintf(f, "%d\n", getpid()); fclose(f);
    snprintf(path, sizeof(path), "%s.fd9", argv[0]);
    f = fopen(path, "w"); if (!f) return 1;
    fprintf(f, "%s\n", fcntl(9, F_GETFD) == -1 ? "closed" : "inherited"); fclose(f);
    signal(SIGTERM, on_term);
    if (getenv("TEST_EXIT_ON_START")) return 1;
    for (int i = 0; i < 3000 && !stopping; ++i) usleep(10000);
    if (stopping) {
        snprintf(path, sizeof(path), "%s.stopped", argv[0]);
        f = fopen(path, "w"); if (f) { fputs("graceful\n", f); fclose(f); }
    }
    return 0;
}
'''.replace('CONFIG_PATH', json.dumps(str(self.copg_config))))
        subprocess.run(['cc', str(source), '-o', str(self.binary)], check=True, capture_output=True)
        for target in ('tee/supervisor', 'copg/controller'):
            runtime = self.module / target
            runtime.write_bytes(self.binary.read_bytes())
            runtime.chmod(0o755)
        self.addCleanup(self.cleanup_processes)

    def cleanup_processes(self):
        for relative in ('tee/supervisor', 'copg/controller'):
            executable = self.module / relative
            log = Path(str(executable) + '.pids')
            if not log.exists():
                continue
            for value in log.read_text().splitlines():
                try:
                    if os.readlink('/proc/' + value + '/exe') == str(executable):
                        os.kill(int(value), signal.SIGKILL)
                except (FileNotFoundError, ProcessLookupError):
                    pass

    def run_ctl(self, action, **kwargs):
        return subprocess.run(['sh', str(self.ctl), action], text=True, capture_output=True,
                              timeout=6, env=self.env, **kwargs)

    def spawn_ctl(self, action, boundary='', env=None):
        if boundary:
            command = ['sh', '-c', boundary + self.script, str(self.ctl), action]
        else:
            command = ['sh', str(self.ctl), action]
        process = subprocess.Popen(command, stdout=subprocess.PIPE, stderr=subprocess.PIPE,
                                   text=True, env=env or self.env)
        def cleanup_cli():
            if process.poll() is None:
                process.kill()
            process.communicate(timeout=6)
        self.addCleanup(cleanup_cli)
        return process

    def wait_file(self, path):
        deadline = time.monotonic() + 4
        while not path.exists():
            if time.monotonic() >= deadline:
                self.fail('Timed out waiting for ' + str(path))
            time.sleep(0.01)

    def assert_success(self, process):
        stdout, stderr = process.communicate(timeout=6)
        self.assertEqual(0, process.returncode, stdout + stderr)

    def test_combined_first_boot_stays_off_and_does_not_require_flock(self):
        script = self.script.replace('command -v flock', 'false')
        self.ctl.write_text(script)
        result = self.run_ctl('start')
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        self.assertIn('TEE and COPG are disabled.', result.stdout)
        self.assertEqual(0, self.run_ctl('status').returncode)
        self.assertFalse((self.config / 'lifecycle.lock').exists())
        self.assertFalse((self.config / 'tee.enabled').exists())
        self.assertFalse((self.config / 'copg.enabled').exists())

    def test_missing_flock_refuses_changes_before_persisting_opt_in(self):
        self.ctl.write_text(self.script.replace('command -v flock', 'false'))
        for action, marker in (('enable-tee', 'tee.enabled'), ('enable-copg', 'copg.enabled')):
            result = self.run_ctl(action)
            self.assertNotEqual(0, result.returncode)
            self.assertIn('flock is required', result.stdout)
            self.assertFalse((self.config / marker).exists())

    def test_concurrent_starts_launch_exactly_one_owned_runtime_per_component(self):
        (self.config / 'tee.enabled').touch()
        (self.config / 'copg.enabled').touch()
        # Delay the existing preparation boundary to expose the pre-lock start race.
        boundary = '''chmod() {
    if [ "$1" = 700 ] && [ "$2" = "$CONFIG" ]; then sleep 0.08; fi
    command chmod "$@"
}
'''
        processes = [self.spawn_ctl('start', boundary) for _ in range(8)]
        for process in processes:
            self.assert_success(process)
        for relative in ('tee/supervisor', 'copg/controller'):
            runtime = self.module / relative
            self.wait_file(Path(str(runtime) + '.pids'))
            self.assertEqual(1, len(Path(str(runtime) + '.pids').read_text().splitlines()))
            self.assertEqual('closed\n', Path(str(runtime) + '.fd9').read_text())
        self.assertEqual(0, self.run_ctl('stop').returncode)
        self.assertFalse((self.config / 'tee-supervisor.pid').exists())
        self.assertFalse((self.config / 'copg-controller.pid').exists())

    def test_disable_waits_for_concurrent_enable_and_leaves_controller_off(self):
        gate = self.base / 'config-check-gate'
        enable = self.spawn_ctl('enable-copg', env=dict(self.env, TEST_CONFIG_GATE=str(gate)))
        try:
            self.wait_file(Path(str(gate) + '.entered'))
            disable = self.spawn_ctl('disable-copg')
            time.sleep(0.05)
            self.assertIsNone(disable.poll(), 'disable must wait for the running state transaction')
            gate.touch()
            self.assert_success(enable)
            self.assert_success(disable)
        finally:
            if enable.poll() is None:
                enable.kill()
                enable.wait()
        self.assertFalse((self.config / 'copg.enabled').exists())
        self.assertFalse((self.config / 'copg-controller.pid').exists())
        self.assertEqual('graceful\n', (self.module / 'copg/controller.stopped').read_text())
        self.assertEqual('configured host target\n', self.copg_config.read_text())

    def test_crashed_cli_does_not_leave_a_stale_kernel_lock(self):
        boundary = '''chmod() {
    if [ "$1" = 700 ] && [ "$2" = "$COPG_CONFIG" ]; then
        touch "$CONFIG/blocked"
        while [ ! -f "$CONFIG/release" ]; do :; done
    fi
    command chmod "$@"
}
'''
        process = self.spawn_ctl('enable-copg', boundary)
        try:
            self.wait_file(self.config / 'blocked')
            process.kill()
            process.wait(timeout=3)
            result = self.run_ctl('disable-copg')
            self.assertEqual(0, result.returncode, result.stdout + result.stderr)
            self.assertFalse((self.config / 'copg.enabled').exists())
            self.assertFalse((self.config / 'copg-controller.pid').exists())
        finally:
            if process.poll() is None:
                process.kill()
                process.wait()

    def test_crashed_cli_cannot_leave_an_unrecorded_child_runtime(self):
        script = self.script.replace('exec 9>&-', '''touch "$helper_pidfile.published"
        while [ ! -f "$helper_pidfile.release" ]; do :; done
        exec 9>&-''')
        self.ctl.write_text(script)
        process = self.spawn_ctl('enable-copg')
        published = self.config / 'copg-controller.pid.published'
        release = self.config / 'copg-controller.pid.release'
        try:
            self.wait_file(published)
            process.kill()
            process.wait(timeout=3)
            self.assertTrue((self.config / 'copg-controller.pid').exists())
            disable = self.spawn_ctl('disable-copg')
            time.sleep(0.05)
            self.assertIsNone(disable.poll(), 'the publishing child still owns the transaction lock')
            release.touch()
            self.assert_success(disable)
            self.assertFalse((self.config / 'copg.enabled').exists())
            self.assertFalse((self.config / 'copg-controller.pid').exists())
            self.assertEqual('graceful\n', (self.module / 'copg/controller.stopped').read_text())
        finally:
            release.touch()

    def test_controller_exiting_during_start_does_not_leave_copg_enabled(self):
        self.env['TEST_EXIT_ON_START'] = '1'
        result = self.run_ctl('enable-copg')
        self.assertNotEqual(0, result.returncode)
        self.assertTrue('controller exited during startup' in result.stdout or 'Runtime failed to start' in result.stdout)
        self.assertFalse((self.config / 'copg.enabled').exists())
        self.assertNotIn('COPG controller: running', self.run_ctl('status').stdout)

    def test_bad_tee_configuration_does_not_prevent_enabled_copg_start(self):
        (self.config / 'tee.enabled').touch()
        (self.config / 'copg.enabled').touch()
        (self.config / 'tee/target.txt').write_text('')
        result = self.run_ctl('start')
        self.assertNotEqual(0, result.returncode)
        self.assertFalse((self.config / 'tee-supervisor.pid').exists())
        self.assertTrue((self.config / 'copg-controller.pid').exists())
        self.assertIn('COPG controller: running', self.run_ctl('status').stdout)

    def test_bad_copg_configuration_does_not_prevent_enabled_tee_start(self):
        (self.config / 'tee.enabled').touch()
        (self.config / 'copg.enabled').touch()
        self.copg_config.write_text('invalid config\n')
        result = self.run_ctl('start')
        self.assertNotEqual(0, result.returncode)
        self.assertTrue((self.config / 'tee-supervisor.pid').exists())
        self.assertFalse((self.config / 'copg-controller.pid').exists())

    def test_copg_enable_rejects_bad_config_builtin_runtime_and_conflicts(self):
        for content in ('', 'invalid config\n'):
            self.copg_config.write_text(content)
            self.assertNotEqual(0, self.run_ctl('enable-copg').returncode)
            self.assertFalse((self.config / 'copg.enabled').exists())
        self.copg_config.write_text('configured host target\n')
        (self.adb / 'modules/zygisk_provider/disable').touch()
        self.env.update(KSU='', ZYGISK_ENABLED='1')
        self.assertNotEqual(0, self.run_ctl('enable-copg').returncode)
        self.assertFalse((self.config / 'copg.enabled').exists())
        self.env.update(KSU='true', ZYGISK_ENABLED='')
        (self.adb / 'modules/zygisk_provider/disable').unlink()
        conflict = self.adb / 'modules_update/COPG'
        conflict.mkdir(parents=True)
        (conflict / 'module.prop').touch()
        result = self.run_ctl('enable-copg')
        self.assertNotEqual(0, result.returncode)
        self.assertIn('Conflicting module: COPG', result.stdout)
        self.assertFalse((self.config / 'copg.enabled').exists())

    def test_copg_opt_in_rejects_disabled_removing_or_pending_runtime(self):
        for state in ('disable', 'remove'):
            marker = self.module / state
            marker.touch()
            self.assertNotEqual(0, self.run_ctl('enable-copg').returncode)
            self.assertFalse((self.config / 'copg.enabled').exists())
            marker.unlink()
        pending = self.adb / 'modules_update/zygisk_provider'
        (pending / 'bin').mkdir(parents=True)
        (pending / 'module.prop').touch()
        (pending / 'bin/zygiskd').touch()
        self.assertNotEqual(0, self.run_ctl('enable-copg').returncode)
        self.assertFalse((self.config / 'copg.enabled').exists())

    def test_copg_disable_never_kills_foreign_pid_or_removes_user_config(self):
        process = subprocess.Popen(['sleep', '20'])
        self.addCleanup(lambda: (process.terminate(), process.wait()))
        (self.config / 'copg-controller.pid').write_text(str(process.pid))
        (self.config / 'copg.enabled').touch()
        defaults = self.config / 'copg/defaults'
        defaults.write_text('user controller recovery state\n')
        result = self.run_ctl('disable-copg')
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        self.assertIsNone(process.poll())
        self.assertEqual('configured host target\n', self.copg_config.read_text())
        self.assertEqual('user controller recovery state\n', defaults.read_text())
        self.assertFalse((self.config / 'copg-controller.pid').exists())

    def test_stale_pid_birth_cannot_match_an_unrelated_live_process(self):
        process = subprocess.Popen(['sleep', '20'])
        self.addCleanup(lambda: (process.terminate(), process.wait()))
        pidfile = self.config / 'copg-controller.pid'
        pidfile.write_text(f'{process.pid} 0\n')
        result = self.run_ctl('enable-copg')
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        self.assertIsNone(process.poll())
        self.assertNotEqual(str(process.pid), pidfile.read_text().split()[0])

    def test_dead_owned_runtime_can_restart_from_its_stale_process_record(self):
        self.assertEqual(0, self.run_ctl('enable-copg').returncode)
        pidfile = self.config / 'copg-controller.pid'
        old_pid = int(pidfile.read_text().split()[0])
        os.kill(old_pid, signal.SIGKILL)
        deadline = time.monotonic() + 3
        while Path(f'/proc/{old_pid}/exe').exists():
            if time.monotonic() >= deadline:
                self.fail('Owned runtime did not exit')
            time.sleep(0.01)
        result = self.run_ctl('start')
        self.assertEqual(0, result.returncode, result.stdout + result.stderr)
        self.assertNotEqual(old_pid, int(pidfile.read_text().split()[0]))
        self.assertEqual(2, len((self.module / 'copg/controller.pids').read_text().splitlines()))

    def test_failed_stop_keeps_identity_instead_of_orphaning_a_live_runtime(self):
        self.assertEqual(0, self.run_ctl('enable-copg').returncode)
        pidfile = self.config / 'copg-controller.pid'
        identity = pidfile.read_text()
        # Model signals that cannot complete yet without leaving a real blocked process.
        process = self.spawn_ctl('disable-copg', 'kill() { return 0; }\n')
        stdout, stderr = process.communicate(timeout=6)
        self.assertNotEqual(0, process.returncode, stdout + stderr)
        self.assertIn('keeping its process record', stdout)
        self.assertEqual(identity, pidfile.read_text())
        self.assertFalse((self.config / 'copg.enabled').exists())


if __name__ == '__main__':
    unittest.main()
