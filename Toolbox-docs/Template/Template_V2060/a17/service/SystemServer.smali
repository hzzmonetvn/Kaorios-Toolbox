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

    .line 405
    sget v0, Landroid/os/Build;->HW_LOW_MULTIPLIER:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/SystemServer;->SLOW_DISPATCH_THRESHOLD_MS:J

    .line 406
    sget v0, Landroid/os/Build;->HW_LOW_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0xc8

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/SystemServer;->SLOW_DELIVERY_THRESHOLD_MS:J

    .line 410
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "SystemServer"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 416
    nop

    .line 417
    const-string/jumbo v0, "ro.unipnp.switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->UNIPNP_SWITCH:Ljava/lang/Boolean;

    .line 653
    invoke-static {}, Lcom/mediatek/server/MtkSystemServer;->getInstance()Lcom/mediatek/server/MtkSystemServer;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    .line 685
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .line 846
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 605
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 623
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 848
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 851
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 852
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 853
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 854
    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static/range {v5 .. v12}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 858
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    if-le v0, v2, :cond_3d

    move v1, v2

    :cond_3d
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 859
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1357
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1358
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1359
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030430

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1361
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 1362
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1363
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    .line 1364
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 4206
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4207
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static dumpHprof()V
    .registers 8

    .line 697
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 700
    .local v0, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemServerStub;->getHeapDumpDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 701
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    new-array v1, v2, [Ljava/io/File;

    .line 702
    :cond_16
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 703
    .local v3, "existingBacktraces":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    array-length v4, v1

    :goto_1c
    if-ge v2, v4, :cond_4a

    aget-object v5, v1, v2

    .line 705
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_27

    .line 706
    goto :goto_47

    .line 709
    :cond_27
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 710
    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 711
    goto :goto_47

    .line 714
    :cond_37
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 715
    goto :goto_47

    .line 717
    :cond_44
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 703
    .end local v5    # "file":Ljava/io/File;
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 719
    :cond_4a
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "System"

    if-lt v2, v4, :cond_8a

    .line 720
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    const/4 v4, 0x1

    if-ge v2, v4, :cond_5d

    .line 722
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 720
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 724
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

    .line 725
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_89

    .line 726
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

    .line 728
    .end local v4    # "file":Ljava/io/File;
    :cond_89
    goto :goto_61

    .line 731
    :cond_8a
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServerStub;->keepDumpSize(Ljava/util/TreeSet;)V

    .line 737
    :try_start_91
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 739
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

    .line 740
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

    .line 742
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_de} :catch_df

    .line 745
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    goto :goto_e5

    .line 743
    :catch_df
    move-exception v2

    .line 744
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Failed to dump fdtrack hprof"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 746
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_e5
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method private static getMaxFd()I
    .registers 5

    .line 663
    const/4 v0, 0x0

    .line 665
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

    .line 666
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 670
    if-eqz v0, :cond_1f

    .line 672
    :try_start_14
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_17} :catch_18

    .line 676
    goto :goto_1f

    .line 673
    :catch_18
    move-exception v1

    .line 675
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 666
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_1f
    :goto_1f
    return v1

    .line 670
    :catchall_20
    move-exception v1

    goto :goto_4d

    .line 667
    :catch_22
    move-exception v1

    .line 668
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

    .line 670
    nop

    .end local v1    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_49

    .line 672
    :try_start_3e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_41} :catch_42

    .line 676
    goto :goto_49

    .line 673
    :catch_42
    move-exception v1

    .line 675
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 680
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_49
    :goto_49
    const v1, 0x7fffffff

    return v1

    .line 670
    :goto_4d
    if-eqz v0, :cond_5a

    .line 672
    :try_start_4f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_52} :catch_53

    .line 676
    goto :goto_5a

    .line 673
    :catch_53
    move-exception v1

    .line 675
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 678
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

    .line 4343
    const-string/jumbo v1, "system_server"

    .line 4344
    .local v1, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 4346
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

    .line 4349
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

    .line 4352
    move v3, v6

    .end local v6    # "myPid":I
    .restart local v3    # "myPid":I
    const-class p1, Lcom/android/server/SystemServer;

    monitor-enter p1

    .line 4353
    :try_start_28
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v0, :cond_33

    .line 4354
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 4356
    :cond_33
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4357
    monitor-exit p1

    .line 4358
    const/4 p1, 0x0

    return p1

    .line 4357
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

    .line 1288
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

    .line 1282
    if-eqz p0, :cond_14

    .line 1283
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1284
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1282
    :goto_15
    return v0
.end method

.method static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 14
    .param p0, "enableThreshold"    # I
    .param p1, "abortThreshold"    # I
    .param p2, "checkInterval"    # I

    .line 757
    const/4 v0, 0x0

    .line 758
    .local v0, "enabled":Z
    const-wide/16 v1, 0x0

    .line 761
    .local v1, "nextWrite":J
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 762
    .local v3, "maxFd":I
    if-le v3, p0, :cond_13

    .line 764
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 765
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 766
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 769
    :cond_13
    const-string v4, "System"

    const/4 v5, 0x2

    const/16 v6, 0x16c

    if-le v3, p0, :cond_35

    if-nez v0, :cond_35

    .line 770
    const-string v7, "fdtrack enable threshold reached, enabling"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 775
    const-string v4, "fdtrack"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 776
    const/4 v0, 0x1

    .line 778
    sub-int v4, p1, p0

    div-int/2addr v4, v5

    .line 779
    .local v4, "watermark":I
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v5

    .line 780
    invoke-virtual {v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->enableInputMethodMonitor(I)V

    .line 782
    .end local v4    # "watermark":I
    goto :goto_5c

    :cond_35
    if-le v3, p1, :cond_47

    .line 783
    const-string v5, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    const/4 v4, 0x3

    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 788
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 789
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_5c

    .line 792
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 793
    .local v7, "now":J
    cmp-long v4, v7, v1

    if-lez v4, :cond_5c

    .line 794
    const-wide/32 v9, 0x36ee80

    add-long/2addr v9, v7

    .line 795
    .end local v1    # "nextWrite":J
    .local v9, "nextWrite":J
    nop

    .line 796
    if-eqz v0, :cond_57

    goto :goto_58

    .line 797
    :cond_57
    const/4 v5, 0x1

    .line 795
    :goto_58
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v9

    .line 803
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

    .line 806
    nop

    .line 807
    .end local v3    # "maxFd":I
    goto :goto_3

    .line 804
    .restart local v3    # "maxFd":I
    :catch_64
    move-exception v4

    .line 805
    .local v4, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method static synthetic lambda$startBootstrapServices$1()V
    .registers 1

    .line 1400
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->startCustFeatureResolverService()V

    .line 1401
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 5

    .line 1852
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1853
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1854
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1855
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1857
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

    .line 1859
    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_36

    :cond_29
    array-length v3, v0

    if-lez v3, :cond_3b

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    aget-object v4, v0, v4

    .line 1860
    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1861
    :goto_36
    const-string v3, "Unable to preload default resources for secondary"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_3f

    .line 1867
    .end local v0    # "abis32":[Ljava/lang/String;
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_45

    .line 1865
    :catch_3f
    move-exception v0

    .line 1866
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1868
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method static synthetic lambda$startOtherServices$3()V
    .registers 2

    .line 2069
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2070
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2071
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 2072
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2073
    return-void
.end method

.method static synthetic lambda$startOtherServices$4()V
    .registers 2

    .line 2076
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2077
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2078
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 2079
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2080
    return-void
.end method

.method private synthetic lambda$startOtherServices$5()V
    .registers 4

    .line 3868
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3869
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3870
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3871
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3872
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3873
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3874
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3875
    return-void
.end method

.method static synthetic lambda$startOtherServices$6(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 4028
    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string/jumbo v2, "tethering"

    invoke-static {v2, p0, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 4031
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

    .line 3842
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    const-string v0, "Making services ready"

    const-string v7, "SystemServer"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3843
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3844
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x226

    invoke-virtual {v0, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3845
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3846
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3848
    :try_start_27
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    .line 3851
    goto :goto_34

    .line 3849
    :catchall_2d
    move-exception v0

    .line 3850
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "observing native crashes"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3852
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3854
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3856
    :try_start_3c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    .line 3859
    goto :goto_50

    .line 3857
    :catchall_49
    move-exception v0

    .line 3858
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "registering app ops policy"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3860
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_50
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3864
    const-string v8, "WebViewFactoryPreparation"

    .line 3865
    .local v8, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3866
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v9, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v10, "WebViewFactoryPreparation"

    if-eqz v9, :cond_67

    .line 3867
    new-instance v9, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v9, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v9, v0

    goto :goto_68

    .line 3866
    :cond_67
    move-object v9, v0

    .line 3878
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v9, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_68
    if-eqz p2, :cond_96

    .line 3879
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3880
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3881
    const-string v11, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 3882
    .local v0, "cshs":Lcom/android/server/SystemService;
    instance-of v11, v0, Landroid/util/Dumpable;

    if-eqz v11, :cond_83

    .line 3883
    iget-object v11, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v12, v0

    check-cast v12, Landroid/util/Dumpable;

    invoke-static {v11, v12}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3885
    :cond_83
    instance-of v11, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v11, :cond_90

    .line 3886
    move-object v11, v0

    check-cast v11, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_92

    .line 3885
    :cond_90
    move-object/from16 v12, p3

    .line 3888
    :goto_92
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_98

    .line 3878
    .end local v0    # "cshs":Lcom/android/server/SystemService;
    :cond_96
    move-object/from16 v12, p3

    .line 3891
    :goto_98
    if-eqz p4, :cond_d6

    .line 3892
    const-string v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3893
    nop

    .line 3894
    const v0, 0x104039e

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 3896
    .local v11, "wearServiceComponentNameString":Ljava/lang/String;
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_d3

    .line 3897
    invoke-static {v11}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v13

    .line 3900
    .local v13, "wearServiceComponentName":Landroid/content/ComponentName;
    if-eqz v13, :cond_ce

    .line 3901
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v7, v0

    .line 3902
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3903
    const/16 v0, 0x100

    invoke-virtual {v7, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3905
    :try_start_c1
    sget-object v0, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v0}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_c6
    .catchall {:try_start_c1 .. :try_end_c6} :catchall_c7

    .line 3908
    goto :goto_cd

    .line 3906
    :catchall_c7
    move-exception v0

    .line 3907
    .local v0, "e":Ljava/lang/Throwable;
    const-string v14, "Starting WearServices: "

    invoke-direct {v1, v14, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3909
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v7    # "intent":Landroid/content/Intent;
    :goto_cd
    goto :goto_d3

    .line 3910
    :cond_ce
    const-string v0, "Null wear service component name."

    invoke-static {v7, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3913
    .end local v13    # "wearServiceComponentName":Landroid/content/ComponentName;
    :cond_d3
    :goto_d3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3921
    .end local v11    # "wearServiceComponentNameString":Ljava/lang/String;
    :cond_d6
    if-eqz p6, :cond_eb

    .line 3922
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3924
    const/4 v0, 0x1

    :try_start_de
    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e2

    .line 3927
    goto :goto_e8

    .line 3925
    :catchall_e2
    move-exception v0

    .line 3926
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3928
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3930
    :cond_eb
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3932
    if-eqz p8, :cond_fe

    .line 3933
    :try_start_f2
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->systemReady()V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f6

    goto :goto_fe

    .line 3935
    :catchall_f6
    move-exception v0

    .line 3936
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Management Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_ff

    .line 3937
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_fe
    :goto_fe
    nop

    .line 3938
    :goto_ff
    const/4 v0, 0x0

    .line 3939
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v5, :cond_109

    .line 3940
    nop

    .line 3941
    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v7, v0

    goto :goto_10a

    .line 3939
    :cond_109
    move-object v7, v0

    .line 3943
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_10a
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3945
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v11, "SystemServer:NetworkStatsService systemReady"

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3947
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3949
    if-eqz v4, :cond_127

    .line 3950
    :try_start_11b
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_11e
    .catchall {:try_start_11b .. :try_end_11e} :catchall_11f

    goto :goto_127

    .line 3952
    :catchall_11f
    move-exception v0

    .line 3953
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Connectivity Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_128

    .line 3954
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_127
    :goto_127
    nop

    .line 3955
    :goto_128
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3957
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v11, "SystemServer:ConnectivityService systemReady"

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3959
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3961
    if-eqz p10, :cond_145

    .line 3962
    :try_start_139
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_13c
    .catchall {:try_start_139 .. :try_end_13c} :catchall_13d

    goto :goto_145

    .line 3964
    :catchall_13d
    move-exception v0

    .line 3965
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making VpnManagerService ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_146

    .line 3966
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_145
    :goto_145
    nop

    .line 3967
    :goto_146
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3968
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3970
    if-eqz v5, :cond_15c

    .line 3971
    :try_start_150
    invoke-virtual {v5, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_153
    .catchall {:try_start_150 .. :try_end_153} :catchall_154

    goto :goto_15c

    .line 3973
    :catchall_154
    move-exception v0

    .line 3974
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Network Policy Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_15d

    .line 3975
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_15c
    :goto_15c
    nop

    .line 3976
    :goto_15d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3978
    const-string v11, "SystemServer:NetworkPolicyManagerService systemReady"

    .line 3979
    .local v11, "NetworkServiceBootEvent":Ljava/lang/String;
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3982
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3986
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3988
    if-eqz v9, :cond_176

    .line 3989
    invoke-static {v9, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3991
    :cond_176
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x258

    invoke-virtual {v0, v2, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3992
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3994
    const-string/jumbo v0, "ro.product.uwb.oem"

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 3995
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.uwb"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a8

    .line 3996
    const-string v0, "StartVendorUwbOemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3997
    new-instance v0, Lcom/nxp/uwb/oemService/NxpUwbOemService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/nxp/uwb/oemService/NxpUwbOemService;-><init>(Landroid/content/Context;)V

    .line 3998
    .local v0, "nxpUwbOemService":Lcom/nxp/uwb/oemService/NxpUwbOemService;
    const-string v10, "VendorUwbOemService"

    invoke-static {v10, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3999
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4003
    .end local v0    # "nxpUwbOemService":Lcom/nxp/uwb/oemService/NxpUwbOemService;
    :cond_1a8
    if-eqz v6, :cond_1b5

    .line 4004
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4005
    invoke-virtual {v6, v2}, Lcom/android/server/pm/HsumBootUserInitializer;->systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 4006
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4009
    :cond_1b5
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4016
    :try_start_1ba
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_1c1
    .catchall {:try_start_1ba .. :try_end_1c1} :catchall_1c2

    .line 4019
    goto :goto_1c9

    .line 4017
    :catchall_1c2
    move-exception v0

    .line 4018
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Network Stack"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4020
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1c9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4022
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4025
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

    .line 4034
    goto :goto_1e9

    .line 4032
    :catchall_1e2
    move-exception v0

    .line 4033
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Tethering"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4035
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1e9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4037
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4039
    if-eqz p12, :cond_1fe

    .line 4040
    :try_start_1f3
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1f6
    .catchall {:try_start_1f3 .. :try_end_1f6} :catchall_1f7

    goto :goto_1fe

    .line 4042
    :catchall_1f7
    move-exception v0

    .line 4043
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying CountryDetectorService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ff

    .line 4044
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1fe
    :goto_1fe
    nop

    .line 4045
    :goto_1ff
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4046
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4048
    if-eqz p13, :cond_214

    .line 4049
    :try_start_209
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_20c
    .catchall {:try_start_209 .. :try_end_20c} :catchall_20d

    goto :goto_214

    .line 4051
    :catchall_20d
    move-exception v0

    .line 4052
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying NetworkTimeService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_215

    .line 4053
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_214
    :goto_214
    nop

    .line 4054
    :goto_215
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4055
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4057
    if-eqz p14, :cond_22a

    .line 4058
    :try_start_21f
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_222
    .catchall {:try_start_21f .. :try_end_222} :catchall_223

    goto :goto_22a

    .line 4060
    :catchall_223
    move-exception v0

    .line 4061
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22b

    .line 4062
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22a
    :goto_22a
    nop

    .line 4063
    :goto_22b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4064
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4066
    if-eqz p15, :cond_240

    .line 4067
    :try_start_235
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_238
    .catchall {:try_start_235 .. :try_end_238} :catchall_239

    goto :goto_240

    .line 4069
    :catchall_239
    move-exception v0

    .line 4070
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MediaRouterService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_241

    .line 4071
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_240
    :goto_240
    nop

    .line 4072
    :goto_241
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4073
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_264

    .line 4074
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4076
    if-eqz p16, :cond_260

    :try_start_255
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_258
    .catchall {:try_start_255 .. :try_end_258} :catchall_259

    goto :goto_260

    .line 4077
    :catchall_259
    move-exception v0

    .line 4078
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MmsService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_261

    .line 4079
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_260
    :goto_260
    nop

    .line 4080
    :goto_261
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4083
    :cond_264
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4087
    :try_start_269
    const-string/jumbo v0, "incident"

    .line 4088
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 4087
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 4089
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_279

    .line 4090
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_279
    .catchall {:try_start_269 .. :try_end_279} :catchall_27a

    .line 4094
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_279
    goto :goto_280

    .line 4092
    :catchall_27a
    move-exception v0

    .line 4093
    .local v0, "e":Ljava/lang/Throwable;
    const-string v10, "Notifying incident daemon running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4095
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_280
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4098
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v10, "SystemServer:PhaseThirdPartyAppsCanStart"

    invoke-virtual {v0, v10}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 4100
    iget-wide v13, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-eqz v0, :cond_29f

    .line 4101
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4102
    iget-wide v13, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v13, v14}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 4103
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4106
    :cond_29f
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4108
    :try_start_2a4
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_2a7
    .catchall {:try_start_2a4 .. :try_end_2a7} :catchall_2a8

    .line 4111
    goto :goto_2ae

    .line 4109
    :catchall_2a8
    move-exception v0

    .line 4110
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Triggering OdsignStatsLogger"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4112
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2ae
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4113
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 827
    invoke-static {}, Lcom/android/server/MiuiServicesRouter;->init()V

    .line 831
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerStub;->markSystemRun(J)V

    .line 836
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/BootKeeperStub;->beforeBoot()V

    .line 841
    invoke-static {}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->getInstance()Lcom/android/server/miuibpf/MiuiBpfServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->start()V

    .line 843
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 844
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1297
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1299
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1300
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

    .line 1303
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1304
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1306
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1314
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1315
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1316
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1317
    const/4 v7, 0x0

    .line 1319
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1322
    goto :goto_56

    .line 1320
    :catch_50
    move-exception v2

    .line 1321
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1324
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1325
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1326
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    return-void

    .line 1333
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$3;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1341
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1342
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1343
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1346
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

    .line 1292
    const-string v0, "***********************************************"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1293
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

    .line 1294
    return-void
.end method

.method private run()V
    .registers 20

    .line 969
    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"

    const-string v2, ""

    invoke-static {}, Ldalvik/system/VMDebug;->isDebuggingEnabled()Z

    move-result v3

    const-string v4, "SystemServer"

    const/4 v5, 0x0

    if-eqz v3, :cond_20

    .line 970
    const-string v3, "debug.system_server.jdwp_wait"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 971
    const-string v3, "System server is waiting for debugger before starting..."

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 975
    :cond_20
    new-instance v3, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 978
    .local v3, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_25
    new-instance v6, Landroid/tracing/perfetto/InitArguments;

    const/4 v7, 0x2

    const/16 v8, 0x1000

    invoke-direct {v6, v7, v8}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    invoke-static {v6}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 981
    const-string v6, "InitBeforeStartServices"

    invoke-virtual {v3, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 984
    const-string/jumbo v6, "sys.system_server.start_count"

    iget v7, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    const-string/jumbo v6, "sys.system_server.start_elapsed"

    iget-wide v7, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 986
    const-string/jumbo v6, "sys.system_server.start_uptime"

    iget-wide v7, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v7, v8}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 988
    iget v6, v1, Lcom/android/server/SystemServer;->mStartCount:I

    .line 989
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

    .line 988
    const/16 v7, 0xbc3

    invoke-static {v7, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 992
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 1002
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_9e

    .line 1003
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v6

    .line 1005
    .local v6, "languageTag":Ljava/lang/String;
    const-string/jumbo v7, "persist.sys.locale"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1006
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1007
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1008
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1012
    .end local v6    # "languageTag":Ljava/lang/String;
    :cond_9e
    const/4 v2, 0x1

    invoke-static {v2}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 1014
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 1017
    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 1020
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 1023
    const-string v0, "Entered the Android system server!"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1025
    .local v7, "uptimeMillis":J
    const/16 v0, 0xbc2

    invoke-static {v0, v7, v8}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 1026
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v9, 0xf0

    if-nez v0, :cond_c6

    .line 1027
    const/16 v0, 0x13

    invoke-static {v9, v0, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1033
    :cond_c6
    invoke-static {}, Lcom/android/internal/os/ZygoteInitStub;->getInstance()Lcom/android/internal/os/ZygoteInitStub;

    move-result-object v0

    const-string/jumbo v10, "start_android"

    invoke-virtual {v0, v10}, Lcom/android/internal/os/ZygoteInitStub;->addBootEvent(Ljava/lang/String;)V

    .line 1036
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v10, "Android:SysServerInit_START"

    invoke-virtual {v0, v10}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1045
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1050
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v0

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v10}, Landroid/app/ActivityThreadStub;->useGrowthLimitOutExpendMethod(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f8

    .line 1051
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 1057
    :cond_f8
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 1061
    invoke-static {v2}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 1065
    invoke-static {v2}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 1068
    invoke-static {v2}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 1071
    invoke-static {v2}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 1074
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 1077
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1079
    invoke-static {v2}, Landroid/os/MessageQueue;->setUseDeliQueue(Z)V

    .line 1080
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 1081
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    sget-wide v10, Lcom/android/server/SystemServer;->SLOW_DISPATCH_THRESHOLD_MS:J

    sget-wide v12, Lcom/android/server/SystemServer;->SLOW_DELIVERY_THRESHOLD_MS:J

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 1084
    sput-boolean v2, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 1087
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()V

    .line 1088
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->getInstance()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v10

    invoke-static {v0, v10}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1093
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1096
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1099
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 1102
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1111
    invoke-direct {v1}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 1116
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->create()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v0

    move-object v10, v0

    .line 1117
    .local v10, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    invoke-static {v10}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    .line 1120
    invoke-direct {v1}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 1123
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 1126
    const-string/jumbo v0, "system_server_dumper"

    iget-object v11, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1127
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1130
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v11}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1131
    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v13, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v14, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    move-object/from16 v18, v10

    .end local v10    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    .local v18, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    iget-wide v9, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 1133
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1135
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1139
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/text/flags/Flags;->useOptimizedBoottimeFontLoading()Z

    move-result v0

    if-nez v0, :cond_19f

    .line 1141
    const-string v0, "Loading pre-installed system font map."

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18b
    .catchall {:try_start_25 .. :try_end_18b} :catchall_2fc

    .line 1145
    :try_start_18b
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_18e
    .catch Ljava/lang/Exception; {:try_start_18b .. :try_end_18e} :catch_18f
    .catchall {:try_start_18b .. :try_end_18e} :catchall_2fc

    .line 1150
    goto :goto_19f

    .line 1146
    :catch_18f
    move-exception v0

    .line 1147
    .local v0, "e":Ljava/lang/Exception;
    :try_start_190
    const-string v9, "System font map reload"

    invoke-static {v4, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemServerStub;->resetFonts()V

    .line 1149
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 1155
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_19f
    :goto_19f
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_1a1
    .catchall {:try_start_190 .. :try_end_1a1} :catchall_2fc

    const-string v4, "System"

    if-eqz v0, :cond_1ea

    .line 1157
    :try_start_1a5
    const-string/jumbo v0, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    .line 1158
    .local v9, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v9}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1ea

    .line 1159
    const/16 v0, 0x3d

    invoke-virtual {v9, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v10, v0

    .line 1160
    .local v10, "equalIndex":I
    invoke-virtual {v9, v5, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v12, v0

    .line 1161
    .local v12, "libraryPath":Ljava/lang/String;
    add-int/lit8 v0, v10, 0x1

    .line 1162
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v9, v0, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1c9
    .catchall {:try_start_1a5 .. :try_end_1c9} :catchall_2fc

    move-object v13, v0

    .line 1165
    .local v13, "parameterList":Ljava/lang/String;
    :try_start_1ca
    invoke-static {v12, v13, v6}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1cd
    .catch Ljava/lang/Exception; {:try_start_1ca .. :try_end_1cd} :catch_1ce
    .catchall {:try_start_1ca .. :try_end_1cd} :catchall_2fc

    .line 1169
    goto :goto_1ea

    .line 1166
    :catch_1ce
    move-exception v0

    .line 1167
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1cf
    const-string v14, "*************************************************"

    invoke-static {v4, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1168
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
    .catchall {:try_start_1cf .. :try_end_1ea} :catchall_2fc

    .line 1173
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

    .line 1174
    nop

    .line 1177
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    sget-object v7, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v8, v9}, Lcom/mediatek/server/MtkSystemServer;->setPrameters(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V

    .line 1180
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 1183
    const-string v0, "debug.debug_system"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_20c

    .line 1184
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1189
    :cond_20c
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v8}, Lcom/sprd/server/SprdSystemServer;->initUnisocSystemServer(Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V

    .line 1193
    :try_start_217
    const-string v0, "StartServices"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1194
    const-string/jumbo v0, "sys.system_server_inherit_rt"

    invoke-static {v0, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_228

    .line 1195
    invoke-static {v2}, Landroid/os/Binder;->setGlobalInheritRt(Z)V

    .line 1197
    :cond_228
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1199
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkBootstrapServices()V

    .line 1201
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1203
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkCoreServices()V

    .line 1205
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1206
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1209
    invoke-direct {v1, v3}, Lcom/android/server/SystemServer;->updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1211
    invoke-static {}, Lcom/android/internal/os/ZygoteConfigStub;->getInstance()Lcom/android/internal/os/ZygoteConfigStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/ZygoteConfigStub;->initialize(Landroid/content/Context;)V

    .line 1213
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logSystemServerStarted()V
    :try_end_254
    .catchall {:try_start_217 .. :try_end_254} :catchall_2ea

    .line 1219
    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1220
    nop

    .line 1222
    invoke-static {v6}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1224
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_292

    invoke-direct {v1}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_292

    .line 1225
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 1226
    .local v4, "uptimeMillis":J
    const/16 v0, 0x14

    const/16 v11, 0xf0

    invoke-static {v11, v0, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1229
    const-wide/32 v6, 0xea60

    .line 1230
    .local v6, "maxUptimeMillis":J
    const-wide/32 v8, 0xea60

    cmp-long v0, v4, v8

    if-lez v0, :cond_292

    .line 1231
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

    .line 1237
    .end local v4    # "uptimeMillis":J
    .end local v6    # "maxUptimeMillis":J
    :cond_292
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 1246
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/BootKeeperStub;->afterBoot(Landroid/content/Context;)V

    .line 1250
    invoke-static {}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->getInstance()Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->initialize(Landroid/content/Context;)V

    .line 1255
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/Flags;->reportPostgcMemoryMetrics()Z

    move-result v0

    if-eqz v0, :cond_2c0

    .line 1256
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/libcore/readonly/Flags;->postCleanupApis()Z

    move-result v0

    if-eqz v0, :cond_2c0

    .line 1257
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 1265
    :cond_2c0
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v2, "Android:SysServerInit_END"

    invoke-virtual {v0, v2}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1270
    const-string/jumbo v0, "ro.boot.hwlevel"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MP"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2df

    .line 1272
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServerStub;->registerThreadPoolTraceObserver(Landroid/content/ContentResolver;)V

    .line 1277
    :cond_2df
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1278
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1214
    :catchall_2ea
    move-exception v0

    .line 1215
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2eb
    const-string v2, "******************************************"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    const-string v2, "************ Failure starting system services"

    invoke-static {v4, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1217
    nop

    .end local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_2f7
    .catchall {:try_start_2eb .. :try_end_2f7} :catchall_2f7

    .line 1219
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_2f7
    move-exception v0

    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1220
    throw v0

    .line 1173
    :catchall_2fc
    move-exception v0

    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1174
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static spawnFdLeakCheckThread()V
    .registers 5

    .line 752
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x640

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 753
    .local v0, "enableThreshold":I
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 754
    .local v1, "abortThreshold":I
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 756
    .local v2, "checkInterval":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 808
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 809
    return-void
.end method

.method private startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4172
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_14

    .line 4173
    const-string v0, "debug.crash_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_14

    .line 4174
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 4177
    :cond_14
    :goto_14
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4180
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 4181
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

    .line 4182
    .local v2, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 4183
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v4

    .line 4184
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

    .line 4185
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    .line 4188
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 4185
    if-eqz v5, :cond_5d

    .line 4186
    invoke-virtual {v6, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_60

    .line 4188
    :cond_5d
    invoke-virtual {v6, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4190
    :goto_60
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4191
    .end local v2    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    goto :goto_26

    .line 4194
    :cond_64
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 4196
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4197
    return-void
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4274
    const/4 v0, 0x0

    .line 4275
    .local v0, "startService":Z
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v1

    const-string v2, "SystemServer"

    if-eqz v1, :cond_b

    .line 4276
    const/4 v0, 0x1

    goto :goto_10

    .line 4278
    :cond_b
    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4280
    :goto_10
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/input/flags/Flags;->enableAttentionServiceApis()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4281
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isInteractionProviderServiceEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 4282
    const/4 v0, 0x1

    goto :goto_23

    .line 4284
    :cond_1e
    const-string v1, "InteractionProviderService is not enabled on this device"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4287
    :goto_23
    if-eqz v0, :cond_34

    .line 4288
    const-string v1, "StartAttentionManagerService"

    invoke-virtual {p2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4289
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4290
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4292
    :cond_34
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 13
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1373
    const-string/jumbo v0, "packagemanagermain"

    const-string/jumbo v1, "startBootstrapServices"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1375
    const-string v1, "ArtModuleServiceInitializer"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1383
    new-instance v1, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v1}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v1}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 1384
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1388
    const-string v1, "StartWatchdog"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1389
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    .line 1390
    .local v1, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v1}, Lcom/android/server/Watchdog;->start()V

    .line 1391
    iget-object v2, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v2, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1392
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1397
    const-string/jumbo v2, "ro.mi.os.custfeatureresolve"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "SystemServer"

    if-eqz v2, :cond_49

    .line 1398
    const-string v2, "Feature cust_feature_resolve is enabled"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1399
    new-instance v2, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>()V

    const-string v4, "LoadingCustFeatureConfig"

    invoke-static {v2, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_4e

    .line 1403
    :cond_49
    const-string v2, "Feature cust_feature_resolve is disabled"

    invoke-static {v4, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    :goto_4e
    const-string v2, "StartProtoLogConfigurationService"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1409
    new-instance v2, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;

    invoke-direct {v2}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>()V

    const-string/jumbo v4, "protolog_configuration"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1411
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1413
    const-string v2, "InitializeProtoLog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1414
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1415
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1419
    const-string v2, "PlatformCompat"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1420
    new-instance v2, Lcom/android/server/compat/PlatformCompat;

    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v2, v4}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1421
    .local v2, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v4, "platform_compat"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1422
    new-instance v4, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v4, v2}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v5, "platform_compat_native"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1424
    new-array v4, v3, [J

    new-array v5, v3, [J

    invoke-static {v4, v5, v3}, Landroid/app/AppCompatCallbacks;->install([J[JZ)V

    .line 1425
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1430
    const-string v4, "StartFileIntegrityService"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1431
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1432
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1437
    const-string v4, "StartInstaller"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1438
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/pm/Installer;

    .line 1439
    .local v4, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1443
    const-string v5, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1444
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1449
    const-string v5, "StartFeatureFlagsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1450
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/flags/FeatureFlagsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1451
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1454
    const-string v5, "UriGrantsManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1455
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1458
    const-string v5, "StartPowerStatsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1460
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1461
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1463
    const-string v5, "StartIStatsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1464
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1465
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1469
    const-string v5, "MemtrackProxyService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1470
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1471
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1474
    const-string v5, "StartAccessCheckingService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1475
    const-class v5, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    new-instance v6, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-direct {v6}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;-><init>()V

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1477
    const-class v5, Lcom/android/server/appop/AppOpMigrationHelper;

    new-instance v6, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-direct {v6}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    invoke-static {v5, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1479
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1480
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1483
    const-string v5, "StartActivityManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1496
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1497
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1499
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServerStub;->addMiuiPeriodicCleanerService(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1501
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v5, v6}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1503
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v6}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1504
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v4}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1505
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1507
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1510
    const-string v5, "StartDataLoaderManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1511
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1513
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1516
    const-string v5, "StartIncrementalService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1517
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1518
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1524
    const-string v5, "StartPowerManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1525
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/power/PowerManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1526
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1528
    const-string v5, "StartThermalManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1529
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/power/thermal/ThermalManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1530
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1533
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5, p1, v6}, Lcom/sprd/server/SprdSystemServer;->addUnionManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 1538
    const-string v5, "InitPowerManagement"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1539
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1540
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1543
    const-string v5, "StartRecoverySystemService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1544
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1545
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1548
    const-string v5, "StartLightsService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1551
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/SystemServerStub;->createLightsServices()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1553
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1555
    const-string v5, "StartDisplayOffloadService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1557
    const-string v5, "config.enable_display_offload"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_1ff

    .line 1558
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1562
    :cond_1ff
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v5

    if-eqz v5, :cond_214

    .line 1563
    const-string v5, "config.enable_qti_display_offload"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_214

    .line 1564
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.qualcomm.qti.server.offloadservice.OffloadManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1568
    :cond_214
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1572
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v5

    if-eqz v5, :cond_234

    .line 1573
    const-string v5, "StartSuspendManagerService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1574
    const-string v5, "config.enable_qti_suspend_manager"

    invoke-static {v5, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_231

    .line 1575
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.qualcomm.qti.server.suspendservice.SuspendManagerService"

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1577
    :cond_231
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1583
    :cond_234
    const-string v5, "StartDisplayManager"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1584
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/display/DisplayManagerService;

    iput-object v5, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1585
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1588
    const-string v5, "WaitForDisplay"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1589
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v6, 0x64

    invoke-virtual {v5, p1, v6}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1590
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1593
    iget-boolean v5, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v6, 0xf0

    if-nez v5, :cond_267

    .line 1594
    nop

    .line 1597
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 1594
    const/16 v5, 0xe

    invoke-static {v6, v5, v7, v8}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1600
    :cond_267
    const-string v5, "StartDomainVerificationService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1601
    new-instance v5, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1602
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v8

    invoke-direct {v5, v7, v8, v2}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1603
    .local v5, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v5}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1604
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1607
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 1610
    .local v7, "pmsStartTime":J
    const-string v9, "StartPackageManagerService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1612
    :try_start_288
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1614
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1616
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v10, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v10, :cond_29e

    const/4 v10, 0x1

    goto :goto_29f

    :cond_29e
    move v10, v3

    :goto_29f
    invoke-static {v9, v4, v5, v10}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v9

    iput-object v9, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_2a5
    .catchall {:try_start_288 .. :try_end_2a5} :catchall_3d4

    .line 1620
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1622
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1624
    nop

    .line 1627
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    invoke-virtual {v0, v7, v8, v9, v10}, Lcom/android/server/SystemServerStub;->markPmsScan(JJ)V

    .line 1630
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1631
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1632
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1634
    const-string v0, "DexUseManagerLocal"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1637
    const-class v0, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1638
    invoke-static {v9}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v9

    .line 1637
    invoke-static {v0, v9}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1639
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1641
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_2f9

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_2f9

    .line 1642
    nop

    .line 1645
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    .line 1642
    const/16 v0, 0xf

    invoke-static {v6, v0, v9, v10}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1648
    :cond_2f9
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_30c

    .line 1649
    const-string v0, "StartArcSystemHealthService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1650
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v6, "com.android.server.arc.health.ArcSystemHealthService"

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1651
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1654
    :cond_30c
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1655
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/UserManagerService$LifeCycle;

    .line 1656
    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0}, Lcom/android/server/pm/UserManagerService$LifeCycle;->getService()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/SystemServer;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    .line 1657
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1660
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1661
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1662
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1665
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1666
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1667
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1670
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1674
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1675
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0, v6}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1676
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1680
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1683
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1684
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v6, Lcom/android/server/om/OverlayManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v6, v9}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1685
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1688
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1689
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v6}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1690
    .local v0, "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v6}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1691
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1692
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1694
    const-string v6, "StartSensorPrivacyService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1695
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v6, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1696
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1698
    const-string/jumbo v6, "persist.sys.displayinset.top"

    invoke-static {v6, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_3b1

    .line 1700
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1701
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1706
    :cond_3b1
    const-string v3, "StartSensorService"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1707
    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v3, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1708
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1711
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v3

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3, v6, v4}, Lcom/android/server/SystemServerStub;->addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 1714
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sprd/server/SprdSystemServer;->startUnisocBootstrapServices()V

    .line 1716
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1717
    return-void

    .line 1620
    .end local v0    # "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    :catchall_3d4
    move-exception v3

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1622
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v6

    invoke-virtual {v6, v0}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1624
    throw v3
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4232
    const/4 v0, 0x0

    .line 4233
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4235
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 4236
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4237
    if-eqz v0, :cond_22

    .line 4238
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4240
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4241
    return-void

    .line 4246
    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 4247
    const v3, 0x10402ca

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 4248
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4249
    return-void

    .line 4251
    :cond_39
    const v3, 0x10402cb

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 4252
    const-string v3, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4259
    :cond_47
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4260
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4262
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4263
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4264
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_66

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_66

    .line 4265
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 4268
    :cond_66
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4269
    return-void
.end method

.method private startContentSafetyManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4158
    const-string/jumbo v0, "startContentSafetyManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4159
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/contentsafety/ContentSafetyManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4160
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4161
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1723
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1726
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1727
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1728
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1730
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1732
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1733
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1736
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1737
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1738
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1739
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1738
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1740
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1743
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1744
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1745
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1746
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1750
    :cond_5e
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1751
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1752
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1756
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1757
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1758
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1761
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1762
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1763
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1766
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1767
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1768
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1771
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1772
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1773
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1776
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1777
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1778
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1781
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1782
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1783
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1786
    const-string v0, "StartRemoteProvisioningService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1787
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1788
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1792
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_de

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_ed

    .line 1794
    :cond_de
    const-string v0, "CpuMonitorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1796
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1799
    :cond_ed
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1801
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/server/SprdSystemServer;->startUnisocCoreServices()V

    .line 1803
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

    .line 4152
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4153
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 4154
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4155
    return-void
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 57
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1809
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1810
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1812
    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1813
    .local v6, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 1814
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v4, 0x0

    .line 1815
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v5, 0x0

    .line 1816
    .local v5, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    const/4 v7, 0x0

    .line 1817
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    const/4 v8, 0x0

    .line 1818
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v9, 0x0

    .line 1819
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    const/4 v10, 0x0

    .line 1820
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const/4 v11, 0x0

    .line 1821
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v12, 0x0

    .line 1822
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v13, 0x0

    .line 1823
    .local v13, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/4 v14, 0x0

    .line 1824
    .local v14, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/4 v15, 0x0

    .line 1825
    .local v15, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v16, 0x0

    .line 1827
    .local v16, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    const-string v0, "config.disable_systemtextclassifier"

    move-object/from16 v17, v3

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v17, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v18

    .line 1830
    .local v18, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 1832
    .local v19, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 1835
    .local v20, "disableCameraService":Z
    move-object/from16 v21, v5

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v21, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureWatch(Landroid/content/Context;)Z

    move-result v5

    .line 1837
    .local v5, "isWatch":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v3, "org.chromium.arc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v23

    .line 1840
    .local v23, "isArc":Z
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureLeanback(Landroid/content/Context;)Z

    move-result v24

    .line 1842
    .local v24, "isTv":Z
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureAutomotive(Landroid/content/Context;)Z

    move-result v3

    .line 1845
    .local v3, "isAutomotive":Z
    :try_start_4d
    const-string v0, "SecondaryZygotePreload"
    :try_end_4f
    .catchall {:try_start_4d .. :try_end_4f} :catchall_1b58

    .line 1850
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    move/from16 v25, v3

    .end local v3    # "isAutomotive":Z
    .local v25, "isAutomotive":Z
    :try_start_51
    new-instance v3, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V
    :try_end_56
    .catchall {:try_start_51 .. :try_end_56} :catchall_1b47

    move-object/from16 v26, v4

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v26, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_58
    const-string v4, "SecondaryZygotePreload"

    invoke-static {v3, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1870
    const-string v3, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1871
    const-string/jumbo v3, "sec_key_att_app_id_provider"

    new-instance v4, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v4, v6}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1873
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1875
    const-string v3, "StartKeyChainSystemService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1876
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1877
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1879
    const-string v3, "StartBinaryTransparencyService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1880
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1881
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1883
    const-string v3, "StartSchedulingPolicyService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1884
    const-string/jumbo v3, "scheduling_policy"

    new-instance v4, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v4}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1885
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1887
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/server/ui_latency_stats/Flags;->uiLatencyStatsService()Z

    move-result v3
    :try_end_a8
    .catchall {:try_start_58 .. :try_end_a8} :catchall_1b38

    if-eqz v3, :cond_ca

    .line 1888
    :try_start_aa
    const-string v3, "StartUiLatencyStatsService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1889
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/uilatencystats/UiLatencyStatsService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1891
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_b9
    .catchall {:try_start_aa .. :try_end_b9} :catchall_ba

    goto :goto_ca

    .line 2181
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_ba
    move-exception v0

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move-object/from16 v3, v17

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1b67

    .line 1896
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_ca
    :goto_ca
    :try_start_ca
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.microphone"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_d2
    .catchall {:try_start_ca .. :try_end_d2} :catchall_1b38

    if-nez v3, :cond_e8

    :try_start_d4
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.telecom"

    .line 1897
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_e8

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.telephony"

    .line 1898
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_e6
    .catchall {:try_start_d4 .. :try_end_e6} :catchall_ba

    if-eqz v3, :cond_f7

    .line 1899
    :cond_e8
    :try_start_e8
    const-string v3, "StartTelecomLoaderService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1900
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1901
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1904
    :cond_f7
    const-string v3, "StartTelephonyRegistry"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1905
    new-instance v3, Lcom/android/server/TelephonyRegistry;

    new-instance v4, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v4}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v3, v6, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_106
    .catchall {:try_start_e8 .. :try_end_106} :catchall_1b38

    .line 1907
    .end local v12    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_106
    const-string/jumbo v4, "telephony.registry"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1908
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1910
    const-string v4, "StartEntropyMixer"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1911
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1912
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1915
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1919
    const-string v4, "StartAccountManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1920
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1921
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1923
    const-string v4, "StartContentService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1924
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/content/ContentService$Lifecycle;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1925
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1927
    const-string v4, "InstallSystemProviders"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1928
    iget-object v4, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1930
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1932
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1933
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1935
    iget-object v4, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v12, "android.hardware.npu"

    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_165
    .catchall {:try_start_106 .. :try_end_165} :catchall_1b25

    if-eqz v4, :cond_18e

    .line 1936
    :try_start_167
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/npumanager/Flags;->npumanagerEnabled()Z

    move-result v4

    if-eqz v4, :cond_18e

    .line 1937
    const-string v4, "StartNpuManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1938
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.npumanager.NpuManagerService"

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1939
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_17c
    .catchall {:try_start_167 .. :try_end_17c} :catchall_17d

    goto :goto_18e

    .line 2181
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_17d
    move-exception v0

    move-object v12, v3

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move-object/from16 v3, v17

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1b67

    .line 1945
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_18e
    :goto_18e
    :try_start_18e
    const-string v4, "StartDropBoxManager"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1946
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1947
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1949
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v4
    :try_end_1a1
    .catchall {:try_start_18e .. :try_end_1a1} :catchall_1b25

    if-eqz v4, :cond_1b2

    .line 1950
    :try_start_1a3
    const-string v4, "StartEnhancedConfirmationService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1951
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.ecm.EnhancedConfirmationService"

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1952
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1b2
    .catchall {:try_start_1a3 .. :try_end_1b2} :catchall_17d

    .line 1955
    :cond_1b2
    :try_start_1b2
    const-string v4, "StartHintManager"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1956
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1957
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1958
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/appfunctions/flags/Flags;->enableAppFunctionPermissionV2()Z

    move-result v4
    :try_end_1c5
    .catchall {:try_start_1b2 .. :try_end_1c5} :catchall_1b25

    if-eqz v4, :cond_1d6

    .line 1959
    :try_start_1c7
    const-string v4, "StartAllowlistService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1960
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/allowlist/AllowlistService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1961
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1d6
    .catchall {:try_start_1c7 .. :try_end_1d6} :catchall_17d

    .line 1965
    :cond_1d6
    :try_start_1d6
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sprd/server/SprdSystemServer;->startUnisocFwkBoostServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1968
    const-string v4, "StartRoleManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1969
    const-class v4, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v12, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
    :try_end_1e6
    .catchall {:try_start_1d6 .. :try_end_1e6} :catchall_1b25

    move-object/from16 v27, v3

    .end local v3    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v27, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1e8
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v3}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v12}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1971
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.role.RoleService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1972
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1974
    const-string v3, "StartSupervisionService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1975
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1976
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_209
    .catchall {:try_start_1e8 .. :try_end_209} :catchall_1b14

    .line 1978
    if-nez v24, :cond_22d

    .line 1979
    :try_start_20b
    const-string v3, "StartVibratorManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1980
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1981
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_22d

    .line 2181
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_21b
    move-exception v0

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move-object/from16 v3, v17

    move/from16 v10, v25

    move-object/from16 v12, v27

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1b67

    .line 1984
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_22d
    :goto_22d
    if-nez v24, :cond_244

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/multisensory/Flags;->enableMultisensoryFeedback()Z

    move-result v3

    if-eqz v3, :cond_244

    .line 1985
    const-string v3, "StartMultisensoryService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1986
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/multisensory/MultisensoryService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1987
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_244
    .catchall {:try_start_20b .. :try_end_244} :catchall_21b

    .line 1990
    :cond_244
    :try_start_244
    const-string v3, "StartDynamicSystemService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1991
    new-instance v3, Lcom/android/server/DynamicSystemService;

    invoke-direct {v3, v6}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_24e
    .catchall {:try_start_244 .. :try_end_24e} :catchall_1b14

    .line 1992
    .end local v17    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_24e
    const-string v4, "dynamic_system"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1993
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1995
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v12, "android.hardware.consumerir"

    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_260
    .catchall {:try_start_24e .. :try_end_260} :catchall_1b02

    if-eqz v4, :cond_288

    .line 1996
    :try_start_262
    const-string v4, "StartConsumerIrService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1997
    new-instance v4, Lcom/android/server/ConsumerIrService;

    invoke-direct {v4, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v13, v4

    .line 1998
    const-string v4, "consumer_ir"

    invoke-static {v4, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1999
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_275
    .catchall {:try_start_262 .. :try_end_275} :catchall_278

    move-object/from16 v28, v13

    goto :goto_28a

    .line 2181
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_278
    move-exception v0

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move-object/from16 v12, v27

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1b67

    .line 1995
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_288
    move-object/from16 v28, v13

    .line 2003
    .end local v13    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v28, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_28a
    :try_start_28a
    const-string v4, "StartSsruService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2004
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemServerStub;->addSsruService()V

    .line 2005
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2009
    const-string v4, "StartAlarmManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2012
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v4
    :try_end_2a2
    .catchall {:try_start_28a .. :try_end_2a2} :catchall_1aee

    if-eqz v4, :cond_2c6

    .line 2013
    :try_start_2a4
    sget-object v4, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v4}, Lcom/mediatek/server/MtkSystemServer;->startMtkAlarmManagerService()Z

    move-result v4

    if-nez v4, :cond_2cd

    .line 2014
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2b3
    .catchall {:try_start_2a4 .. :try_end_2b3} :catchall_2b4

    goto :goto_2cd

    .line 2181
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_2b4
    move-exception v0

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1b67

    .line 2016
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2c6
    :try_start_2c6
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2019
    :cond_2cd
    :goto_2cd
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2021
    const-string v4, "StartInputManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2022
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/input/InputManagerService$Lifecycle;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$Lifecycle;

    .line 2023
    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService$Lifecycle;->getService()Lcom/android/server/input/InputManagerService;

    move-result-object v4
    :try_end_2e3
    .catchall {:try_start_2c6 .. :try_end_2e3} :catchall_1aee

    .line 2024
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_2e3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2026
    const-string v11, "DeviceStateManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2027
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2028
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2f5
    .catchall {:try_start_2e3 .. :try_end_2f5} :catchall_1ad6

    .line 2030
    if-nez v20, :cond_31a

    .line 2031
    :try_start_2f7
    const-string v11, "StartCameraServiceProxy"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2032
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2033
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_306
    .catchall {:try_start_2f7 .. :try_end_306} :catchall_307

    goto :goto_31a

    .line 2181
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_307
    move-exception v0

    move-object v11, v4

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1b67

    .line 2037
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_31a
    :goto_31a
    :try_start_31a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result v11
    :try_end_31e
    .catchall {:try_start_31a .. :try_end_31e} :catchall_1ad6

    if-eqz v11, :cond_32f

    .line 2038
    :try_start_320
    const-string v11, "StartPerfManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2039
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/urm/PerfManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2040
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_32f
    .catchall {:try_start_320 .. :try_end_32f} :catchall_307

    .line 2044
    :cond_32f
    :try_start_32f
    const-string v11, "StartWindowManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2046
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0xc8

    invoke-virtual {v11, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2047
    iget-boolean v11, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v11, :cond_341

    const/4 v11, 0x1

    goto :goto_342

    :cond_341
    const/4 v11, 0x0

    .line 2050
    :goto_342
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/SystemServerStub;->createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v13

    iget-object v12, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 2047
    invoke-static {v6, v4, v11, v13, v12}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v11
    :try_end_352
    .catchall {:try_start_32f .. :try_end_352} :catchall_1ad6

    move-object v9, v11

    .line 2052
    :try_start_353
    const-string/jumbo v11, "window"

    const/16 v12, 0x13

    const/4 v13, 0x0

    invoke-static {v11, v9, v13, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 2055
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2057
    const-string v11, "SetWindowManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2058
    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v9}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 2059
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2061
    const-string v11, "WindowManagerServiceOnInitReady"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2062
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 2063
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2068
    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v11}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    const-string v12, "StartISensorManagerService"

    invoke-static {v11, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 2075
    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v11}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    const-string v12, "StartHidlServices"

    invoke-static {v11, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 2082
    const-string v11, "StartInputManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2083
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 2084
    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->start()V

    .line 2085
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2088
    const-string v11, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2089
    iget-object v11, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 2090
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2092
    iget v11, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_3ac
    .catchall {:try_start_353 .. :try_end_3ac} :catchall_1abc

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3b7

    .line 2093
    :try_start_3af
    const-string v11, "SystemServer"

    const-string v12, "No Bluetooth Service (factory test)"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3b6
    .catchall {:try_start_3af .. :try_end_3b6} :catchall_307

    goto :goto_3dc

    .line 2094
    :cond_3b7
    :try_start_3b7
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.hardware.bluetooth"

    .line 2095
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11
    :try_end_3c1
    .catchall {:try_start_3b7 .. :try_end_3c1} :catchall_1abc

    if-nez v11, :cond_3cb

    .line 2096
    :try_start_3c3
    const-string v11, "SystemServer"

    const-string v12, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ca
    .catchall {:try_start_3c3 .. :try_end_3ca} :catchall_307

    goto :goto_3dc

    .line 2098
    :cond_3cb
    :try_start_3cb
    const-string v11, "StartBluetoothService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2099
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.bluetooth.BluetoothService"

    const-string v13, "/apex/com.android.bt/javalib/service-bluetooth.jar"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2101
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2104
    :goto_3dc
    const-string v11, "IpConnectivityMetrics"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2105
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2106
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2108
    const-string v11, "NetworkWatchlistService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2109
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2110
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2112
    const-string v11, "PinnerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2113
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2114
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2117
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v11
    :try_end_40d
    .catchall {:try_start_3cb .. :try_end_40d} :catchall_1abc

    if-eqz v11, :cond_41e

    .line 2118
    :try_start_40f
    const-string v11, "ActivityTriggerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2119
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2120
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_41e
    .catchall {:try_start_40f .. :try_end_41e} :catchall_307

    .line 2124
    :cond_41e
    :try_start_41e
    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_420
    .catchall {:try_start_41e .. :try_end_420} :catchall_1abc

    if-eqz v11, :cond_437

    :try_start_422
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v11

    if-eqz v11, :cond_437

    .line 2125
    const-string v11, "ProfcollectForwardingService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2126
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2127
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_437
    .catchall {:try_start_422 .. :try_end_437} :catchall_307

    .line 2130
    :cond_437
    :try_start_437
    const-string v11, "SignedConfigService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2131
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 2132
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2134
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->removeAppIntegrityManagerService()Z

    move-result v11
    :try_end_448
    .catchall {:try_start_437 .. :try_end_448} :catchall_1abc

    if-nez v11, :cond_459

    .line 2135
    :try_start_44a
    const-string v11, "AppIntegrityService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2136
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2137
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_459
    .catchall {:try_start_44a .. :try_end_459} :catchall_307

    .line 2140
    :cond_459
    :try_start_459
    const-string v11, "StartLogcatManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2141
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2142
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_468
    .catchall {:try_start_459 .. :try_end_468} :catchall_1abc

    .line 2144
    if-nez v5, :cond_483

    if-nez v24, :cond_483

    if-nez v25, :cond_483

    .line 2145
    :try_start_46e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aflApi()Z

    move-result v11

    if-eqz v11, :cond_483

    .line 2146
    const-string v11, "StartIntrusionDetectionService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2147
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2148
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_483
    .catchall {:try_start_46e .. :try_end_483} :catchall_307

    .line 2151
    :cond_483
    :try_start_483
    invoke-static {v6}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v11
    :try_end_487
    .catchall {:try_start_483 .. :try_end_487} :catchall_1abc

    if-eqz v11, :cond_498

    .line 2152
    :try_start_489
    const-string v11, "StartAppFunctionManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2153
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/appfunctions/AppFunctionManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2154
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_498
    .catchall {:try_start_489 .. :try_end_498} :catchall_307

    .line 2157
    :cond_498
    :try_start_498
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->enablePccFrameworkSupport()Z

    move-result v11
    :try_end_49c
    .catchall {:try_start_498 .. :try_end_49c} :catchall_1abc

    if-eqz v11, :cond_4ad

    .line 2158
    :try_start_49e
    const-string v11, "StartPccSandboxManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2159
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/privatecompute/PccSandboxManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2160
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4ad
    .catchall {:try_start_49e .. :try_end_4ad} :catchall_307

    .line 2163
    :cond_4ad
    :try_start_4ad
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/lskfreset/flags/Flags;->enableLskfResetManager()Z

    move-result v11
    :try_end_4b1
    .catchall {:try_start_4ad .. :try_end_4b1} :catchall_1abc

    if-eqz v11, :cond_4c2

    .line 2164
    :try_start_4b3
    const-string v11, "StartLskfResetManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2165
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/lskfreset/LskfResetManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2166
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2169
    :cond_4c2
    if-nez v5, :cond_4d7

    if-nez v24, :cond_4d7

    if-nez v25, :cond_4d7

    .line 2170
    const-string v11, "StartAdvancedProtectionService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2171
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2172
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2175
    :cond_4d7
    if-nez v5, :cond_4f2

    if-nez v24, :cond_4f2

    if-nez v25, :cond_4f2

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/tradeinmode/flags/Flags;->enableTradeInMode()Z

    move-result v11

    if-eqz v11, :cond_4f2

    .line 2176
    const-string v11, "StartTradeInModeService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2177
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/TradeInModeService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2178
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4f2
    .catchall {:try_start_4b3 .. :try_end_4f2} :catchall_307

    .line 2185
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_4f2
    nop

    .line 2187
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServerStub;->initAppRescuepartyLevel(Landroid/content/Context;)V

    .line 2192
    move-object/from16 v29, v7

    .end local v7    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v29, "vpnManager":Lcom/android/server/VpnManagerService;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v7

    .line 2193
    .local v7, "safeMode":Z
    if-eqz v7, :cond_50d

    .line 2198
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_524

    .line 2200
    :cond_50d
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x1110042

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_524

    .line 2201
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v0, v11, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2205
    :cond_524
    :goto_524
    const/4 v11, 0x0

    .line 2206
    .local v11, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v12, 0x0

    .line 2207
    .local v12, "notification":Landroid/app/INotificationManager;
    const/4 v13, 0x0

    .line 2208
    .local v13, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v30, 0x0

    .line 2209
    .local v30, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v31, 0x0

    .line 2212
    .local v31, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v32, v3

    const/4 v3, 0x1

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v32, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    if-eq v0, v3, :cond_5ad

    .line 2213
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2214
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1040304

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2216
    .local v3, "immsClassName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_554

    .line 2217
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v33, v5

    .end local v5    # "isWatch":Z
    .local v33, "isWatch":Z
    const-class v5, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v34, v8

    goto :goto_592

    .line 2220
    .end local v33    # "isWatch":Z
    .restart local v5    # "isWatch":Z
    :cond_554
    move/from16 v33, v5

    .end local v5    # "isWatch":Z
    .restart local v33    # "isWatch":Z
    :try_start_556
    const-string v0, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_55d
    .catchall {:try_start_556 .. :try_end_55d} :catchall_578

    move-object/from16 v34, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v34, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_55f
    const-string v8, "Starting custom IMMS: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2221
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_575
    .catchall {:try_start_55f .. :try_end_575} :catchall_576

    .line 2224
    goto :goto_592

    .line 2222
    :catchall_576
    move-exception v0

    goto :goto_57b

    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_578
    move-exception v0

    move-object/from16 v34, v8

    .line 2223
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_57b
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2226
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_592
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2228
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2230
    :try_start_59a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5a1
    .catchall {:try_start_59a .. :try_end_5a1} :catchall_5a2

    .line 2233
    goto :goto_5a9

    .line 2231
    :catchall_5a2
    move-exception v0

    .line 2232
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Accessibility Manager"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2234
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5a9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_5b1

    .line 2212
    .end local v3    # "immsClassName":Ljava/lang/String;
    .end local v33    # "isWatch":Z
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v5    # "isWatch":Z
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_5ad
    move/from16 v33, v5

    move-object/from16 v34, v8

    .line 2237
    .end local v5    # "isWatch":Z
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v33    # "isWatch":Z
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_5b1
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2239
    :try_start_5b6
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_5b9
    .catchall {:try_start_5b6 .. :try_end_5b9} :catchall_5ba

    .line 2242
    goto :goto_5c1

    .line 2240
    :catchall_5ba
    move-exception v0

    .line 2241
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making display ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2243
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5c1
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2245
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_630

    .line 2246
    const-string v0, "0"

    const-string/jumbo v3, "system_init.startmountservice"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_630

    .line 2247
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2253
    :try_start_5dd
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/StorageManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2254
    const-string/jumbo v0, "mount"

    .line 2255
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2254
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_5ef
    .catchall {:try_start_5dd .. :try_end_5ef} :catchall_5f2

    .line 2258
    .end local v26    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    move-object/from16 v26, v0

    goto :goto_5f9

    .line 2256
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v26    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_5f2
    move-exception v0

    .line 2257
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StorageManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2259
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5f9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2261
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2263
    :try_start_601
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_608
    .catchall {:try_start_601 .. :try_end_608} :catchall_609

    .line 2266
    goto :goto_610

    .line 2264
    :catchall_609
    move-exception v0

    .line 2265
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StorageStatsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2267
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_610
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2269
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/privatecompute/flags/Flags;->enablePccFrameworkSupport()Z

    move-result v0

    if-eqz v0, :cond_630

    .line 2270
    const-string v0, "StartFileService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2272
    :try_start_61e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/files/FileService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_625
    .catchall {:try_start_61e .. :try_end_625} :catchall_626

    .line 2275
    goto :goto_62d

    .line 2273
    :catchall_626
    move-exception v0

    .line 2274
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting FileService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2276
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_62d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2282
    :cond_630
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v0

    if-eqz v0, :cond_659

    .line 2283
    const-string v0, "StartAppLauncherService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2285
    :try_start_63b
    const-string v0, "SystemServer"

    const-string v3, "SystemServer Add AppLauncherService Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2286
    const-string/jumbo v0, "vendor.qti.appLauncherService.IAppLauncherService/default"

    new-instance v3, Lvendor/qti/applauncher/AppLauncherService;

    invoke-direct {v3, v6}, Lvendor/qti/applauncher/AppLauncherService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_64d
    .catchall {:try_start_63b .. :try_end_64d} :catchall_64e

    .line 2291
    goto :goto_656

    .line 2289
    :catchall_64e
    move-exception v0

    .line 2290
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failure starting AppLauncherService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2292
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_656
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2298
    :cond_659
    const-string v0, "StartUiModeManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2299
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2300
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2302
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2304
    :try_start_66d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_674
    .catchall {:try_start_66d .. :try_end_674} :catchall_675

    .line 2307
    goto :goto_67c

    .line 2305
    :catchall_675
    move-exception v0

    .line 2306
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting LocaleManagerService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2308
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_67c
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2310
    const-string v0, "StartUAppWindowLayoutSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2312
    :try_start_684
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appwindowlayout/AppWindowLayoutSettingsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_68b
    .catchall {:try_start_684 .. :try_end_68b} :catchall_68c

    .line 2315
    goto :goto_693

    .line 2313
    :catchall_68c
    move-exception v0

    .line 2314
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting AppWindowLayoutSettingsService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2316
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_693
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2318
    const-string v0, "StartGrammarInflectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2320
    :try_start_69b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_6a2
    .catchall {:try_start_69b .. :try_end_6a2} :catchall_6a3

    .line 2323
    goto :goto_6aa

    .line 2321
    :catchall_6a3
    move-exception v0

    .line 2322
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting GrammarInflectionService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2324
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6aa
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2326
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2327
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2328
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2330
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2331
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 2332
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2334
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2336
    move-object v3, v10

    move-object v5, v11

    .end local v10    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v11    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v3, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2339
    .local v10, "bootDexoptStartTime":J
    :try_start_6d4
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v8, "dexopt"

    invoke-virtual {v0, v8}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2340
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_6e2
    .catchall {:try_start_6d4 .. :try_end_6e2} :catchall_6e3

    goto :goto_6ea

    .line 2341
    :catchall_6e3
    move-exception v0

    .line 2342
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_6e4
    const-string/jumbo v8, "update packages"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6ea
    .catchall {:try_start_6e4 .. :try_end_6ea} :catchall_1a9e

    .line 2344
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6ea
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v8, "dexopt"

    invoke-virtual {v0, v8}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2345
    nop

    .line 2346
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2348
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v8, v12

    move-object/from16 v35, v13

    .end local v12    # "notification":Landroid/app/INotificationManager;
    .end local v13    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v8, "notification":Landroid/app/INotificationManager;
    .local v35, "countryDetector":Lcom/android/server/CountryDetectorService;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/SystemServerStub;->markBootDexopt(JJ)V

    .line 2351
    const-string v0, "UpdateMetricsIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2352
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updateMetricsIfNeeded()V

    .line 2353
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2366
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_729

    .line 2367
    const/4 v0, 0x0

    move-object v13, v0

    move-object/from16 v36, v3

    move-object/from16 v38, v5

    move-object/from16 v39, v30

    move-object/from16 v30, v8

    move-object/from16 v37, v16

    move-object/from16 v40, v31

    move-object/from16 v31, v15

    .local v0, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    goto/16 :goto_12fa

    .line 2369
    .end local v0    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_729
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2371
    :try_start_72e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2372
    const-string/jumbo v0, "lock_settings"

    .line 2373
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2372
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_740
    .catchall {:try_start_72e .. :try_end_740} :catchall_743

    .line 2376
    .end local v30    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v30, v0

    goto :goto_74a

    .line 2374
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v30    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_743
    move-exception v0

    .line 2375
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting LockSettingsService service"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2377
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_74a
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2379
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v17, 0x1

    xor-int/lit8 v0, v0, 0x1

    move v12, v0

    .line 2380
    .local v12, "hasPdb":Z
    if-eqz v12, :cond_770

    .line 2381
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2382
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2383
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2386
    :cond_770
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_78e

    const-string/jumbo v0, "ro.boot.dev_mode"

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_78e

    .line 2387
    const-string v0, "StartArcPersistentDataBlock"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2388
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2389
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2392
    :cond_78e
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2393
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2394
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2396
    if-nez v12, :cond_7a5

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_7b4

    .line 2398
    :cond_7a5
    const-string v0, "StartOemLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2399
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2400
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2403
    :cond_7b4
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2404
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2405
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2409
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2410
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2411
    .local v13, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2417
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2418
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v36, v3

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v36, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const-class v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2419
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2421
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2423
    :try_start_7ec
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7f1
    .catchall {:try_start_7ec .. :try_end_7f1} :catchall_807

    move-object v3, v0

    .line 2424
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_7f2
    invoke-virtual {v3}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 2425
    const-string/jumbo v0, "statusbar"
    :try_end_7f8
    .catchall {:try_start_7f2 .. :try_end_7f8} :catchall_803

    const/16 v5, 0x14

    move-object/from16 v37, v8

    const/4 v8, 0x0

    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v37, "notification":Landroid/app/INotificationManager;
    :try_start_7fd
    invoke-static {v0, v3, v8, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_800
    .catchall {:try_start_7fd .. :try_end_800} :catchall_801

    .line 2429
    goto :goto_811

    .line 2427
    :catchall_801
    move-exception v0

    goto :goto_80b

    .end local v37    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :catchall_803
    move-exception v0

    move-object/from16 v37, v8

    .end local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v37    # "notification":Landroid/app/INotificationManager;
    goto :goto_80b

    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v37    # "notification":Landroid/app/INotificationManager;
    .restart local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :catchall_807
    move-exception v0

    move-object/from16 v37, v8

    move-object v3, v5

    .line 2428
    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v37    # "notification":Landroid/app/INotificationManager;
    :goto_80b
    const-string/jumbo v5, "starting StatusBarManagerService"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2430
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_811
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2432
    const v0, 0x10402df

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_82d

    .line 2434
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2435
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2436
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_834

    .line 2438
    :cond_82d
    const-string v0, "SystemServer"

    const-string v5, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2442
    :goto_834
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2443
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2444
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2445
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2446
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2447
    if-nez v33, :cond_849

    .line 2448
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    goto :goto_850

    .line 2450
    :cond_849
    const-string v0, "SystemServer"

    const-string v5, "Not starting WearableSensingService"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2452
    :goto_850
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2453
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contentsafety/flags/Flags;->enableContentsafety()Z

    move-result v0

    if-eqz v0, :cond_85d

    .line 2454
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startContentSafetyManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    goto :goto_864

    .line 2456
    :cond_85d
    const-string v0, "SystemServer"

    const-string v5, "ContentSafetyManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2460
    :goto_864
    const v0, 0x10402c2

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_87d

    .line 2462
    const-string v0, "StartAmbientContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2463
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2464
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_884

    .line 2466
    :cond_87d
    const-string v0, "SystemServer"

    const-string v5, "AmbientContextManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2470
    :goto_884
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2471
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2472
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2475
    const v0, 0x10402c3

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8ac

    .line 2476
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2477
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2478
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_8b3

    .line 2480
    :cond_8ac
    const-string v0, "SystemServer"

    const-string v5, "AppPredictionService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2484
    :goto_8b3
    const v0, 0x10402d0

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8cc

    .line 2485
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2486
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2487
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_8d3

    .line 2489
    :cond_8cc
    const-string v0, "SystemServer"

    const-string v5, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2493
    :goto_8d3
    const v0, 0x10402ec

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_8eb

    .line 2494
    const-string v0, "StartSearchUiService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2495
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2496
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2500
    :cond_8eb
    const v0, 0x10402ef

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_904

    .line 2501
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2502
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2503
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_90b

    .line 2505
    :cond_904
    const-string v0, "SystemServer"

    const-string v5, "SmartspaceManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2509
    :goto_90b
    const v0, 0x10402d4

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_924

    .line 2511
    const-string v0, "StartContextualSearchService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2512
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2513
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_92b

    .line 2515
    :cond_924
    const-string v0, "SystemServer"

    const-string v5, "ContextualSearchManagerService not defined or disabled by flag"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2518
    :goto_92b
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2520
    :try_start_930
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_937
    .catchall {:try_start_930 .. :try_end_937} :catchall_938

    .line 2523
    goto :goto_93f

    .line 2521
    :catchall_938
    move-exception v0

    .line 2522
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "initializing ConnectivityModuleConnector"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2524
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_93f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2526
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2528
    :try_start_947
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_94e
    .catchall {:try_start_947 .. :try_end_94e} :catchall_94f

    .line 2531
    goto :goto_956

    .line 2529
    :catchall_94f
    move-exception v0

    .line 2530
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "initializing NetworkStackClient"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2532
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_956
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2534
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2536
    :try_start_95e
    invoke-static {v6}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v0
    :try_end_962
    .catchall {:try_start_95e .. :try_end_962} :catchall_96c

    move-object v5, v0

    .line 2537
    .end local v21    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v5, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :try_start_963
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_969
    .catchall {:try_start_963 .. :try_end_969} :catchall_96a

    .line 2540
    goto :goto_975

    .line 2538
    :catchall_96a
    move-exception v0

    goto :goto_96f

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v21    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :catchall_96c
    move-exception v0

    move-object/from16 v5, v21

    .line 2539
    .end local v21    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :goto_96f
    const-string/jumbo v8, "starting NetworkManagement Service"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2541
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_975
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2543
    const-string v0, "StartFontManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2544
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v8, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2545
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2547
    if-nez v33, :cond_99b

    .line 2548
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2549
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2550
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2553
    :cond_99b
    if-nez v18, :cond_9ac

    .line 2554
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2555
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2556
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2557
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2560
    :cond_9ac
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2561
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2562
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2564
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2567
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.NetworkStatsServiceInitializer"

    move-object/from16 v38, v3

    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v38, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v8, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2569
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2571
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2573
    :try_start_9d3
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v6, v3, v5}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_9da
    .catchall {:try_start_9d3 .. :try_end_9da} :catchall_9e4

    move-object v8, v0

    .line 2575
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_9db
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9e1
    .catchall {:try_start_9db .. :try_end_9e1} :catchall_9e2

    .line 2578
    goto :goto_9ed

    .line 2576
    :catchall_9e2
    move-exception v0

    goto :goto_9e7

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_9e4
    move-exception v0

    move-object/from16 v8, v34

    .line 2577
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_9e7
    const-string/jumbo v3, "starting NetworkPolicy Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2579
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9ed
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2582
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 2583
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v21

    move-object/from16 v39, v5

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v39, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    invoke-virtual/range {v21 .. v21}, Lcom/android/server/SystemServerStub;->getMiuilibpath()Ljava/lang/String;

    move-result-object v5

    .line 2582
    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2585
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a2f

    .line 2588
    const-string v0, "StartWifi"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2589
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.WifiService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2591
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2592
    const-string v0, "StartWifiScanning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2593
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2595
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2598
    :cond_a2f
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlMiuiWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2599
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlSlaveWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2602
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/net/wifi/flags/Flags;->usd()Z

    move-result v0

    if-eqz v0, :cond_a61

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110142

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a61

    .line 2604
    const-string v0, "StartWifiUsd"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2605
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.usd.UsdService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2607
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2610
    :cond_a61
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a7e

    .line 2612
    const-string v0, "StartRttService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2613
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.rtt.RttService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2615
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2618
    :cond_a7e
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a9b

    .line 2620
    const-string v0, "StartWifiAware"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2621
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.aware.WifiAwareService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2623
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2626
    :cond_a9b
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ab8

    .line 2628
    const-string v0, "StartWifiP2P"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2629
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2631
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2634
    :cond_ab8
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.lowpan"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ad3

    .line 2636
    const-string v0, "StartLowpan"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2637
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2638
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2641
    :cond_ad3
    const-string v0, "StartPacProxyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2643
    :try_start_ad8
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v6}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V
    :try_end_add
    .catchall {:try_start_ad8 .. :try_end_add} :catchall_aeb

    move-object v3, v0

    .line 2644
    .end local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v3, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :try_start_ade
    const-string/jumbo v0, "pac_proxy"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ae4
    .catchall {:try_start_ade .. :try_end_ae4} :catchall_ae7

    .line 2647
    move-object/from16 v16, v3

    goto :goto_af2

    .line 2645
    :catchall_ae7
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_aec

    .end local v3    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :catchall_aeb
    move-exception v0

    .line 2646
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_aec
    const-string/jumbo v3, "starting PacProxyService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2648
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_af2
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2651
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 2652
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/SystemServerStub;->getConnectivitylibpath()Ljava/lang/String;

    move-result-object v5

    .line 2651
    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2654
    const-string v0, "StartConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2658
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ConnectivityServiceInitializer"

    const-string v5, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2660
    invoke-virtual {v8}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2661
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2664
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlConnectivityService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2667
    const-string v0, "StartSecurityStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2669
    :try_start_b24
    const-string/jumbo v0, "security_state"

    new-instance v3, Lcom/android/server/SecurityStateManagerService;

    invoke-direct {v3, v6}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2f
    .catchall {:try_start_b24 .. :try_end_b2f} :catchall_b30

    .line 2673
    goto :goto_b37

    .line 2671
    :catchall_b30
    move-exception v0

    .line 2672
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SecurityStateManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2674
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b37
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2676
    if-nez v33, :cond_b5c

    .line 2677
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2679
    :try_start_b41
    invoke-static {v6}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v0
    :try_end_b45
    .catchall {:try_start_b41 .. :try_end_b45} :catchall_b4f

    move-object v3, v0

    .line 2680
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v3, "vpnManager":Lcom/android/server/VpnManagerService;
    :try_start_b46
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b4c
    .catchall {:try_start_b46 .. :try_end_b4c} :catchall_b4d

    .line 2683
    goto :goto_b58

    .line 2681
    :catchall_b4d
    move-exception v0

    goto :goto_b52

    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_b4f
    move-exception v0

    move-object/from16 v3, v29

    .line 2682
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_b52
    const-string/jumbo v5, "starting VPN Manager Service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2684
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b58
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_b65

    .line 2688
    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    :cond_b5c
    const-string v0, "SystemServer"

    const-string v3, "Not starting VpnManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, v29

    .line 2691
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_b65
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2693
    :try_start_b6a
    const-string/jumbo v0, "system_update"

    new-instance v5, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v5, v6}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b75
    .catchall {:try_start_b6a .. :try_end_b75} :catchall_b76

    .line 2697
    goto :goto_b7d

    .line 2695
    :catchall_b76
    move-exception v0

    .line 2696
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting SystemUpdateManagerService"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2698
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b7d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2700
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2702
    :try_start_b85
    const-string/jumbo v0, "updatelock"

    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b90
    .catchall {:try_start_b85 .. :try_end_b90} :catchall_b91

    .line 2706
    goto :goto_b98

    .line 2704
    :catchall_b91
    move-exception v0

    .line 2705
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting UpdateLockService"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2707
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b98
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2710
    const-string v0, "StartBitmapOffloadService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2711
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/bitmapoffload/BitmapOffloadService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2712
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2714
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/service/notification/Flags;->enableDndSync()Z

    move-result v0

    if-eqz v0, :cond_bbf

    .line 2715
    const-string v0, "StartCtxModeManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2716
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/modes/ContextualModeManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2717
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2720
    :cond_bbf
    const-string v0, "StartNotificationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2721
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2722
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2723
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2724
    const-string/jumbo v0, "notification"

    .line 2725
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2724
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v5

    .line 2726
    .end local v37    # "notification":Landroid/app/INotificationManager;
    .local v5, "notification":Landroid/app/INotificationManager;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2728
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2729
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v21, v3

    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v21, "vpnManager":Lcom/android/server/VpnManagerService;
    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2730
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2732
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2734
    :try_start_bf5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_bfc
    .catchall {:try_start_bf5 .. :try_end_bfc} :catchall_bfd

    .line 2737
    goto :goto_c04

    .line 2735
    :catchall_bfd
    move-exception v0

    .line 2736
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting TimeDetectorService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2738
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c04
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2740
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2741
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2742
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2744
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2746
    :try_start_c1b
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_c20
    .catchall {:try_start_c1b .. :try_end_c20} :catchall_c2d

    move-object v3, v0

    .line 2747
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v3, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_c21
    const-string v0, "country_detector"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c26
    .catchall {:try_start_c21 .. :try_end_c26} :catchall_c29

    .line 2750
    move-object/from16 v35, v3

    goto :goto_c34

    .line 2748
    :catchall_c29
    move-exception v0

    move-object/from16 v35, v3

    goto :goto_c2e

    .end local v3    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_c2d
    move-exception v0

    .line 2749
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_c2e
    const-string/jumbo v3, "starting Country Detector"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2751
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c34
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2753
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2755
    :try_start_c3c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c43
    .catchall {:try_start_c3c .. :try_end_c43} :catchall_c44

    .line 2758
    goto :goto_c4b

    .line 2756
    :catchall_c44
    move-exception v0

    .line 2757
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting TimeZoneDetectorService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2759
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c4b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2761
    const-string v0, "StartAltitudeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2763
    :try_start_c53
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c5a
    .catchall {:try_start_c53 .. :try_end_c5a} :catchall_c5b

    .line 2766
    goto :goto_c62

    .line 2764
    :catchall_c5b
    move-exception v0

    .line 2765
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting AltitudeService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2767
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c62
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2769
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2771
    :try_start_c6a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c71
    .catchall {:try_start_c6a .. :try_end_c71} :catchall_c72

    .line 2774
    goto :goto_c79

    .line 2772
    :catchall_c72
    move-exception v0

    .line 2773
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting LocationTimeZoneManagerService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2775
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c79
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2777
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110193

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ca0

    .line 2778
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2780
    :try_start_c8e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c95
    .catchall {:try_start_c8e .. :try_end_c95} :catchall_c96

    .line 2783
    goto :goto_c9d

    .line 2781
    :catchall_c96
    move-exception v0

    .line 2782
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting GnssTimeUpdateService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2784
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c9d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2787
    :cond_ca0
    if-nez v33, :cond_cb9

    .line 2788
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2790
    :try_start_ca7
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_cae
    .catchall {:try_start_ca7 .. :try_end_cae} :catchall_caf

    .line 2793
    goto :goto_cb6

    .line 2791
    :catchall_caf
    move-exception v0

    .line 2792
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Search Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2794
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_cb6
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2797
    :cond_cb9
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x11101bb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_cd6

    .line 2798
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2799
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2800
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_cdd

    .line 2802
    :cond_cd6
    const-string v0, "SystemServer"

    const-string v3, "Wallpaper service disabled by config"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2805
    :goto_cdd
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->enableThemeService()Z

    move-result v0

    if-eqz v0, :cond_cfa

    .line 2806
    if-eqz v33, :cond_ceb

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->enableWearThemeService()Z

    move-result v0

    if-eqz v0, :cond_cfa

    .line 2807
    :cond_ceb
    const-string v0, "StartThemeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2808
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/theming/ThemeManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2809
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2814
    :cond_cfa
    const v0, 0x10402f6

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_d12

    .line 2816
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2817
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2818
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2821
    :cond_d12
    const-string v0, "StartAudioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2822
    if-nez v23, :cond_d25

    .line 2823
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v29, v5

    move-object/from16 v34, v8

    goto :goto_d6f

    .line 2825
    :cond_d25
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2826
    const v3, 0x1040300

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2828
    .local v3, "className":Ljava/lang/String;
    :try_start_d30
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_d32
    .catchall {:try_start_d30 .. :try_end_d32} :catchall_d53

    move-object/from16 v29, v5

    .end local v5    # "notification":Landroid/app/INotificationManager;
    .local v29, "notification":Landroid/app/INotificationManager;
    :try_start_d34
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5
    :try_end_d3d
    .catchall {:try_start_d34 .. :try_end_d3d} :catchall_d4f

    move-object/from16 v34, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_d3f
    const-string v8, "$Lifecycle"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_d4c
    .catchall {:try_start_d3f .. :try_end_d4c} :catchall_d4d

    .line 2831
    goto :goto_d6f

    .line 2829
    :catchall_d4d
    move-exception v0

    goto :goto_d58

    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_d4f
    move-exception v0

    move-object/from16 v34, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto :goto_d58

    .end local v29    # "notification":Landroid/app/INotificationManager;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v5    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_d53
    move-exception v0

    move-object/from16 v29, v5

    move-object/from16 v34, v8

    .line 2830
    .end local v5    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v29    # "notification":Landroid/app/INotificationManager;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_d58
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2833
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "className":Ljava/lang/String;
    :goto_d6f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2835
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2836
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2837
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2839
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.broadcastradio"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d9a

    .line 2840
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2841
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2842
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2845
    :cond_d9a
    if-nez v24, :cond_dab

    .line 2846
    const-string v0, "StartDockObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2847
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2848
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2851
    :cond_dab
    if-eqz v33, :cond_dc4

    .line 2852
    const-string v0, "StartThermalObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2856
    :try_start_db2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_db9
    .catchall {:try_start_db2 .. :try_end_db9} :catchall_dba

    .line 2859
    goto :goto_dc1

    .line 2857
    :catchall_dba
    move-exception v0

    .line 2858
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartThermalObserver"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2861
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_dc1
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2864
    :cond_dc4
    if-nez v33, :cond_dde

    .line 2865
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2868
    :try_start_dcb
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v6, v4}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_dd3
    .catchall {:try_start_dcb .. :try_end_dd3} :catchall_dd4

    .line 2872
    goto :goto_ddb

    .line 2870
    :catchall_dd4
    move-exception v0

    .line 2871
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting WiredAccessoryManager"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2873
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ddb
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2876
    :cond_dde
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.midi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_df7

    .line 2878
    const-string v0, "StartMidiManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2879
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/midi/MidiService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2880
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2884
    :cond_df7
    const-string v0, "StartAdbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2886
    :try_start_dfc
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/adb/AdbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_e03
    .catchall {:try_start_dfc .. :try_end_e03} :catchall_e04

    .line 2889
    goto :goto_e0c

    .line 2887
    :catchall_e04
    move-exception v0

    .line 2888
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failure starting AdbService"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2890
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e0c
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2892
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e27

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.accessory"

    .line 2893
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e27

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_e36

    .line 2897
    :cond_e27
    const-string v0, "StartUsbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2898
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2899
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2902
    :cond_e36
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/serial/flags/Flags;->enableWiredSerialApi()Z

    move-result v0

    if-eqz v0, :cond_e4c

    .line 2903
    const-string v0, "StartSerialManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2904
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/serial/SerialManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2905
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_e5d

    .line 2907
    :cond_e4c
    if-nez v33, :cond_e5d

    .line 2908
    const-string v0, "StartSerialService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2909
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SerialService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2910
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2914
    :cond_e5d
    :goto_e5d
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2916
    :try_start_e62
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 2917
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e6e
    .catchall {:try_start_e62 .. :try_end_e6e} :catchall_e6f

    .line 2921
    goto :goto_e77

    .line 2919
    :catchall_e6f
    move-exception v0

    .line 2920
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2922
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e77
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2924
    if-nez v33, :cond_e8b

    .line 2925
    const-string v0, "StartTwilightService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2926
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2927
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2930
    :cond_e8b
    const-string v0, "StartColorDisplay"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2931
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2932
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2935
    const-string v0, "StartJobScheduler"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2936
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2937
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2939
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2940
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2941
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2943
    const-string v0, "StartTrustManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2944
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2945
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2948
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lcom/android/server/SystemServerStub;->addExtraServices(Landroid/content/Context;Z)V

    .line 2951
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.backup"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee8

    .line 2952
    const-string v0, "StartBackupManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2953
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2954
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2957
    :cond_ee8
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.app_widgets"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_eff

    .line 2958
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111017e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f0e

    .line 2959
    :cond_eff
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2960
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appwidget/AppWidgetService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2961
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2964
    :cond_f0e
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_f27

    .line 2965
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2966
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2967
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2969
    :cond_f27
    const-string v0, "StartSensorNotification"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2970
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2971
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2973
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.context_hub"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f4f

    .line 2974
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2975
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2976
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2979
    :cond_f4f
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2981
    :try_start_f54
    const-string v0, "diskstats"

    new-instance v3, Lcom/android/server/DiskStatsService;

    invoke-direct {v3, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f5e
    .catchall {:try_start_f54 .. :try_end_f5e} :catchall_f5f

    .line 2984
    goto :goto_f66

    .line 2982
    :catchall_f5f
    move-exception v0

    .line 2983
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting DiskStats Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2985
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f66
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2987
    const-string v0, "RuntimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2989
    :try_start_f6e
    const-string/jumbo v0, "runtime"

    new-instance v3, Lcom/android/server/RuntimeService;

    invoke-direct {v3, v6}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f79
    .catchall {:try_start_f6e .. :try_end_f79} :catchall_f7a

    .line 2992
    goto :goto_f81

    .line 2990
    :catchall_f7a
    move-exception v0

    .line 2991
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting RuntimeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2993
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f81
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2994
    if-nez v19, :cond_fa7

    .line 2995
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2997
    :try_start_f8b
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v0, v6}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_f90
    .catchall {:try_start_f8b .. :try_end_f90} :catchall_f9a

    move-object v3, v0

    .line 2998
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v3, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :try_start_f91
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f97
    .catchall {:try_start_f91 .. :try_end_f97} :catchall_f98

    .line 3001
    goto :goto_fa3

    .line 2999
    :catchall_f98
    move-exception v0

    goto :goto_f9d

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :catchall_f9a
    move-exception v0

    move-object/from16 v3, v36

    .line 3000
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :goto_f9d
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3002
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_fa3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_fa9

    .line 2994
    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :cond_fa7
    move-object/from16 v3, v36

    .line 3005
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :goto_fa9
    const-string v0, "CertBlocklister"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3007
    :try_start_fae
    new-instance v0, Lcom/android/server/CertBlocklister;

    invoke-direct {v0, v6}, Lcom/android/server/CertBlocklister;-><init>(Landroid/content/Context;)V
    :try_end_fb3
    .catchall {:try_start_fae .. :try_end_fb3} :catchall_fb4

    .line 3010
    goto :goto_fbb

    .line 3008
    :catchall_fb4
    move-exception v0

    .line 3009
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting CertBlocklister"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3011
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_fbb
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3015
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3016
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3017
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3020
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3021
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3022
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3025
    const-string v0, "StartDreamManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3026
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3027
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3029
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3030
    const-string/jumbo v0, "graphicsstats"

    new-instance v5, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v5, v6}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3032
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3034
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x11101a2

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_101b

    .line 3036
    const-string v0, "StartPersonalContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3037
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/personalcontext/PersonalContextManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3038
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3041
    :cond_101b
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_1031

    .line 3042
    const-string v0, "AddCoverageService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3043
    const-string v0, "coverage"

    new-instance v5, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v5}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3044
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3047
    :cond_1031
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_104a

    .line 3048
    const-string v0, "StartPrintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3049
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3050
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3053
    :cond_104a
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3054
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3055
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3057
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->enableTalismanService()Z

    move-result v0

    if-eqz v0, :cond_106e

    .line 3058
    const-string v0, "StartTrustTokenManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3059
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/security/trusttoken/TrustTokenManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3060
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3063
    :cond_106e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.companion_device_setup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1087

    .line 3064
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3065
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3066
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3069
    :cond_1087
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->taskContinuity()Z

    move-result v0

    if-eqz v0, :cond_109c

    .line 3070
    const-string v0, "StartTaskContinuityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3071
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/companion/datatransfer/continuity/TaskContinuityManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3072
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3075
    :cond_109c
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x11101b9

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_10b8

    .line 3076
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3077
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3078
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3081
    :cond_10b8
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3082
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3083
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3085
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3086
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3087
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3089
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10ef

    .line 3090
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3091
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3092
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3095
    :cond_10ef
    if-nez v24, :cond_10fb

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1119

    .line 3096
    :cond_10fb
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3097
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3098
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3100
    const-string v0, "StartTvInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3101
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3102
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3105
    :cond_1119
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.tv.tuner"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1132

    .line 3106
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3107
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3108
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3111
    :cond_1132
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v0

    if-eqz v0, :cond_1149

    if-eqz v24, :cond_1149

    .line 3112
    const-string v0, "StartMediaQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3113
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3114
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3117
    :cond_1149
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.picture_in_picture"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1162

    .line 3118
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3119
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3120
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3123
    :cond_1162
    if-eqz v24, :cond_1173

    .line 3124
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3125
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3126
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3129
    :cond_1173
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3131
    :try_start_1178
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_117d
    .catchall {:try_start_1178 .. :try_end_117d} :catchall_118b

    move-object v5, v0

    .line 3132
    .end local v31    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v5, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_117e
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1184
    .catchall {:try_start_117e .. :try_end_1184} :catchall_1187

    .line 3135
    move-object/from16 v31, v5

    goto :goto_1192

    .line 3133
    :catchall_1187
    move-exception v0

    move-object/from16 v31, v5

    goto :goto_118c

    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v31    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_118b
    move-exception v0

    .line 3134
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_118c
    const-string/jumbo v5, "starting MediaRouterService"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3136
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1192
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3138
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.biometrics.face"

    .line 3139
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 3140
    .local v5, "hasFeatureFace":Z
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.biometrics.iris"

    .line 3141
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 3142
    .local v8, "hasFeatureIris":Z
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v36, v3

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const-string v3, "android.hardware.fingerprint"

    .line 3143
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 3145
    .local v3, "hasFeatureFingerprint":Z
    if-eqz v5, :cond_11c6

    .line 3146
    const-string v0, "StartFaceSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3147
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v37, v3

    .end local v3    # "hasFeatureFingerprint":Z
    .local v37, "hasFeatureFingerprint":Z
    const-class v3, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3148
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3149
    .local v0, "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_11c8

    .line 3145
    .end local v0    # "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    .end local v37    # "hasFeatureFingerprint":Z
    .restart local v3    # "hasFeatureFingerprint":Z
    :cond_11c6
    move/from16 v37, v3

    .line 3152
    .end local v3    # "hasFeatureFingerprint":Z
    .restart local v37    # "hasFeatureFingerprint":Z
    :goto_11c8
    if-eqz v8, :cond_11d9

    .line 3153
    const-string v0, "StartIrisSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3154
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3155
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3158
    :cond_11d9
    if-eqz v37, :cond_11ed

    .line 3159
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3160
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3161
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3162
    .local v0, "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3166
    .end local v0    # "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    :cond_11ed
    const-string v0, "StartBiometricService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3167
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3168
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3170
    const-string v0, "StartAuthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3171
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3172
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3174
    if-nez v33, :cond_125f

    if-nez v24, :cond_125f

    if-nez v25, :cond_125f

    .line 3175
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureLockdown()Z

    move-result v0

    if-eqz v0, :cond_1226

    .line 3176
    const-string v0, "StartSecureLockDeviceService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3177
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3178
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3180
    :cond_1226
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/hardware/biometrics/Flags;->identityCheckWatch()Z

    move-result v0

    if-eqz v0, :cond_123b

    .line 3181
    const-string v0, "StartWatchRangingService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3182
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/WatchRangingService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3183
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3185
    :cond_123b
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/companion/Flags;->supportAiAgent()Z

    move-result v0

    if-eqz v0, :cond_1250

    .line 3186
    const-string v0, "AgentAuthService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3187
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/agent/AgentAuthService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3188
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3191
    :cond_1250
    const-string v0, "StartAuthenticationPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3192
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3193
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3196
    :cond_125f
    if-nez v33, :cond_1273

    .line 3197
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3199
    :try_start_1266
    invoke-static {v6}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_1269
    .catchall {:try_start_1266 .. :try_end_1269} :catchall_126a

    .line 3202
    goto :goto_1270

    .line 3200
    :catchall_126a
    move-exception v0

    .line 3201
    .local v0, "e":Ljava/lang/Throwable;
    const-string v3, "StartPruneInstantAppsJobService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3203
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1270
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3206
    :cond_1273
    const-string v0, "StartSelinuxAuditLogsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3208
    :try_start_1278
    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_127b
    .catchall {:try_start_1278 .. :try_end_127b} :catchall_127c

    .line 3211
    goto :goto_1283

    .line 3209
    :catchall_127c
    move-exception v0

    .line 3210
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SelinuxAuditLogsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3212
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1283
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3215
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3216
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3217
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3219
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3220
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3221
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3223
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3224
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3225
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3227
    const-string v0, "StartPeopleService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3228
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3229
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3231
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3232
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3233
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3235
    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12ea

    .line 3237
    const-string v0, "StartBackgroundInstallControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3238
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3239
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3243
    .end local v5    # "hasFeatureFace":Z
    .end local v8    # "hasFeatureIris":Z
    .end local v12    # "hasPdb":Z
    .end local v37    # "hasFeatureFingerprint":Z
    :cond_12ea
    move-object/from16 v37, v29

    move-object/from16 v29, v21

    move-object/from16 v21, v39

    move-object/from16 v39, v30

    move-object/from16 v30, v37

    move-object/from16 v37, v16

    move-object/from16 v40, v31

    move-object/from16 v31, v15

    .end local v15    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v21, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v29, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v30, "notification":Landroid/app/INotificationManager;
    .local v31, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v37, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v39, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v40, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_12fa
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3244
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3245
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3247
    if-eqz v33, :cond_1417

    .line 3249
    const-string v0, "StartWearPowerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3253
    :try_start_1310
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1317
    .catchall {:try_start_1310 .. :try_end_1317} :catchall_1318

    .line 3256
    goto :goto_131f

    .line 3254
    :catchall_1318
    move-exception v0

    .line 3255
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearPowerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3258
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_131f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3260
    const-string v0, "StartHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3264
    :try_start_1327
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_132e
    .catchall {:try_start_1327 .. :try_end_132e} :catchall_132f

    .line 3267
    goto :goto_1336

    .line 3265
    :catchall_132f
    move-exception v0

    .line 3266
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartHealthService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3269
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1336
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3271
    const-string v0, "StartSystemStateDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3275
    :try_start_133e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1345
    .catchall {:try_start_133e .. :try_end_1345} :catchall_1346

    .line 3278
    goto :goto_134d

    .line 3276
    :catchall_1346
    move-exception v0

    .line 3277
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartSystemStateDisplayService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3280
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_134d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3284
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3286
    :try_start_1355
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_135c
    .catchall {:try_start_1355 .. :try_end_135c} :catchall_135d

    .line 3289
    goto :goto_1364

    .line 3287
    :catchall_135d
    move-exception v0

    .line 3288
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearConnectivityService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3291
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1364
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3293
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3297
    :try_start_136c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1373
    .catchall {:try_start_136c .. :try_end_1373} :catchall_1374

    .line 3300
    goto :goto_137b

    .line 3298
    :catchall_1374
    move-exception v0

    .line 3299
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearDisplayService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3302
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_137b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3304
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1399

    .line 3305
    const-string v0, "StartWearDebugService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3309
    :try_start_1387
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.debug.WearDebugService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_138e
    .catchall {:try_start_1387 .. :try_end_138e} :catchall_138f

    .line 3312
    goto :goto_1396

    .line 3310
    :catchall_138f
    move-exception v0

    .line 3311
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearDebugService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3314
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1396
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3317
    :cond_1399
    const-string v0, "StartWearTimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3321
    :try_start_139e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13a5
    .catchall {:try_start_139e .. :try_end_13a5} :catchall_13a6

    .line 3324
    goto :goto_13ad

    .line 3322
    :catchall_13a6
    move-exception v0

    .line 3323
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearTimeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3326
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13ad
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3328
    const-string v0, "StartWearSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3332
    :try_start_13b5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.settings.WearSettingsService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13bc
    .catchall {:try_start_13b5 .. :try_end_13bc} :catchall_13bd

    .line 3335
    goto :goto_13c4

    .line 3333
    :catchall_13bd
    move-exception v0

    .line 3334
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearSettingsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3337
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13c4
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3339
    const-string v0, "StartWearModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3343
    :try_start_13cc
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.modes.ModeManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13d3
    .catchall {:try_start_13cc .. :try_end_13d3} :catchall_13d4

    .line 3346
    goto :goto_13db

    .line 3344
    :catchall_13d4
    move-exception v0

    .line 3345
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearModeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3348
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13db
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3350
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->wearGestureApi()Z

    move-result v0

    if-eqz v0, :cond_13fc

    const-string v0, "config.enable_gesture_api"

    .line 3351
    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_13fc

    .line 3352
    const-string v0, "StartWearGestureService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3353
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.gesture.WearGestureService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3354
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3357
    :cond_13fc
    invoke-static {}, Lcom/android/server/policy/Flags;->wearKeyGestureHandling()Z

    move-result v0

    if-eqz v0, :cond_1417

    .line 3358
    const-string v0, "StartWearKeyGestureService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3360
    :try_start_1407
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.input.WearInputService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_140e
    .catchall {:try_start_1407 .. :try_end_140e} :catchall_1412

    .line 3362
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3363
    goto :goto_1417

    .line 3362
    :catchall_1412
    move-exception v0

    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3363
    throw v0

    .line 3367
    :cond_1417
    :goto_1417
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.slices_disabled"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1430

    .line 3368
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3369
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3370
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3373
    :cond_1430
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1445

    .line 3374
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3375
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3376
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3380
    :cond_1445
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3381
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v5, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3383
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3386
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3387
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v5, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3389
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3392
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3393
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3394
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3397
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3398
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3399
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3403
    const-string v0, "BinderStatsConsumerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3404
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/binder/BinderStatsConsumerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3405
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3409
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3410
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3411
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3414
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3415
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3416
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3419
    if-eqz v33, :cond_14cd

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/server/Flags;->removeAdServicesManagerServiceFromWear()Z

    move-result v0

    if-eqz v0, :cond_14cd

    const-string/jumbo v0, "ro.system_settings.service.adservices_enabled"

    .line 3420
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14c5

    goto :goto_14cd

    .line 3429
    :cond_14c5
    const-string v0, "SystemServer"

    const-string v3, "Not starting AdServicesManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14dd

    .line 3422
    :cond_14cd
    :goto_14cd
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3424
    :try_start_14d2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_14d9
    .catchall {:try_start_14d2 .. :try_end_14d9} :catchall_1a8c

    .line 3426
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3427
    nop

    .line 3433
    :goto_14dd
    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_14f6

    .line 3434
    const-string v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3435
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3436
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3440
    :cond_14f6
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.aiseal"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_151b

    .line 3441
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/aiseal/Flags;->aisealHostApis()Z

    move-result v0

    if-eqz v0, :cond_151b

    .line 3442
    const-string v0, "StartAiSealSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3444
    :try_start_150b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/aiseal/AiSealSystemService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_1512
    .catchall {:try_start_150b .. :try_end_1512} :catchall_1516

    .line 3446
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3447
    goto :goto_151b

    .line 3446
    :catchall_1516
    move-exception v0

    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3447
    throw v0

    .line 3451
    :cond_151b
    :goto_151b
    const-string v0, "StartProfilingCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3452
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v5, "/apex/com.android.profiling/javalib/service-profiling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3454
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3457
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/profiling/anomaly/flags/Flags;->anomalyDetectorCoreC()Z

    move-result v0

    if-eqz v0, :cond_1562

    .line 3462
    const-string v0, "StartAnomalyDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3464
    :try_start_1537
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.os.profiling.anomaly.AnomalyDetectorService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_153e
    .catchall {:try_start_1537 .. :try_end_153e} :catchall_153f

    .line 3467
    goto :goto_1547

    .line 3465
    :catchall_153f
    move-exception v0

    .line 3466
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failed to start AnomalyDetectorService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3468
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1547
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3470
    const-string v0, "StartSignalCollectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3472
    :try_start_154f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.signalcollector.SignalCollectorService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1556
    .catchall {:try_start_154f .. :try_end_1556} :catchall_1557

    .line 3475
    goto :goto_155f

    .line 3473
    :catchall_1557
    move-exception v0

    .line 3474
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failed to start SignalCollectorService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3476
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_155f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3480
    :cond_1562
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->uprobestatsBridgeService()Z

    move-result v0

    if-eqz v0, :cond_1581

    .line 3481
    const-string v0, "StartUprobeStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3486
    :try_start_156d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.uprobestats.UprobeStatsBridgeService"

    const-string v5, "/apex/com.android.uprobestats/javalib/service-uprobestats-bridge.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1576
    .catchall {:try_start_156d .. :try_end_1576} :catchall_1577

    .line 3490
    goto :goto_157d

    .line 3488
    :catchall_1577
    move-exception v0

    .line 3489
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "StartUprobeStatsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3491
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_157d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_158c

    .line 3492
    :cond_1581
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_158c

    .line 3493
    const-string v0, "SystemServer"

    const-string v3, "UprobeStatsService disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3496
    :cond_158c
    :goto_158c
    if-eqz v7, :cond_1593

    .line 3497
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 3500
    :cond_1593
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15b3

    .line 3502
    const-string v0, "StartMmsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3503
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/MmsServiceBroker;

    .line 3504
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v41, v14

    goto :goto_15b5

    .line 3500
    :cond_15b3
    move-object/from16 v41, v14

    .line 3507
    .end local v14    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v41, "mmsService":Lcom/android/server/MmsServiceBroker;
    :goto_15b5
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.autofill"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15ce

    .line 3508
    const-string v0, "StartAutoFillService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3509
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3510
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3513
    :cond_15ce
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.credentials"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_15fa

    .line 3514
    const-string v0, "credential_manager"

    const-string v3, "enable_credential_manager"

    .line 3515
    const/4 v12, 0x1

    invoke-static {v0, v3, v12}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3517
    .local v0, "credentialManagerEnabled":Z
    if-eqz v0, :cond_15f3

    .line 3518
    const-string v3, "StartCredentialManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3519
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3520
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_15fa

    .line 3522
    :cond_15f3
    const-string v3, "SystemServer"

    const-string v5, "CredentialManager disabled."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3527
    .end local v0    # "credentialManagerEnabled":Z
    :cond_15fa
    :goto_15fa
    const v0, 0x10402f3

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1613

    .line 3528
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3529
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3530
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_161a

    .line 3532
    :cond_1613
    const-string v0, "SystemServer"

    const-string v3, "TranslationService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3536
    :goto_161a
    const-string v0, "StartClipboardService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3537
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3538
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3540
    if-nez v24, :cond_163c

    if-nez v33, :cond_163c

    .line 3542
    const-string v0, "StartSelectionToolbarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3543
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/selectiontoolbar/SelectionToolbarManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3544
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3547
    :cond_163c
    const-string v0, "AppServiceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3548
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3549
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3553
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkOtherServices()V

    .line 3556
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3557
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3558
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3560
    const-string v0, "StartDynamicInstrumentationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3561
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3562
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3564
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/contentrestriction/flags/Flags;->contentRestrictionApi()Z

    move-result v0

    if-eqz v0, :cond_1684

    .line 3565
    const-string v0, "StartContentRestrictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3566
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentrestriction/ContentRestrictionService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3567
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3572
    :cond_1684
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3573
    if-eqz v39, :cond_1696

    .line 3575
    :try_start_168b
    invoke-interface/range {v39 .. v39}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_168e
    .catchall {:try_start_168b .. :try_end_168e} :catchall_168f

    .line 3578
    goto :goto_1696

    .line 3576
    :catchall_168f
    move-exception v0

    .line 3577
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Lock Settings Service ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3580
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1696
    :goto_1696
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3583
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3584
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3585
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3587
    nop

    .line 3588
    invoke-virtual {v13}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->getMultiuserManagedDeviceProvisioningState()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_16b1

    goto :goto_16b2

    :cond_16b1
    const/4 v3, 0x0

    .line 3593
    .local v3, "requiresAdmin":Z
    :goto_16b2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mUserManagerService:Lcom/android/server/pm/UserManagerService;

    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 3594
    invoke-static {v0, v5, v8, v3, v12}, Lcom/android/server/pm/HsumBootUserInitializer;->createInstance(Lcom/android/server/pm/UserManagerService;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;ZLandroid/content/Context;)Lcom/android/server/pm/HsumBootUserInitializer;

    move-result-object v12

    .line 3600
    .local v12, "hsumBootUserInitializer":Lcom/android/server/pm/HsumBootUserInitializer;
    if-eqz v12, :cond_16de

    .line 3601
    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3602
    invoke-virtual {v12, v2}, Lcom/android/server/pm/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3603
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3604
    invoke-static {}, Lcom/android/server/pm/HsumBootUserInitializer;->getDumpable()Landroid/util/Dumpable;

    move-result-object v0

    .line 3605
    .local v0, "dumpable":Landroid/util/Dumpable;
    if-eqz v0, :cond_16d7

    .line 3606
    iget-object v5, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v5, v0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    goto :goto_16de

    .line 3609
    :cond_16d7
    const-string v5, "SystemServer"

    const-string v8, "HsumBootUserInitializer doesn\'t have a dumpable"

    invoke-static {v5, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3613
    .end local v0    # "dumpable":Landroid/util/Dumpable;
    :cond_16de
    :goto_16de
    const/4 v0, 0x0

    .line 3614
    .local v0, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v5

    if-eqz v5, :cond_16fb

    .line 3615
    const-string v5, "CommunalProfileInitializer.init"

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3616
    new-instance v5, Lcom/android/server/CommunalProfileInitializer;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v5, v8}, Lcom/android/server/CommunalProfileInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    move-object v0, v5

    .line 3618
    invoke-virtual {v0, v2}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3619
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v42, v0

    goto :goto_1708

    .line 3621
    :cond_16fb
    const-string v5, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    invoke-virtual {v2, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3622
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 3623
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v42, v0

    .line 3626
    .end local v0    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .local v42, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    :goto_1708
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3627
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3628
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3630
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3632
    :try_start_171c
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_171f
    .catchall {:try_start_171c .. :try_end_171f} :catchall_1720

    .line 3635
    goto :goto_1727

    .line 3633
    :catchall_1720
    move-exception v0

    .line 3634
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "making Window Manager Service ready"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3636
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1727
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3638
    const-string v0, "RegisterLogMteState"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3640
    :try_start_172f
    invoke-static {v6}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_1732
    .catchall {:try_start_172f .. :try_end_1732} :catchall_1733

    .line 3643
    goto :goto_1739

    .line 3641
    :catchall_1733
    move-exception v0

    .line 3642
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v5, "RegisterLogMteState"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3644
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1739
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3647
    const-class v5, Lcom/android/server/SystemService;

    monitor-enter v5

    .line 3648
    :try_start_173f
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_1741
    .catchall {:try_start_173f .. :try_end_1741} :catchall_1a78

    if-eqz v0, :cond_1760

    .line 3649
    :try_start_1743
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v8, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 3650
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_174d
    .catchall {:try_start_1743 .. :try_end_174d} :catchall_174e

    goto :goto_1760

    .line 3652
    :catchall_174e
    move-exception v0

    move-object/from16 v44, v4

    move-wide/from16 v46, v10

    move/from16 v10, v25

    move/from16 v8, v33

    move/from16 v33, v3

    move-object/from16 v25, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1a88

    :cond_1760
    :goto_1760
    :try_start_1760
    monitor-exit v5
    :try_end_1761
    .catchall {:try_start_1760 .. :try_end_1761} :catchall_1a78

    .line 3654
    if-eqz v7, :cond_1768

    .line 3655
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 3661
    :cond_1768
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v5

    .line 3662
    .local v5, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v8, v0

    .line 3663
    .local v8, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3664
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5, v8}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3667
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v43

    .line 3668
    .local v43, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v43 .. v43}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_178e

    .line 3669
    invoke-virtual/range {v43 .. v43}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 3673
    :cond_178e
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3674
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v14, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3675
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3677
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3678
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 3679
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3685
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/stability/flags/Flags;->enableHyperRescueparty()Z

    move-result v0

    if-eqz v0, :cond_17c0

    .line 3686
    const-string v0, "StartCrashRecoveryModuleXM"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3687
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->addCrashRecoveryModuleXM()V

    .line 3688
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_17cf

    .line 3690
    :cond_17c0
    const-string v0, "StartCrashRecoveryModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3691
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v14, "com.android.server.crashrecovery.CrashRecoveryModule$Lifecycle"

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3692
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3697
    :goto_17cf
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/os/microsoft/flags/Flags;->ltwEnabled()Z

    move-result v0

    if-eqz v0, :cond_17f0

    .line 3698
    const-string v0, "StartCrossDeviceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3699
    const-string v0, "cross_device_service"

    new-instance v14, Lcom/android/server/wm/CrossDeviceService;

    iget-object v15, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    move/from16 v16, v3

    .end local v3    # "requiresAdmin":Z
    .local v16, "requiresAdmin":Z
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v14, v15, v3}, Lcom/android/server/wm/CrossDeviceService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3702
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_17f2

    .line 3697
    .end local v16    # "requiresAdmin":Z
    .restart local v3    # "requiresAdmin":Z
    :cond_17f0
    move/from16 v16, v3

    .line 3706
    .end local v3    # "requiresAdmin":Z
    .restart local v16    # "requiresAdmin":Z
    :goto_17f2
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3709
    :try_start_17f7
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_17fc
    .catchall {:try_start_17f7 .. :try_end_17fc} :catchall_17fd

    .line 3712
    goto :goto_1804

    .line 3710
    :catchall_17fd
    move-exception v0

    .line 3711
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Display Manager Service ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3713
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1804
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3715
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3718
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3719
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1070064

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 3721
    .local v3, "classes":[Ljava/lang/String;
    array-length v14, v3

    const/4 v15, 0x0

    :goto_1820
    if-ge v15, v14, :cond_186c

    move-object/from16 v17, v3

    .end local v3    # "classes":[Ljava/lang/String;
    .local v17, "classes":[Ljava/lang/String;
    aget-object v3, v17, v15

    .line 3722
    .local v3, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v44, v4

    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v44, "inputManager":Lcom/android/server/input/InputManagerService;
    const-string v4, "StartDeviceSpecificServices "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3724
    :try_start_183e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1843
    .catchall {:try_start_183e .. :try_end_1843} :catchall_1846

    .line 3727
    move-object/from16 v45, v5

    goto :goto_1860

    .line 3725
    :catchall_1846
    move-exception v0

    .line 3726
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v45, v5

    .end local v5    # "config":Landroid/content/res/Configuration;
    .local v45, "config":Landroid/content/res/Configuration;
    const-string/jumbo v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3728
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1860
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3721
    .end local v3    # "className":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v17

    move-object/from16 v4, v44

    move-object/from16 v5, v45

    goto :goto_1820

    .line 3730
    .end local v17    # "classes":[Ljava/lang/String;
    .end local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .local v3, "classes":[Ljava/lang/String;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "config":Landroid/content/res/Configuration;
    :cond_186c
    move-object/from16 v17, v3

    move-object/from16 v44, v4

    move-object/from16 v45, v5

    .end local v3    # "classes":[Ljava/lang/String;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "classes":[Ljava/lang/String;
    .restart local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v45    # "config":Landroid/content/res/Configuration;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3732
    if-nez v33, :cond_1887

    .line 3733
    const-string v0, "GameManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3734
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3735
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_188e

    .line 3737
    :cond_1887
    const-string v0, "SystemServer"

    const-string v3, "Not starting GameManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    :goto_188e
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18ab

    .line 3741
    const-string v0, "UwbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3742
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.uwb.UwbService"

    const-string v4, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3743
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3746
    :cond_18ab
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingStackEnabled()Z

    move-result v0

    if-eqz v0, :cond_18ec

    .line 3747
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18db

    .line 3748
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_18db

    .line 3750
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingCsEnabled()Z

    move-result v0

    if-eqz v0, :cond_18ec

    .line 3751
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18ec

    .line 3753
    :cond_18db
    const-string v0, "RangingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3754
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ranging.RangingService"

    const-string v4, "/apex/com.android.uwb/javalib/service-ranging.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3756
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3760
    :cond_18ec
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3761
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3762
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3764
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3765
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3766
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3768
    const-string v0, "AppSearchModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3769
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3770
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3772
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1932

    .line 3773
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3774
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3775
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3778
    :cond_1932
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3779
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3780
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3782
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3783
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3784
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3786
    const-string v0, "HealthConnectManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3787
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3788
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3790
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.device_lock"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_197a

    .line 3791
    const-string v0, "DeviceLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3792
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.devicelock.DeviceLockService"

    const-string v4, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3794
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3797
    :cond_197a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    move-result v0

    if-nez v0, :cond_1986

    .line 3798
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/view/flags/Flags;->sensitiveContentAppProtection()Z

    move-result v0

    if-eqz v0, :cond_1995

    .line 3799
    :cond_1986
    const-string v0, "StartSensitiveContentProtectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3800
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3801
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3804
    :cond_1995
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/bettertogether/flags/Flags;->enableD2dConnectivityService()Z

    move-result v0

    if-eqz v0, :cond_19b5

    .line 3805
    const-string v0, "DeviceToDeviceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3810
    :try_start_19a0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.devicetodevice.DeviceToDeviceService"

    const-string v4, "/apex/com.android.bettertogether/javalib/service-device-to-device.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_19a9
    .catchall {:try_start_19a0 .. :try_end_19a9} :catchall_19aa

    .line 3814
    goto :goto_19b2

    .line 3812
    :catchall_19aa
    move-exception v0

    .line 3813
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v4, "Failed to start DeviceToDeviceService"

    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3815
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_19b2
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3819
    :cond_19b5
    invoke-static {}, Lcom/android/server/PayJoyAccessManagerStub;->get()Lcom/android/server/PayJoyAccessManagerStub;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/PayJoyAccessManagerStub;->startService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 3823
    move-object v5, v9

    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v5, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v9, v21

    .line 3824
    .local v9, "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    move-wide v3, v10

    .end local v10    # "bootDexoptStartTime":J
    .local v3, "bootDexoptStartTime":J
    move-object/from16 v10, v34

    .line 3825
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-wide v14, v3

    move-object v4, v13

    .end local v3    # "bootDexoptStartTime":J
    .end local v13    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v4, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v14, "bootDexoptStartTime":J
    move-object/from16 v13, v35

    .line 3826
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-wide/from16 v46, v14

    .end local v14    # "bootDexoptStartTime":J
    .local v46, "bootDexoptStartTime":J
    move-object/from16 v14, v36

    .line 3827
    .local v14, "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    move-object/from16 v22, v44

    .line 3828
    .local v22, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v15, v27

    .line 3829
    .local v15, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move/from16 v3, v16

    .end local v16    # "requiresAdmin":Z
    .local v3, "requiresAdmin":Z
    move-object/from16 v16, v40

    .line 3830
    .local v16, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v11, v17

    .end local v17    # "classes":[Ljava/lang/String;
    .local v11, "classes":[Ljava/lang/String;
    move-object/from16 v17, v41

    .line 3831
    .local v17, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v48, v11

    .end local v11    # "classes":[Ljava/lang/String;
    .local v48, "classes":[Ljava/lang/String;
    move-object/from16 v11, v29

    .line 3832
    .local v11, "vpnManagerF":Lcom/android/server/VpnManagerService;
    move-object/from16 v49, v5

    .line 3833
    .local v49, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    const-string v0, "connectivity"

    .line 3834
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v50, v0

    check-cast v50, Landroid/net/ConnectivityManager;

    .line 3841
    .local v50, "connectivityF":Landroid/net/ConnectivityManager;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v51, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    move/from16 v52, v33

    move/from16 v33, v3

    move/from16 v3, v25

    move-object/from16 v25, v5

    move/from16 v5, v52

    move-object/from16 v52, v48

    move-object/from16 v48, v8

    move-object/from16 v8, v50

    move-object/from16 v50, v52

    move-object/from16 v52, v51

    .local v3, "isAutomotive":Z
    .local v5, "isWatch":Z
    .local v8, "connectivityF":Landroid/net/ConnectivityManager;
    .local v25, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v33, "requiresAdmin":Z
    .local v48, "metrics":Landroid/util/DisplayMetrics;
    .local v50, "classes":[Ljava/lang/String;
    invoke-direct/range {v0 .. v17}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/pm/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v54, v8

    move-object/from16 v53, v11

    move-object/from16 v51, v16

    move v8, v5

    move-object v11, v9

    move-object/from16 v16, v14

    move v9, v7

    move-object v14, v10

    move v10, v3

    move-object v7, v6

    move-object v6, v1

    move-object v1, v0

    move-object/from16 v0, v52

    move-object/from16 v52, v17

    move-object/from16 v17, v15

    move-object v15, v13

    move-object v13, v4

    .end local v3    # "isAutomotive":Z
    .end local v4    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v9, "safeMode":Z
    .local v10, "isAutomotive":Z
    .local v11, "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    .local v13, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v15, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .local v16, "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v17, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .local v51, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .local v52, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .local v53, "vpnManagerF":Lcom/android/server/VpnManagerService;
    .local v54, "connectivityF":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 4115
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v6, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v1, p1

    move-object/from16 v5, v49

    .end local v49    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v5, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {v0 .. v5}, Lcom/sprd/server/SprdSystemServer;->startUniPnPService(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/wm/WindowManagerService;)V

    .line 4122
    move-object v2, v1

    const-string v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4123
    const-class v0, Lcom/android/server/locksettings/LockSettingsInternal;

    .line 4124
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/server/locksettings/LockSettingsInternal;

    .line 4125
    .local v1, "lockSettingsInternal":Lcom/android/server/locksettings/LockSettingsInternal;
    if-eqz v1, :cond_1a45

    .line 4126
    invoke-virtual {v1}, Lcom/android/server/locksettings/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 4128
    :cond_1a45
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4131
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/sprd/server/SprdSystemServer;->startUnisocOtherServices(Lcom/android/server/am/ActivityManagerService;)V

    .line 4133
    const-string v0, "StartSystemUI"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4135
    :try_start_1a56
    invoke-static {v7, v5}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1a59
    .catchall {:try_start_1a56 .. :try_end_1a59} :catchall_1a5a

    .line 4138
    goto :goto_1a61

    .line 4136
    :catchall_1a5a
    move-exception v0

    .line 4137
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting System UI"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4139
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1a61
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4142
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServerStub;->addCameraCoveredManagerService(Landroid/content/Context;)V

    .line 4146
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServerStub;->onOtherServicesStarted(Landroid/content/Context;)V

    .line 4148
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4149
    return-void

    .line 3652
    .end local v1    # "lockSettingsInternal":Lcom/android/server/locksettings/LockSettingsInternal;
    .end local v5    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v8    # "isWatch":Z
    .end local v11    # "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v16    # "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v17    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v22    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v43    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v45    # "config":Landroid/content/res/Configuration;
    .end local v46    # "bootDexoptStartTime":J
    .end local v48    # "metrics":Landroid/util/DisplayMetrics;
    .end local v50    # "classes":[Ljava/lang/String;
    .end local v51    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v52    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v53    # "vpnManagerF":Lcom/android/server/VpnManagerService;
    .end local v54    # "connectivityF":Landroid/net/ConnectivityManager;
    .local v3, "requiresAdmin":Z
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "bootDexoptStartTime":J
    .local v25, "isAutomotive":Z
    .local v33, "isWatch":Z
    :catchall_1a78
    move-exception v0

    move-object/from16 v44, v4

    move-wide/from16 v46, v10

    move/from16 v10, v25

    move/from16 v8, v33

    move/from16 v33, v3

    move-object/from16 v25, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v3    # "requiresAdmin":Z
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .local v7, "context":Landroid/content/Context;
    .restart local v8    # "isWatch":Z
    .local v9, "safeMode":Z
    .local v10, "isAutomotive":Z
    .local v25, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v33, "requiresAdmin":Z
    .restart local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v46    # "bootDexoptStartTime":J
    :goto_1a88
    :try_start_1a88
    monitor-exit v5
    :try_end_1a89
    .catchall {:try_start_1a88 .. :try_end_1a89} :catchall_1a8a

    throw v0

    :catchall_1a8a
    move-exception v0

    goto :goto_1a88

    .line 3426
    .end local v8    # "isWatch":Z
    .end local v12    # "hsumBootUserInitializer":Lcom/android/server/pm/HsumBootUserInitializer;
    .end local v41    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v42    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .end local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v46    # "bootDexoptStartTime":J
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "bootDexoptStartTime":J
    .local v14, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v25, "isAutomotive":Z
    .local v33, "isWatch":Z
    :catchall_1a8c
    move-exception v0

    move-object/from16 v44, v4

    move-wide/from16 v46, v10

    move/from16 v10, v25

    move/from16 v8, v33

    move-object/from16 v25, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v33    # "isWatch":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v8    # "isWatch":Z
    .local v9, "safeMode":Z
    .local v10, "isAutomotive":Z
    .local v25, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v46    # "bootDexoptStartTime":J
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3427
    throw v0

    .line 2344
    .end local v8    # "isWatch":Z
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v37    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v38    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v39    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v40    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v46    # "bootDexoptStartTime":J
    .local v3, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "bootDexoptStartTime":J
    .local v12, "notification":Landroid/app/INotificationManager;
    .local v13, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v15, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v16, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v25, "isAutomotive":Z
    .local v30, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v31, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "isWatch":Z
    :catchall_1a9e
    move-exception v0

    move-object/from16 v36, v3

    move-object/from16 v44, v4

    move-wide/from16 v46, v10

    move-object/from16 v37, v12

    move-object/from16 v35, v13

    move/from16 v10, v25

    move/from16 v8, v33

    move-object/from16 v25, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v12    # "notification":Landroid/app/INotificationManager;
    .end local v13    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v33    # "isWatch":Z
    .local v7, "context":Landroid/content/Context;
    .restart local v8    # "isWatch":Z
    .local v9, "safeMode":Z
    .local v10, "isAutomotive":Z
    .local v25, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v37, "notification":Landroid/app/INotificationManager;
    .restart local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v46    # "bootDexoptStartTime":J
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string v3, "dexopt"

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2345
    throw v0

    .line 2181
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v30    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v31    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v35    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v37    # "notification":Landroid/app/INotificationManager;
    .end local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v46    # "bootDexoptStartTime":J
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v5, "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v25, "isAutomotive":Z
    :catchall_1abc
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v44, v4

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object/from16 v25, v9

    move-object v6, v1

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v11, v44

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .local v25, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_1b67

    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v25, "isAutomotive":Z
    :catchall_1ad6
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v44, v4

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    move-object/from16 v11, v44

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v25    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_1b67

    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v44    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v25    # "isAutomotive":Z
    :catchall_1aee
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v27

    move-object/from16 v13, v28

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v25    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto/16 :goto_1b67

    .end local v28    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v13, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v25    # "isAutomotive":Z
    :catchall_1b02
    move-exception v0

    move-object/from16 v32, v3

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v27

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v25    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto/16 :goto_1b67

    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v32    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v17, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v25    # "isAutomotive":Z
    :catchall_1b14
    move-exception v0

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    move-object/from16 v12, v27

    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v25    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1b67

    .end local v27    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v3, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v25    # "isAutomotive":Z
    :catchall_1b25
    move-exception v0

    move-object/from16 v27, v3

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    move-object/from16 v12, v27

    .end local v3    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v25    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v27    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1b67

    .end local v27    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v25    # "isAutomotive":Z
    :catchall_1b38
    move-exception v0

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v25    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1b67

    .end local v26    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v25    # "isAutomotive":Z
    :catchall_1b47
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move/from16 v10, v25

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v25    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v26    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1b67

    .end local v26    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v3, "isAutomotive":Z
    .restart local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :catchall_1b58
    move-exception v0

    move-object/from16 v26, v4

    move-object/from16 v29, v7

    move-object/from16 v34, v8

    move-object/from16 v36, v10

    move v10, v3

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    .line 2182
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v17    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v26    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v29    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :goto_1b67
    const-string v1, "System"

    const-string v4, "******************************************"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2183
    const-string v1, "System"

    const-string v4, "************ Failure starting core service"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2184
    throw v0
.end method

.method private startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4296
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4297
    const-string v0, "SystemServer"

    const-string v1, "RotationResolverService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4298
    return-void

    .line 4301
    :cond_e
    const-string v0, "StartRotationResolverService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4302
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4303
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4305
    return-void
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4212
    const v0, 0x10402f1

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4213
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4214
    return-void

    .line 4217
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4218
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4219
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4220
    return-void
.end method

.method private startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1349
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1350
    const-string v0, "ReadingSystemConfig"

    .line 1351
    .local v0, "tagSystemConfig":Ljava/lang/String;
    const-string v1, "ReadingSystemConfig"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1352
    new-instance v2, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/util/concurrent/Callable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1354
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 4314
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4315
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4316
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4317
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4319
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 4320
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 4321
    return-void
.end method

.method private startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4224
    const-string v0, "StartTextToSpeechManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4225
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4226
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4227
    return-void
.end method

.method private startUniPnPService(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;

    .line 4326
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/xiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/SystemServer;->UNIPNP_SWITCH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4328
    :try_start_e
    invoke-static {}, Lcom/android/server/unipnp/UnionManagerServiceFactory;->getInstance()Lcom/android/server/unipnp/UnionManagerServiceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/unipnp/UnionManagerServiceFactory;->systemReady(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1c

    .line 4332
    goto :goto_23

    .line 4330
    :catchall_1c
    move-exception v0

    .line 4331
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting UniPNP"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4334
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_23
    :goto_23
    return-void
.end method

.method private startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4308
    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4309
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4310
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4311
    return-void
.end method

.method private updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4200
    const-string v0, "UpdateWatchdogTimeout"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4201
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 4202
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4203
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 868
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Runtime restart: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 869
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Start count: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 870
    const-string v0, "Runtime start-up time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 871
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 872
    const-string v0, "Runtime start-elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 873
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 874
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 863
    const-class v0, Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
