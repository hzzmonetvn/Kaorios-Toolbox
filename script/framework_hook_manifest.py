#!/usr/bin/env python3
"""Required framework caller owners and their existing patch implementations."""
FRAMEWORK_HOOKS = {
    'android/app/ActivityThread.smali': 'patch_activity_thread',
    'android/app/Instrumentation.smali': 'patch_instrumentation',
    'android/provider/Settings$NameValueCache.smali': 'patch_name_value_cache',
}
