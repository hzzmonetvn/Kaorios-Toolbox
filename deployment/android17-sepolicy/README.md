# Android 17 Advanced Policy Service SELinux Policy & Deployment Specification

## 1. Executive Summary and Threat Model

This specification defines the SELinux mandatory access control (MAC) policies, `service_contexts` mappings, and cross-domain IPC boundaries required to host and access the `kaorios_advanced_policy` Binder service under strict SELinux Enforcing mode on Android 17 (API 37 / SDK 37).

### Security Posture and Invariants
- **Enforcing Mode Mandatory**: All policies are designed to operate strictly under `getenforce == Enforcing`. Setting SELinux to `Permissive` is strictly prohibited.
- **Service Name**: `kaorios_advanced_policy`
- **SELinux Object Type**: `kaorios_advanced_policy_service`
- **Core Attributes**: `service_manager_type`, `system_server_service`
- **Service Context Mapping**:
  ```text
  kaorios_advanced_policy    u:object_r:kaorios_advanced_policy_service:s0
  ```

```
SELinux Authorization Topology
┌────────────────────────────────────────────────────────────────────────┐
│                        ServiceManager (AOSP)                           │
│  Enforces MAC access rules based on client process SELinux domain      │
└──────────────────────────────────┬─────────────────────────────────────┘
                                   │
         ┌─────────────────────────┴─────────────────────────┐
         │ allow system_server (add/find)                    │ allow <settings_domain> (find)
         ▼                                                   ▼
┌──────────────────────────────────┐        ┌──────────────────────────────────┐
│          system_server           │        │    SettingsProvider Process      │
│  Registers and hosts service     │◀───────│  (u:r:system_app:s0 or dedicated)│
│  (u:r:system_server:s0)          │ Binder │  Queries policy for caller checks│
└──────────────────────────────────┘        └──────────────────────────────────┘
         ▲                                                   │
         │ NEVERALLOW                                        │ NEVERALLOW
         └─────────────────────────┬─────────────────────────┘
                                   │
                        ┌─────────────────────┐
                        │  untrusted_app_all  │
                        │  (Third-Party Apps) │
                        └─────────────────────┘
```

---

## 2. Dual-Layer Authorization Architecture

Security enforcement relies on two complementary isolation layers:

### 2.1 Authoritative Process Authorization (SELinux MAC)
- Android `ServiceManager` validates `service_manager find` requests against the caller process's security context.
- Unprivileged domains (`untrusted_app`, `untrusted_app_25`, `untrusted_app_27`, `untrusted_app_29`, `untrusted_app_30`, `untrusted_app_32`) are blocked by explicit `neverallow` rules from finding or interacting with the service.

### 2.2 Secondary Sanity Guard (Binder Calling UID)
- Inside `AdvancedPolicyService.evaluateSetting()` and `AdvancedPolicyService.getRuntimeStatus()`, `Binder.getCallingUid()` acts as a secondary defense-in-depth barrier.
- Any caller with `uid >= 10000` (untrusted third-party application space) is immediately rejected.
- *Caveat*: Because multiple platform services share `SYSTEM_UID` (UID 1000), Binder UID alone cannot differentiate between distinct system processes; process boundary isolation depends strictly on SELinux domain checks.

---

## 3. SettingsProvider Domain Identification Protocol

The SELinux domain of `com.android.providers.settings` varies across device OEM trees and custom ROM distributions. Operators must measure the live domain before configuring policy:

```bash
# Measure active SettingsProvider SELinux domain
ps -AZ | grep com.android.providers.settings
```

### Observed Domain Variants in Android 17 ROMs
1. **`u:r:system_app:s0`**: Standard AOSP baseline. Configured in `seapp_contexts` via `user=system seinfo=platform name=com.android.providers.settings domain=system_app`.
2. **`u:r:settings_provider:s0`**: Hardened custom ROMs isolating the settings database into an isolated vendor domain.
3. **`u:r:system_server:s0`**: Platforms executing SettingsProvider in-process with system server (`android:process="system"`).
4. **`u:r:platform_app:s0`**: Platforms signing the provider with platform keys without shared system UID.

*Rule: Assign `service_manager find` permissions strictly to the measured domain.*

---

## 4. Deployment Modes

### Mode A: ROM Source Tree Integration (Authoritative Production Mode)

In a source-built ROM, SELinux policies are compiled into the monolithic or split system policy images:

#### 1. Policy Definition (`device/<vendor>/<device>/sepolicy/private/kaorios_advanced_policy.te`)
```te
# Declare service type and attributes
type kaorios_advanced_policy_service, service_manager_type, system_server_service;

# system_server registers and manages the service
allow system_server kaorios_advanced_policy_service:service_manager { add find };

# Grant query access strictly to the measured SettingsProvider domain (e.g., system_app)
allow system_app kaorios_advanced_policy_service:service_manager find;
binder_call(system_app, system_server)
binder_call(system_server, system_app)

# Explicitly prohibit untrusted applications from discovering or registering this service
neverallow untrusted_app_all kaorios_advanced_policy_service:service_manager { add find };
```

#### 2. Service Contexts Registration (`device/<vendor>/<device>/sepolicy/private/service_contexts`)
```text
kaorios_advanced_policy    u:object_r:kaorios_advanced_policy_service:s0
```

#### 3. Image Compilation
Recompile the SELinux policy image using standard platform build targets (`m selinux_policy` or full ROM target).

---

### Mode B: Root / Magisk / KernelSU Early-Init Overlay (Post-Build Testing)

> **Critical Architecture Notice**: Dynamic policy injectors (`magiskpolicy --live` or `supolicy --live`) modify only the in-memory SELinux rules database; they **cannot** alter static `service_contexts`. ServiceManager resolves service names strictly through static `service_contexts` files loaded at boot.

To test on a pre-built ROM without re-compiling:

#### 1. Early-Init Mount Overlay for `service_contexts`
A root initialization script must bind-mount an augmented `service_contexts` file over the platform partition before `servicemanager` and `system_server` initialize:
- Active target paths:
  - `/system/etc/selinux/plat_service_contexts`
  - `/system_ext/etc/selinux/system_ext_service_contexts`
  - `/product/etc/selinux/product_service_contexts`
  - `/vendor/etc/selinux/vendor_service_contexts`
- Appended rule:
  ```text
  kaorios_advanced_policy    u:object_r:kaorios_advanced_policy_service:s0
  ```

#### 2. Runtime Rule Injection
```bash
magiskpolicy --live \
  "create kaorios_advanced_policy_service" \
  "attradd kaorios_advanced_policy_service service_manager_type" \
  "attradd kaorios_advanced_policy_service system_server_service" \
  "allow system_server kaorios_advanced_policy_service service_manager { add find }" \
  "allow <MEASURED_DOMAIN> kaorios_advanced_policy_service service_manager find" \
  "allow <MEASURED_DOMAIN> system_server binder { call transfer }" \
  "allow system_server <MEASURED_DOMAIN> binder { call transfer }"
```
*(Replace `<MEASURED_DOMAIN>` with the actual measured domain, e.g., `system_app`).*

---

## 5. Verification and Diagnostic Audit Protocol

Execute the following verification checklist on a booted target device:

```bash
# 1. Verify SELinux enforcing state (Must return Enforcing)
getenforce

# 2. Confirm SettingsProvider process security context
ps -AZ | grep com.android.providers.settings

# 3. Probe service registration in ServiceManager
service check kaorios_advanced_policy
# Expected Output: Service kaorios_advanced_policy: found

# 4. Check system service list registration
service list | grep kaorios

# 5. Audit kernel audit logs for access vector denials (Must return zero denials)
dmesg | grep -i "avc:.*kaorios"
logcat -b events | grep -i "avc.*kaorios"

# 6. Verify framework startup logcat output
logcat -b all -d | grep -i "AdvancedPolicyService"
```

A successful deployment reports `Service kaorios_advanced_policy: found` under `getenforce == Enforcing` with zero AVC denial events logged.
