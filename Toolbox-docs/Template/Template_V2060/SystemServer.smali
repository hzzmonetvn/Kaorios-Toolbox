.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"

# interfaces
.implements Landroid/util/Dumpable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$SystemServerDumper;
    }
.end annotation


# static fields
.field private static final AD_SERVICES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adservices.AdServicesManagerService$Lifecycle"

.field private static final ANOMALY_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.os.profiling.anomaly.AnomalyDetectorService"

.field private static final APPSEARCH_MODULE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.appsearch.AppSearchModule$Lifecycle"

.field private static final ARC_PERSISTENT_DATA_BLOCK_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

.field private static final ARC_SYSTEM_HEALTH_SERVICE:Ljava/lang/String; = "com.android.server.arc.health.ArcSystemHealthService"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BLUETOOTH_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.bt/javalib/service-bluetooth.jar"

.field private static final BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.bluetooth.BluetoothService"

.field private static final BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final CONNECTIVITY_SERVICE_APEX_PATH:Ljava/lang/String; = "/apex/com.android.tethering/javalib/service-connectivity.jar"

.field private static final CONNECTIVITY_SERVICE_INITIALIZER_B_CLASS:Ljava/lang/String; = "com.android.server.ConnectivityServiceInitializerB"

.field private static final CONNECTIVITY_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.ConnectivityServiceInitializer"

.field private static final CRASHRECOVERY_MODULE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.crashrecovery.CrashRecoveryModule$Lifecycle"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030430

.field private static final DEVICE_LOCK_APEX_PATH:Ljava/lang/String; = "/apex/com.android.devicelock/javalib/service-devicelock.jar"

.field private static final DEVICE_LOCK_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.devicelock.DeviceLockService"

.field private static final DEVICE_TO_DEVICE_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.bettertogether/javalib/service-device-to-device.jar"

.field private static final DEVICE_TO_DEVICE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.devicetodevice.DeviceToDeviceService"

.field private static final ENHANCED_CONFIRMATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.ecm.EnhancedConfirmationService"

.field private static final HEALTHCONNECT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.healthconnect.HealthConnectManagerService"

.field private static final HEALTH_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.healthservices.HealthService"

.field private static final HEAP_DUMP_PATH:Ljava/io/File;

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field private static final ISOLATED_COMPILATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.compos.IsolatedCompilationService"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MAX_HEAP_DUMPS:I = 0x2

.field private static final MEDIA_COMMUNICATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaCommunicationService"

.field private static final NETWORK_STATS_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.NetworkStatsServiceInitializer"

.field private static final NPU_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.npumanager.NpuManagerService"

.field private static final ON_DEVICE_INTELLIGENCE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

.field private static final ON_DEVICE_PERSONALIZATION_SYSTEM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PROFILING_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.profiling/javalib/service-profiling.jar"

.field private static final PROFILING_SERVICE_LIFECYCLE_CLASS:Ljava/lang/String; = "android.os.profiling.ProfilingService$Lifecycle"

.field private static final RANGING_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-ranging.jar"

.field private static final RANGING_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ranging.RangingService"

.field private static final REBOOT_READINESS_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

.field private static final ROLE_SERVICE_CLASS:Ljava/lang/String; = "com.android.role.RoleService"

.field private static final SAFETY_CENTER_SERVICE_CLASS:Ljava/lang/String; = "com.android.safetycenter.SafetyCenterService"

.field private static final SCHEDULING_APEX_PATH:Ljava/lang/String; = "/apex/com.android.scheduling/javalib/service-scheduling.jar"

.field private static final SDK_SANDBOX_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

.field private static final SIGNAL_COLLECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.signalcollector.SignalCollectorService"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J

.field private static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_MANAGER_SERVICE:Ljava/lang/String; = "StartISensorManagerService"

.field private static final STATS_COMPANION_APEX_PATH:Ljava/lang/String; = "/apex/com.android.os.statsd/javalib/service-statsd.jar"

.field private static final STATS_COMPANION_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.StatsCompanion$Lifecycle"

.field private static final SYSPROP_FDTRACK_ABORT_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_abort_threshold"

.field private static final SYSPROP_FDTRACK_ENABLE_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_enable_threshold"

.field private static final SYSPROP_FDTRACK_INTERVAL:Ljava/lang/String; = "persist.sys.debug.fdtrack_interval"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_STATE_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final TETHERING_CONNECTOR_CLASS:Ljava/lang/String; = "android.net.ITetheringConnector"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.android.clockwork.ThermalObserver"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UNIPNP_SWITCH:Ljava/lang/Boolean;

.field private static final UPDATABLE_DEVICE_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

.field private static final UPROBESTATS_BRIDGE_SERVICE_CLASS:Ljava/lang/String; = "com.android.uprobestats.UprobeStatsBridgeService"

.field private static final UPROBESTATS_BRIDGE_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uprobestats/javalib/service-uprobestats-bridge.jar"

.field private static final UWB_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-uwb.jar"

.field private static final UWB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.uwb.UwbService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DEBUG_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.debug.WearDebugService"

.field private static final WEAR_DISPLAYOFFLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.displayoffload.DisplayOffloadService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GESTURE_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.gesture.WearGestureService"

.field private static final WEAR_INPUT_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.input.WearInputService"

.field private static final WEAR_MODE_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.modes.ModeManagerService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.settings.WearSettingsService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.time.WearTimeService"

.field private static final WIFI_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.wifi/javalib/service-wifi.jar"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_RTT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.rtt.RttService"

.field private static final WIFI_SCANNING_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.scanner.WifiScanningService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

.field private static final WIFI_USD_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.usd.UsdService"

.field private static final WRIST_ORIENTATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.wristorientation.WristOrientationService"

.field private static final sMaxBinderThreads:I = 0x1f

.field private static sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

.field private static sPendingWtfs:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Landroid/app/ApplicationErrorReport$CrashInfo;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

.field private mEntropyMixer:Lcom/android/server/EntropyMixer;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mIncrementalServiceHandle:J

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private final mRuntimeRestart:Z

.field private final mRuntimeStartElapsedTime:J

.field private final mRuntimeStartUptime:J

.field private final mStartCount:I

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;

.field private mUserManagerService:Lcom/android/server/pm/UserManagerService;

.field private mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

.field private mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field private mZygotePreload:Ljava/util/concurrent/Future;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/Future<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$CKXj3ds6gqFm1f6gBL5oAqAHviY(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$d0lhbsUkcFynUmQOfYCoqcUeNJY(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 17

    invoke-direct/range {p0 .. p16}, Lcom/android/server/SystemServer;->lambda$startOtherServices$7(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$yGsR2xunNRlg3-IJYUWXspCZ5DQ(Lcom/android/server/SystemServer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$5()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityManagerService(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 4

    .line 411
    sget v0, Landroid/os/Build;->HW_LOW_MULTIPLIER:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/SystemServer;->SLOW_DISPATCH_THRESHOLD_MS:J

    .line 412
    sget v0, Landroid/os/Build;->HW_LOW_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0xc8

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/SystemServer;->SLOW_DELIVERY_THRESHOLD_MS:J

    .line 416
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "SystemServer"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 422
    nop

    .line 423
    const-string/jumbo v0, "ro.unipnp.switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->UNIPNP_SWITCH:Ljava/lang/Boolean;

    .line 659
    invoke-static {}, Lcom/mediatek/server/MtkSystemServer;->getInstance()Lcom/mediatek/server/MtkSystemServer;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    .line 691
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .line 852
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 611
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 629
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 854
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 857
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 858
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 859
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 860
    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static/range {v5 .. v12}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 864
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    if-le v0, v2, :cond_3d

    move v1, v2

    :cond_3d
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 865
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1363
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1364
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1365
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030430

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1367
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 1368
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1369
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    .line 1370
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 4377
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4378
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static dumpHprof()V
    .registers 8

    .line 703
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 706
    .local v0, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemServerStub;->getHeapDumpDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 707
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    new-array v1, v2, [Ljava/io/File;

    .line 708
    :cond_16
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 709
    .local v3, "existingBacktraces":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    array-length v4, v1

    :goto_1c
    if-ge v2, v4, :cond_4a

    aget-object v5, v1, v2

    .line 711
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_27

    .line 712
    goto :goto_47

    .line 715
    :cond_27
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 716
    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 717
    goto :goto_47

    .line 720
    :cond_37
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 721
    goto :goto_47

    .line 723
    :cond_44
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 709
    .end local v5    # "file":Ljava/io/File;
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 725
    :cond_4a
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "System"

    if-lt v2, v4, :cond_8a

    .line 726
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    const/4 v4, 0x1

    if-ge v2, v4, :cond_5d

    .line 728
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 726
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 730
    .end local v2    # "i":I
    :cond_5d
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_61
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 731
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_89

    .line 732
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to clean up hprof "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 734
    .end local v4    # "file":Ljava/io/File;
    :cond_89
    goto :goto_61

    .line 737
    :cond_8a
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServerStub;->keepDumpSize(Ljava/util/TreeSet;)V

    .line 743
    :try_start_91
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 745
    .local v2, "date":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/SystemServerStub;->getHeapDumpDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/fdtrack-p"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 746
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ".hprof"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 748
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_de} :catch_df

    .line 751
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    goto :goto_e5

    .line 749
    :catch_df
    move-exception v2

    .line 750
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Failed to dump fdtrack hprof"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_e5
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method private static getMaxFd()I
    .registers 5

    .line 669
    const/4 v0, 0x0

    .line 671
    .local v0, "fd":Ljava/io/FileDescriptor;
    :try_start_1
    const-string v1, "/dev/null"

    sget v2, Landroid/system/OsConstants;->O_RDONLY:I

    sget v3, Landroid/system/OsConstants;->O_CLOEXEC:I

    or-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/system/Os;->open(Ljava/lang/String;II)Ljava/io/FileDescriptor;

    move-result-object v1

    move-object v0, v1

    .line 672
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 676
    if-eqz v0, :cond_1f

    .line 678
    :try_start_14
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_17} :catch_18

    .line 682
    goto :goto_1f

    .line 679
    :catch_18
    move-exception v1

    .line 681
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 672
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_1f
    :goto_1f
    return v1

    .line 676
    :catchall_20
    move-exception v1

    goto :goto_4d

    .line 673
    :catch_22
    move-exception v1

    .line 674
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    :try_start_23
    const-string v2, "System"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to get maximum fd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b
    .catchall {:try_start_23 .. :try_end_3b} :catchall_20

    .line 676
    nop

    .end local v1    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_49

    .line 678
    :try_start_3e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_41} :catch_42

    .line 682
    goto :goto_49

    .line 679
    :catch_42
    move-exception v1

    .line 681
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 686
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_49
    :goto_49
    const v1, 0x7fffffff

    return v1

    .line 676
    :goto_4d
    if-eqz v0, :cond_5a

    .line 678
    :try_start_4f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_52} :catch_53

    .line 682
    goto :goto_5a

    .line 679
    :catch_53
    move-exception v1

    .line 681
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 684
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_5a
    :goto_5a
    throw v1
.end method

.method private static handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 13
    .param p0, "app"    # Landroid/os/IBinder;
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "system"    # Z
    .param p3, "crashInfo"    # Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;
    .param p4, "immediateCallerPid"    # I

    .line 4514
    const-string/jumbo v1, "system_server"

    .line 4515
    .local v1, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 4517
    .local v3, "myPid":I
    const/16 v0, 0x3e8

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    const-string/jumbo v4, "system_server"

    const/4 v5, -0x1

    iget-object v7, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    move-object v6, p1

    .end local p1    # "tag":Ljava/lang/String;
    .local v6, "tag":Ljava/lang/String;
    invoke-static/range {v2 .. v7}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 4520
    move-object v4, v6

    .end local v6    # "tag":Ljava/lang/String;
    .local v4, "tag":Ljava/lang/String;
    const-string/jumbo v5, "system_server"

    const/4 v7, 0x3

    const/16 v2, 0x50

    move v6, v3

    .end local v3    # "myPid":I
    .local v6, "myPid":I
    const/16 v3, 0x3e8

    invoke-static/range {v2 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 4523
    move v3, v6

    .end local v6    # "myPid":I
    .restart local v3    # "myPid":I
    const-class p1, Lcom/android/server/SystemServer;

    monitor-enter p1

    .line 4524
    :try_start_28
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v0, :cond_33

    .line 4525
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 4527
    :cond_33
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4528
    monitor-exit p1

    .line 4529
    const/4 p1, 0x0

    return p1

    .line 4528
    :catchall_40
    move-exception v0

    monitor-exit p1
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v0
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 1294
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isDeviceUpgrading()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method private static isValidTimeZoneId(Ljava/lang/String;)Z
    .registers 2
    .param p0, "timezoneProperty"    # Ljava/lang/String;

    .line 1288
    if-eqz p0, :cond_14

    .line 1289
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1290
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1288
    :goto_15
    return v0
.end method

.method static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 14
    .param p0, "enableThreshold"    # I
    .param p1, "abortThreshold"    # I
    .param p2, "checkInterval"    # I

    .line 763
    const/4 v0, 0x0

    .line 764
    .local v0, "enabled":Z
    const-wide/16 v1, 0x0

    .line 767
    .local v1, "nextWrite":J
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 768
    .local v3, "maxFd":I
    if-le v3, p0, :cond_13

    .line 770
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 771
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 772
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 775
    :cond_13
    const-string v4, "System"

    const/4 v5, 0x2

    const/16 v6, 0x16c

    if-le v3, p0, :cond_35

    if-nez v0, :cond_35

    .line 776
    const-string v7, "fdtrack enable threshold reached, enabling"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 777
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 781
    const-string v4, "fdtrack"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 782
    const/4 v0, 0x1

    .line 784
    sub-int v4, p1, p0

    div-int/2addr v4, v5

    .line 785
    .local v4, "watermark":I
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v5

    .line 786
    invoke-virtual {v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->enableInputMethodMonitor(I)V

    .line 788
    .end local v4    # "watermark":I
    goto :goto_5c

    :cond_35
    if-le v3, p1, :cond_47

    .line 789
    const-string v5, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    const/4 v4, 0x3

    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 794
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 795
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_5c

    .line 798
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 799
    .local v7, "now":J
    cmp-long v4, v7, v1

    if-lez v4, :cond_5c

    .line 800
    const-wide/32 v9, 0x36ee80

    add-long/2addr v9, v7

    .line 801
    .end local v1    # "nextWrite":J
    .local v9, "nextWrite":J
    nop

    .line 802
    if-eqz v0, :cond_57

    goto :goto_58

    .line 803
    :cond_57
    const/4 v5, 0x1

    .line 801
    :goto_58
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v9

    .line 809
    .end local v7    # "now":J
    .end local v9    # "nextWrite":J
    .restart local v1    # "nextWrite":J
    :cond_5c
    :goto_5c
    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    :try_start_5f
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_62
    .catch Ljava/lang/InterruptedException; {:try_start_5f .. :try_end_62} :catch_64

    .line 812
    nop

    .line 813
    .end local v3    # "maxFd":I
    goto :goto_3

    .line 810
    .restart local v3    # "maxFd":I
    :catch_64
    move-exception v4

    .line 811
    .local v4, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method static synthetic lambda$startBootstrapServices$1()V
    .registers 1

    .line 1406
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->startCustFeatureResolverService()V

    .line 1407
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 5

    .line 1881
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1882
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1883
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1884
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1886
    .local v0, "abis32":[Ljava/lang/String;
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    array-length v3, v0

    if-lez v3, :cond_3b

    sget-boolean v3, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-nez v3, :cond_3b

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    aget-object v4, v0, v4

    .line 1888
    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_36

    :cond_29
    array-length v3, v0

    if-lez v3, :cond_3b

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    aget-object v4, v0, v4

    .line 1889
    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1890
    :goto_36
    const-string v3, "Unable to preload default resources for secondary"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1893
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_3f

    .line 1896
    .end local v0    # "abis32":[Ljava/lang/String;
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_45

    .line 1894
    :catch_3f
    move-exception v0

    .line 1895
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1897
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method static synthetic lambda$startOtherServices$3()V
    .registers 2

    .line 2116
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2117
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2118
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 2119
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2120
    return-void
.end method

.method static synthetic lambda$startOtherServices$4()V
    .registers 2

    .line 2123
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2124
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2125
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 2126
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2127
    return-void
.end method

.method private synthetic lambda$startOtherServices$5()V
    .registers 4

    .line 4039
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4040
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 4041
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4042
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 4043
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 4044
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 4045
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4046
    return-void
.end method

.method static synthetic lambda$startOtherServices$6(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 4199
    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string/jumbo v2, "tethering"

    invoke-static {v2, p0, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 4202
    return-void
.end method

.method private synthetic lambda$startOtherServices$7(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 34
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "isAutomotive"    # Z
    .param p3, "dpms"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .param p4, "isWatch"    # Z
    .param p5, "context"    # Landroid/content/Context;
    .param p6, "safeMode"    # Z
    .param p7, "connectivityF"    # Landroid/net/ConnectivityManager;
    .param p8, "networkManagementF"    # Lcom/android/server/net/NetworkManagementService;
    .param p9, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p10, "vpnManagerF"    # Lcom/android/server/VpnManagerService;
    .param p11, "hsumBootUserInitializer"    # Lcom/android/server/pm/HsumBootUserInitializer;
    .param p12, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p13, "networkTimeUpdaterF"    # Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .param p14, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p15, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p16, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 4013
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    const-string v0, "Making services ready"

    const-string v7, "SystemServer"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4014
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4015
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x226

    invoke-virtual {v0, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4016
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4017
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4019
    :try_start_27
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    .line 4022
    goto :goto_34

    .line 4020
    :catchall_2d
    move-exception v0

    .line 4021
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "observing native crashes"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4023
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4025
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4027
    :try_start_3c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    .line 4030
    goto :goto_50

    .line 4028
    :catchall_49
    move-exception v0

    .line 4029
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "registering app ops policy"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4031
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_50
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4035
    const-string v8, "WebViewFactoryPreparation"

    .line 4036
    .local v8, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 4037
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v9, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v10, "WebViewFactoryPreparation"

    if-eqz v9, :cond_67

    .line 4038
    new-instance v9, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v9, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v9, v0

    goto :goto_68

    .line 4037
    :cond_67
    move-object v9, v0

    .line 4049
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v9, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_68
    if-eqz p2, :cond_96

    .line 4050
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4051
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4052
    const-string v11, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 4053
    .local v0, "cshs":Lcom/android/server/SystemService;
    instance-of v11, v0, Landroid/util/Dumpable;

    if-eqz v11, :cond_83

    .line 4054
    iget-object v11, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v12, v0

    check-cast v12, Landroid/util/Dumpable;

    invoke-static {v11, v12}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 4056
    :cond_83
    instance-of v11, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v11, :cond_90

    .line 4057
    move-object v11, v0

    check-cast v11, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_92

    .line 4056
    :cond_90
    move-object/from16 v12, p3

    .line 4059
    :goto_92
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_98

    .line 4049
    .end local v0    # "cshs":Lcom/android/server/SystemService;
    :cond_96
    move-object/from16 v12, p3

    .line 4062
    :goto_98
    if-eqz p4, :cond_d6

    .line 4063
    const-string v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4064
    nop

    .line 4065
    const v0, 0x104039f

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 4067
    .local v11, "wearServiceComponentNameString":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 4068
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 4071
    .local v13, "wearServiceComponentName":Landroid/content/ComponentName;
    if-eqz v13, :cond_ce

    .line 4072
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v7, v0

    .line 4073
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4074
    const/16 v0, 0x100

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4076
    :try_start_c1
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_c7

    .line 4079
    goto :goto_cd

    .line 4077
    :catchall_c7
    move-exception v0

    .line 4078
    .local v0, "e":Ljava/lang/Throwable;
    const-string v14, "Starting WearServices: "

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4080
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_cd
    goto :goto_d3

    .line 4081
    :cond_ce
    const-string v0, "Null wear service component name."

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4084
    .end local v13    # "wearServiceComponentName":Landroid/content/ComponentName;
    :cond_d3
    :goto_d3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4092
    .end local v11    # "wearServiceComponentNameString":Ljava/lang/String;
    :cond_d6
    if-eqz p6, :cond_eb

    .line 4093
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4095
    const/4 v0, 0x1

    :try_start_de
    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e2

    .line 4098
    goto :goto_e8

    .line 4096
    :catchall_e2
    move-exception v0

    .line 4097
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4099
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4101
    :cond_eb
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4103
    if-eqz p8, :cond_fe

    .line 4104
    :try_start_f2
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->systemReady()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f6

    goto :goto_fe

    .line 4106
    :catchall_f6
    move-exception v0

    .line 4107
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Management Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ff

    .line 4108
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_fe
    :goto_fe
    nop

    .line 4109
    :goto_ff
    const/4 v0, 0x0

    .line 4110
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v5, :cond_109

    .line 4111
    nop

    .line 4112
    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v7, v0

    goto :goto_10a

    .line 4110
    :cond_109
    move-object v7, v0

    .line 4114
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_10a
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4116
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v11, "SystemServer:NetworkStatsService systemReady"

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 4118
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4120
    if-eqz v4, :cond_127

    .line 4121
    :try_start_11b
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11f

    goto :goto_127

    .line 4123
    :catchall_11f
    move-exception v0

    .line 4124
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Connectivity Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_128

    .line 4125
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_127
    :goto_127
    nop

    .line 4126
    :goto_128
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4128
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v11, "SystemServer:ConnectivityService systemReady"

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 4130
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4132
    if-eqz p10, :cond_145

    .line 4133
    :try_start_139
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_13d

    goto :goto_145

    .line 4135
    :catchall_13d
    move-exception v0

    .line 4136
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making VpnManagerService ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_146

    .line 4137
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_145
    :goto_145
    nop

    .line 4138
    :goto_146
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4139
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4141
    if-eqz v5, :cond_15c

    .line 4142
    :try_start_150
    invoke-virtual {v5, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    goto :goto_15c

    .line 4144
    :catchall_154
    move-exception v0

    .line 4145
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Network Policy Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15d

    .line 4146
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15c
    :goto_15c
    nop

    .line 4147
    :goto_15d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4149
    const-string v11, "SystemServer:NetworkPolicyManagerService systemReady"

    .line 4150
    .local v11, "NetworkServiceBootEvent":Ljava/lang/String;
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 4153
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 4157
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4159
    if-eqz v9, :cond_176

    .line 4160
    invoke-static {v9, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 4162
    :cond_176
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x258

    invoke-virtual {v0, v2, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 4163
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4165
    const-string/jumbo v0, "ro.product.uwb.oem"

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 4166
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.uwb"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 4167
    const-string v0, "StartVendorUwbOemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4168
    new-instance v0, Lcom/nxp/uwb/oemService/NxpUwbOemService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/nxp/uwb/oemService/NxpUwbOemService;-><init>(Landroid/content/Context;)V

    .line 4169
    .local v0, "nxpUwbOemService":Lcom/nxp/uwb/oemService/NxpUwbOemService;
    const-string v10, "VendorUwbOemService"

    invoke-static {v10, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 4170
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4174
    .end local v0    # "nxpUwbOemService":Lcom/nxp/uwb/oemService/NxpUwbOemService;
    :cond_1a8
    if-eqz v6, :cond_1b5

    .line 4175
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4176
    invoke-virtual {v6, v2}, Lcom/android/server/pm/HsumBootUserInitializer;->systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 4177
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4180
    :cond_1b5
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4187
    :try_start_1ba
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_1c1
    .catchall {:try_start_1ba .. :try_end_1c1} :catchall_1c2

    .line 4190
    goto :goto_1c9

    .line 4188
    :catchall_1c2
    move-exception v0

    .line 4189
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Network Stack"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4191
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1c9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4193
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4196
    :try_start_1d1
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v10, "android.net.ITetheringConnector"

    const-string v13, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v14, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;

    invoke-direct {v14}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v10, v13, v14}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_1e1
    .catchall {:try_start_1d1 .. :try_end_1e1} :catchall_1e2

    .line 4205
    goto :goto_1e9

    .line 4203
    :catchall_1e2
    move-exception v0

    .line 4204
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Tethering"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4206
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1e9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4208
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4210
    if-eqz p12, :cond_1fe

    .line 4211
    :try_start_1f3
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1f6
    .catchall {:try_start_1f3 .. :try_end_1f6} :catchall_1f7

    goto :goto_1fe

    .line 4213
    :catchall_1f7
    move-exception v0

    .line 4214
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying CountryDetectorService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ff

    .line 4215
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1fe
    :goto_1fe
    nop

    .line 4216
    :goto_1ff
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4217
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4219
    if-eqz p13, :cond_214

    .line 4220
    :try_start_209
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_20c
    .catchall {:try_start_209 .. :try_end_20c} :catchall_20d

    goto :goto_214

    .line 4222
    :catchall_20d
    move-exception v0

    .line 4223
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying NetworkTimeService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_215

    .line 4224
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_214
    :goto_214
    nop

    .line 4225
    :goto_215
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4226
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4228
    if-eqz p14, :cond_22a

    .line 4229
    :try_start_21f
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_223

    goto :goto_22a

    .line 4231
    :catchall_223
    move-exception v0

    .line 4232
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22b

    .line 4233
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22a
    :goto_22a
    nop

    .line 4234
    :goto_22b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4235
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4237
    if-eqz p15, :cond_240

    .line 4238
    :try_start_235
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_238
    .catchall {:try_start_235 .. :try_end_238} :catchall_239

    goto :goto_240

    .line 4240
    :catchall_239
    move-exception v0

    .line 4241
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MediaRouterService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_241

    .line 4242
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_240
    :goto_240
    nop

    .line 4243
    :goto_241
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4244
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_264

    .line 4245
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4247
    if-eqz p16, :cond_260

    :try_start_255
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_258
    .catchall {:try_start_255 .. :try_end_258} :catchall_259

    goto :goto_260

    .line 4248
    :catchall_259
    move-exception v0

    .line 4249
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MmsService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_261

    .line 4250
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_260
    :goto_260
    nop

    .line 4251
    :goto_261
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4254
    :cond_264
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4258
    :try_start_269
    const-string/jumbo v0, "incident"

    .line 4259
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4258
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 4260
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_279

    .line 4261
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_279
    .catchall {:try_start_269 .. :try_end_279} :catchall_27a

    .line 4265
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_279
    goto :goto_280

    .line 4263
    :catchall_27a
    move-exception v0

    .line 4264
    .local v0, "e":Ljava/lang/Throwable;
    const-string v10, "Notifying incident daemon running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4266
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_280
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4269
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v10, "SystemServer:PhaseThirdPartyAppsCanStart"

    invoke-virtual {v0, v10}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 4271
    iget-wide v13, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-eqz v0, :cond_29f

    .line 4272
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4273
    iget-wide v13, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v13, v14}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 4274
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4277
    :cond_29f
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4279
    :try_start_2a4
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_2a7
    .catchall {:try_start_2a4 .. :try_end_2a7} :catchall_2a8

    .line 4282
    goto :goto_2ae

    .line 4280
    :catchall_2a8
    move-exception v0

    .line 4281
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Triggering OdsignStatsLogger"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4283
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2ae
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4284
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 833
    invoke-static {}, Lcom/android/server/MiuiServicesRouter;->init()V

    .line 837
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerStub;->markSystemRun(J)V

    .line 842
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/BootKeeperStub;->beforeBoot()V

    .line 847
    invoke-static {}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->getInstance()Lcom/android/server/miuibpf/MiuiBpfServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->start()V

    .line 849
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 850
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1303
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1305
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1306
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1f

    move v3, v5

    goto :goto_20

    :cond_1f
    move v3, v2

    .line 1309
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1310
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1312
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1320
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1321
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1322
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1323
    const/4 v7, 0x0

    .line 1325
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1328
    goto :goto_56

    .line 1326
    :catch_50
    move-exception v2

    .line 1327
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1330
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1331
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1332
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    return-void

    .line 1339
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$3;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1347
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1348
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1349
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1352
    .end local v0    # "runnable":Ljava/lang/Runnable;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "reboot":Z
    .end local v4    # "reason":Ljava/lang/String;
    :cond_8a
    return-void
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 6
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .line 1298
    const-string v0, "***********************************************"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1300
    return-void
.end method

.method private run()V
    .registers 20

    .line 975
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"

    const-string v2, ""

    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v3

    const-string v4, "SystemServer"

    const/4 v5, 0x0

    if-eqz v3, :cond_20

    .line 976
    const-string v3, "debug.system_server.jdwp_wait"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 977
    const-string v3, "System server is waiting for debugger before starting..."

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 981
    :cond_20
    new-instance v3, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 984
    .local v3, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_25
    new-instance v6, Landroid/tracing/perfetto/InitArguments;

    const/4 v7, 0x2

    const/16 v8, 0x1000

    invoke-direct {v6, v7, v8}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    invoke-static {v6}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 987
    const-string v6, "InitBeforeStartServices"

    invoke-virtual {v3, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 990
    const-string/jumbo v6, "sys.system_server.start_count"

    iget v7, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    const-string/jumbo v6, "sys.system_server.start_elapsed"

    iget-wide v7, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 992
    const-string/jumbo v6, "sys.system_server.start_uptime"

    iget-wide v7, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 994
    iget v6, v1, Lcom/android/server/SystemServer;->mStartCount:I

    .line 995
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    filled-new-array {v6, v7, v8}, [Ljava/lang/Object;

    move-result-object v6

    .line 994
    const/16 v7, 0xbc3

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 998
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 1008
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9e

    .line 1009
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    .line 1011
    .local v6, "languageTag":Ljava/lang/String;
    const-string/jumbo v7, "persist.sys.locale"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1014
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1018
    .end local v6    # "languageTag":Ljava/lang/String;
    :cond_9e
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 1020
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 1023
    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 1026
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 1029
    const-string v0, "Entered the Android system server!"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1030
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1031
    .local v7, "uptimeMillis":J
    const/16 v0, 0xbc2

    invoke-static {v0, v7, v8}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1032
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v9, 0xf0

    if-nez v0, :cond_c6

    .line 1033
    const/16 v0, 0x13

    invoke-static {v9, v0, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1039
    :cond_c6
    invoke-static {}, Lcom/android/internal/os/ZygoteInitStub;->getInstance()Lcom/android/internal/os/ZygoteInitStub;

    move-result-object v0

    const-string/jumbo v10, "start_android"

    invoke-virtual {v0, v10}, Lcom/android/internal/os/ZygoteInitStub;->addBootEvent(Ljava/lang/String;)V

    .line 1042
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v10, "Android:SysServerInit_START"

    invoke-virtual {v0, v10}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1051
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1056
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v10}, Landroid/app/ActivityThreadStub;->useGrowthLimitOutExpendMethod(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 1057
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 1063
    :cond_f8
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 1067
    invoke-static {v2}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 1071
    invoke-static {v2}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 1074
    invoke-static {v2}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 1077
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 1080
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 1083
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1085
    invoke-static {v2}, Landroid/os/MessageQueue;->setUseDeliQueue(Z)V

    .line 1086
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 1087
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-wide v10, Lcom/android/server/SystemServer;->SLOW_DISPATCH_THRESHOLD_MS:J

    sget-wide v12, Lcom/android/server/SystemServer;->SLOW_DELIVERY_THRESHOLD_MS:J

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 1090
    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 1093
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()V

    .line 1094
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->getInstance()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1099
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1102
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1105
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 1108
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1117
    invoke-direct {v1}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 1122
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->create()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    move-object v10, v0

    .line 1123
    .local v10, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    invoke-static {v10}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    .line 1126
    invoke-direct {v1}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 1129
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 1132
    const-string/jumbo v0, "system_server_dumper"

    iget-object v11, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1133
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1136
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v11}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1137
    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v13, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v14, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    move-object/from16 v18, v10

    .end local v10    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    .local v18, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    iget-wide v9, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 1139
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1141
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1145
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->useOptimizedBoottimeFontLoading()Z

    move-result v0

    if-nez v0, :cond_19f

    .line 1147
    const-string v0, "Loading pre-installed system font map."

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catchall {:try_start_25 .. :try_end_18b} :catchall_2f9

    .line 1151
    :try_start_18b
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_18f
    .catchall {:try_start_18b .. :try_end_18e} :catchall_2f9

    .line 1156
    goto :goto_19f

    .line 1152
    :catch_18f
    move-exception v0

    .line 1153
    .local v0, "e":Ljava/lang/Exception;
    :try_start_190
    const-string v9, "System font map reload"

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemServerStub;->resetFonts()V

    .line 1155
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 1161
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19f
    :goto_19f
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_1a1
    .catchall {:try_start_190 .. :try_end_1a1} :catchall_2f9

    const-string v4, "System"

    if-eqz v0, :cond_1ea

    .line 1163
    :try_start_1a5
    const-string/jumbo v0, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1164
    .local v9, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ea

    .line 1165
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v10, v0

    .line 1166
    .local v10, "equalIndex":I
    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 1167
    .local v12, "libraryPath":Ljava/lang/String;
    add-int/lit8 v0, v10, 0x1

    .line 1168
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1c9
    .catchall {:try_start_1a5 .. :try_end_1c9} :catchall_2f9

    move-object v13, v0

    .line 1171
    .local v13, "parameterList":Ljava/lang/String;
    :try_start_1ca
    invoke-static {v12, v13, v6}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1cd} :catch_1ce
    .catchall {:try_start_1ca .. :try_end_1cd} :catchall_2f9

    .line 1175
    goto :goto_1ea

    .line 1172
    :catch_1ce
    move-exception v0

    .line 1173
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1cf
    const-string v14, "*************************************************"

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1174
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "********** Failed to load jvmti plugin: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1ea
    .catchall {:try_start_1cf .. :try_end_1ea} :catchall_2f9

    .line 1179
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v7    # "uptimeMillis":J
    .end local v9    # "jvmtiAgent":Ljava/lang/String;
    .end local v10    # "equalIndex":I
    .end local v12    # "libraryPath":Ljava/lang/String;
    .end local v13    # "parameterList":Ljava/lang/String;
    .end local v18    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    :cond_1ea
    :goto_1ea
    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1180
    nop

    .line 1183
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    sget-object v7, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v8, v9}, Lcom/mediatek/server/MtkSystemServer;->setPrameters(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V

    .line 1186
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 1189
    const-string v0, "debug.debug_system"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 1190
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1195
    :cond_20c
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v8}, Lcom/sprd/server/SprdSystemServer;->initUnisocSystemServer(Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V

    .line 1199
    :try_start_217
    const-string v0, "StartServices"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v0, "sys.system_server_inherit_rt"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_228

    .line 1201
    invoke-static {v2}, Landroid/os/Binder;->setGlobalInheritRt(Z)V

    .line 1203
    :cond_228
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1205
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkBootstrapServices()V

    .line 1207
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1209
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkCoreServices()V

    .line 1211
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1212
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1215
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1217
    invoke-static {}, Lcom/android/internal/os/ZygoteConfigStub;->getInstance()Lcom/android/internal/os/ZygoteConfigStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/ZygoteConfigStub;->initialize(Landroid/content/Context;)V

    .line 1219
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logSystemServerStarted()V
    :try_end_251
    .catchall {:try_start_217 .. :try_end_251} :catchall_2e7

    .line 1225
    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1226
    nop

    .line 1228
    invoke-static {v6}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1230
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_28f

    invoke-direct {v1}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_28f

    .line 1231
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1232
    .local v4, "uptimeMillis":J
    const/16 v0, 0x14

    const/16 v11, 0xf0

    invoke-static {v11, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1235
    const-wide/32 v6, 0xea60

    .line 1236
    .local v6, "maxUptimeMillis":J
    const-wide/32 v8, 0xea60

    cmp-long v0, v4, v8

    if-lez v0, :cond_28f

    .line 1237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "SystemServerTiming"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    .end local v4    # "uptimeMillis":J
    .end local v6    # "maxUptimeMillis":J
    :cond_28f
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 1252
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/BootKeeperStub;->afterBoot(Landroid/content/Context;)V

    .line 1256
    invoke-static {}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->getInstance()Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->initialize(Landroid/content/Context;)V

    .line 1261
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->reportPostgcMemoryMetrics()Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 1262
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/readonly/Flags;->postCleanupApis()Z

    move-result v0

    if-eqz v0, :cond_2bd

    .line 1263
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 1271
    :cond_2bd
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v2, "Android:SysServerInit_END"

    invoke-virtual {v0, v2}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1276
    const-string/jumbo v0, "ro.boot.hwlevel"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MP"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2dc

    .line 1278
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServerStub;->registerThreadPoolTraceObserver(Landroid/content/ContentResolver;)V

    .line 1283
    :cond_2dc
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1284
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1220
    :catchall_2e7
    move-exception v0

    .line 1221
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2e8
    const-string v2, "******************************************"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    const-string v2, "************ Failure starting system services"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1223
    nop

    .end local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_2f4
    .catchall {:try_start_2e8 .. :try_end_2f4} :catchall_2f4

    .line 1225
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_2f4
    move-exception v0

    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1226
    throw v0

    .line 1179
    :catchall_2f9
    move-exception v0

    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1180
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static spawnFdLeakCheckThread()V
    .registers 5

    .line 758
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x640

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 759
    .local v0, "enableThreshold":I
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 760
    .local v1, "abortThreshold":I
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 762
    .local v2, "checkInterval":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 814
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 815
    return-void
.end method

.method private startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4343
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_14

    .line 4344
    const-string v0, "debug.crash_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_14

    .line 4345
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4348
    :cond_14
    :goto_14
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4351
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 4352
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexSystemServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_64

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 4353
    .local v2, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4354
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v4

    .line 4355
    .local v4, "jarPath":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "starting "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4356
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 4359
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4356
    if-eqz v5, :cond_5d

    .line 4357
    invoke-virtual {v6, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_60

    .line 4359
    :cond_5d
    invoke-virtual {v6, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4361
    :goto_60
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4362
    .end local v2    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    goto :goto_26

    .line 4365
    :cond_64
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 4367
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4368
    return-void
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4445
    const/4 v0, 0x0

    .line 4446
    .local v0, "startService":Z
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "SystemServer"

    if-eqz v1, :cond_b

    .line 4447
    const/4 v0, 0x1

    goto :goto_10

    .line 4449
    :cond_b
    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4451
    :goto_10
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->enableAttentionServiceApis()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4452
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isInteractionProviderServiceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4453
    const/4 v0, 0x1

    goto :goto_23

    .line 4455
    :cond_1e
    const-string v1, "InteractionProviderService is not enabled on this device"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4458
    :goto_23
    if-eqz v0, :cond_34

    .line 4459
    const-string v1, "StartAttentionManagerService"

    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4460
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4461
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4463
    :cond_34
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 14
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1379
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "startBootstrapServices"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1381
    const-string v1, "ArtModuleServiceInitializer"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1389
    new-instance v1, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v1}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v1}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 1390
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1394
    const-string v1, "StartWatchdog"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1395
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    .line 1396
    .local v1, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1397
    iget-object v2, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v2, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1398
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1403
    const-string/jumbo v2, "ro.mi.os.custfeatureresolve"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "SystemServer"

    if-eqz v2, :cond_49

    .line 1404
    const-string v2, "Feature cust_feature_resolve is enabled"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    new-instance v2, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>()V

    const-string v4, "LoadingCustFeatureConfig"

    invoke-static {v2, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_4e

    .line 1409
    :cond_49
    const-string v2, "Feature cust_feature_resolve is disabled"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :goto_4e
    const-string v2, "StartProtoLogConfigurationService"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1415
    new-instance v2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;

    invoke-direct {v2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>()V

    const-string/jumbo v4, "protolog_configuration"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1417
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1419
    const-string v2, "InitializeProtoLog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1420
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1421
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1425
    const-string v2, "PlatformCompat"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1426
    new-instance v2, Lcom/android/server/compat/PlatformCompat;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1427
    .local v2, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v4, "platform_compat"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1428
    new-instance v4, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v4, v2}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v5, "platform_compat_native"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1430
    new-array v4, v3, [J

    new-array v5, v3, [J

    invoke-static {v4, v5, v3}, Landroid/app/AppCompatCallbacks;->install([J[JZ)V

    .line 1431
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1436
    const-string v4, "StartFileIntegrityService"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1437
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1438
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1443
    const-string v4, "StartInstaller"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1444
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    .line 1445
    .local v4, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1449
    const-string v5, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1450
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1451
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1455
    const-string v5, "StartFeatureFlagsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1456
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/flags/FeatureFlagsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1457
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1460
    const-string v5, "UriGrantsManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1461
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1462
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1464
    const-string v5, "StartPowerStatsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1466
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1467
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1469
    const-string v5, "StartIStatsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1470
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1471
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1475
    const-string v5, "MemtrackProxyService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1476
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1477
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1480
    const-string v5, "StartAccessCheckingService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1481
    const-class v5, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    new-instance v6, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-direct {v6}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;-><init>()V

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1483
    const-class v5, Lcom/android/server/appop/AppOpMigrationHelper;

    new-instance v6, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-direct {v6}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1485
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1486
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1489
    const-string v5, "StartActivityManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1502
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1503
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1505
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServerStub;->addMiuiPeriodicCleanerService(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1507
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1509
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1510
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1511
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1513
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1516
    const-string v5, "StartDataLoaderManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1517
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1519
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1522
    const-string v5, "StartIncrementalService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1523
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1524
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1530
    const-string v5, "StartPowerManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1531
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1532
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1534
    const-string v5, "StartThermalManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1535
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1536
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1539
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5, p1, v6}, Lcom/sprd/server/SprdSystemServer;->addUnionManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 1544
    const-string v5, "InitPowerManagement"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1545
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1546
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1549
    const-string v5, "StartRecoverySystemService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1550
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1551
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1554
    const-string v5, "StartLightsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1557
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/SystemServerStub;->createLightsServices()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1559
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1561
    const-string v5, "StartDisplayOffloadService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1563
    const-string v5, "config.enable_display_offload"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1ff

    .line 1564
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1568
    :cond_1ff
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v5

    if-eqz v5, :cond_214

    .line 1569
    const-string v5, "config.enable_qti_display_offload"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_214

    .line 1570
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.qualcomm.qti.server.offloadservice.OffloadManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1574
    :cond_214
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1578
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v5

    if-eqz v5, :cond_234

    .line 1579
    const-string v5, "StartSuspendManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1580
    const-string v5, "config.enable_qti_suspend_manager"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_231

    .line 1581
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.qualcomm.qti.server.suspendservice.SuspendManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1583
    :cond_231
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1589
    :cond_234
    const-string v5, "StartDisplayManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1590
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1591
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1594
    const-string v5, "WaitForDisplay"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1595
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x64

    invoke-virtual {v5, p1, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1596
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1599
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v6, 0xf0

    if-nez v5, :cond_267

    .line 1600
    nop

    .line 1603
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1600
    const/16 v5, 0xe

    invoke-static {v6, v5, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1606
    :cond_267
    const-string v5, "StartDomainVerificationService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1607
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1608
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1609
    .local v5, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v5}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1610
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1613
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1616
    .local v7, "pmsStartTime":J
    const-string v9, "StartPackageManagerService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1618
    :try_start_288
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1620
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1622
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v11, 0x1

    if-eqz v10, :cond_29f

    move v10, v11

    goto :goto_2a0

    :cond_29f
    move v10, v3

    :goto_2a0
    invoke-static {v9, v4, v5, v10}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_2a6
    .catchall {:try_start_288 .. :try_end_2a6} :catchall_3e7

    .line 1626
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1628
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1630
    nop

    .line 1633
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/server/SystemServerStub;->markPmsScan(JJ)V

    .line 1636
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1637
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1638
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1640
    const-string v0, "DexUseManagerLocal"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1643
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1644
    invoke-static {v9}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v9

    .line 1643
    invoke-static {v0, v9}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1645
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1647
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_2fa

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_2fa

    .line 1648
    nop

    .line 1651
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1648
    const/16 v0, 0xf

    invoke-static {v6, v0, v9, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1654
    :cond_2fa
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_30d

    .line 1655
    const-string v0, "StartArcSystemHealthService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1656
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.arc.health.ArcSystemHealthService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1657
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1660
    :cond_30d
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    .line 1662
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$LifeCycle;->getService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    .line 1663
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1666
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1667
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1668
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1671
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1672
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1673
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1676
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1680
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1681
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1682
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1686
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1689
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v0

    if-eqz v0, :cond_367

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1690
    invoke-static {v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureLeanback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_367

    goto :goto_368

    :cond_367
    move v11, v3

    .line 1698
    .local v11, "isTv":Z
    :goto_368
    if-nez v11, :cond_37e

    .line 1699
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1700
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/om/OverlayManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1701
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1706
    :cond_37e
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1707
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1708
    .local v0, "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1709
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1710
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1712
    const-string v6, "StartSensorPrivacyService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1713
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1714
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1716
    const-string/jumbo v6, "persist.sys.displayinset.top"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3c4

    .line 1718
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1719
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1724
    :cond_3c4
    const-string v3, "StartSensorService"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1725
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1726
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1729
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/SystemServerStub;->addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 1732
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprd/server/SprdSystemServer;->startUnisocBootstrapServices()V

    .line 1734
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1735
    return-void

    .line 1626
    .end local v0    # "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    .end local v11    # "isTv":Z
    :catchall_3e7
    move-exception v3

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1628
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1630
    throw v3
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4403
    const/4 v0, 0x0

    .line 4404
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4406
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 4407
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4408
    if-eqz v0, :cond_22

    .line 4409
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4411
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4412
    return-void

    .line 4417
    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 4418
    const v3, 0x10402cb

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 4419
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    return-void

    .line 4422
    :cond_39
    const v3, 0x10402cc

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 4423
    const-string v3, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4430
    :cond_47
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4431
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4433
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4434
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4435
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_66

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_66

    .line 4436
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 4439
    :cond_66
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4440
    return-void
.end method

.method private startContentSafetyManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4329
    const-string/jumbo v0, "startContentSafetyManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4330
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/contentsafety/ContentSafetyManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4331
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4332
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1742
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1743
    invoke-static {v0}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureLeanback(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    .line 1745
    .local v0, "isTv":Z
    :goto_11
    const-string/jumbo v1, "startCoreServices"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1748
    const-string v1, "StartSystemConfigService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1749
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/SystemConfigService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1750
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1752
    const-string v1, "StartBatteryService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1754
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/BatteryService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1755
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1758
    const-string v1, "StartUsageService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1759
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1760
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1761
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1760
    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1762
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1765
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.webview"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6f

    .line 1766
    const-string v1, "StartWebViewUpdateService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1767
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1768
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1772
    :cond_6f
    const-string v1, "StartCachedDeviceStateService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1773
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1774
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1778
    const-string v1, "StartBinderCallsStatsService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1779
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1780
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1783
    const-string v1, "StartLooperStatsService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1784
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1785
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1788
    const-string v1, "StartRollbackManagerService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1789
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1790
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1793
    const-string v1, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1794
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1795
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1798
    const-string v1, "StartBugreportManagerService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1799
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1800
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1803
    const-string v1, "GpuService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1804
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1805
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1808
    const-string v1, "StartRemoteProvisioningService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1809
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1810
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1816
    if-nez v0, :cond_100

    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v1, :cond_f1

    sget-boolean v1, Landroid/os/Build;->IS_ENG:Z

    if-eqz v1, :cond_100

    .line 1818
    :cond_f1
    const-string v1, "CpuMonitorService"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1819
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1820
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1824
    :cond_100
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1826
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sprd/server/SprdSystemServer;->startUnisocCoreServices()V

    .line 1828
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startISensorManagerService()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method private startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4323
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4324
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4325
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4326
    return-void
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 58
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1834
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1835
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1837
    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1838
    .local v6, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 1839
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v4, 0x0

    .line 1840
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v5, 0x0

    .line 1841
    .local v5, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    const/4 v7, 0x0

    .line 1842
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    const/4 v8, 0x0

    .line 1843
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v9, 0x0

    .line 1844
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    const/4 v10, 0x0

    .line 1845
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const/4 v11, 0x0

    .line 1846
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v12, 0x0

    .line 1847
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v13, 0x0

    .line 1848
    .local v13, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/4 v14, 0x0

    .line 1849
    .local v14, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/4 v15, 0x0

    .line 1850
    .local v15, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v16, 0x0

    .line 1852
    .local v16, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    const-string v0, "config.disable_systemtextclassifier"

    move-object/from16 v17, v3

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v17, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1855
    .local v18, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 1857
    .local v19, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 1860
    .local v20, "disableCameraService":Z
    move-object/from16 v21, v5

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v21, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureWatch(Landroid/content/Context;)Z

    move-result v5

    .line 1862
    .local v5, "isWatch":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "org.chromium.arc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    .line 1865
    .local v23, "isArc":Z
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureLeanback(Landroid/content/Context;)Z

    move-result v24

    .line 1868
    .local v24, "isTv":Z
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v25

    .line 1871
    .local v25, "isSprd":Z
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureAutomotive(Landroid/content/Context;)Z

    move-result v3

    .line 1874
    .local v3, "isAutomotive":Z
    :try_start_51
    const-string v0, "SecondaryZygotePreload"

    move-object/from16 v26, v0

    .line 1879
    .local v26, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_1b9d

    move/from16 v27, v3

    .end local v3    # "isAutomotive":Z
    .local v27, "isAutomotive":Z
    :try_start_5c
    const-string v3, "SecondaryZygotePreload"

    invoke-static {v0, v3}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1899
    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1900
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v3, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v3, v6}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1902
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1904
    const-string v0, "StartKeyChainSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1905
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1906
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1908
    const-string v0, "StartBinaryTransparencyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1909
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1910
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1912
    const-string v0, "StartSchedulingPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1913
    const-string/jumbo v0, "scheduling_policy"

    new-instance v3, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v3}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1914
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1916
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/ui_latency_stats/Flags;->uiLatencyStatsService()Z

    move-result v0
    :try_end_ac
    .catchall {:try_start_5c .. :try_end_ac} :catchall_1b8f

    if-eqz v0, :cond_cd

    .line 1917
    :try_start_ae
    const-string v0, "StartUiLatencyStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1918
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/uilatencystats/UiLatencyStatsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1920
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_bd
    .catchall {:try_start_ae .. :try_end_bd} :catchall_be

    goto :goto_cd

    .line 2250
    .end local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_be
    move-exception v0

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move-object/from16 v3, v17

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1baa

    .line 1925
    .restart local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_cd
    :goto_cd
    :try_start_cd
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.microphone"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_d5
    .catchall {:try_start_cd .. :try_end_d5} :catchall_1b8f

    if-nez v0, :cond_eb

    :try_start_d7
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.telecom"

    .line 1926
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_eb

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.telephony"

    .line 1927
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_e9
    .catchall {:try_start_d7 .. :try_end_e9} :catchall_be

    if-eqz v0, :cond_fa

    .line 1928
    :cond_eb
    :try_start_eb
    const-string v0, "StartTelecomLoaderService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1929
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1930
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1933
    :cond_fa
    const-string v0, "StartTelephonyRegistry"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1934
    new-instance v0, Lcom/android/server/TelephonyRegistry;

    new-instance v3, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v3}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v0, v6, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_109
    .catchall {:try_start_eb .. :try_end_109} :catchall_1b8f

    move-object v3, v0

    .line 1936
    .end local v12    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_10a
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1937
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1939
    const-string v0, "StartEntropyMixer"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1940
    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1941
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1944
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1948
    const-string v0, "StartAccountManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1949
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1950
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1952
    const-string v0, "StartContentService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1953
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/content/ContentService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1954
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1956
    const-string v0, "InstallSystemProviders"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1957
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1959
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1961
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1962
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1964
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.hardware.npu"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_169
    .catchall {:try_start_10a .. :try_end_169} :catchall_1b7d

    if-eqz v0, :cond_191

    .line 1965
    :try_start_16b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/npumanager/Flags;->npumanagerEnabled()Z

    move-result v0

    if-eqz v0, :cond_191

    .line 1966
    const-string v0, "StartNpuManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1967
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.npumanager.NpuManagerService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1968
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_180
    .catchall {:try_start_16b .. :try_end_180} :catchall_181

    goto :goto_191

    .line 2250
    .end local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_181
    move-exception v0

    move-object v12, v3

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move-object/from16 v3, v17

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1baa

    .line 1974
    .restart local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_191
    :goto_191
    :try_start_191
    const-string v0, "StartDropBoxManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1975
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1976
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1978
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v0
    :try_end_1a4
    .catchall {:try_start_191 .. :try_end_1a4} :catchall_1b7d

    if-eqz v0, :cond_1b5

    .line 1979
    :try_start_1a6
    const-string v0, "StartEnhancedConfirmationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1980
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.ecm.EnhancedConfirmationService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1981
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1b5
    .catchall {:try_start_1a6 .. :try_end_1b5} :catchall_181

    .line 1984
    :cond_1b5
    :try_start_1b5
    const-string v0, "StartHintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1985
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1986
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1987
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/appfunctions/flags/Flags;->enableAppFunctionPermissionV2()Z

    move-result v0
    :try_end_1c8
    .catchall {:try_start_1b5 .. :try_end_1c8} :catchall_1b7d

    if-eqz v0, :cond_1d9

    .line 1988
    :try_start_1ca
    const-string v0, "StartAllowlistService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1989
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/allowlist/AllowlistService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1990
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1d9
    .catchall {:try_start_1ca .. :try_end_1d9} :catchall_181

    .line 1994
    :cond_1d9
    :try_start_1d9
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/sprd/server/SprdSystemServer;->startUnisocFwkBoostServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1997
    const-string v0, "StartRoleManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1998
    const-class v0, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v12, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
    :try_end_1e9
    .catchall {:try_start_1d9 .. :try_end_1e9} :catchall_1b7d

    move-object/from16 v28, v3

    .end local v3    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v28, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1eb
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v3}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v12}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2000
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.role.RoleService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2001
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2003
    const-string v0, "StartSupervisionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2004
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2005
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2008
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z
    :try_end_20f
    .catchall {:try_start_1eb .. :try_end_20f} :catchall_1b6d

    .line 2010
    if-nez v24, :cond_232

    .line 2011
    :try_start_211
    const-string v0, "StartVibratorManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2012
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2013
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_232

    .line 2250
    .end local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_221
    move-exception v0

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move-object/from16 v3, v17

    move/from16 v53, v27

    move-object/from16 v12, v28

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1baa

    .line 2019
    .restart local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_232
    :goto_232
    if-nez v24, :cond_249

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/multisensory/Flags;->enableMultisensoryFeedback()Z

    move-result v0

    if-eqz v0, :cond_249

    .line 2020
    const-string v0, "StartMultisensoryService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2021
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/multisensory/MultisensoryService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2022
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_249
    .catchall {:try_start_211 .. :try_end_249} :catchall_221

    .line 2025
    :cond_249
    :try_start_249
    const-string v0, "StartDynamicSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2026
    new-instance v0, Lcom/android/server/DynamicSystemService;

    invoke-direct {v0, v6}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_253
    .catchall {:try_start_249 .. :try_end_253} :catchall_1b6d

    move-object v3, v0

    .line 2027
    .end local v17    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_254
    const-string v0, "dynamic_system"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2028
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2030
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v12, "android.hardware.consumerir"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_266
    .catchall {:try_start_254 .. :try_end_266} :catchall_1b5d

    if-eqz v0, :cond_28d

    .line 2031
    :try_start_268
    const-string v0, "StartConsumerIrService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2032
    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v13, v0

    .line 2033
    const-string v0, "consumer_ir"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2034
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_27b
    .catchall {:try_start_268 .. :try_end_27b} :catchall_27e

    move-object/from16 v29, v13

    goto :goto_28f

    .line 2250
    .end local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_27e
    move-exception v0

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move/from16 v53, v27

    move-object/from16 v12, v28

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1baa

    .line 2030
    .restart local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_28d
    move-object/from16 v29, v13

    .line 2038
    .end local v13    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v29, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_28f
    :try_start_28f
    const-string v0, "StartSsruService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2039
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->addSsruService()V

    .line 2040
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2044
    const-string v0, "StartAlarmManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2047
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v0
    :try_end_2a7
    .catchall {:try_start_28f .. :try_end_2a7} :catchall_1b4a

    if-eqz v0, :cond_2ca

    .line 2048
    :try_start_2a9
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkAlarmManagerService()Z

    move-result v0

    if-nez v0, :cond_2d1

    .line 2049
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2b8
    .catchall {:try_start_2a9 .. :try_end_2b8} :catchall_2b9

    goto :goto_2d1

    .line 2250
    .end local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_2b9
    move-exception v0

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move/from16 v53, v27

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1baa

    .line 2051
    .restart local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2ca
    :try_start_2ca
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2054
    :cond_2d1
    :goto_2d1
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2056
    const-string v0, "StartInputManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2057
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/input/InputManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/input/InputManagerService$Lifecycle;

    .line 2058
    invoke-virtual {v0}, Lcom/android/server/input/InputManagerService$Lifecycle;->getService()Lcom/android/server/input/InputManagerService;

    move-result-object v0
    :try_end_2e7
    .catchall {:try_start_2ca .. :try_end_2e7} :catchall_1b4a

    move-object v11, v0

    .line 2059
    :try_start_2e8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2061
    const-string v0, "DeviceStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2062
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2063
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2fa
    .catchall {:try_start_2e8 .. :try_end_2fa} :catchall_1b35

    .line 2065
    if-nez v20, :cond_30b

    .line 2066
    :try_start_2fc
    const-string v0, "StartCameraServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2067
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2068
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_30b
    .catchall {:try_start_2fc .. :try_end_30b} :catchall_2b9

    .line 2072
    :cond_30b
    :try_start_30b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result v0
    :try_end_30f
    .catchall {:try_start_30b .. :try_end_30f} :catchall_1b35

    if-eqz v0, :cond_320

    .line 2073
    :try_start_311
    const-string v0, "StartPerfManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2074
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/urm/PerfManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2075
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_320
    .catchall {:try_start_311 .. :try_end_320} :catchall_2b9

    .line 2080
    :cond_320
    :try_start_320
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result v0
    :try_end_324
    .catchall {:try_start_320 .. :try_end_324} :catchall_1b35

    if-eqz v0, :cond_33d

    .line 2082
    :try_start_326
    const-string v0, "StartDfxBridgeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2083
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/xiaomi/dfx/server/DfxBridgeService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2084
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_335
    .catchall {:try_start_326 .. :try_end_335} :catchall_336

    .line 2087
    goto :goto_33d

    .line 2085
    :catchall_336
    move-exception v0

    .line 2086
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_337
    const-string/jumbo v12, "starting DfxBridgeService"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_33d
    .catchall {:try_start_337 .. :try_end_33d} :catchall_2b9

    .line 2091
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_33d
    :goto_33d
    :try_start_33d
    const-string v0, "StartWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2093
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0xc8

    invoke-virtual {v0, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2094
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v0, :cond_34f

    const/4 v0, 0x1

    goto :goto_350

    :cond_34f
    const/4 v0, 0x0

    .line 2097
    :goto_350
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/SystemServerStub;->createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v13

    iget-object v12, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2094
    invoke-static {v6, v11, v0, v13, v12}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_360
    .catchall {:try_start_33d .. :try_end_360} :catchall_1b35

    move-object v9, v0

    .line 2099
    :try_start_361
    const-string/jumbo v0, "window"

    const/16 v12, 0x13

    const/4 v13, 0x0

    invoke-static {v0, v9, v13, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2102
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2104
    const-string v0, "SetWindowManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2105
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 2106
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2108
    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2109
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 2110
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2115
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    const-string v12, "StartISensorManagerService"

    invoke-static {v0, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 2122
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    const-string v12, "StartHidlServices"

    invoke-static {v0, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 2129
    const-string v0, "StartInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2130
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 2131
    invoke-virtual {v11}, Lcom/android/server/input/InputManagerService;->start()V

    .line 2132
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2135
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2136
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 2137
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2139
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_3ba
    .catchall {:try_start_361 .. :try_end_3ba} :catchall_1b1e

    const/4 v12, 0x1

    if-ne v0, v12, :cond_3c5

    .line 2140
    :try_start_3bd
    const-string v0, "SystemServer"

    const-string v12, "No Bluetooth Service (factory test)"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c4
    .catchall {:try_start_3bd .. :try_end_3c4} :catchall_2b9

    goto :goto_3ea

    .line 2141
    :cond_3c5
    :try_start_3c5
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v12, "android.hardware.bluetooth"

    .line 2142
    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_3cf
    .catchall {:try_start_3c5 .. :try_end_3cf} :catchall_1b1e

    if-nez v0, :cond_3d9

    .line 2143
    :try_start_3d1
    const-string v0, "SystemServer"

    const-string v12, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3d8
    .catchall {:try_start_3d1 .. :try_end_3d8} :catchall_2b9

    goto :goto_3ea

    .line 2145
    :cond_3d9
    :try_start_3d9
    const-string v0, "StartBluetoothService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2146
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.bluetooth.BluetoothService"

    const-string v13, "/apex/com.android.bt/javalib/service-bluetooth.jar"

    invoke-virtual {v0, v12, v13}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2148
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2151
    :goto_3ea
    const-string v0, "IpConnectivityMetrics"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2152
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2153
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2155
    const-string v0, "NetworkWatchlistService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2156
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2157
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2164
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v0
    :try_end_40c
    .catchall {:try_start_3d9 .. :try_end_40c} :catchall_1b1e

    if-eqz v0, :cond_42c

    .line 2165
    :try_start_40e
    const-string/jumbo v0, "persist.ufw.disable_pinner"

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_43e

    .line 2166
    if-nez v5, :cond_43e

    if-nez v24, :cond_43e

    .line 2167
    const-string v0, "PinnerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2168
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2169
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_42b
    .catchall {:try_start_40e .. :try_end_42b} :catchall_2b9

    goto :goto_43e

    .line 2174
    :cond_42c
    :try_start_42c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 2176
    const-string v0, "PinnerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2177
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2178
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2186
    :cond_43e
    :goto_43e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v0
    :try_end_442
    .catchall {:try_start_42c .. :try_end_442} :catchall_1b1e

    if-eqz v0, :cond_453

    .line 2187
    :try_start_444
    const-string v0, "ActivityTriggerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2188
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2189
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_453
    .catchall {:try_start_444 .. :try_end_453} :catchall_2b9

    .line 2193
    :cond_453
    :try_start_453
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_455
    .catchall {:try_start_453 .. :try_end_455} :catchall_1b1e

    if-eqz v0, :cond_46c

    :try_start_457
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v0

    if-eqz v0, :cond_46c

    .line 2194
    const-string v0, "ProfcollectForwardingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2195
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2196
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_46c
    .catchall {:try_start_457 .. :try_end_46c} :catchall_2b9

    .line 2199
    :cond_46c
    :try_start_46c
    const-string v0, "SignedConfigService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2200
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 2201
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2203
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->removeAppIntegrityManagerService()Z

    move-result v0
    :try_end_47d
    .catchall {:try_start_46c .. :try_end_47d} :catchall_1b1e

    if-nez v0, :cond_48e

    .line 2204
    :try_start_47f
    const-string v0, "AppIntegrityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2205
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2206
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_48e
    .catchall {:try_start_47f .. :try_end_48e} :catchall_2b9

    .line 2209
    :cond_48e
    :try_start_48e
    const-string v0, "StartLogcatManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2210
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2211
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_49d
    .catchall {:try_start_48e .. :try_end_49d} :catchall_1b1e

    .line 2213
    if-nez v5, :cond_4b8

    if-nez v24, :cond_4b8

    if-nez v27, :cond_4b8

    .line 2214
    :try_start_4a3
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aflApi()Z

    move-result v0

    if-eqz v0, :cond_4b8

    .line 2215
    const-string v0, "StartIntrusionDetectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2216
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2217
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4b8
    .catchall {:try_start_4a3 .. :try_end_4b8} :catchall_2b9

    .line 2220
    :cond_4b8
    :try_start_4b8
    invoke-static {v6}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v0
    :try_end_4bc
    .catchall {:try_start_4b8 .. :try_end_4bc} :catchall_1b1e

    if-eqz v0, :cond_4cd

    .line 2221
    :try_start_4be
    const-string v0, "StartAppFunctionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2222
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/appfunctions/AppFunctionManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2223
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4cd
    .catchall {:try_start_4be .. :try_end_4cd} :catchall_2b9

    .line 2226
    :cond_4cd
    :try_start_4cd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->enablePccFrameworkSupport()Z

    move-result v0
    :try_end_4d1
    .catchall {:try_start_4cd .. :try_end_4d1} :catchall_1b1e

    if-eqz v0, :cond_4e2

    .line 2227
    :try_start_4d3
    const-string v0, "StartPccSandboxManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2228
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/privatecompute/PccSandboxManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2229
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4e2
    .catchall {:try_start_4d3 .. :try_end_4e2} :catchall_2b9

    .line 2232
    :cond_4e2
    :try_start_4e2
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/lskfreset/flags/Flags;->enableLskfResetManager()Z

    move-result v0
    :try_end_4e6
    .catchall {:try_start_4e2 .. :try_end_4e6} :catchall_1b1e

    if-eqz v0, :cond_4f7

    .line 2233
    :try_start_4e8
    const-string v0, "StartLskfResetManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2234
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/lskfreset/LskfResetManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2235
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2238
    :cond_4f7
    if-nez v5, :cond_50c

    if-nez v24, :cond_50c

    if-nez v27, :cond_50c

    .line 2239
    const-string v0, "StartAdvancedProtectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2240
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2241
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2244
    :cond_50c
    if-nez v5, :cond_527

    if-nez v24, :cond_527

    if-nez v27, :cond_527

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/tradeinmode/flags/Flags;->enableTradeInMode()Z

    move-result v0

    if-eqz v0, :cond_527

    .line 2245
    const-string v0, "StartTradeInModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2246
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/TradeInModeService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2247
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_527
    .catchall {:try_start_4e8 .. :try_end_527} :catchall_2b9

    .line 2254
    .end local v26    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_527
    nop

    .line 2256
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServerStub;->initAppRescuepartyLevel(Landroid/content/Context;)V

    .line 2261
    move-object/from16 v26, v7

    .end local v7    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v26, "vpnManager":Lcom/android/server/VpnManagerService;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v7

    .line 2262
    .local v7, "safeMode":Z
    if-eqz v7, :cond_542

    .line 2267
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x1

    invoke-static {v0, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_559

    .line 2269
    :cond_542
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v12, 0x1110042

    invoke-virtual {v0, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_559

    .line 2270
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v12, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v0, v12, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2274
    :cond_559
    :goto_559
    const/4 v12, 0x0

    .line 2275
    .local v12, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v13, 0x0

    .line 2276
    .local v13, "notification":Landroid/app/INotificationManager;
    const/16 v30, 0x0

    .line 2277
    .local v30, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v31, 0x0

    .line 2278
    .local v31, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v32, 0x0

    .line 2281
    .local v32, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v33, v3

    const/4 v3, 0x1

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v33, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    if-eq v0, v3, :cond_5e3

    .line 2282
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1040305

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2285
    .local v3, "immsClassName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_58a

    .line 2286
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v34, v4

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v34, "storageManager":Landroid/os/storage/IStorageManager;
    const-class v4, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move/from16 v35, v5

    goto :goto_5c8

    .line 2289
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_58a
    move-object/from16 v34, v4

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_58c
    const-string v0, "SystemServer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_593
    .catchall {:try_start_58c .. :try_end_593} :catchall_5ae

    move/from16 v35, v5

    .end local v5    # "isWatch":Z
    .local v35, "isWatch":Z
    :try_start_595
    const-string v5, "Starting custom IMMS: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2290
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_5ab
    .catchall {:try_start_595 .. :try_end_5ab} :catchall_5ac

    .line 2293
    goto :goto_5c8

    .line 2291
    :catchall_5ac
    move-exception v0

    goto :goto_5b1

    .end local v35    # "isWatch":Z
    .restart local v5    # "isWatch":Z
    :catchall_5ae
    move-exception v0

    move/from16 v35, v5

    .line 2292
    .end local v5    # "isWatch":Z
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v35    # "isWatch":Z
    :goto_5b1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2295
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5c8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2297
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2299
    :try_start_5d0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5d7
    .catchall {:try_start_5d0 .. :try_end_5d7} :catchall_5d8

    .line 2302
    goto :goto_5df

    .line 2300
    :catchall_5d8
    move-exception v0

    .line 2301
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2303
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5df
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_5e7

    .line 2281
    .end local v3    # "immsClassName":Ljava/lang/String;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "isWatch":Z
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    :cond_5e3
    move-object/from16 v34, v4

    move/from16 v35, v5

    .line 2306
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "isWatch":Z
    :goto_5e7
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2308
    :try_start_5ec
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_5ef
    .catchall {:try_start_5ec .. :try_end_5ef} :catchall_5f0

    .line 2311
    goto :goto_5f7

    .line 2309
    :catchall_5f0
    move-exception v0

    .line 2310
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making display ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2312
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5f7
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2314
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_669

    .line 2315
    const-string v0, "0"

    const-string/jumbo v3, "system_init.startmountservice"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_669

    .line 2316
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2322
    :try_start_613
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/StorageManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2323
    const-string/jumbo v0, "mount"

    .line 2324
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2323
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_625
    .catchall {:try_start_613 .. :try_end_625} :catchall_627

    move-object v4, v0

    .line 2327
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_630

    .line 2325
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_627
    move-exception v0

    .line 2326
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StorageManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v4, v34

    .line 2328
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_630
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2330
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2332
    :try_start_638
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_63f
    .catchall {:try_start_638 .. :try_end_63f} :catchall_640

    .line 2335
    goto :goto_647

    .line 2333
    :catchall_640
    move-exception v0

    .line 2334
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StorageStatsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2336
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_647
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2338
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->enablePccFrameworkSupport()Z

    move-result v0

    if-eqz v0, :cond_667

    .line 2339
    const-string v0, "StartFileService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2341
    :try_start_655
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/files/FileService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_65c
    .catchall {:try_start_655 .. :try_end_65c} :catchall_65d

    .line 2344
    goto :goto_664

    .line 2342
    :catchall_65d
    move-exception v0

    .line 2343
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting FileService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2345
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_664
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2351
    :cond_667
    move-object/from16 v34, v4

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_669
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v0

    if-eqz v0, :cond_692

    .line 2352
    const-string v0, "StartAppLauncherService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2354
    :try_start_674
    const-string v0, "SystemServer"

    const-string v3, "SystemServer Add AppLauncherService Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2355
    const-string/jumbo v0, "vendor.qti.appLauncherService.IAppLauncherService/default"

    new-instance v3, Lvendor/qti/applauncher/AppLauncherService;

    invoke-direct {v3, v6}, Lvendor/qti/applauncher/AppLauncherService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_686
    .catchall {:try_start_674 .. :try_end_686} :catchall_687

    .line 2360
    goto :goto_68f

    .line 2358
    :catchall_687
    move-exception v0

    .line 2359
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "Failure starting AppLauncherService"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2361
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_68f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2367
    :cond_692
    const-string v0, "StartUiModeManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2368
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2369
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2371
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2373
    :try_start_6a6
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6ad
    .catchall {:try_start_6a6 .. :try_end_6ad} :catchall_6ae

    .line 2376
    goto :goto_6b5

    .line 2374
    :catchall_6ae
    move-exception v0

    .line 2375
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting LocaleManagerService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2377
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6b5
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2379
    const-string v0, "StartUAppWindowLayoutSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2381
    :try_start_6bd
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6c4
    .catchall {:try_start_6bd .. :try_end_6c4} :catchall_6c5

    .line 2384
    goto :goto_6cc

    .line 2382
    :catchall_6c5
    move-exception v0

    .line 2383
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting AppWindowLayoutSettingsService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2385
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6cc
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2387
    const-string v0, "StartGrammarInflectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2389
    :try_start_6d4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6db
    .catchall {:try_start_6d4 .. :try_end_6db} :catchall_6dc

    .line 2392
    goto :goto_6e3

    .line 2390
    :catchall_6dc
    move-exception v0

    .line 2391
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting GrammarInflectionService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2393
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6e3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2395
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2396
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2397
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2399
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2400
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 2401
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2403
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2405
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2408
    .local v3, "bootDexoptStartTime":J
    :try_start_70b
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2409
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_719
    .catchall {:try_start_70b .. :try_end_719} :catchall_71a

    goto :goto_721

    .line 2410
    :catchall_71a
    move-exception v0

    .line 2411
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_71b
    const-string/jumbo v5, "update packages"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_721
    .catchall {:try_start_71b .. :try_end_721} :catchall_1b03

    .line 2413
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_721
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v5, "dexopt"

    invoke-virtual {v0, v5}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2414
    nop

    .line 2415
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2417
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v5, v12

    move-object/from16 v36, v13

    .end local v12    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v13    # "notification":Landroid/app/INotificationManager;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v36, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v3, v4, v12, v13}, Lcom/android/server/SystemServerStub;->markBootDexopt(JJ)V

    .line 2420
    const-string v0, "UpdateMetricsIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2421
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updateMetricsIfNeeded()V

    .line 2422
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2435
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_764

    .line 2436
    const/4 v0, 0x0

    move-wide/from16 v37, v3

    move-object/from16 v39, v5

    move-object v4, v0

    move-object/from16 v40, v16

    move-object/from16 v41, v30

    move-object/from16 v42, v31

    move-object/from16 v43, v32

    move-object/from16 v30, v8

    move-object/from16 v31, v10

    move-object/from16 v32, v15

    .local v0, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    goto/16 :goto_1361

    .line 2438
    .end local v0    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_764
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2440
    :try_start_769
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2441
    const-string/jumbo v0, "lock_settings"

    .line 2442
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2441
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_77b
    .catchall {:try_start_769 .. :try_end_77b} :catchall_77e

    move-object/from16 v31, v0

    .line 2445
    goto :goto_785

    .line 2443
    :catchall_77e
    move-exception v0

    .line 2444
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting LockSettingsService service"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2446
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_785
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2448
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v17, 0x1

    xor-int/lit8 v0, v0, 0x1

    move v12, v0

    .line 2451
    .local v12, "hasPdb":Z
    if-eqz v12, :cond_7af

    if-eqz v25, :cond_7a0

    if-nez v24, :cond_7af

    .line 2452
    :cond_7a0
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2453
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2454
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2458
    :cond_7af
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_7cd

    const-string/jumbo v0, "ro.boot.dev_mode"

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_7cd

    .line 2459
    const-string v0, "StartArcPersistentDataBlock"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2460
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2461
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2465
    :cond_7cd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 2467
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2468
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2469
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2474
    if-nez v12, :cond_7e7

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_7f6

    .line 2476
    :cond_7e7
    const-string v0, "StartOemLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2477
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2478
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2481
    :cond_7f6
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2482
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2483
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2487
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2488
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2489
    .local v13, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2496
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 2498
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2499
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-wide/from16 v37, v3

    .end local v3    # "bootDexoptStartTime":J
    .local v37, "bootDexoptStartTime":J
    const-class v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2500
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2505
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2507
    :try_start_831
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_836
    .catchall {:try_start_831 .. :try_end_836} :catchall_846

    move-object v3, v0

    .line 2508
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_837
    invoke-virtual {v3}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 2509
    const-string/jumbo v0, "statusbar"

    const/16 v4, 0x14

    const/4 v5, 0x0

    invoke-static {v0, v3, v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_843
    .catchall {:try_start_837 .. :try_end_843} :catchall_844

    .line 2513
    goto :goto_84e

    .line 2511
    :catchall_844
    move-exception v0

    goto :goto_848

    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_846
    move-exception v0

    move-object v3, v5

    .line 2512
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_848
    const-string/jumbo v4, "starting StatusBarManagerService"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2514
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_84e
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2516
    const v0, 0x10402e0

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_86a

    .line 2518
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2519
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2520
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_871

    .line 2522
    :cond_86a
    const-string v0, "SystemServer"

    const-string v4, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2529
    :goto_871
    if-eqz v25, :cond_875

    if-nez v24, :cond_878

    .line 2530
    :cond_875
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2532
    :cond_878
    if-eqz v25, :cond_87e

    if-nez v35, :cond_881

    if-nez v24, :cond_881

    .line 2533
    :cond_87e
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2536
    :cond_881
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2539
    if-eqz v25, :cond_888

    if-nez v35, :cond_88b

    .line 2540
    :cond_888
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2543
    :cond_88b
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2544
    if-nez v35, :cond_894

    .line 2545
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    goto :goto_89b

    .line 2547
    :cond_894
    const-string v0, "SystemServer"

    const-string v4, "Not starting WearableSensingService"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :goto_89b
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2550
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contentsafety/flags/Flags;->enableContentsafety()Z

    move-result v0

    if-eqz v0, :cond_8a8

    .line 2551
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startContentSafetyManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    goto :goto_8af

    .line 2553
    :cond_8a8
    const-string v0, "SystemServer"

    const-string v4, "ContentSafetyManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2557
    :goto_8af
    const v0, 0x10402c3

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8c8

    .line 2559
    const-string v0, "StartAmbientContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2560
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2561
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_8cf

    .line 2563
    :cond_8c8
    const-string v0, "SystemServer"

    const-string v4, "AmbientContextManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2567
    :goto_8cf
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2568
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2569
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2574
    if-eqz v25, :cond_8e4

    if-nez v35, :cond_8fd

    if-nez v24, :cond_8fd

    .line 2575
    :cond_8e4
    const v0, 0x10402c4

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8fd

    .line 2578
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2579
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2580
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_904

    .line 2582
    :cond_8fd
    const-string v0, "SystemServer"

    const-string v4, "AppPredictionService not defined by OEM"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2586
    :goto_904
    const v0, 0x10402d1

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_91d

    .line 2587
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2588
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2589
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_924

    .line 2591
    :cond_91d
    const-string v0, "SystemServer"

    const-string v4, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2595
    :goto_924
    const v0, 0x10402ed

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_93c

    .line 2596
    const-string v0, "StartSearchUiService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2597
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2598
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2602
    :cond_93c
    const v0, 0x10402f0

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_955

    .line 2603
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2604
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2605
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_95c

    .line 2607
    :cond_955
    const-string v0, "SystemServer"

    const-string v4, "SmartspaceManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2611
    :goto_95c
    const v0, 0x10402d5

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_975

    .line 2613
    const-string v0, "StartContextualSearchService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2614
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2615
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_97c

    .line 2617
    :cond_975
    const-string v0, "SystemServer"

    const-string v4, "ContextualSearchManagerService not defined or disabled by flag"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2620
    :goto_97c
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2622
    :try_start_981
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_988
    .catchall {:try_start_981 .. :try_end_988} :catchall_989

    .line 2625
    goto :goto_990

    .line 2623
    :catchall_989
    move-exception v0

    .line 2624
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "initializing ConnectivityModuleConnector"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2626
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_990
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2628
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2630
    :try_start_998
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_99f
    .catchall {:try_start_998 .. :try_end_99f} :catchall_9a0

    .line 2633
    goto :goto_9a7

    .line 2631
    :catchall_9a0
    move-exception v0

    .line 2632
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "initializing NetworkStackClient"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2634
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9a7
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2636
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2638
    :try_start_9af
    invoke-static {v6}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v0
    :try_end_9b3
    .catchall {:try_start_9af .. :try_end_9b3} :catchall_9bd

    move-object v5, v0

    .line 2639
    .end local v21    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v5, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :try_start_9b4
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9ba
    .catchall {:try_start_9b4 .. :try_end_9ba} :catchall_9bb

    .line 2642
    goto :goto_9c6

    .line 2640
    :catchall_9bb
    move-exception v0

    goto :goto_9c0

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v21    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :catchall_9bd
    move-exception v0

    move-object/from16 v5, v21

    .line 2641
    .end local v21    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :goto_9c0
    const-string/jumbo v4, "starting NetworkManagement Service"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2643
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9c6
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2645
    const-string v0, "StartFontManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2646
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v4, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2647
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2649
    if-nez v35, :cond_9ec

    .line 2650
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2651
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2652
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2655
    :cond_9ec
    if-nez v18, :cond_9fd

    .line 2656
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2657
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2658
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2659
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2662
    :cond_9fd
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2663
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2664
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2666
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2669
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.NetworkStatsServiceInitializer"

    move-object/from16 v39, v3

    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v39, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v4, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2671
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2673
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2675
    :try_start_a24
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v6, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v8, v0

    .line 2677
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a32
    .catchall {:try_start_a24 .. :try_end_a32} :catchall_a33

    .line 2680
    goto :goto_a3a

    .line 2678
    :catchall_a33
    move-exception v0

    .line 2679
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting NetworkPolicy Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2681
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a3a
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2684
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 2685
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemServerStub;->getMiuilibpath()Ljava/lang/String;

    move-result-object v4

    .line 2684
    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2687
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7a

    .line 2690
    const-string v0, "StartWifi"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2691
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.WifiService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2693
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2694
    const-string v0, "StartWifiScanning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2695
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2697
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2700
    :cond_a7a
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlMiuiWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2701
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlSlaveWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2704
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/wifi/flags/Flags;->usd()Z

    move-result v0

    if-eqz v0, :cond_aac

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110142

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_aac

    .line 2706
    const-string v0, "StartWifiUsd"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2707
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.usd.UsdService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2709
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2712
    :cond_aac
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ac9

    .line 2714
    const-string v0, "StartRttService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2715
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.rtt.RttService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2717
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2720
    :cond_ac9
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ae6

    .line 2722
    const-string v0, "StartWifiAware"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2723
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.aware.WifiAwareService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2725
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2728
    :cond_ae6
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b03

    .line 2730
    const-string v0, "StartWifiP2P"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2731
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2733
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2736
    :cond_b03
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.lowpan"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b1e

    .line 2738
    const-string v0, "StartLowpan"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2739
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2740
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2743
    :cond_b1e
    const-string v0, "StartPacProxyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2745
    :try_start_b23
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v6}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V
    :try_end_b28
    .catchall {:try_start_b23 .. :try_end_b28} :catchall_b36

    move-object v3, v0

    .line 2746
    .end local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v3, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :try_start_b29
    const-string/jumbo v0, "pac_proxy"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2f
    .catchall {:try_start_b29 .. :try_end_b2f} :catchall_b32

    .line 2749
    move-object/from16 v16, v3

    goto :goto_b3d

    .line 2747
    :catchall_b32
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_b37

    .end local v3    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :catchall_b36
    move-exception v0

    .line 2748
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_b37
    const-string/jumbo v3, "starting PacProxyService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2750
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b3d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2753
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 2754
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemServerStub;->getConnectivitylibpath()Ljava/lang/String;

    move-result-object v4

    .line 2753
    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2756
    const-string v0, "StartConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2760
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ConnectivityServiceInitializer"

    const-string v4, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2762
    invoke-virtual {v8}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2763
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2766
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlConnectivityService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2769
    const-string v0, "StartSecurityStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2771
    :try_start_b6f
    const-string/jumbo v0, "security_state"

    new-instance v3, Lcom/android/server/SecurityStateManagerService;

    invoke-direct {v3, v6}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b7a
    .catchall {:try_start_b6f .. :try_end_b7a} :catchall_b7b

    .line 2775
    goto :goto_b82

    .line 2773
    :catchall_b7b
    move-exception v0

    .line 2774
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SecurityStateManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2776
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b82
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2778
    if-nez v35, :cond_ba7

    .line 2779
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2781
    :try_start_b8c
    invoke-static {v6}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v0
    :try_end_b90
    .catchall {:try_start_b8c .. :try_end_b90} :catchall_b9a

    move-object v3, v0

    .line 2782
    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v3, "vpnManager":Lcom/android/server/VpnManagerService;
    :try_start_b91
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b97
    .catchall {:try_start_b91 .. :try_end_b97} :catchall_b98

    .line 2785
    goto :goto_ba3

    .line 2783
    :catchall_b98
    move-exception v0

    goto :goto_b9d

    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_b9a
    move-exception v0

    move-object/from16 v3, v26

    .line 2784
    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_b9d
    const-string/jumbo v4, "starting VPN Manager Service"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2786
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ba3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_bb0

    .line 2790
    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    :cond_ba7
    const-string v0, "SystemServer"

    const-string v3, "Not starting VpnManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v26

    .line 2793
    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_bb0
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2795
    :try_start_bb5
    const-string/jumbo v0, "system_update"

    new-instance v4, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v4, v6}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bc0
    .catchall {:try_start_bb5 .. :try_end_bc0} :catchall_bc1

    .line 2799
    goto :goto_bc8

    .line 2797
    :catchall_bc1
    move-exception v0

    .line 2798
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SystemUpdateManagerService"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2800
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_bc8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2802
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2804
    :try_start_bd0
    const-string/jumbo v0, "updatelock"

    new-instance v4, Lcom/android/server/UpdateLockService;

    invoke-direct {v4, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_bdb
    .catchall {:try_start_bd0 .. :try_end_bdb} :catchall_bdc

    .line 2808
    goto :goto_be3

    .line 2806
    :catchall_bdc
    move-exception v0

    .line 2807
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2809
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_be3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2812
    const-string v0, "StartBitmapOffloadService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2813
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2814
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2816
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->enableDndSync()Z

    move-result v0

    if-eqz v0, :cond_c0a

    .line 2817
    const-string v0, "StartCtxModeManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2818
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/modes/ContextualModeManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2819
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2822
    :cond_c0a
    const-string v0, "StartNotificationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2823
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2824
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2825
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2826
    const-string/jumbo v0, "notification"

    .line 2827
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2826
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v4

    .line 2828
    .end local v36    # "notification":Landroid/app/INotificationManager;
    .local v4, "notification":Landroid/app/INotificationManager;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2830
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2831
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v21, v3

    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v21, "vpnManager":Lcom/android/server/VpnManagerService;
    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2832
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2834
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2836
    :try_start_c40
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c47
    .catchall {:try_start_c40 .. :try_end_c47} :catchall_c48

    .line 2839
    goto :goto_c4f

    .line 2837
    :catchall_c48
    move-exception v0

    .line 2838
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting TimeDetectorService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2840
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c4f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2842
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2843
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2844
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2846
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2848
    :try_start_c66
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_c6b
    .catchall {:try_start_c66 .. :try_end_c6b} :catchall_c78

    move-object v3, v0

    .line 2849
    .end local v30    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v3, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_c6c
    const-string v0, "country_detector"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c71
    .catchall {:try_start_c6c .. :try_end_c71} :catchall_c74

    .line 2852
    move-object/from16 v30, v3

    goto :goto_c7f

    .line 2850
    :catchall_c74
    move-exception v0

    move-object/from16 v30, v3

    goto :goto_c79

    .end local v3    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v30    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_c78
    move-exception v0

    .line 2851
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_c79
    const-string/jumbo v3, "starting Country Detector"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2853
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c7f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2855
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2857
    :try_start_c87
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c8e
    .catchall {:try_start_c87 .. :try_end_c8e} :catchall_c8f

    .line 2860
    goto :goto_c96

    .line 2858
    :catchall_c8f
    move-exception v0

    .line 2859
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting TimeZoneDetectorService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2861
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c96
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2863
    const-string v0, "StartAltitudeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2865
    :try_start_c9e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_ca5
    .catchall {:try_start_c9e .. :try_end_ca5} :catchall_ca6

    .line 2868
    goto :goto_cad

    .line 2866
    :catchall_ca6
    move-exception v0

    .line 2867
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting AltitudeService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2869
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_cad
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2871
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2873
    :try_start_cb5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_cbc
    .catchall {:try_start_cb5 .. :try_end_cbc} :catchall_cbd

    .line 2876
    goto :goto_cc4

    .line 2874
    :catchall_cbd
    move-exception v0

    .line 2875
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting LocationTimeZoneManagerService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2877
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_cc4
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2879
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110193

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ceb

    .line 2880
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2882
    :try_start_cd9
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_ce0
    .catchall {:try_start_cd9 .. :try_end_ce0} :catchall_ce1

    .line 2885
    goto :goto_ce8

    .line 2883
    :catchall_ce1
    move-exception v0

    .line 2884
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting GnssTimeUpdateService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2886
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ce8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2889
    :cond_ceb
    if-nez v35, :cond_d04

    .line 2890
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2892
    :try_start_cf2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_cf9
    .catchall {:try_start_cf2 .. :try_end_cf9} :catchall_cfa

    .line 2895
    goto :goto_d01

    .line 2893
    :catchall_cfa
    move-exception v0

    .line 2894
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Search Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2896
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d01
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2899
    :cond_d04
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101bb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_d21

    .line 2900
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2901
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2902
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_d28

    .line 2904
    :cond_d21
    const-string v0, "SystemServer"

    const-string v3, "Wallpaper service disabled by config"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2907
    :goto_d28
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->enableThemeService()Z

    move-result v0

    if-eqz v0, :cond_d45

    .line 2908
    if-eqz v35, :cond_d36

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->enableWearThemeService()Z

    move-result v0

    if-eqz v0, :cond_d45

    .line 2909
    :cond_d36
    const-string v0, "StartThemeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2910
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/theming/ThemeManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2911
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2916
    :cond_d45
    const v0, 0x10402f7

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d5d

    .line 2918
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2919
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2920
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2923
    :cond_d5d
    const-string v0, "StartAudioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2924
    if-nez v23, :cond_d70

    .line 2925
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v26, v4

    move-object/from16 v40, v5

    goto :goto_dba

    .line 2927
    :cond_d70
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2928
    const v3, 0x1040301

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2930
    .local v3, "className":Ljava/lang/String;
    :try_start_d7b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_d7d
    .catchall {:try_start_d7b .. :try_end_d7d} :catchall_d9e

    move-object/from16 v26, v4

    .end local v4    # "notification":Landroid/app/INotificationManager;
    .local v26, "notification":Landroid/app/INotificationManager;
    :try_start_d7f
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_d88
    .catchall {:try_start_d7f .. :try_end_d88} :catchall_d9a

    move-object/from16 v40, v5

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v40, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :try_start_d8a
    const-string v5, "$Lifecycle"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_d97
    .catchall {:try_start_d8a .. :try_end_d97} :catchall_d98

    .line 2933
    goto :goto_dba

    .line 2931
    :catchall_d98
    move-exception v0

    goto :goto_da3

    .end local v40    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :catchall_d9a
    move-exception v0

    move-object/from16 v40, v5

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v40    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    goto :goto_da3

    .end local v26    # "notification":Landroid/app/INotificationManager;
    .end local v40    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "notification":Landroid/app/INotificationManager;
    .restart local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :catchall_d9e
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v40, v5

    .line 2932
    .end local v4    # "notification":Landroid/app/INotificationManager;
    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v26    # "notification":Landroid/app/INotificationManager;
    .restart local v40    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :goto_da3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2935
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "className":Ljava/lang/String;
    :goto_dba
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2937
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2938
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2939
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2941
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.broadcastradio"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_de5

    .line 2942
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2943
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2944
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2948
    :cond_de5
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 2950
    if-nez v24, :cond_df9

    .line 2951
    const-string v0, "StartDockObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2952
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2953
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2961
    :cond_df9
    if-nez v25, :cond_e14

    if-eqz v35, :cond_e14

    .line 2963
    const-string v0, "StartThermalObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2967
    :try_start_e02
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_e09
    .catchall {:try_start_e02 .. :try_end_e09} :catchall_e0a

    .line 2970
    goto :goto_e11

    .line 2968
    :catchall_e0a
    move-exception v0

    .line 2969
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartThermalObserver"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2972
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e11
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2976
    :cond_e14
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 2978
    if-nez v35, :cond_e31

    .line 2979
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2982
    :try_start_e1e
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v6, v11}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v11, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_e26
    .catchall {:try_start_e1e .. :try_end_e26} :catchall_e27

    .line 2986
    goto :goto_e2e

    .line 2984
    :catchall_e27
    move-exception v0

    .line 2985
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting WiredAccessoryManager"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2987
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e2e
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2994
    :cond_e31
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 2996
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.midi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4d

    .line 2998
    const-string v0, "StartMidiManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2999
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/midi/MidiService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3000
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3007
    :cond_e4d
    const-string v0, "StartAdbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3009
    :try_start_e52
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/adb/AdbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_e59
    .catchall {:try_start_e52 .. :try_end_e59} :catchall_e5a

    .line 3012
    goto :goto_e62

    .line 3010
    :catchall_e5a
    move-exception v0

    .line 3011
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "Failure starting AdbService"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3013
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e62
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3015
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e7d

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.accessory"

    .line 3016
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e7d

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_e8c

    .line 3020
    :cond_e7d
    const-string v0, "StartUsbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3021
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3022
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3025
    :cond_e8c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/serial/flags/Flags;->enableWiredSerialApi()Z

    move-result v0

    if-eqz v0, :cond_ea2

    .line 3026
    const-string v0, "StartSerialManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3027
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/serial/SerialManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3028
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_eb3

    .line 3030
    :cond_ea2
    if-nez v35, :cond_eb3

    .line 3031
    const-string v0, "StartSerialService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3032
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SerialService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3033
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3037
    :cond_eb3
    :goto_eb3
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3039
    :try_start_eb8
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 3040
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ec4
    .catchall {:try_start_eb8 .. :try_end_ec4} :catchall_ec5

    .line 3044
    goto :goto_ecd

    .line 3042
    :catchall_ec5
    move-exception v0

    .line 3043
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3045
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ecd
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3047
    if-nez v35, :cond_ee1

    .line 3048
    const-string v0, "StartTwilightService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3049
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3050
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3053
    :cond_ee1
    const-string v0, "StartColorDisplay"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3054
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3055
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3058
    const-string v0, "StartJobScheduler"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3059
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3060
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3062
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3063
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3064
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3066
    const-string v0, "StartTrustManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3067
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3068
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3071
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    const/4 v5, 0x0

    invoke-virtual {v0, v6, v5}, Lcom/android/server/SystemServerStub;->addExtraServices(Landroid/content/Context;Z)V

    .line 3074
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.backup"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f3e

    .line 3075
    const-string v0, "StartBackupManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3076
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3077
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3083
    :cond_f3e
    if-eqz v25, :cond_f42

    if-nez v24, :cond_f68

    :cond_f42
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.app_widgets"

    .line 3084
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f59

    .line 3085
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111017e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f68

    .line 3088
    :cond_f59
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3089
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appwidget/AppWidgetService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3090
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3093
    :cond_f68
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_f81

    .line 3094
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3095
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3096
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3098
    :cond_f81
    const-string v0, "StartSensorNotification"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3099
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3100
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3102
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.context_hub"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa9

    .line 3103
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3104
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3105
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3108
    :cond_fa9
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3110
    :try_start_fae
    const-string v0, "diskstats"

    new-instance v3, Lcom/android/server/DiskStatsService;

    invoke-direct {v3, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fb8
    .catchall {:try_start_fae .. :try_end_fb8} :catchall_fb9

    .line 3113
    goto :goto_fc0

    .line 3111
    :catchall_fb9
    move-exception v0

    .line 3112
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting DiskStats Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3114
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_fc0
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3116
    const-string v0, "RuntimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3118
    :try_start_fc8
    const-string/jumbo v0, "runtime"

    new-instance v3, Lcom/android/server/RuntimeService;

    invoke-direct {v3, v6}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_fd3
    .catchall {:try_start_fc8 .. :try_end_fd3} :catchall_fd4

    .line 3121
    goto :goto_fdb

    .line 3119
    :catchall_fd4
    move-exception v0

    .line 3120
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting RuntimeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3122
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_fdb
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3123
    if-nez v19, :cond_ffc

    .line 3124
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3126
    :try_start_fe5
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v0, v6}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 3127
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ff1
    .catchall {:try_start_fe5 .. :try_end_ff1} :catchall_ff2

    .line 3130
    goto :goto_ff9

    .line 3128
    :catchall_ff2
    move-exception v0

    .line 3129
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting NetworkTimeUpdate service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3131
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ff9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3134
    :cond_ffc
    const-string v0, "CertBlocklister"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3136
    :try_start_1001
    new-instance v0, Lcom/android/server/CertBlocklister;

    invoke-direct {v0, v6}, Lcom/android/server/CertBlocklister;-><init>(Landroid/content/Context;)V
    :try_end_1006
    .catchall {:try_start_1001 .. :try_end_1006} :catchall_1007

    .line 3139
    goto :goto_100e

    .line 3137
    :catchall_1007
    move-exception v0

    .line 3138
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting CertBlocklister"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3140
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_100e
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3144
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3145
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3146
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3149
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3150
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3151
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3154
    const-string v0, "StartDreamManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3155
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3156
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3158
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3159
    const-string/jumbo v0, "graphicsstats"

    new-instance v3, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v3, v6}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3161
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3163
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101a2

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_106e

    .line 3165
    const-string v0, "StartPersonalContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3166
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/personalcontext/PersonalContextManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3167
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3170
    :cond_106e
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_1084

    .line 3171
    const-string v0, "AddCoverageService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3172
    const-string v0, "coverage"

    new-instance v3, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v3}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3173
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3177
    :cond_1084
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 3179
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.print"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a0

    .line 3180
    const-string v0, "StartPrintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3181
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3182
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3188
    :cond_10a0
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3189
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3190
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3192
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->enableTalismanService()Z

    move-result v0

    if-eqz v0, :cond_10c4

    .line 3193
    const-string v0, "StartTrustTokenManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3194
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/trusttoken/TrustTokenManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3195
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3198
    :cond_10c4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.companion_device_setup"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10dd

    .line 3199
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3200
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3201
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3204
    :cond_10dd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->taskContinuity()Z

    move-result v0

    if-eqz v0, :cond_10f2

    .line 3205
    const-string v0, "StartTaskContinuityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3206
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/companion/datatransfer/continuity/TaskContinuityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3207
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3212
    :cond_10f2
    if-eqz v25, :cond_10f6

    if-nez v35, :cond_1112

    .line 3213
    :cond_10f6
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101b9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1112

    .line 3216
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3217
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3218
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3221
    :cond_1112
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3222
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3223
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3225
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3226
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3227
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3230
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 3232
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_114c

    .line 3233
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3234
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3235
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3241
    :cond_114c
    if-nez v24, :cond_1158

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.live_tv"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1176

    .line 3242
    :cond_1158
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3243
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3244
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3246
    const-string v0, "StartTvInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3247
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3248
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3251
    :cond_1176
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.tv.tuner"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_118f

    .line 3252
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3253
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3254
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3257
    :cond_118f
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v0

    if-eqz v0, :cond_11a6

    if-eqz v24, :cond_11a6

    .line 3258
    const-string v0, "StartMediaQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3259
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3260
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3263
    :cond_11a6
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.picture_in_picture"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11bf

    .line 3264
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3265
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3266
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3269
    :cond_11bf
    if-eqz v24, :cond_11d0

    .line 3270
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3271
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3272
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3275
    :cond_11d0
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3277
    :try_start_11d5
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_11da
    .catchall {:try_start_11d5 .. :try_end_11da} :catchall_11e8

    move-object v3, v0

    .line 3278
    .end local v32    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v3, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_11db
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_11e1
    .catchall {:try_start_11db .. :try_end_11e1} :catchall_11e4

    .line 3281
    move-object/from16 v32, v3

    goto :goto_11ef

    .line 3279
    :catchall_11e4
    move-exception v0

    move-object/from16 v32, v3

    goto :goto_11e9

    .end local v3    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v32    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_11e8
    move-exception v0

    .line 3280
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_11e9
    const-string/jumbo v3, "starting MediaRouterService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3282
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_11ef
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3284
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.biometrics.face"

    .line 3285
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 3286
    .local v3, "hasFeatureFace":Z
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.biometrics.iris"

    .line 3287
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 3288
    .local v4, "hasFeatureIris":Z
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.fingerprint"

    .line 3289
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 3292
    .local v5, "hasFeatureFingerprint":Z
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    .line 3294
    if-eqz v3, :cond_1224

    .line 3295
    const-string v0, "StartFaceSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3296
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v36, v3

    .end local v3    # "hasFeatureFace":Z
    .local v36, "hasFeatureFace":Z
    const-class v3, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3297
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3298
    .local v0, "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1226

    .line 3294
    .end local v0    # "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    .end local v36    # "hasFeatureFace":Z
    .restart local v3    # "hasFeatureFace":Z
    :cond_1224
    move/from16 v36, v3

    .line 3301
    .end local v3    # "hasFeatureFace":Z
    .restart local v36    # "hasFeatureFace":Z
    :goto_1226
    if-eqz v4, :cond_1237

    .line 3302
    const-string v0, "StartIrisSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3303
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3304
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3307
    :cond_1237
    if-eqz v5, :cond_124b

    .line 3308
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3309
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3310
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3311
    .local v0, "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3318
    .end local v0    # "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    :cond_124b
    const-string v0, "StartBiometricService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3319
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3320
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3322
    const-string v0, "StartAuthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3323
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3324
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3326
    if-nez v35, :cond_12bd

    if-nez v24, :cond_12bd

    if-nez v27, :cond_12bd

    .line 3327
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureLockdown()Z

    move-result v0

    if-eqz v0, :cond_1284

    .line 3328
    const-string v0, "StartSecureLockDeviceService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3329
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3330
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3332
    :cond_1284
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->identityCheckWatch()Z

    move-result v0

    if-eqz v0, :cond_1299

    .line 3333
    const-string v0, "StartWatchRangingService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3334
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/WatchRangingService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3335
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3337
    :cond_1299
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->supportAiAgent()Z

    move-result v0

    if-eqz v0, :cond_12ae

    .line 3338
    const-string v0, "AgentAuthService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3339
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/agent/AgentAuthService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3340
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3343
    :cond_12ae
    const-string v0, "StartAuthenticationPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3344
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3345
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3348
    :cond_12bd
    if-nez v35, :cond_12d1

    .line 3349
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3351
    :try_start_12c4
    invoke-static {v6}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_12c7
    .catchall {:try_start_12c4 .. :try_end_12c7} :catchall_12c8

    .line 3354
    goto :goto_12ce

    .line 3352
    :catchall_12c8
    move-exception v0

    .line 3353
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "StartPruneInstantAppsJobService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3355
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12ce
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3358
    :cond_12d1
    const-string v0, "StartSelinuxAuditLogsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3360
    :try_start_12d6
    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_12d9
    .catchall {:try_start_12d6 .. :try_end_12d9} :catchall_12da

    .line 3363
    goto :goto_12e1

    .line 3361
    :catchall_12da
    move-exception v0

    .line 3362
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SelinuxAuditLogsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3364
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12e1
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3367
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3368
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3369
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3371
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3372
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3373
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3375
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3376
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3377
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3379
    const-string v0, "StartPeopleService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3380
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3381
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3383
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3384
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3385
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3390
    if-eqz v25, :cond_1333

    if-nez v35, :cond_134c

    :cond_1333
    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_134c

    .line 3393
    const-string v0, "StartBackgroundInstallControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3394
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3395
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3399
    .end local v4    # "hasFeatureIris":Z
    .end local v5    # "hasFeatureFingerprint":Z
    .end local v12    # "hasPdb":Z
    .end local v36    # "hasFeatureFace":Z
    :cond_134c
    move-object v4, v13

    move-object/from16 v36, v26

    move-object/from16 v26, v21

    move-object/from16 v21, v40

    move-object/from16 v41, v30

    move-object/from16 v42, v31

    move-object/from16 v43, v32

    move-object/from16 v30, v8

    move-object/from16 v31, v10

    move-object/from16 v32, v15

    move-object/from16 v40, v16

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v10    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v13    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v15    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v4, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v21, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v26, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v30, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v31, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v32, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v36, "notification":Landroid/app/INotificationManager;
    .local v40, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v41, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v42, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v43, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_1361
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3400
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3401
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3405
    if-nez v25, :cond_1480

    if-eqz v35, :cond_1480

    .line 3408
    const-string v0, "StartWearPowerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3412
    :try_start_1379
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1380
    .catchall {:try_start_1379 .. :try_end_1380} :catchall_1381

    .line 3415
    goto :goto_1388

    .line 3413
    :catchall_1381
    move-exception v0

    .line 3414
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearPowerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3417
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1388
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3419
    const-string v0, "StartHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3423
    :try_start_1390
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1397
    .catchall {:try_start_1390 .. :try_end_1397} :catchall_1398

    .line 3426
    goto :goto_139f

    .line 3424
    :catchall_1398
    move-exception v0

    .line 3425
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartHealthService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3428
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_139f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3430
    const-string v0, "StartSystemStateDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3434
    :try_start_13a7
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13ae
    .catchall {:try_start_13a7 .. :try_end_13ae} :catchall_13af

    .line 3437
    goto :goto_13b6

    .line 3435
    :catchall_13af
    move-exception v0

    .line 3436
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartSystemStateDisplayService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3439
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13b6
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3443
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3445
    :try_start_13be
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13c5
    .catchall {:try_start_13be .. :try_end_13c5} :catchall_13c6

    .line 3448
    goto :goto_13cd

    .line 3446
    :catchall_13c6
    move-exception v0

    .line 3447
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearConnectivityService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3450
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13cd
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3452
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3456
    :try_start_13d5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13dc
    .catchall {:try_start_13d5 .. :try_end_13dc} :catchall_13dd

    .line 3459
    goto :goto_13e4

    .line 3457
    :catchall_13dd
    move-exception v0

    .line 3458
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearDisplayService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3461
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13e4
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3463
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1402

    .line 3464
    const-string v0, "StartWearDebugService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3468
    :try_start_13f0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.debug.WearDebugService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13f7
    .catchall {:try_start_13f0 .. :try_end_13f7} :catchall_13f8

    .line 3471
    goto :goto_13ff

    .line 3469
    :catchall_13f8
    move-exception v0

    .line 3470
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearDebugService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3473
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13ff
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3476
    :cond_1402
    const-string v0, "StartWearTimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3480
    :try_start_1407
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_140e
    .catchall {:try_start_1407 .. :try_end_140e} :catchall_140f

    .line 3483
    goto :goto_1416

    .line 3481
    :catchall_140f
    move-exception v0

    .line 3482
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearTimeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3485
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1416
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3487
    const-string v0, "StartWearSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3491
    :try_start_141e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.settings.WearSettingsService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1425
    .catchall {:try_start_141e .. :try_end_1425} :catchall_1426

    .line 3494
    goto :goto_142d

    .line 3492
    :catchall_1426
    move-exception v0

    .line 3493
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearSettingsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3496
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_142d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3498
    const-string v0, "StartWearModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3502
    :try_start_1435
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.modes.ModeManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_143c
    .catchall {:try_start_1435 .. :try_end_143c} :catchall_143d

    .line 3505
    goto :goto_1444

    .line 3503
    :catchall_143d
    move-exception v0

    .line 3504
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearModeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3507
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1444
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3509
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->wearGestureApi()Z

    move-result v0

    if-eqz v0, :cond_1465

    const-string v0, "config.enable_gesture_api"

    .line 3510
    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1465

    .line 3511
    const-string v0, "StartWearGestureService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3512
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.gesture.WearGestureService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3513
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3516
    :cond_1465
    invoke-static {}, Lcom/android/server/policy/Flags;->wearKeyGestureHandling()Z

    move-result v0

    if-eqz v0, :cond_1480

    .line 3517
    const-string v0, "StartWearKeyGestureService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3519
    :try_start_1470
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.input.WearInputService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1477
    .catchall {:try_start_1470 .. :try_end_1477} :catchall_147b

    .line 3521
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3522
    goto :goto_1480

    .line 3521
    :catchall_147b
    move-exception v0

    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3522
    throw v0

    .line 3526
    :cond_1480
    :goto_1480
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.slices_disabled"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1499

    .line 3527
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3528
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3529
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3532
    :cond_1499
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_14ae

    .line 3533
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3534
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3535
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3539
    :cond_14ae
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3540
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v5, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3542
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3545
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3546
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v5, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3548
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3551
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3552
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3553
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3556
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3557
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3558
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3562
    const-string v0, "BinderStatsConsumerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3563
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/binder/BinderStatsConsumerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3564
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3568
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3569
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3570
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3573
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3574
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3575
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3578
    if-eqz v35, :cond_1536

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->removeAdServicesManagerServiceFromWear()Z

    move-result v0

    if-eqz v0, :cond_1536

    const-string/jumbo v0, "ro.system_settings.service.adservices_enabled"

    .line 3579
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_152e

    goto :goto_1536

    .line 3588
    :cond_152e
    const-string v0, "SystemServer"

    const-string v3, "Not starting AdServicesManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1546

    .line 3581
    :cond_1536
    :goto_1536
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3583
    :try_start_153b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1542
    .catchall {:try_start_153b .. :try_end_1542} :catchall_1af1

    .line 3585
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3586
    nop

    .line 3594
    :goto_1546
    if-eqz v25, :cond_154a

    if-nez v35, :cond_1563

    :cond_154a
    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    .line 3595
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1563

    .line 3597
    const-string v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3598
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3599
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3603
    :cond_1563
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.aiseal"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1588

    .line 3604
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/aiseal/Flags;->aisealHostApis()Z

    move-result v0

    if-eqz v0, :cond_1588

    .line 3605
    const-string v0, "StartAiSealSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3607
    :try_start_1578
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/aiseal/AiSealSystemService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_157f
    .catchall {:try_start_1578 .. :try_end_157f} :catchall_1583

    .line 3609
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3610
    goto :goto_1588

    .line 3609
    :catchall_1583
    move-exception v0

    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3610
    throw v0

    .line 3614
    :cond_1588
    :goto_1588
    const-string v0, "StartProfilingCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3615
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v5, "/apex/com.android.profiling/javalib/service-profiling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3617
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3620
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/Flags;->anomalyDetectorCoreC()Z

    move-result v0

    if-eqz v0, :cond_15cf

    .line 3625
    const-string v0, "StartAnomalyDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3627
    :try_start_15a4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.os.profiling.anomaly.AnomalyDetectorService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_15ab
    .catchall {:try_start_15a4 .. :try_end_15ab} :catchall_15ac

    .line 3630
    goto :goto_15b4

    .line 3628
    :catchall_15ac
    move-exception v0

    .line 3629
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failed to start AnomalyDetectorService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3631
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15b4
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3633
    const-string v0, "StartSignalCollectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3635
    :try_start_15bc
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.signalcollector.SignalCollectorService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_15c3
    .catchall {:try_start_15bc .. :try_end_15c3} :catchall_15c4

    .line 3638
    goto :goto_15cc

    .line 3636
    :catchall_15c4
    move-exception v0

    .line 3637
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failed to start SignalCollectorService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3639
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15cc
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3643
    :cond_15cf
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->uprobestatsBridgeService()Z

    move-result v0

    if-eqz v0, :cond_15ee

    .line 3644
    const-string v0, "StartUprobeStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3649
    :try_start_15da
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.uprobestats.UprobeStatsBridgeService"

    const-string v5, "/apex/com.android.uprobestats/javalib/service-uprobestats-bridge.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_15e3
    .catchall {:try_start_15da .. :try_end_15e3} :catchall_15e4

    .line 3653
    goto :goto_15ea

    .line 3651
    :catchall_15e4
    move-exception v0

    .line 3652
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "StartUprobeStatsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3654
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15ea
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_15f9

    .line 3655
    :cond_15ee
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_15f9

    .line 3656
    const-string v0, "SystemServer"

    const-string v3, "UprobeStatsService disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    :cond_15f9
    :goto_15f9
    if-eqz v7, :cond_1600

    .line 3660
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 3663
    :cond_1600
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1620

    .line 3665
    const-string v0, "StartMmsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3666
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/MmsServiceBroker;

    .line 3667
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v44, v14

    goto :goto_1622

    .line 3663
    :cond_1620
    move-object/from16 v44, v14

    .line 3670
    .end local v14    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v44, "mmsService":Lcom/android/server/MmsServiceBroker;
    :goto_1622
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.autofill"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_163b

    .line 3671
    const-string v0, "StartAutoFillService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3672
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3673
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3676
    :cond_163b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.credentials"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1667

    .line 3677
    const-string v0, "credential_manager"

    const-string v3, "enable_credential_manager"

    .line 3678
    const/4 v12, 0x1

    invoke-static {v0, v3, v12}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3680
    .local v0, "credentialManagerEnabled":Z
    if-eqz v0, :cond_1660

    .line 3681
    const-string v3, "StartCredentialManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3682
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3683
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1667

    .line 3685
    :cond_1660
    const-string v3, "SystemServer"

    const-string v5, "CredentialManager disabled."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3690
    .end local v0    # "credentialManagerEnabled":Z
    :cond_1667
    :goto_1667
    const v0, 0x10402f4

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1680

    .line 3691
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3692
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3693
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1687

    .line 3695
    :cond_1680
    const-string v0, "SystemServer"

    const-string v3, "TranslationService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3699
    :goto_1687
    const-string v0, "StartClipboardService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3700
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3701
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3703
    if-nez v24, :cond_16a9

    if-nez v35, :cond_16a9

    .line 3705
    const-string v0, "StartSelectionToolbarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3706
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3707
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3710
    :cond_16a9
    const-string v0, "AppServiceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3711
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3712
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3716
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkOtherServices()V

    .line 3719
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3720
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3721
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3723
    const-string v0, "StartDynamicInstrumentationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3724
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3725
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3727
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contentrestriction/flags/Flags;->contentRestrictionApi()Z

    move-result v0

    if-eqz v0, :cond_16f1

    .line 3728
    const-string v0, "StartContentRestrictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3729
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentrestriction/ContentRestrictionService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3730
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3735
    :cond_16f1
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3736
    if-eqz v42, :cond_1703

    .line 3738
    :try_start_16f8
    invoke-interface/range {v42 .. v42}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_16fb
    .catchall {:try_start_16f8 .. :try_end_16fb} :catchall_16fc

    .line 3741
    goto :goto_1703

    .line 3739
    :catchall_16fc
    move-exception v0

    .line 3740
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Lock Settings Service ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3743
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1703
    :goto_1703
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3746
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3747
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3748
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3750
    nop

    .line 3751
    invoke-virtual {v4}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->getMultiuserManagedDeviceProvisioningState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_171e

    goto :goto_171f

    :cond_171e
    const/4 v3, 0x0

    .line 3756
    .local v3, "requiresAdmin":Z
    :goto_171f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 3757
    invoke-static {v0, v5, v8, v3, v10}, Lcom/android/server/pm/HsumBootUserInitializer;->createInstance(Lcom/android/server/pm/UserManagerService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;ZLandroid/content/Context;)Lcom/android/server/pm/HsumBootUserInitializer;

    move-result-object v12

    .line 3763
    .local v12, "hsumBootUserInitializer":Lcom/android/server/pm/HsumBootUserInitializer;
    if-eqz v12, :cond_174b

    .line 3764
    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3765
    invoke-virtual {v12, v2}, Lcom/android/server/pm/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3766
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3767
    invoke-static {}, Lcom/android/server/pm/HsumBootUserInitializer;->getDumpable()Landroid/util/Dumpable;

    move-result-object v0

    .line 3768
    .local v0, "dumpable":Landroid/util/Dumpable;
    if-eqz v0, :cond_1744

    .line 3769
    iget-object v5, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v5, v0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    goto :goto_174b

    .line 3772
    :cond_1744
    const-string v5, "SystemServer"

    const-string v8, "HsumBootUserInitializer doesn\'t have a dumpable"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    .end local v0    # "dumpable":Landroid/util/Dumpable;
    :cond_174b
    :goto_174b
    const/4 v0, 0x0

    .line 3777
    .local v0, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v5

    if-eqz v5, :cond_1768

    .line 3778
    const-string v5, "CommunalProfileInitializer.init"

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3779
    new-instance v5, Lcom/android/server/CommunalProfileInitializer;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v5, v8}, Lcom/android/server/CommunalProfileInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    move-object v0, v5

    .line 3781
    invoke-virtual {v0, v2}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3782
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v45, v0

    goto :goto_1775

    .line 3784
    :cond_1768
    const-string v5, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3785
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 3786
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v45, v0

    .line 3789
    .end local v0    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .local v45, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    :goto_1775
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3790
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3791
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3793
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3795
    :try_start_1789
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_178c
    .catchall {:try_start_1789 .. :try_end_178c} :catchall_178d

    .line 3798
    goto :goto_1794

    .line 3796
    :catchall_178d
    move-exception v0

    .line 3797
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3799
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1794
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3801
    const-string v0, "RegisterLogMteState"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3803
    :try_start_179c
    invoke-static {v6}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_179f
    .catchall {:try_start_179c .. :try_end_179f} :catchall_17a0

    .line 3806
    goto :goto_17a6

    .line 3804
    :catchall_17a0
    move-exception v0

    .line 3805
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "RegisterLogMteState"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3807
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_17a6
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3810
    const-class v5, Lcom/android/server/SystemService;

    monitor-enter v5

    .line 3811
    :try_start_17ac
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_17ae
    .catchall {:try_start_17ac .. :try_end_17ae} :catchall_1add

    if-eqz v0, :cond_17cd

    .line 3812
    :try_start_17b0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v8, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 3813
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_17ba
    .catchall {:try_start_17b0 .. :try_end_17ba} :catchall_17bb

    goto :goto_17cd

    .line 3815
    :catchall_17bb
    move-exception v0

    move/from16 v47, v3

    move-object/from16 v17, v4

    move-object/from16 v49, v11

    move/from16 v53, v27

    move/from16 v52, v35

    move-object/from16 v27, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1aed

    :cond_17cd
    :goto_17cd
    :try_start_17cd
    monitor-exit v5
    :try_end_17ce
    .catchall {:try_start_17cd .. :try_end_17ce} :catchall_1add

    .line 3817
    if-eqz v7, :cond_17d5

    .line 3818
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 3824
    :cond_17d5
    const/4 v13, 0x0

    invoke-virtual {v9, v13}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v5

    .line 3825
    .local v5, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v8, v0

    .line 3826
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3827
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3830
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v46

    .line 3831
    .local v46, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v46 .. v46}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_17fb

    .line 3832
    invoke-virtual/range {v46 .. v46}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 3836
    :cond_17fb
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3837
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3838
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3840
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3841
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 3842
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3848
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/stability/flags/Flags;->enableHyperRescueparty()Z

    move-result v0

    if-eqz v0, :cond_182d

    .line 3849
    const-string v0, "StartCrashRecoveryModuleXM"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3850
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->addCrashRecoveryModuleXM()V

    .line 3851
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_183c

    .line 3853
    :cond_182d
    const-string v0, "StartCrashRecoveryModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3854
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.crashrecovery.CrashRecoveryModule$Lifecycle"

    invoke-virtual {v0, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3855
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3860
    :goto_183c
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/microsoft/flags/Flags;->ltwEnabled()Z

    move-result v0

    if-eqz v0, :cond_185a

    .line 3861
    const-string v0, "StartCrossDeviceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3862
    const-string v0, "cross_device_service"

    new-instance v10, Lcom/android/server/wm/CrossDeviceService;

    iget-object v13, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v14, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v10, v13, v14}, Lcom/android/server/wm/CrossDeviceService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3865
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3869
    :cond_185a
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3872
    :try_start_185f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_1864
    .catchall {:try_start_185f .. :try_end_1864} :catchall_1865

    .line 3875
    goto :goto_186c

    .line 3873
    :catchall_1865
    move-exception v0

    .line 3874
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "making Display Manager Service ready"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3876
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_186c
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3878
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3881
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3882
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v10, 0x1070064

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v10

    .line 3884
    .local v10, "classes":[Ljava/lang/String;
    array-length v13, v10

    const/4 v14, 0x0

    :goto_1888
    if-ge v14, v13, :cond_18d0

    aget-object v15, v10, v14

    .line 3885
    .local v15, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v16, v3

    .end local v3    # "requiresAdmin":Z
    .local v16, "requiresAdmin":Z
    const-string v3, "StartDeviceSpecificServices "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3887
    :try_start_18a4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v15}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_18a9
    .catchall {:try_start_18a4 .. :try_end_18a9} :catchall_18ac

    .line 3890
    move-object/from16 v17, v4

    goto :goto_18c6

    .line 3888
    :catchall_18ac
    move-exception v0

    .line 3889
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v17, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    const-string/jumbo v4, "starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3891
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_18c6
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3884
    .end local v15    # "className":Ljava/lang/String;
    add-int/lit8 v14, v14, 0x1

    move/from16 v3, v16

    move-object/from16 v4, v17

    goto :goto_1888

    .line 3893
    .end local v16    # "requiresAdmin":Z
    .end local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v3    # "requiresAdmin":Z
    .restart local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_18d0
    move/from16 v16, v3

    move-object/from16 v17, v4

    .end local v3    # "requiresAdmin":Z
    .end local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v16    # "requiresAdmin":Z
    .restart local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3895
    if-nez v35, :cond_18e9

    .line 3896
    const-string v0, "GameManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3897
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3898
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_18f0

    .line 3900
    :cond_18e9
    const-string v0, "SystemServer"

    const-string v3, "Not starting GameManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3903
    :goto_18f0
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_190d

    .line 3904
    const-string v0, "UwbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3905
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.uwb.UwbService"

    const-string v4, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3906
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3911
    :cond_190d
    if-eqz v25, :cond_1911

    if-nez v35, :cond_1952

    .line 3912
    :cond_1911
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingStackEnabled()Z

    move-result v0

    if-eqz v0, :cond_1952

    .line 3914
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1941

    .line 3915
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1941

    .line 3917
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingCsEnabled()Z

    move-result v0

    if-eqz v0, :cond_1952

    .line 3918
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1952

    .line 3920
    :cond_1941
    const-string v0, "RangingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3921
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ranging.RangingService"

    const-string v4, "/apex/com.android.uwb/javalib/service-ranging.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3923
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3927
    :cond_1952
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3928
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3929
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3931
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3932
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3933
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3935
    const-string v0, "AppSearchModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3936
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3937
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3941
    if-eqz v25, :cond_1983

    if-nez v35, :cond_199c

    :cond_1983
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    .line 3942
    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_199c

    .line 3944
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3945
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3946
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3949
    :cond_199c
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3950
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3951
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3953
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3954
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3955
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3957
    const-string v0, "HealthConnectManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3958
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3959
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3961
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.device_lock"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19e4

    .line 3962
    const-string v0, "DeviceLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3963
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.devicelock.DeviceLockService"

    const-string v4, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3965
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3968
    :cond_19e4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    move-result v0

    if-nez v0, :cond_19f0

    .line 3969
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->sensitiveContentAppProtection()Z

    move-result v0

    if-eqz v0, :cond_19ff

    .line 3970
    :cond_19f0
    const-string v0, "StartSensitiveContentProtectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3971
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3972
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3975
    :cond_19ff
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/bettertogether/flags/Flags;->enableD2dConnectivityService()Z

    move-result v0

    if-eqz v0, :cond_1a1f

    .line 3976
    const-string v0, "DeviceToDeviceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3981
    :try_start_1a0a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.devicetodevice.DeviceToDeviceService"

    const-string v4, "/apex/com.android.bettertogether/javalib/service-device-to-device.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1a13
    .catchall {:try_start_1a0a .. :try_end_1a13} :catchall_1a14

    .line 3985
    goto :goto_1a1c

    .line 3983
    :catchall_1a14
    move-exception v0

    .line 3984
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "Failed to start DeviceToDeviceService"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3986
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1a1c
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3990
    :cond_1a1f
    invoke-static {}, Lcom/android/server/PayJoyAccessManagerStub;->get()Lcom/android/server/PayJoyAccessManagerStub;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/PayJoyAccessManagerStub;->startService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 3994
    move-object v3, v9

    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v3, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v9, v21

    .line 3995
    .local v9, "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    move-object v4, v10

    .end local v10    # "classes":[Ljava/lang/String;
    .local v4, "classes":[Ljava/lang/String;
    move-object/from16 v10, v30

    .line 3996
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v13, v41

    .line 3997
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v14, v31

    .line 3998
    .local v14, "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    move-object/from16 v22, v11

    .line 3999
    .local v22, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v28

    .line 4000
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move/from16 v47, v16

    .end local v16    # "requiresAdmin":Z
    .local v47, "requiresAdmin":Z
    move-object/from16 v16, v43

    .line 4001
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v48, v4

    move-object/from16 v4, v17

    .end local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v4, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v48, "classes":[Ljava/lang/String;
    move-object/from16 v17, v44

    .line 4002
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v49, v11

    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v49, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v11, v26

    .line 4003
    .local v11, "vpnManagerF":Lcom/android/server/VpnManagerService;
    move-object/from16 v50, v3

    .line 4004
    .local v50, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    const-string v0, "connectivity"

    .line 4005
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v51, v0

    check-cast v51, Landroid/net/ConnectivityManager;

    .line 4012
    .local v51, "connectivityF":Landroid/net/ConnectivityManager;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v52, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    move/from16 v53, v27

    move-object/from16 v27, v3

    move/from16 v3, v53

    move/from16 v53, v35

    move-object/from16 v35, v5

    move/from16 v5, v53

    move-object/from16 v53, v48

    move-object/from16 v48, v8

    move-object/from16 v8, v51

    move-object/from16 v51, v53

    move-object/from16 v53, v52

    .local v3, "isAutomotive":Z
    .local v5, "isWatch":Z
    .local v8, "connectivityF":Landroid/net/ConnectivityManager;
    .local v27, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v35, "config":Landroid/content/res/Configuration;
    .local v48, "metrics":Landroid/util/DisplayMetrics;
    .local v51, "classes":[Ljava/lang/String;
    invoke-direct/range {v0 .. v17}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move/from16 v52, v5

    move-object/from16 v55, v8

    move-object v8, v9

    move-object/from16 v54, v11

    move-object/from16 v11, v17

    move-object/from16 v17, v4

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    move-object v1, v0

    move-object/from16 v0, v53

    move/from16 v53, v3

    .end local v3    # "isAutomotive":Z
    .end local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .local v7, "context":Landroid/content/Context;
    .local v8, "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    .local v9, "safeMode":Z
    .local v11, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .local v17, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v52, "isWatch":Z
    .local v53, "isAutomotive":Z
    .local v54, "vpnManagerF":Lcom/android/server/VpnManagerService;
    .local v55, "connectivityF":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 4286
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v6, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v1, p1

    move-object/from16 v5, v50

    .end local v50    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v5, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {v0 .. v5}, Lcom/sprd/server/SprdSystemServer;->startUniPnPService(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/wm/WindowManagerService;)V

    .line 4293
    move-object v2, v1

    const-string v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4294
    const-class v0, Lcom/android/server/locksettings/LockSettingsInternal;

    .line 4295
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/locksettings/LockSettingsInternal;

    .line 4296
    .local v1, "lockSettingsInternal":Lcom/android/server/locksettings/LockSettingsInternal;
    if-eqz v1, :cond_1aaa

    .line 4297
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 4299
    :cond_1aaa
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4302
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/sprd/server/SprdSystemServer;->startUnisocOtherServices(Lcom/android/server/am/ActivityManagerService;)V

    .line 4304
    const-string v0, "StartSystemUI"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4306
    :try_start_1abb
    invoke-static {v7, v5}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1abe
    .catchall {:try_start_1abb .. :try_end_1abe} :catchall_1abf

    .line 4309
    goto :goto_1ac6

    .line 4307
    :catchall_1abf
    move-exception v0

    .line 4308
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting System UI"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4310
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1ac6
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4313
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServerStub;->addCameraCoveredManagerService(Landroid/content/Context;)V

    .line 4317
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServerStub;->onOtherServicesStarted(Landroid/content/Context;)V

    .line 4319
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4320
    return-void

    .line 3815
    .end local v1    # "lockSettingsInternal":Lcom/android/server/locksettings/LockSettingsInternal;
    .end local v5    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v8    # "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v13    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v14    # "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v15    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v16    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v22    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v46    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v47    # "requiresAdmin":Z
    .end local v48    # "metrics":Landroid/util/DisplayMetrics;
    .end local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v51    # "classes":[Ljava/lang/String;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .end local v54    # "vpnManagerF":Lcom/android/server/VpnManagerService;
    .end local v55    # "connectivityF":Landroid/net/ConnectivityManager;
    .local v3, "requiresAdmin":Z
    .restart local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v27, "isAutomotive":Z
    .local v35, "isWatch":Z
    :catchall_1add
    move-exception v0

    move/from16 v47, v3

    move-object/from16 v17, v4

    move-object/from16 v49, v11

    move/from16 v53, v27

    move/from16 v52, v35

    move-object/from16 v27, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v3    # "requiresAdmin":Z
    .end local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v6    # "context":Landroid/content/Context;
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v35    # "isWatch":Z
    .local v7, "context":Landroid/content/Context;
    .local v9, "safeMode":Z
    .restart local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v27, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v47    # "requiresAdmin":Z
    .restart local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    :goto_1aed
    :try_start_1aed
    monitor-exit v5
    :try_end_1aee
    .catchall {:try_start_1aed .. :try_end_1aee} :catchall_1aef

    throw v0

    :catchall_1aef
    move-exception v0

    goto :goto_1aed

    .line 3585
    .end local v12    # "hsumBootUserInitializer":Lcom/android/server/pm/HsumBootUserInitializer;
    .end local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v45    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .end local v47    # "requiresAdmin":Z
    .end local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .restart local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v14, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v27, "isAutomotive":Z
    .restart local v35    # "isWatch":Z
    :catchall_1af1
    move-exception v0

    move-object/from16 v17, v4

    move-object/from16 v49, v11

    move/from16 v53, v27

    move/from16 v52, v35

    move-object/from16 v27, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v6    # "context":Landroid/content/Context;
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v35    # "isWatch":Z
    .local v7, "context":Landroid/content/Context;
    .local v9, "safeMode":Z
    .restart local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v27, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3586
    throw v0

    .line 2413
    .end local v17    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v36    # "notification":Landroid/app/INotificationManager;
    .end local v37    # "bootDexoptStartTime":J
    .end local v39    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v40    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v42    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v43    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .local v3, "bootDexoptStartTime":J
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v12, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v13, "notification":Landroid/app/INotificationManager;
    .local v15, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v16, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v27, "isAutomotive":Z
    .local v30, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v31, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v32, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v35    # "isWatch":Z
    :catchall_1b03
    move-exception v0

    move-wide/from16 v37, v3

    move-object/from16 v49, v11

    move-object v5, v12

    move-object/from16 v36, v13

    move/from16 v53, v27

    move/from16 v52, v35

    move-object/from16 v27, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v3    # "bootDexoptStartTime":J
    .end local v6    # "context":Landroid/content/Context;
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v12    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v13    # "notification":Landroid/app/INotificationManager;
    .end local v35    # "isWatch":Z
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v7, "context":Landroid/content/Context;
    .local v9, "safeMode":Z
    .local v27, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v36    # "notification":Landroid/app/INotificationManager;
    .restart local v37    # "bootDexoptStartTime":J
    .restart local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string v3, "dexopt"

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2414
    throw v0

    .line 2250
    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v30    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v31    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v32    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v36    # "notification":Landroid/app/INotificationManager;
    .end local v37    # "bootDexoptStartTime":J
    .end local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    .local v5, "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v27, "isAutomotive":Z
    :catchall_1b1e
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move-object/from16 v49, v11

    move/from16 v53, v27

    move-object v7, v6

    move-object/from16 v27, v9

    move-object v6, v1

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v27, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    goto/16 :goto_1baa

    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v27, "isAutomotive":Z
    :catchall_1b35
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move-object/from16 v49, v11

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v27    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    goto/16 :goto_1baa

    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v49    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v27    # "isAutomotive":Z
    :catchall_1b4a
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v28

    move-object/from16 v13, v29

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v27    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    goto/16 :goto_1baa

    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v29    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v13, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v27    # "isAutomotive":Z
    :catchall_1b5d
    move-exception v0

    move-object/from16 v33, v3

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v28

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v27    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    goto :goto_1baa

    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v17, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v27    # "isAutomotive":Z
    :catchall_1b6d
    move-exception v0

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    move-object/from16 v12, v28

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v27    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    goto :goto_1baa

    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v28    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .local v3, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v27    # "isAutomotive":Z
    :catchall_1b7d
    move-exception v0

    move-object/from16 v28, v3

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    move-object/from16 v12, v28

    .end local v3    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v27    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v28    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    goto :goto_1baa

    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v28    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v27    # "isAutomotive":Z
    :catchall_1b8f
    move-exception v0

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move/from16 v53, v27

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v27    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    goto :goto_1baa

    .end local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v52    # "isWatch":Z
    .end local v53    # "isAutomotive":Z
    .local v3, "isAutomotive":Z
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_1b9d
    move-exception v0

    move/from16 v53, v3

    move-object/from16 v34, v4

    move/from16 v52, v5

    move-object/from16 v26, v7

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    .line 2251
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v17    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v7, "context":Landroid/content/Context;
    .restart local v26    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v52    # "isWatch":Z
    .restart local v53    # "isAutomotive":Z
    :goto_1baa
    const-string v1, "System"

    const-string v4, "******************************************"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2252
    const-string v1, "System"

    const-string v4, "************ Failure starting core service"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2253
    throw v0
.end method

.method private startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4467
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4468
    const-string v0, "SystemServer"

    const-string v1, "RotationResolverService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4469
    return-void

    .line 4472
    :cond_e
    const-string v0, "StartRotationResolverService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4473
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4474
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4476
    return-void
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4383
    const v0, 0x10402f2

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4384
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4385
    return-void

    .line 4388
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4389
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4390
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4391
    return-void
.end method

.method private startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1355
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1356
    const-string v0, "ReadingSystemConfig"

    .line 1357
    .local v0, "tagSystemConfig":Ljava/lang/String;
    const-string v1, "ReadingSystemConfig"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1358
    new-instance v2, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1359
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1360
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 4485
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4486
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4487
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4488
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4490
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 4491
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 4492
    return-void
.end method

.method private startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4395
    const-string v0, "StartTextToSpeechManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4396
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4397
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4398
    return-void
.end method

.method private startUniPnPService(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;

    .line 4497
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/SystemServer;->UNIPNP_SWITCH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4499
    :try_start_e
    invoke-static {}, Lcom/android/server/unipnp/UnionManagerServiceFactory;->getInstance()Lcom/android/server/unipnp/UnionManagerServiceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/unipnp/UnionManagerServiceFactory;->systemReady(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1c

    .line 4503
    goto :goto_23

    .line 4501
    :catchall_1c
    move-exception v0

    .line 4502
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting UniPNP"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4505
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_23
    :goto_23
    return-void
.end method

.method private startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4479
    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4480
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4481
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4482
    return-void
.end method

.method private updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4371
    const-string v0, "UpdateWatchdogTimeout"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4372
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 4373
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4374
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 874
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Runtime restart: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 875
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Start count: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 876
    const-string v0, "Runtime start-up time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 877
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 878
    const-string v0, "Runtime start-elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 879
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 880
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 869
    const-class v0, Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
