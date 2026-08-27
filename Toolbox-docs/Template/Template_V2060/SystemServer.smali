
# ==============================================================================
# MẪU VÁ SystemServer.smali (Kaorios Toolbox Framework 2.0.6.0)
# ==============================================================================

# ------------------------------------------------------------------------------
# Pattern 1: AOSP / Qualcomm / HyperOS Android 17 (Khuyến nghị - Đầu hàm run()V)
# ------------------------------------------------------------------------------
.method private run()V
    .registers 20

    .line 975
    # [Kaorios Hook] Khởi tạo OmkService và RootOfTrust
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"
    # ... logic gốc của SystemServer tiếp tục ...


# ------------------------------------------------------------------------------
# Pattern 2: MediaTek / Trước startOtherServices(...)
# ------------------------------------------------------------------------------
    .line 1201
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1203
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkCoreServices()V

    .line 1205
    # [Kaorios Hook] Khởi tạo OmkService và RootOfTrust
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1206
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
