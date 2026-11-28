# Kaorios Toolbox v2.0.6.2 Reference Template — S1
# Target Archive : services.jar
# Target Class   : Lcom/android/server/SystemServer;
# Hook Purpose   : Boot-time initialization of SettingsHelper observer, kaorios_time epoch priming,
#                  and AdvancedPolicyService Binder registration (kaorios_advanced_policy)
# Callee (Kept)  : Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
#
# Notes:
# - Canonical placement: method entry of startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
#   (or startOtherServices()V on older ROM trees).
# - Equivalent placement: inside run()V immediately before startOtherServices(...) or before Looper.loop().
#   Add ONLY ONE call site; initSystemServer() is synchronized, idempotent, and spawns background
#   thread "KaoriosSystemInit" so it never blocks system_server boot.
# - Uses zero registers ({}), so NO .locals or .registers change is needed.

.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;

.method private run()V
    .registers 4

    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    invoke-direct {p0, v0}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-direct {p0, v0}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-direct {p0, v0}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .locals 2

    #Start Kaorios
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V
    #End Kaorios

    # Stock startOtherServices body continues below (abbreviated reference):
    const-string v0, "StartOtherServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    return-void
.end method
