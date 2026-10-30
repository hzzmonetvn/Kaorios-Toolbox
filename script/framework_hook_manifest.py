#!/usr/bin/env python3
"""Required framework caller owners and their existing patch implementations."""
FRAMEWORK_HOOKS = {
    'android/app/ActivityThread.smali': 'patch_activity_thread',
    'android/app/Instrumentation.smali': 'patch_instrumentation',
    'android/app/ApplicationPackageManager.smali': 'patch_app_pkg_manager',
    'android/provider/Settings$NameValueCache.smali': 'patch_name_value_cache',
    'android/security/keystore2/AndroidKeyStoreSpi.smali': 'patch_keystore_spi',
    'android/security/keystore2/AndroidKeyStoreKeyPairGeneratorSpi.smali': 'patch_keystore_generator',
}
