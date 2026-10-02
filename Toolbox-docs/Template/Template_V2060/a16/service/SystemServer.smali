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

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030424

.field private static final DEVICE_LOCK_APEX_PATH:Ljava/lang/String; = "/apex/com.android.devicelock/javalib/service-devicelock.jar"

.field private static final DEVICE_LOCK_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.devicelock.DeviceLockService"

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

.field private static final UWB_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-uwb.jar"

.field private static final UWB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.uwb.UwbService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DEBUG_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.debug.WearDebugService"

.field private static final WEAR_DISPLAYOFFLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.displayoffload.DisplayOffloadService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GESTURE_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.gesture.WearGestureService"

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
.method public static synthetic $r8$lambda$7cX83Tkaa2id8LJOQpvPmygN-PQ(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 18

    invoke-direct/range {p0 .. p17}, Lcom/android/server/SystemServer;->lambda$startOtherServices$7(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKXj3ds6gqFm1f6gBL5oAqAHviY(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
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

    .line 380
    sget v0, Landroid/os/Build;->HW_LOW_MULTIPLIER:I

    mul-int/lit8 v0, v0, 0x64

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/SystemServer;->SLOW_DISPATCH_THRESHOLD_MS:J

    .line 381
    sget v0, Landroid/os/Build;->HW_LOW_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0xc8

    int-to-long v0, v0

    sput-wide v0, Lcom/android/server/SystemServer;->SLOW_DELIVERY_THRESHOLD_MS:J

    .line 385
    new-instance v0, Lcom/android/server/utils/TimingsTraceAndSlog;

    const-string v1, "SystemServer"

    const-wide/32 v2, 0x80000

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>(Ljava/lang/String;J)V

    sput-object v0, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 391
    nop

    .line 392
    const-string/jumbo v0, "ro.unipnp.switch"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->UNIPNP_SWITCH:Ljava/lang/Boolean;

    .line 606
    invoke-static {}, Lcom/mediatek/server/MtkSystemServer;->getInstance()Lcom/mediatek/server/MtkSystemServer;

    move-result-object v0

    sput-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    .line 638
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .line 799
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 558
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 576
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 801
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 804
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 805
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 806
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 807
    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static/range {v5 .. v12}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 811
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    if-le v0, v2, :cond_3d

    move v1, v2

    :cond_3d
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 812
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1287
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1288
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1289
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030424

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1291
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/content/Context;

    move-result-object v1

    .line 1292
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1293
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    .line 1294
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 4011
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 4012
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static dumpHprof()V
    .registers 8

    .line 650
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 653
    .local v0, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemServerStub;->getHeapDumpDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 654
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    new-array v1, v2, [Ljava/io/File;

    .line 655
    :cond_16
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 656
    .local v3, "existingBacktraces":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    array-length v4, v1

    :goto_1c
    if-ge v2, v4, :cond_4a

    aget-object v5, v1, v2

    .line 658
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_27

    .line 659
    goto :goto_47

    .line 662
    :cond_27
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 663
    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 664
    goto :goto_47

    .line 667
    :cond_37
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 668
    goto :goto_47

    .line 670
    :cond_44
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 656
    .end local v5    # "file":Ljava/io/File;
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 672
    :cond_4a
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "System"

    if-lt v2, v4, :cond_8a

    .line 673
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    const/4 v4, 0x1

    if-ge v2, v4, :cond_5d

    .line 675
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 673
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 677
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

    .line 678
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_89

    .line 679
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

    .line 681
    .end local v4    # "file":Ljava/io/File;
    :cond_89
    goto :goto_61

    .line 684
    :cond_8a
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServerStub;->keepDumpSize(Ljava/util/TreeSet;)V

    .line 690
    :try_start_91
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 692
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

    .line 693
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

    .line 695
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_de} :catch_df

    .line 698
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    goto :goto_e5

    .line 696
    :catch_df
    move-exception v2

    .line 697
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Failed to dump fdtrack hprof"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 699
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_e5
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method private static getMaxFd()I
    .registers 5

    .line 616
    const/4 v0, 0x0

    .line 618
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

    .line 619
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 623
    if-eqz v0, :cond_1f

    .line 625
    :try_start_14
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_17} :catch_18

    .line 629
    goto :goto_1f

    .line 626
    :catch_18
    move-exception v1

    .line 628
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 619
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_1f
    :goto_1f
    return v1

    .line 623
    :catchall_20
    move-exception v1

    goto :goto_4d

    .line 620
    :catch_22
    move-exception v1

    .line 621
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

    .line 623
    nop

    .end local v1    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_49

    .line 625
    :try_start_3e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_41} :catch_42

    .line 629
    goto :goto_49

    .line 626
    :catch_42
    move-exception v1

    .line 628
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 633
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_49
    :goto_49
    const v1, 0x7fffffff

    return v1

    .line 623
    :goto_4d
    if-eqz v0, :cond_5a

    .line 625
    :try_start_4f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_52} :catch_53

    .line 629
    goto :goto_5a

    .line 626
    :catch_53
    move-exception v1

    .line 628
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 631
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

    .line 4136
    const-string/jumbo v1, "system_server"

    .line 4137
    .local v1, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v3

    .line 4139
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

    .line 4142
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

    .line 4145
    move v3, v6

    .end local v6    # "myPid":I
    .restart local v3    # "myPid":I
    const-class p1, Lcom/android/server/SystemServer;

    monitor-enter p1

    .line 4146
    :try_start_28
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v0, :cond_33

    .line 4147
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 4149
    :cond_33
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v4, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 4150
    monitor-exit p1

    .line 4151
    const/4 p1, 0x0

    return p1

    .line 4150
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

    .line 1218
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

    .line 1212
    if-eqz p0, :cond_14

    .line 1213
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1214
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1212
    :goto_15
    return v0
.end method

.method static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 14
    .param p0, "enableThreshold"    # I
    .param p1, "abortThreshold"    # I
    .param p2, "checkInterval"    # I

    .line 710
    const/4 v0, 0x0

    .line 711
    .local v0, "enabled":Z
    const-wide/16 v1, 0x0

    .line 714
    .local v1, "nextWrite":J
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 715
    .local v3, "maxFd":I
    if-le v3, p0, :cond_13

    .line 717
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 718
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 719
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 722
    :cond_13
    const-string v4, "System"

    const/4 v5, 0x2

    const/16 v6, 0x16c

    if-le v3, p0, :cond_35

    if-nez v0, :cond_35

    .line 723
    const-string v7, "fdtrack enable threshold reached, enabling"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 728
    const-string v4, "fdtrack"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 729
    const/4 v0, 0x1

    .line 731
    sub-int v4, p1, p0

    div-int/2addr v4, v5

    .line 732
    .local v4, "watermark":I
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v5

    .line 733
    invoke-virtual {v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->enableInputMethodMonitor(I)V

    .line 735
    .end local v4    # "watermark":I
    goto :goto_5c

    :cond_35
    if-le v3, p1, :cond_47

    .line 736
    const-string v5, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 737
    const/4 v4, 0x3

    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 741
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 742
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_5c

    .line 745
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 746
    .local v7, "now":J
    cmp-long v4, v7, v1

    if-lez v4, :cond_5c

    .line 747
    const-wide/32 v9, 0x36ee80

    add-long/2addr v9, v7

    .line 748
    .end local v1    # "nextWrite":J
    .local v9, "nextWrite":J
    nop

    .line 749
    if-eqz v0, :cond_57

    goto :goto_58

    .line 750
    :cond_57
    const/4 v5, 0x1

    .line 748
    :goto_58
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v9

    .line 756
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

    .line 759
    nop

    .line 760
    .end local v3    # "maxFd":I
    goto :goto_3

    .line 757
    .restart local v3    # "maxFd":I
    :catch_64
    move-exception v4

    .line 758
    .local v4, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method static synthetic lambda$startBootstrapServices$1()V
    .registers 1

    .line 1330
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->startCustFeatureResolverService()V

    .line 1331
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 5

    .line 1815
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1816
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1817
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1818
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1820
    .local v0, "abis32":[Ljava/lang/String;
    invoke-static {}, Lxiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_29

    array-length v3, v0

    if-lez v3, :cond_3b

    sget-boolean v3, Landroid/os/Build;->MTK_HBT_ON_64BIT_ONLY_CHIP:Z

    if-nez v3, :cond_3b

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    aget-object v4, v0, v4

    .line 1822
    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_36

    :cond_29
    array-length v3, v0

    if-lez v3, :cond_3b

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    aget-object v4, v0, v4

    .line 1823
    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 1824
    :goto_36
    const-string v3, "Unable to preload default resources for secondary"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    :cond_3b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3e
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_3e} :catch_3f

    .line 1830
    .end local v0    # "abis32":[Ljava/lang/String;
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_45

    .line 1828
    :catch_3f
    move-exception v0

    .line 1829
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_45
    return-void
.end method

.method static synthetic lambda$startOtherServices$3()V
    .registers 2

    .line 2015
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2016
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2017
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 2018
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2019
    return-void
.end method

.method static synthetic lambda$startOtherServices$4()V
    .registers 2

    .line 2022
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2023
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2024
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 2025
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2026
    return-void
.end method

.method private synthetic lambda$startOtherServices$5()V
    .registers 4

    .line 3670
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3671
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3672
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3673
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3674
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3675
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3676
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3677
    return-void
.end method

.method static synthetic lambda$startOtherServices$6(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 3826
    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string/jumbo v2, "tethering"

    invoke-static {v2, p0, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3829
    return-void
.end method

.method private synthetic lambda$startOtherServices$7(Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 35
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
    .param p11, "hsumBootUserInitializer"    # Lcom/android/server/HsumBootUserInitializer;
    .param p12, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p13, "networkTimeUpdaterF"    # Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .param p14, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p15, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p16, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p17, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 3644
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p5

    move-object/from16 v4, p7

    move-object/from16 v5, p9

    move-object/from16 v6, p11

    const-string v0, "Making services ready"

    const-string v7, "SystemServer"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3645
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3646
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x226

    invoke-virtual {v0, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3647
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3648
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3650
    :try_start_27
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    .line 3653
    goto :goto_34

    .line 3651
    :catchall_2d
    move-exception v0

    .line 3652
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "observing native crashes"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3654
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3656
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3658
    :try_start_3c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    .line 3661
    goto :goto_50

    .line 3659
    :catchall_49
    move-exception v0

    .line 3660
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "registering app ops policy"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3662
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_50
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3666
    const-string v8, "WebViewFactoryPreparation"

    .line 3667
    .local v8, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3668
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v9, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v10, "WebViewFactoryPreparation"

    if-eqz v9, :cond_67

    .line 3669
    new-instance v9, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v9, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v9, v0

    goto :goto_68

    .line 3668
    :cond_67
    move-object v9, v0

    .line 3680
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v9, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_68
    if-eqz p2, :cond_96

    .line 3681
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3682
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3683
    const-string v11, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 3684
    .local v0, "cshs":Lcom/android/server/SystemService;
    instance-of v11, v0, Landroid/util/Dumpable;

    if-eqz v11, :cond_83

    .line 3685
    iget-object v11, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v12, v0

    check-cast v12, Landroid/util/Dumpable;

    invoke-static {v11, v12}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3687
    :cond_83
    instance-of v11, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v11, :cond_90

    .line 3688
    move-object v11, v0

    check-cast v11, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_92

    .line 3687
    :cond_90
    move-object/from16 v12, p3

    .line 3690
    :goto_92
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_98

    .line 3680
    .end local v0    # "cshs":Lcom/android/server/SystemService;
    :cond_96
    move-object/from16 v12, p3

    .line 3693
    :goto_98
    if-eqz p4, :cond_ce

    .line 3694
    const-string v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3695
    nop

    .line 3696
    const v0, 0x1040353

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3698
    .local v0, "wearServiceComponentNameString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_cb

    .line 3699
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v11

    .line 3702
    .local v11, "wearServiceComponentName":Landroid/content/ComponentName;
    if-eqz v11, :cond_c6

    .line 3703
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 3704
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3705
    const/16 v13, 0x100

    invoke-virtual {v7, v13}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3706
    sget-object v13, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v13}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3707
    .end local v7    # "intent":Landroid/content/Intent;
    goto :goto_cb

    .line 3708
    :cond_c6
    const-string v13, "Null wear service component name."

    invoke-static {v7, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3711
    .end local v11    # "wearServiceComponentName":Landroid/content/ComponentName;
    :cond_cb
    :goto_cb
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3719
    .end local v0    # "wearServiceComponentNameString":Ljava/lang/String;
    :cond_ce
    if-eqz p6, :cond_e3

    .line 3720
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3722
    const/4 v0, 0x1

    :try_start_d6
    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_d9
    .catchall {:try_start_d6 .. :try_end_d9} :catchall_da

    .line 3725
    goto :goto_e0

    .line 3723
    :catchall_da
    move-exception v0

    .line 3724
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3726
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e0
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3728
    :cond_e3
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3730
    if-eqz p8, :cond_f6

    .line 3731
    :try_start_ea
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkManagementService;->systemReady()V
    :try_end_ed
    .catchall {:try_start_ea .. :try_end_ed} :catchall_ee

    goto :goto_f6

    .line 3733
    :catchall_ee
    move-exception v0

    .line 3734
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Managment Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f7

    .line 3735
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_f6
    :goto_f6
    nop

    .line 3736
    :goto_f7
    const/4 v0, 0x0

    .line 3737
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v5, :cond_101

    .line 3738
    nop

    .line 3739
    invoke-virtual {v5}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v7, v0

    goto :goto_102

    .line 3737
    :cond_101
    move-object v7, v0

    .line 3741
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_102
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3743
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v11, "SystemServer:NetworkStatsService systemReady"

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3745
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3747
    if-eqz v4, :cond_11f

    .line 3748
    :try_start_113
    invoke-virtual {v4}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_117

    goto :goto_11f

    .line 3750
    :catchall_117
    move-exception v0

    .line 3751
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Connectivity Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_120

    .line 3752
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_11f
    :goto_11f
    nop

    .line 3753
    :goto_120
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3755
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v11, "SystemServer:ConnectivityService systemReady"

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3757
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3759
    if-eqz p10, :cond_13d

    .line 3760
    :try_start_131
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_135

    goto :goto_13d

    .line 3762
    :catchall_135
    move-exception v0

    .line 3763
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making VpnManagerService ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13e

    .line 3764
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_13d
    :goto_13d
    nop

    .line 3765
    :goto_13e
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3766
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3768
    if-eqz v5, :cond_154

    .line 3769
    :try_start_148
    invoke-virtual {v5, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_14b
    .catchall {:try_start_148 .. :try_end_14b} :catchall_14c

    goto :goto_154

    .line 3771
    :catchall_14c
    move-exception v0

    .line 3772
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Network Policy Service ready"

    invoke-direct {v1, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_155

    .line 3773
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_154
    :goto_154
    nop

    .line 3774
    :goto_155
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3776
    const-string v11, "SystemServer:NetworkPolicyManagerService systemReady"

    .line 3777
    .local v11, "NetworkServiceBootEvent":Ljava/lang/String;
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0, v11}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3780
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3784
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3786
    if-eqz v9, :cond_16e

    .line 3787
    invoke-static {v9, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3789
    :cond_16e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x258

    invoke-virtual {v0, v2, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3790
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3792
    const-string/jumbo v0, "ro.product.uwb.oem"

    const/4 v10, 0x0

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 3793
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.uwb"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 3794
    const-string v0, "StartVendorUwbOemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3795
    new-instance v0, Lcom/nxp/uwb/oemService/NxpUwbOemService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/nxp/uwb/oemService/NxpUwbOemService;-><init>(Landroid/content/Context;)V

    .line 3796
    .local v0, "nxpUwbOemService":Lcom/nxp/uwb/oemService/NxpUwbOemService;
    const-string v10, "VendorUwbOemService"

    invoke-static {v10, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3797
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3801
    .end local v0    # "nxpUwbOemService":Lcom/nxp/uwb/oemService/NxpUwbOemService;
    :cond_1a0
    if-eqz v6, :cond_1ad

    .line 3802
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3803
    invoke-virtual {v6, v2}, Lcom/android/server/HsumBootUserInitializer;->systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3804
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3807
    :cond_1ad
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3814
    :try_start_1b2
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_1b9
    .catchall {:try_start_1b2 .. :try_end_1b9} :catchall_1ba

    .line 3817
    goto :goto_1c1

    .line 3815
    :catchall_1ba
    move-exception v0

    .line 3816
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Network Stack"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3818
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1c1
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3820
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3823
    :try_start_1c9
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v10, "android.net.ITetheringConnector"

    const-string v13, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v14, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;

    invoke-direct {v14}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {v0, v10, v13, v14}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_1d9
    .catchall {:try_start_1c9 .. :try_end_1d9} :catchall_1da

    .line 3832
    goto :goto_1e1

    .line 3830
    :catchall_1da
    move-exception v0

    .line 3831
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Tethering"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3833
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1e1
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3835
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3837
    if-eqz p12, :cond_1f6

    .line 3838
    :try_start_1eb
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1ee
    .catchall {:try_start_1eb .. :try_end_1ee} :catchall_1ef

    goto :goto_1f6

    .line 3840
    :catchall_1ef
    move-exception v0

    .line 3841
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying CountryDetectorService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1f7

    .line 3842
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1f6
    :goto_1f6
    nop

    .line 3843
    :goto_1f7
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3844
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3846
    if-eqz p13, :cond_20c

    .line 3847
    :try_start_201
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_204
    .catchall {:try_start_201 .. :try_end_204} :catchall_205

    goto :goto_20c

    .line 3849
    :catchall_205
    move-exception v0

    .line 3850
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying NetworkTimeService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20d

    .line 3851
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_20c
    :goto_20c
    nop

    .line 3852
    :goto_20d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3853
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->inputManagerLifecycleSupport()Z

    move-result v0

    if-nez v0, :cond_22c

    .line 3854
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3857
    if-eqz p14, :cond_228

    .line 3858
    :try_start_21d
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_220
    .catchall {:try_start_21d .. :try_end_220} :catchall_221

    goto :goto_228

    .line 3860
    :catchall_221
    move-exception v0

    .line 3861
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying InputManagerService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_229

    .line 3862
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_228
    :goto_228
    nop

    .line 3863
    :goto_229
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3865
    :cond_22c
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3867
    if-eqz p15, :cond_23e

    .line 3868
    :try_start_233
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_236
    .catchall {:try_start_233 .. :try_end_236} :catchall_237

    goto :goto_23e

    .line 3870
    :catchall_237
    move-exception v0

    .line 3871
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_23f

    .line 3872
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_23e
    :goto_23e
    nop

    .line 3873
    :goto_23f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3874
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3876
    if-eqz p16, :cond_254

    .line 3877
    :try_start_249
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_24c
    .catchall {:try_start_249 .. :try_end_24c} :catchall_24d

    goto :goto_254

    .line 3879
    :catchall_24d
    move-exception v0

    .line 3880
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MediaRouterService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_255

    .line 3881
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_254
    :goto_254
    nop

    .line 3882
    :goto_255
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3883
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_278

    .line 3884
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3886
    if-eqz p17, :cond_274

    :try_start_269
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_26c
    .catchall {:try_start_269 .. :try_end_26c} :catchall_26d

    goto :goto_274

    .line 3887
    :catchall_26d
    move-exception v0

    .line 3888
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MmsService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_275

    .line 3889
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_274
    :goto_274
    nop

    .line 3890
    :goto_275
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3893
    :cond_278
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3897
    :try_start_27d
    const-string/jumbo v0, "incident"

    .line 3898
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3897
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 3899
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_28d

    .line 3900
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_28d
    .catchall {:try_start_27d .. :try_end_28d} :catchall_28e

    .line 3904
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_28d
    goto :goto_294

    .line 3902
    :catchall_28e
    move-exception v0

    .line 3903
    .local v0, "e":Ljava/lang/Throwable;
    const-string v10, "Notifying incident daemon running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3905
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_294
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3908
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v10, "SystemServer:PhaseThirdPartyAppsCanStart"

    invoke-virtual {v0, v10}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 3910
    iget-wide v13, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v15, 0x0

    cmp-long v0, v13, v15

    if-eqz v0, :cond_2b3

    .line 3911
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3912
    iget-wide v13, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v13, v14}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3913
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3916
    :cond_2b3
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3918
    :try_start_2b8
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_2bb
    .catchall {:try_start_2b8 .. :try_end_2bb} :catchall_2bc

    .line 3921
    goto :goto_2c2

    .line 3919
    :catchall_2bc
    move-exception v0

    .line 3920
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Triggering OdsignStatsLogger"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3922
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2c2
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3923
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 780
    invoke-static {}, Lcom/android/server/MiuiServicesRouter;->init()V

    .line 784
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerStub;->markSystemRun(J)V

    .line 789
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/BootKeeperStub;->beforeBoot()V

    .line 794
    invoke-static {}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->getInstance()Lcom/android/server/miuibpf/MiuiBpfServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->start()V

    .line 796
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 797
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1227
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1229
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1230
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

    .line 1233
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1234
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1236
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1244
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1245
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1246
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1247
    const/4 v7, 0x0

    .line 1249
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1252
    goto :goto_56

    .line 1250
    :catch_50
    move-exception v2

    .line 1251
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1254
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1255
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1256
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1258
    return-void

    .line 1263
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$3;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$3;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1271
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1272
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1273
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1276
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

    .line 1222
    const-string v0, "***********************************************"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
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

    .line 1224
    return-void
.end method

.method private run()V
    .registers 19

    .line 904
    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"

    const-string v2, ""

    const-string v3, "SystemServer"

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 906
    .local v4, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_e
    invoke-static {}, Landroid/tracing/Flags;->systemServerLargePerfettoShmemBuffer()Z

    move-result v5

    if-eqz v5, :cond_1f

    .line 908
    new-instance v5, Landroid/tracing/perfetto/InitArguments;

    const/4 v6, 0x2

    const/16 v7, 0x1000

    invoke-direct {v5, v6, v7}, Landroid/tracing/perfetto/InitArguments;-><init>(II)V

    invoke-static {v5}, Landroid/tracing/perfetto/Producer;->init(Landroid/tracing/perfetto/InitArguments;)V

    .line 912
    :cond_1f
    const-string v5, "InitBeforeStartServices"

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 915
    const-string/jumbo v5, "sys.system_server.start_count"

    iget v6, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 916
    const-string/jumbo v5, "sys.system_server.start_elapsed"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 917
    const-string/jumbo v5, "sys.system_server.start_uptime"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 919
    iget v5, v1, Lcom/android/server/SystemServer;->mStartCount:I

    .line 920
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    iget-wide v7, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    filled-new-array {v5, v6, v7}, [Ljava/lang/Object;

    move-result-object v5

    .line 919
    const/16 v6, 0xbc3

    invoke-static {v6, v5}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 923
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 933
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_8d

    .line 934
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v5

    .line 936
    .local v5, "languageTag":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.locale"

    invoke-static {v6, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 937
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 939
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 943
    .end local v5    # "languageTag":Ljava/lang/String;
    :cond_8d
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 945
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 948
    const-string v2, "FULL"

    sput-object v2, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 951
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 954
    const-string v5, "Entered the Android system server!"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 956
    .local v5, "uptimeMillis":J
    const/16 v7, 0xbc2

    invoke-static {v7, v5, v6}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 957
    iget-boolean v7, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v8, 0xf0

    if-nez v7, :cond_b5

    .line 958
    const/16 v7, 0x13

    invoke-static {v8, v7, v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 964
    :cond_b5
    invoke-static {}, Lcom/android/internal/os/ZygoteInitStub;->getInstance()Lcom/android/internal/os/ZygoteInitStub;

    move-result-object v7

    const-string/jumbo v9, "start_android"

    invoke-virtual {v7, v9}, Lcom/android/internal/os/ZygoteInitStub;->addBootEvent(Ljava/lang/String;)V

    .line 967
    sget-object v7, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v9, "Android:SysServerInit_START"

    invoke-virtual {v7, v9}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 976
    const-string/jumbo v7, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v9

    invoke-virtual {v9}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 981
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v7

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v7, v9}, Landroid/app/ActivityThreadStub;->useGrowthLimitOutExpendMethod(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_e7

    .line 982
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    invoke-virtual {v7}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 988
    :cond_e7
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 992
    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 996
    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 999
    invoke-static {v0}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 1002
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 1005
    const/16 v7, 0x1f

    invoke-static {v7}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 1008
    const/4 v7, -0x2

    invoke-static {v7}, Landroid/os/Process;->setThreadPriority(I)V

    .line 1010
    const/4 v7, 0x0

    invoke-static {v7}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 1011
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 1012
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v9

    sget-wide v10, Lcom/android/server/SystemServer;->SLOW_DISPATCH_THRESHOLD_MS:J

    sget-wide v12, Lcom/android/server/SystemServer;->SLOW_DELIVERY_THRESHOLD_MS:J

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 1015
    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 1018
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    move-object v9, v0

    .line 1019
    .local v9, "tp":Lcom/android/server/SystemServerInitThreadPool;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1021
    invoke-static {}, Landroid/server/Flags;->earlySystemConfigInit()Z

    move-result v0

    if-eqz v0, :cond_126

    .line 1025
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1029
    :cond_126
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1032
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 1035
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 1044
    invoke-direct {v1}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 1047
    invoke-direct {v1}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 1050
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 1053
    const-string/jumbo v0, "system_server_dumper"

    iget-object v10, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1054
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1057
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v10}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 1058
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v12, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v13, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    move-object/from16 v17, v9

    .end local v9    # "tp":Lcom/android/server/SystemServerInitThreadPool;
    .local v17, "tp":Lcom/android/server/SystemServerInitThreadPool;
    iget-wide v8, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    move-wide v15, v8

    invoke-virtual/range {v11 .. v16}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 1060
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v8}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1062
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1066
    invoke-static {}, Lcom/android/text/flags/Flags;->useOptimizedBoottimeFontLoading()Z

    move-result v0

    if-nez v0, :cond_18a

    .line 1068
    const-string v0, "Loading pre-installed system font map."

    invoke-static {v3, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_176
    .catchall {:try_start_e .. :try_end_176} :catchall_2df

    .line 1072
    :try_start_176
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_179
    .catch Ljava/lang/Exception; {:try_start_176 .. :try_end_179} :catch_17a
    .catchall {:try_start_176 .. :try_end_179} :catchall_2df

    .line 1077
    goto :goto_18a

    .line 1073
    :catch_17a
    move-exception v0

    .line 1074
    .local v0, "e":Ljava/lang/Exception;
    :try_start_17b
    const-string v8, "System font map reload"

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemServerStub;->resetFonts()V

    .line 1076
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 1082
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_18a
    :goto_18a
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_18c
    .catchall {:try_start_17b .. :try_end_18c} :catchall_2df

    const-string v3, "System"

    if-eqz v0, :cond_1d5

    .line 1084
    :try_start_190
    const-string/jumbo v0, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    .line 1085
    .local v8, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v8}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1d5

    .line 1086
    const/16 v0, 0x3d

    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v9, v0

    .line 1087
    .local v9, "equalIndex":I
    invoke-virtual {v8, v7, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 1088
    .local v11, "libraryPath":Ljava/lang/String;
    add-int/lit8 v0, v9, 0x1

    .line 1089
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v8, v0, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_1b4
    .catchall {:try_start_190 .. :try_end_1b4} :catchall_2df

    move-object v12, v0

    .line 1092
    .local v12, "parameterList":Ljava/lang/String;
    :try_start_1b5
    invoke-static {v11, v12, v2}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1b8
    .catch Ljava/lang/Exception; {:try_start_1b5 .. :try_end_1b8} :catch_1b9
    .catchall {:try_start_1b5 .. :try_end_1b8} :catchall_2df

    .line 1096
    goto :goto_1d5

    .line 1093
    :catch_1b9
    move-exception v0

    .line 1094
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_1ba
    const-string v13, "*************************************************"

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1095
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "********** Failed to load jvmti plugin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v3, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1d5
    .catchall {:try_start_1ba .. :try_end_1d5} :catchall_2df

    .line 1100
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "uptimeMillis":J
    .end local v8    # "jvmtiAgent":Ljava/lang/String;
    .end local v9    # "equalIndex":I
    .end local v11    # "libraryPath":Ljava/lang/String;
    .end local v12    # "parameterList":Ljava/lang/String;
    .end local v17    # "tp":Lcom/android/server/SystemServerInitThreadPool;
    :cond_1d5
    :goto_1d5
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1101
    nop

    .line 1104
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    sget-object v5, Lcom/android/server/SystemServer;->BOOT_TIMINGS_TRACE_LOG:Lcom/android/server/utils/TimingsTraceAndSlog;

    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v6, v8}, Lcom/mediatek/server/MtkSystemServer;->setPrameters(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V

    .line 1107
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 1110
    const-string v0, "debug.debug_system"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1f7

    .line 1111
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1116
    :cond_1f7
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v5, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v5, v6}, Lcom/sprd/server/SprdSystemServer;->initUnisocSystemServer(Lcom/android/server/SystemServiceManager;Landroid/content/Context;)V

    .line 1121
    invoke-static {}, Lcom/android/internal/os/ApplicationSharedMemory;->create()Lcom/android/internal/os/ApplicationSharedMemory;

    move-result-object v5

    .line 1122
    .local v5, "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    invoke-static {v5}, Lcom/android/internal/os/ApplicationSharedMemory;->setInstance(Lcom/android/internal/os/ApplicationSharedMemory;)V

    .line 1126
    :try_start_209
    const-string v0, "StartServices"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1127
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1129
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkBootstrapServices()V

    .line 1131
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1133
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkCoreServices()V

    .line 1135
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1136
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1139
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1141
    invoke-static {}, Lcom/android/internal/os/ZygoteConfigStub;->getInstance()Lcom/android/internal/os/ZygoteConfigStub;

    move-result-object v0

    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/internal/os/ZygoteConfigStub;->initialize(Landroid/content/Context;)V

    .line 1143
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logSystemServerStarted()V
    :try_end_237
    .catchall {:try_start_209 .. :try_end_237} :catchall_2cd

    .line 1149
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1150
    nop

    .line 1152
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1154
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_275

    invoke-direct {v1}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_275

    .line 1155
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1156
    .local v2, "uptimeMillis":J
    const/16 v0, 0x14

    const/16 v10, 0xf0

    invoke-static {v10, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1159
    const-wide/32 v6, 0xea60

    .line 1160
    .local v6, "maxUptimeMillis":J
    const-wide/32 v8, 0xea60

    cmp-long v0, v2, v8

    if-lez v0, :cond_275

    .line 1161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v8, "SystemServerTiming"

    invoke-static {v8, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v2    # "uptimeMillis":J
    .end local v6    # "maxUptimeMillis":J
    :cond_275
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 1176
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/BootKeeperStub;->afterBoot(Landroid/content/Context;)V

    .line 1180
    invoke-static {}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->getInstance()Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v2}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->initialize(Landroid/content/Context;)V

    .line 1185
    invoke-static {}, Landroid/app/Flags;->reportPostgcMemoryMetrics()Z

    move-result v0

    if-eqz v0, :cond_2a3

    .line 1186
    invoke-static {}, Lcom/android/libcore/readonly/Flags;->postCleanupApis()Z

    move-result v0

    if-eqz v0, :cond_2a3

    .line 1187
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Ldalvik/system/VMRuntime;->addPostCleanupCallback(Ljava/lang/Runnable;)V

    .line 1195
    :cond_2a3
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    const-string v2, "Android:SysServerInit_END"

    invoke-virtual {v0, v2}, Lcom/mediatek/server/MtkSystemServer;->addBootEvent(Ljava/lang/String;)V

    .line 1200
    const-string/jumbo v0, "ro.boot.hwlevel"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "MP"

    invoke-virtual {v2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2c2

    .line 1202
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v2, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServerStub;->registerThreadPoolTraceObserver(Landroid/content/ContentResolver;)V

    .line 1207
    :cond_2c2
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1208
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1144
    :catchall_2cd
    move-exception v0

    .line 1145
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_2ce
    const-string v2, "******************************************"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1146
    const-string v2, "************ Failure starting system services"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1147
    nop

    .end local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local v5    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_2da
    .catchall {:try_start_2ce .. :try_end_2da} :catchall_2da

    .line 1149
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local v5    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_2da
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1150
    throw v0

    .line 1100
    .end local v5    # "instance":Lcom/android/internal/os/ApplicationSharedMemory;
    :catchall_2df
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1101
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static spawnFdLeakCheckThread()V
    .registers 5

    .line 705
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x640

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 706
    .local v0, "enableThreshold":I
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 707
    .local v1, "abortThreshold":I
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 709
    .local v2, "checkInterval":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 761
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 762
    return-void
.end method

.method private startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3977
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_14

    .line 3978
    const-string v0, "debug.crash_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_14

    .line 3979
    :cond_e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3982
    :cond_14
    :goto_14
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3985
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 3986
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexSystemServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_66

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 3987
    .local v2, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3988
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v4

    .line 3989
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

    .line 3990
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5d

    .line 3991
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_62

    .line 3993
    :cond_5d
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3995
    :goto_62
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3996
    .end local v2    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    goto :goto_26

    .line 3999
    :cond_66
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 4001
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4002
    return-void
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4077
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4078
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4079
    return-void

    .line 4082
    :cond_e
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4083
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4084
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4085
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 14
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1303
    const-string/jumbo v0, "moveab"

    const-string/jumbo v1, "packagemanagermain"

    const-string/jumbo v2, "startBootstrapServices"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1305
    const-string v2, "ArtModuleServiceInitializer"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1313
    new-instance v2, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v2}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v2}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 1314
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1318
    const-string v2, "StartWatchdog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1319
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 1320
    .local v2, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 1321
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, v2}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1322
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1327
    const-string/jumbo v3, "ro.mi.os.custfeatureresolve"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "SystemServer"

    if-eqz v3, :cond_4c

    .line 1328
    const-string v3, "Feature cust_feature_resolve is enabled"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    new-instance v3, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>()V

    const-string v5, "LoadingCustFeatureConfig"

    invoke-static {v3, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_51

    .line 1333
    :cond_4c
    const-string v3, "Feature cust_feature_resolve is disabled"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1339
    :goto_51
    invoke-static {}, Landroid/server/Flags;->earlySystemConfigInit()Z

    move-result v3

    if-nez v3, :cond_5a

    .line 1340
    invoke-direct {p0, p1}, Lcom/android/server/SystemServer;->startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1344
    :cond_5a
    invoke-static {}, Landroid/tracing/Flags;->clientSideProtoLogging()Z

    move-result v3

    if-eqz v3, :cond_73

    .line 1345
    const-string v3, "StartProtoLogConfigurationService"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1346
    new-instance v3, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;

    invoke-direct {v3}, Lcom/android/internal/protolog/ProtoLogConfigurationServiceImpl;-><init>()V

    const-string/jumbo v5, "protolog_configuration"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1348
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1351
    :cond_73
    const-string v3, "InitializeProtoLog"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1352
    invoke-static {}, Lcom/android/internal/protolog/WmProtoLogGroups;->values()[Lcom/android/internal/protolog/WmProtoLogGroups;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/protolog/ProtoLog;->init([Lcom/android/internal/protolog/common/IProtoLogGroup;)V

    .line 1353
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1357
    const-string v3, "PlatformCompat"

    invoke-virtual {p1, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1358
    new-instance v3, Lcom/android/server/compat/PlatformCompat;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v5}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1359
    .local v3, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v5, "platform_compat"

    invoke-static {v5, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1360
    new-instance v5, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v5, v3}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v6, "platform_compat_native"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1362
    new-array v5, v4, [J

    new-array v6, v4, [J

    invoke-static {v5, v6}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    .line 1363
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1368
    const-string v5, "StartFileIntegrityService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1369
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1370
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1375
    const-string v5, "StartInstaller"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1376
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/pm/Installer;

    invoke-virtual {v5, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v5

    check-cast v5, Lcom/android/server/pm/Installer;

    .line 1377
    .local v5, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1381
    const-string v6, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1382
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1383
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1387
    const-string v6, "StartFeatureFlagsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1388
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/flags/FeatureFlagsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1389
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1392
    const-string v6, "UriGrantsManagerService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1393
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1394
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1396
    const-string v6, "StartPowerStatsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1398
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1399
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1401
    const-string v6, "StartIStatsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1402
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1403
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1407
    const-string v6, "MemtrackProxyService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1408
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1409
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1412
    const-string v6, "StartAccessCheckingService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1413
    const-class v6, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    new-instance v7, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-direct {v7}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;-><init>()V

    invoke-static {v6, v7}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1415
    const-class v6, Lcom/android/server/appop/AppOpMigrationHelper;

    new-instance v7, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-direct {v7}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    invoke-static {v6, v7}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1417
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1418
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1421
    const-string v6, "StartActivityManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1434
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1435
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1437
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServerStub;->addMiuiPeriodicCleanerService(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1439
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v6, v7}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1441
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1442
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6, v5}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1443
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v6

    iput-object v6, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1448
    const-string v6, "StartDataLoaderManagerService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1449
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1451
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1454
    const-string v6, "StartIncrementalService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1455
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1462
    const-string v6, "StartPowerManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1463
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/power/PowerManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1466
    const-string v6, "StartThermalManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1467
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1468
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1471
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v6, p1, v7}, Lcom/sprd/server/SprdSystemServer;->addUnionManagerService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 1476
    const-string v6, "InitPowerManagement"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1477
    iget-object v6, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1478
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1481
    const-string v6, "StartRecoverySystemService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1482
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1483
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1485
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->refactorCrashrecovery()Z

    move-result v6

    if-nez v6, :cond_1f3

    .line 1487
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->rescuePartyRegisterHealthObserver(Landroid/content/Context;)V

    .line 1492
    :cond_1f3
    const-string v6, "StartLightsService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1495
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/SystemServerStub;->createLightsServices()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1497
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1499
    const-string v6, "StartDisplayOffloadService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1501
    const-string v6, "config.enable_display_offload"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_21c

    .line 1502
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1506
    :cond_21c
    invoke-static {}, Lxiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v6

    if-eqz v6, :cond_231

    .line 1507
    const-string v6, "config.enable_qti_display_offload"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_231

    .line 1508
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.qualcomm.qti.server.offloadservice.OffloadManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1512
    :cond_231
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1516
    invoke-static {}, Lxiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v6

    if-eqz v6, :cond_251

    .line 1517
    const-string v6, "StartSuspendManagerService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1518
    const-string v6, "config.enable_qti_suspend_manager"

    invoke-static {v6, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_24e

    .line 1519
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.qualcomm.qti.server.suspendservice.SuspendManagerService"

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1521
    :cond_24e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1527
    :cond_251
    const-string v6, "StartDisplayManager"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1528
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/display/DisplayManagerService;

    iput-object v6, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1529
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1532
    const-string v6, "WaitForDisplay"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1533
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x64

    invoke-virtual {v6, p1, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1534
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1537
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v6, :cond_284

    .line 1538
    nop

    .line 1541
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 1538
    const/16 v6, 0xe

    invoke-static {v7, v6, v8, v9}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1544
    :cond_284
    const-string v6, "StartDomainVerificationService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1545
    new-instance v6, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1546
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v9

    invoke-direct {v6, v8, v9, v3}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1547
    .local v6, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8, v6}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1548
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1551
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 1554
    .local v8, "pmsStartTime":J
    const-string v10, "StartPackageManagerService"

    invoke-virtual {p1, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1556
    :try_start_2a5
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1558
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1560
    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v11, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v11, :cond_2bb

    const/4 v11, 0x1

    goto :goto_2bc

    :cond_2bb
    move v11, v4

    :goto_2bc
    invoke-static {v10, v5, v6, v11}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v10

    iput-object v10, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_2c2
    .catchall {:try_start_2a5 .. :try_end_2c2} :catchall_422

    .line 1564
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v10

    invoke-virtual {v10, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1568
    nop

    .line 1571
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/SystemServerStub;->markPmsScan(JJ)V

    .line 1574
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1575
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1576
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1578
    const-string v1, "DexUseManagerLocal"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1581
    const-class v1, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1582
    invoke-static {v10}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v10

    .line 1581
    invoke-static {v1, v10}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1583
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1585
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v1, :cond_316

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_316

    .line 1586
    nop

    .line 1589
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1586
    const/16 v1, 0xf

    invoke-static {v7, v1, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1593
    :cond_316
    const-string v1, "config.disable_otadexopt"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1594
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_350

    .line 1595
    const-string v7, "StartOtaDexOptService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1597
    :try_start_323
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1598
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v7, v10}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_331
    .catchall {:try_start_323 .. :try_end_331} :catchall_332

    goto :goto_339

    .line 1599
    :catchall_332
    move-exception v7

    .line 1600
    .local v7, "e":Ljava/lang/Throwable;
    :try_start_333
    const-string/jumbo v10, "starting OtaDexOptService"

    invoke-direct {p0, v10, v7}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_339
    .catchall {:try_start_333 .. :try_end_339} :catchall_344

    .line 1602
    .end local v7    # "e":Ljava/lang/Throwable;
    :goto_339
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1604
    goto :goto_350

    .line 1602
    :catchall_344
    move-exception v4

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    invoke-virtual {v7, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1603
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1604
    throw v4

    .line 1607
    :cond_350
    :goto_350
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_363

    .line 1608
    const-string v0, "StartArcSystemHealthService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1609
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v7, "com.android.server.arc.health.ArcSystemHealthService"

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1610
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1613
    :cond_363
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1614
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1615
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1618
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1619
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1620
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1623
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1624
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1625
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1628
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1632
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1633
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v7}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1634
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1638
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1641
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1642
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v7, Lcom/android/server/om/OverlayManagerService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v10}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1643
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1646
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1647
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v7}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1648
    .local v0, "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    iget-object v7, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1649
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v7, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1650
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1652
    const-string v7, "StartSensorPrivacyService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1653
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v10, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v11, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v10, v11}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v10}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1654
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1656
    const-string/jumbo v7, "persist.sys.displayinset.top"

    invoke-static {v7, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3ff

    .line 1658
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1659
    const-class v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1664
    :cond_3ff
    const-string v4, "StartSensorService"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1665
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v4, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1666
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1669
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4, v7, v5}, Lcom/android/server/SystemServerStub;->addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 1672
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sprd/server/SprdSystemServer;->startUnisocBootstrapServices()V

    .line 1674
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1675
    return-void

    .line 1564
    .end local v0    # "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    .end local v1    # "disableOtaDexopt":Z
    :catchall_422
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1568
    throw v0
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4037
    const/4 v0, 0x0

    .line 4038
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4040
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 4041
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 4042
    if-eqz v0, :cond_22

    .line 4043
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 4045
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4046
    return-void

    .line 4051
    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 4052
    const v3, 0x1040290

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 4053
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4054
    return-void

    .line 4056
    :cond_39
    const v3, 0x1040291

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 4057
    const-string v3, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4064
    :cond_47
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4065
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4067
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4068
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 4069
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_66

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_66

    .line 4070
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 4073
    :cond_66
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4074
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1681
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1684
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1685
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1686
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1688
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1690
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1691
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1694
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1695
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1696
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1697
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1696
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1698
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1701
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1702
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1703
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1704
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1708
    :cond_5e
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1709
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1710
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1713
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1715
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1718
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1719
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1720
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1723
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1724
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1725
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1728
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1729
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1730
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1733
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1734
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1735
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1738
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1739
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1740
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1743
    const-string v0, "StartRemoteProvisioningService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1744
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1745
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1749
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_de

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_ed

    .line 1751
    :cond_de
    const-string v0, "CpuMonitorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1752
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1753
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1756
    :cond_ed
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1758
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sprd/server/SprdSystemServer;->startUnisocCoreServices()V

    .line 1760
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

    .line 3963
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3964
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.ondeviceintelligence.OnDeviceIntelligenceManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3965
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3966
    return-void
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 58
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1766
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1767
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1769
    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1770
    .local v6, "context":Landroid/content/Context;
    const/4 v3, 0x0

    .line 1771
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v4, 0x0

    .line 1772
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v5, 0x0

    .line 1773
    .local v5, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    const/4 v7, 0x0

    .line 1774
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    const/4 v8, 0x0

    .line 1775
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v9, 0x0

    .line 1776
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    const/4 v10, 0x0

    .line 1777
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const/4 v11, 0x0

    .line 1778
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v12, 0x0

    .line 1779
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v13, 0x0

    .line 1780
    .local v13, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/4 v14, 0x0

    .line 1781
    .local v14, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/4 v15, 0x0

    .line 1782
    .local v15, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v16, 0x0

    .line 1784
    .local v16, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    const-string v0, "config.disable_systemtextclassifier"

    move-object/from16 v17, v3

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v17, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v19

    .line 1787
    .local v19, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v20

    .line 1789
    .local v20, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 1792
    .local v21, "disableCameraService":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.type.pc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v22

    .line 1794
    .local v22, "isDesktop":Z
    move-object v3, v5

    .end local v5    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureWatch(Landroid/content/Context;)Z

    move-result v5

    .line 1796
    .local v5, "isWatch":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move-object/from16 v23, v3

    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v23, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    const-string/jumbo v3, "org.chromium.arc"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v24

    .line 1799
    .local v24, "isArc":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.leanback"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v25

    .line 1802
    .local v25, "isTv":Z
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureAutomotive(Landroid/content/Context;)Z

    move-result v3

    .line 1804
    .local v3, "isAutomotive":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    move/from16 v26, v3

    .end local v3    # "isAutomotive":Z
    .local v26, "isAutomotive":Z
    const-string v3, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    .line 1808
    .local v27, "enableVrService":Z
    :try_start_6a
    const-string v0, "SecondaryZygotePreload"

    .line 1813
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    new-instance v3, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v3}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V
    :try_end_71
    .catchall {:try_start_6a .. :try_end_71} :catchall_1989

    move-object/from16 v28, v4

    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v28, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_73
    const-string v4, "SecondaryZygotePreload"

    invoke-static {v3, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v3

    iput-object v3, v1, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1833
    const-string v3, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1834
    const-string/jumbo v3, "sec_key_att_app_id_provider"

    new-instance v4, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v4, v6}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1836
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1838
    const-string v3, "StartKeyChainSystemService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1839
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1840
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1842
    const-string v3, "StartBinaryTransparencyService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1843
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1844
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1846
    const-string v3, "StartSchedulingPolicyService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1847
    const-string/jumbo v3, "scheduling_policy"

    new-instance v4, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v4}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v3, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1848
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1852
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.microphone"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_c7
    .catchall {:try_start_73 .. :try_end_c7} :catchall_197a

    if-nez v3, :cond_ee

    :try_start_c9
    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.software.telecom"

    .line 1853
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_ee

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.telephony"

    .line 1854
    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3
    :try_end_db
    .catchall {:try_start_c9 .. :try_end_db} :catchall_de

    if-eqz v3, :cond_fd

    goto :goto_ee

    .line 2122
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_de
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move-object/from16 v3, v17

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1999

    .line 1855
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_ee
    :goto_ee
    :try_start_ee
    const-string v3, "StartTelecomLoaderService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1856
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1857
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1860
    :cond_fd
    const-string v3, "StartTelephonyRegistry"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1861
    new-instance v3, Lcom/android/server/TelephonyRegistry;

    new-instance v4, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v4}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v3, v6, v4}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_10c
    .catchall {:try_start_ee .. :try_end_10c} :catchall_197a

    .line 1863
    .end local v12    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_10c
    const-string/jumbo v4, "telephony.registry"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1864
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1866
    const-string v4, "StartEntropyMixer"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1867
    new-instance v4, Lcom/android/server/EntropyMixer;

    invoke-direct {v4, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v4, v1, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1868
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1870
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1873
    const-string v4, "StartAccountManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1874
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1875
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1877
    const-string v4, "StartContentService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1878
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/content/ContentService$Lifecycle;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1879
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1881
    const-string v4, "InstallSystemProviders"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1882
    iget-object v4, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1884
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1886
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1887
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1892
    const-string v4, "StartDropBoxManager"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1893
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1894
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1896
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v4
    :try_end_176
    .catchall {:try_start_10c .. :try_end_176} :catchall_1967

    if-eqz v4, :cond_199

    .line 1897
    :try_start_178
    const-string v4, "StartEnhancedConfirmationService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1898
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.ecm.EnhancedConfirmationService"

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1899
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_187
    .catchall {:try_start_178 .. :try_end_187} :catchall_188

    goto :goto_199

    .line 2122
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_188
    move-exception v0

    move-object v12, v3

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move-object/from16 v3, v17

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1999

    .line 1902
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_199
    :goto_199
    :try_start_199
    const-string v4, "StartHintManager"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1903
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1904
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1906
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/sprd/server/SprdSystemServer;->startUnisocFwkBoostServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1909
    const-string v4, "StartRoleManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1910
    const-class v4, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v12, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
    :try_end_1b8
    .catchall {:try_start_199 .. :try_end_1b8} :catchall_1967

    move-object/from16 v29, v3

    .end local v3    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v29, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1ba
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v3}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v12}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1912
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.role.RoleService"

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1913
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1915
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->supervisionApi()Z

    move-result v3
    :try_end_1d0
    .catchall {:try_start_1ba .. :try_end_1d0} :catchall_1956

    if-eqz v3, :cond_1fc

    if-eqz v5, :cond_1da

    .line 1916
    :try_start_1d4
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/app/supervision/flags/Flags;->supervisionApiOnWear()Z

    move-result v3

    if-eqz v3, :cond_1fc

    .line 1917
    :cond_1da
    const-string v3, "StartSupervisionService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1918
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/supervision/SupervisionService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1919
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1fc

    .line 2122
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_1ea
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move-object/from16 v3, v17

    move/from16 v10, v26

    move-object/from16 v12, v29

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1999

    .line 1922
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_1fc
    :goto_1fc
    if-nez v25, :cond_20f

    if-nez v22, :cond_20f

    .line 1923
    const-string v3, "StartVibratorManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1924
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1925
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_20f
    .catchall {:try_start_1d4 .. :try_end_20f} :catchall_1ea

    .line 1928
    :cond_20f
    :try_start_20f
    const-string v3, "StartDynamicSystemService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1929
    new-instance v3, Lcom/android/server/DynamicSystemService;

    invoke-direct {v3, v6}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_219
    .catchall {:try_start_20f .. :try_end_219} :catchall_1956

    .line 1930
    .end local v17    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_219
    const-string v4, "dynamic_system"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1931
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1933
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const-string v12, "android.hardware.consumerir"

    invoke-virtual {v4, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4
    :try_end_22b
    .catchall {:try_start_219 .. :try_end_22b} :catchall_1945

    if-eqz v4, :cond_253

    .line 1934
    :try_start_22d
    const-string v4, "StartConsumerIrService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1935
    new-instance v4, Lcom/android/server/ConsumerIrService;

    invoke-direct {v4, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v13, v4

    .line 1936
    const-string v4, "consumer_ir"

    invoke-static {v4, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1937
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_240
    .catchall {:try_start_22d .. :try_end_240} :catchall_243

    move-object/from16 v30, v13

    goto :goto_255

    .line 2122
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_243
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move-object/from16 v12, v29

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1999

    .line 1933
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_253
    move-object/from16 v30, v13

    .line 1941
    .end local v13    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v30, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_255
    :try_start_255
    const-string v4, "StartSsruService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1942
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemServerStub;->addSsruService()V

    .line 1943
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1947
    const-string v4, "StartAlarmManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1950
    invoke-static {}, Lxiaomi/platform/flags/Flags;->mtkEnabled()Z

    move-result v4
    :try_end_26d
    .catchall {:try_start_255 .. :try_end_26d} :catchall_1931

    if-eqz v4, :cond_291

    .line 1951
    :try_start_26f
    sget-object v4, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v4}, Lcom/mediatek/server/MtkSystemServer;->startMtkAlarmManagerService()Z

    move-result v4

    if-nez v4, :cond_298

    .line 1952
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_27e
    .catchall {:try_start_26f .. :try_end_27e} :catchall_27f

    goto :goto_298

    .line 2122
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_27f
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1999

    .line 1954
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_291
    :try_start_291
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1957
    :cond_298
    :goto_298
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1959
    const-string v4, "StartInputManagerService"

    invoke-virtual {v2, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1960
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->inputManagerLifecycleSupport()Z

    move-result v4
    :try_end_2a4
    .catchall {:try_start_291 .. :try_end_2a4} :catchall_1931

    if-eqz v4, :cond_2b5

    .line 1961
    :try_start_2a6
    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/input/InputManagerService$Lifecycle;

    invoke-virtual {v4, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v4

    check-cast v4, Lcom/android/server/input/InputManagerService$Lifecycle;

    .line 1962
    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService$Lifecycle;->getService()Lcom/android/server/input/InputManagerService;

    move-result-object v4
    :try_end_2b4
    .catchall {:try_start_2a6 .. :try_end_2b4} :catchall_27f

    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    goto :goto_2ba

    .line 1964
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    :cond_2b5
    :try_start_2b5
    new-instance v4, Lcom/android/server/input/InputManagerService;

    invoke-direct {v4, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_2ba
    .catchall {:try_start_2b5 .. :try_end_2ba} :catchall_1931

    .line 1966
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    :goto_2ba
    :try_start_2ba
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1968
    const-string v11, "DeviceStateManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1969
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1970
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2cc
    .catchall {:try_start_2ba .. :try_end_2cc} :catchall_1919

    .line 1972
    if-nez v21, :cond_2f1

    .line 1973
    :try_start_2ce
    const-string v11, "StartCameraServiceProxy"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1974
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1975
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2dd
    .catchall {:try_start_2ce .. :try_end_2dd} :catchall_2de

    goto :goto_2f1

    .line 2122
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_2de
    move-exception v0

    move-object v11, v4

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_1999

    .line 1979
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2f1
    :goto_2f1
    :try_start_2f1
    invoke-static {}, Lxiaomi/platform/flags/Flags;->xringEnabled()Z

    move-result v11
    :try_end_2f5
    .catchall {:try_start_2f1 .. :try_end_2f5} :catchall_1919

    if-eqz v11, :cond_306

    .line 1980
    :try_start_2f7
    const-string v11, "StartPerfManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1981
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/urm/PerfManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1982
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_306
    .catchall {:try_start_2f7 .. :try_end_306} :catchall_2de

    .line 1986
    :cond_306
    :try_start_306
    const-string v11, "StartWindowManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1988
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0xc8

    invoke-virtual {v11, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1989
    iget-boolean v11, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v11, :cond_318

    const/4 v11, 0x1

    goto :goto_319

    :cond_318
    const/4 v11, 0x0

    .line 1992
    :goto_319
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/SystemServerStub;->createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v13

    iget-object v12, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v12, v12, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1989
    invoke-static {v6, v4, v11, v13, v12}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v11
    :try_end_329
    .catchall {:try_start_306 .. :try_end_329} :catchall_1919

    move-object v9, v11

    .line 1994
    :try_start_32a
    const-string/jumbo v11, "window"

    const/16 v12, 0x13

    const/4 v13, 0x0

    invoke-static {v11, v9, v13, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1997
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/hardware/input/Flags;->inputManagerLifecycleSupport()Z

    move-result v11
    :try_end_337
    .catchall {:try_start_32a .. :try_end_337} :catchall_18ff

    if-nez v11, :cond_340

    .line 1998
    :try_start_339
    const-string/jumbo v11, "input"

    const/4 v12, 0x1

    invoke-static {v11, v4, v13, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_340
    .catchall {:try_start_339 .. :try_end_340} :catchall_2de

    .line 2001
    :cond_340
    :try_start_340
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2003
    const-string v11, "SetWindowManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2004
    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v9}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 2005
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2007
    const-string v11, "WindowManagerServiceOnInitReady"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2008
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 2009
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2014
    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v11}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    const-string v12, "StartISensorManagerService"

    invoke-static {v11, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 2021
    new-instance v11, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v11}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    const-string v12, "StartHidlServices"

    invoke-static {v11, v12}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_36f
    .catchall {:try_start_340 .. :try_end_36f} :catchall_18ff

    .line 2028
    if-nez v5, :cond_382

    if-eqz v27, :cond_382

    .line 2029
    :try_start_373
    const-string v11, "StartVrManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2030
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2031
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_382
    .catchall {:try_start_373 .. :try_end_382} :catchall_2de

    .line 2034
    :cond_382
    :try_start_382
    const-string v11, "StartInputManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2035
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v11

    invoke-virtual {v4, v11}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 2036
    invoke-virtual {v4}, Lcom/android/server/input/InputManagerService;->start()V

    .line 2037
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2040
    const-string v11, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2041
    iget-object v11, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v11}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 2042
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2044
    iget v11, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_3a3
    .catchall {:try_start_382 .. :try_end_3a3} :catchall_18ff

    const/4 v12, 0x1

    if-ne v11, v12, :cond_3ae

    .line 2045
    :try_start_3a6
    const-string v11, "SystemServer"

    const-string v12, "No Bluetooth Service (factory test)"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3ad
    .catchall {:try_start_3a6 .. :try_end_3ad} :catchall_2de

    goto :goto_3d3

    .line 2046
    :cond_3ae
    :try_start_3ae
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    const-string v12, "android.hardware.bluetooth"

    .line 2047
    invoke-virtual {v11, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11
    :try_end_3b8
    .catchall {:try_start_3ae .. :try_end_3b8} :catchall_18ff

    if-nez v11, :cond_3c2

    .line 2048
    :try_start_3ba
    const-string v11, "SystemServer"

    const-string v12, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c1
    .catchall {:try_start_3ba .. :try_end_3c1} :catchall_2de

    goto :goto_3d3

    .line 2050
    :cond_3c2
    :try_start_3c2
    const-string v11, "StartBluetoothService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2051
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.bluetooth.BluetoothService"

    const-string v13, "/apex/com.android.bt/javalib/service-bluetooth.jar"

    invoke-virtual {v11, v12, v13}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2053
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2056
    :goto_3d3
    const-string v11, "IpConnectivityMetrics"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2057
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2058
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2060
    const-string v11, "NetworkWatchlistService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2061
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2062
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2064
    const-string v11, "PinnerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2065
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pinner/PinnerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2066
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2069
    invoke-static {}, Lxiaomi/platform/flags/Flags;->qcomEnabled()Z

    move-result v11
    :try_end_404
    .catchall {:try_start_3c2 .. :try_end_404} :catchall_18ff

    if-eqz v11, :cond_415

    .line 2070
    :try_start_406
    const-string v11, "ActivityTriggerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2071
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2072
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_415
    .catchall {:try_start_406 .. :try_end_415} :catchall_2de

    .line 2076
    :cond_415
    :try_start_415
    sget-boolean v11, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_417
    .catchall {:try_start_415 .. :try_end_417} :catchall_18ff

    if-eqz v11, :cond_42e

    :try_start_419
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v11

    if-eqz v11, :cond_42e

    .line 2077
    const-string v11, "ProfcollectForwardingService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2078
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2079
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_42e
    .catchall {:try_start_419 .. :try_end_42e} :catchall_2de

    .line 2082
    :cond_42e
    :try_start_42e
    const-string v11, "SignedConfigService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2083
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 2084
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2086
    invoke-static {}, Landroid/server/Flags;->removeAppIntegrityManagerService()Z

    move-result v11
    :try_end_43f
    .catchall {:try_start_42e .. :try_end_43f} :catchall_18ff

    if-nez v11, :cond_450

    .line 2087
    :try_start_441
    const-string v11, "AppIntegrityService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2088
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2089
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_450
    .catchall {:try_start_441 .. :try_end_450} :catchall_2de

    .line 2092
    :cond_450
    :try_start_450
    const-string v11, "StartLogcatManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2093
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2094
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_45f
    .catchall {:try_start_450 .. :try_end_45f} :catchall_18ff

    .line 2096
    if-nez v5, :cond_47c

    if-nez v25, :cond_47c

    if-nez v26, :cond_47c

    if-nez v22, :cond_47c

    .line 2097
    :try_start_467
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aflApi()Z

    move-result v11

    if-eqz v11, :cond_47c

    .line 2098
    const-string v11, "StartIntrusionDetectionService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2099
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/security/intrusiondetection/IntrusionDetectionService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2100
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_47c
    .catchall {:try_start_467 .. :try_end_47c} :catchall_2de

    .line 2103
    :cond_47c
    :try_start_47c
    invoke-static {v6}, Landroid/app/appfunctions/AppFunctionManagerConfiguration;->isSupported(Landroid/content/Context;)Z

    move-result v11
    :try_end_480
    .catchall {:try_start_47c .. :try_end_480} :catchall_18ff

    if-eqz v11, :cond_491

    .line 2104
    :try_start_482
    const-string v11, "StartAppFunctionManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2105
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/appfunctions/AppFunctionManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2106
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2109
    :cond_491
    if-nez v5, :cond_4ae

    if-nez v25, :cond_4ae

    if-nez v26, :cond_4ae

    if-nez v22, :cond_4ae

    .line 2110
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->aapmApi()Z

    move-result v11

    if-eqz v11, :cond_4ae

    .line 2111
    const-string v11, "StartAdvancedProtectionService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2112
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/security/advancedprotection/AdvancedProtectionService$Lifecycle;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2113
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2116
    :cond_4ae
    if-nez v5, :cond_4c9

    if-nez v25, :cond_4c9

    if-nez v26, :cond_4c9

    invoke-static {}, Lcom/android/tradeinmode/flags/Flags;->enableTradeInMode()Z

    move-result v11

    if-eqz v11, :cond_4c9

    .line 2117
    const-string v11, "StartTradeInModeService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2118
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/TradeInModeService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2119
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_4c9
    .catchall {:try_start_482 .. :try_end_4c9} :catchall_2de

    .line 2126
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_4c9
    nop

    .line 2128
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServerStub;->initAppRescuepartyLevel(Landroid/content/Context;)V

    .line 2133
    move-object/from16 v31, v7

    .end local v7    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v31, "vpnManager":Lcom/android/server/VpnManagerService;
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v7

    .line 2134
    .local v7, "safeMode":Z
    if-eqz v7, :cond_4e4

    .line 2139
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "airplane_mode_on"

    const/4 v12, 0x1

    invoke-static {v0, v11, v12}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4fb

    .line 2141
    :cond_4e4
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v11, 0x1110040

    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_4fb

    .line 2142
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v11, "airplane_mode_on"

    const/4 v13, 0x0

    invoke-static {v0, v11, v13}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 2146
    :cond_4fb
    :goto_4fb
    const/4 v11, 0x0

    .line 2147
    .local v11, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v12, 0x0

    .line 2148
    .local v12, "notification":Landroid/app/INotificationManager;
    const/4 v13, 0x0

    .line 2149
    .local v13, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v32, 0x0

    .line 2150
    .local v32, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v33, 0x0

    .line 2153
    .local v33, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v34, v3

    const/4 v3, 0x1

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v34, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    if-eq v0, v3, :cond_584

    .line 2154
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2155
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10402c3

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2157
    .local v3, "immsClassName":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_52b

    .line 2158
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v35, v5

    .end local v5    # "isWatch":Z
    .local v35, "isWatch":Z
    const-class v5, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v36, v8

    goto :goto_569

    .line 2161
    .end local v35    # "isWatch":Z
    .restart local v5    # "isWatch":Z
    :cond_52b
    move/from16 v35, v5

    .end local v5    # "isWatch":Z
    .restart local v35    # "isWatch":Z
    :try_start_52d
    const-string v0, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_534
    .catchall {:try_start_52d .. :try_end_534} :catchall_54f

    move-object/from16 v36, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v36, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_536
    const-string v8, "Starting custom IMMS: "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_54c
    .catchall {:try_start_536 .. :try_end_54c} :catchall_54d

    .line 2165
    goto :goto_569

    .line 2163
    :catchall_54d
    move-exception v0

    goto :goto_552

    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_54f
    move-exception v0

    move-object/from16 v36, v8

    .line 2164
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_552
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

    .line 2167
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_569
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2169
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2171
    :try_start_571
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_578
    .catchall {:try_start_571 .. :try_end_578} :catchall_579

    .line 2174
    goto :goto_580

    .line 2172
    :catchall_579
    move-exception v0

    .line 2173
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Accessibility Manager"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2175
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_580
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_588

    .line 2153
    .end local v3    # "immsClassName":Ljava/lang/String;
    .end local v35    # "isWatch":Z
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v5    # "isWatch":Z
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :cond_584
    move/from16 v35, v5

    move-object/from16 v36, v8

    .line 2178
    .end local v5    # "isWatch":Z
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v35    # "isWatch":Z
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_588
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2180
    :try_start_58d
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_590
    .catchall {:try_start_58d .. :try_end_590} :catchall_591

    .line 2183
    goto :goto_598

    .line 2181
    :catchall_591
    move-exception v0

    .line 2182
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making display ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2184
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_598
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2186
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5ea

    .line 2187
    const-string v0, "0"

    const-string/jumbo v3, "system_init.startmountservice"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5ea

    .line 2188
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2194
    :try_start_5b4
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/StorageManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2195
    const-string/jumbo v0, "mount"

    .line 2196
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2195
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_5c6
    .catchall {:try_start_5b4 .. :try_end_5c6} :catchall_5c9

    .line 2199
    .end local v28    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v0, "storageManager":Landroid/os/storage/IStorageManager;
    move-object/from16 v28, v0

    goto :goto_5d0

    .line 2197
    .end local v0    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v28    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_5c9
    move-exception v0

    .line 2198
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StorageManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2200
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5d0
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2202
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2204
    :try_start_5d8
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_5df
    .catchall {:try_start_5d8 .. :try_end_5df} :catchall_5e0

    .line 2207
    goto :goto_5e7

    .line 2205
    :catchall_5e0
    move-exception v0

    .line 2206
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StorageStatsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2208
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5e7
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2214
    :cond_5ea
    const-string v0, "StartUiModeManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2215
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2216
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2218
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2220
    :try_start_5fe
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_605
    .catchall {:try_start_5fe .. :try_end_605} :catchall_606

    .line 2223
    goto :goto_60d

    .line 2221
    :catchall_606
    move-exception v0

    .line 2222
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting LocaleManagerService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2224
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_60d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2226
    const-string v0, "StartGrammarInflectionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2228
    :try_start_615
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_61c
    .catchall {:try_start_615 .. :try_end_61c} :catchall_61d

    .line 2231
    goto :goto_624

    .line 2229
    :catchall_61d
    move-exception v0

    .line 2230
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting GrammarInflectionService service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2232
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_624
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2234
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2235
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2236
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2238
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2239
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 2240
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2242
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2244
    move-object v3, v10

    move-object v5, v11

    .end local v10    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v11    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v3, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 2247
    .local v10, "bootDexoptStartTime":J
    :try_start_64e
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v8, "dexopt"

    invoke-virtual {v0, v8}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2248
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_65c
    .catchall {:try_start_64e .. :try_end_65c} :catchall_65d

    goto :goto_664

    .line 2249
    :catchall_65d
    move-exception v0

    .line 2250
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_65e
    const-string/jumbo v8, "update packages"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_664
    .catchall {:try_start_65e .. :try_end_664} :catchall_18e1

    .line 2252
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_664
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v8, "dexopt"

    invoke-virtual {v0, v8}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2253
    nop

    .line 2254
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2256
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v8, v12

    move-object/from16 v37, v13

    .end local v12    # "notification":Landroid/app/INotificationManager;
    .end local v13    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v8, "notification":Landroid/app/INotificationManager;
    .local v37, "countryDetector":Lcom/android/server/CountryDetectorService;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v10, v11, v12, v13}, Lcom/android/server/SystemServerStub;->markBootDexopt(JJ)V

    .line 2259
    const-string v0, "UpdateMetricsIfNeeded"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2260
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updateMetricsIfNeeded()V

    .line 2261
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2274
    iget v0, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v12, 0x1

    if-ne v0, v12, :cond_6ab

    .line 2275
    const/4 v0, 0x0

    move-object v13, v0

    move-object/from16 v40, v3

    move-object/from16 v43, v5

    move-object/from16 v42, v8

    move-object/from16 v41, v23

    move-object/from16 v45, v15

    move-object/from16 v46, v16

    move-object/from16 v47, v31

    move-object/from16 v48, v32

    move-object/from16 v49, v33

    move-object/from16 v44, v36

    move-object/from16 v50, v37

    .local v0, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    goto/16 :goto_1225

    .line 2277
    .end local v0    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_6ab
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2279
    :try_start_6b0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2280
    const-string/jumbo v0, "lock_settings"

    .line 2281
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2280
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_6c2
    .catchall {:try_start_6b0 .. :try_end_6c2} :catchall_6c5

    move-object/from16 v32, v0

    .line 2284
    goto :goto_6cc

    .line 2282
    :catchall_6c5
    move-exception v0

    .line 2283
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "starting LockSettingsService service"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2285
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6cc
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2287
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v12, ""

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/16 v17, 0x1

    xor-int/lit8 v0, v0, 0x1

    move v12, v0

    .line 2288
    .local v12, "hasPdb":Z
    if-eqz v12, :cond_6f2

    .line 2289
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2290
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2291
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2294
    :cond_6f2
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_710

    const-string/jumbo v0, "ro.boot.dev_mode"

    const/4 v13, 0x0

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v13, 0x1

    if-ne v0, v13, :cond_710

    .line 2295
    const-string v0, "StartArcPersistentDataBlock"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2296
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v13, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2297
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2300
    :cond_710
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2301
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2302
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2304
    if-nez v12, :cond_727

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_736

    .line 2306
    :cond_727
    const-string v0, "StartOemLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2307
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2308
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2311
    :cond_736
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2312
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2313
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2317
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2318
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v13}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v13, v0

    check-cast v13, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2319
    .local v13, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2321
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2323
    :try_start_75d
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 2324
    invoke-virtual {v5}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 2325
    const-string/jumbo v0, "statusbar"
    :try_end_769
    .catchall {:try_start_75d .. :try_end_769} :catchall_776

    move-object/from16 v38, v3

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v38, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const/16 v3, 0x14

    move-object/from16 v39, v8

    const/4 v8, 0x0

    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v39, "notification":Landroid/app/INotificationManager;
    :try_start_770
    invoke-static {v0, v5, v8, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_773
    .catchall {:try_start_770 .. :try_end_773} :catchall_774

    .line 2329
    goto :goto_781

    .line 2327
    :catchall_774
    move-exception v0

    goto :goto_77b

    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v39    # "notification":Landroid/app/INotificationManager;
    .restart local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :catchall_776
    move-exception v0

    move-object/from16 v38, v3

    move-object/from16 v39, v8

    .line 2328
    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v39    # "notification":Landroid/app/INotificationManager;
    :goto_77b
    const-string/jumbo v3, "starting StatusBarManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2330
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_781
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2332
    const v0, 0x10402a2

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_79d

    .line 2334
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2335
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2336
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_7a4

    .line 2338
    :cond_79d
    const-string v0, "SystemServer"

    const-string v3, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    :goto_7a4
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2343
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2344
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2345
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2346
    invoke-direct {v1, v6, v2}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2347
    if-eqz v35, :cond_7c4

    invoke-static {}, Landroid/server/Flags;->removeWearableSensingServiceFromWear()Z

    move-result v0

    if-nez v0, :cond_7bc

    goto :goto_7c4

    .line 2350
    :cond_7bc
    const-string v0, "SystemServer"

    const-string v3, "Not starting WearableSensingService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7c7

    .line 2348
    :cond_7c4
    :goto_7c4
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2352
    :goto_7c7
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2354
    const v0, 0x1040288

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7e3

    .line 2356
    const-string v0, "StartAmbientContextService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2357
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2358
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_7ea

    .line 2360
    :cond_7e3
    const-string v0, "SystemServer"

    const-string v3, "AmbientContextManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2364
    :goto_7ea
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2365
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2366
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2369
    const v0, 0x1040289

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_812

    .line 2370
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2371
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2372
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_819

    .line 2374
    :cond_812
    const-string v0, "SystemServer"

    const-string v3, "AppPredictionService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2378
    :goto_819
    const v0, 0x1040292

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_832

    .line 2379
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2380
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2381
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_839

    .line 2383
    :cond_832
    const-string v0, "SystemServer"

    const-string v3, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2387
    :goto_839
    const v0, 0x10402ae

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_851

    .line 2388
    const-string v0, "StartSearchUiService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2389
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2390
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2394
    :cond_851
    const v0, 0x10402b1

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_86a

    .line 2395
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2396
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2397
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_871

    .line 2399
    :cond_86a
    const-string v0, "SystemServer"

    const-string v3, "SmartspaceManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2403
    :goto_871
    const v0, 0x1040296

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_88a

    .line 2405
    const-string v0, "StartContextualSearchService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2406
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2407
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_891

    .line 2409
    :cond_88a
    const-string v0, "SystemServer"

    const-string v3, "ContextualSearchManagerService not defined or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2412
    :goto_891
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2414
    :try_start_896
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_89d
    .catchall {:try_start_896 .. :try_end_89d} :catchall_89e

    .line 2417
    goto :goto_8a5

    .line 2415
    :catchall_89e
    move-exception v0

    .line 2416
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing ConnectivityModuleConnector"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2418
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8a5
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2420
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2422
    :try_start_8ad
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_8b4
    .catchall {:try_start_8ad .. :try_end_8b4} :catchall_8b5

    .line 2425
    goto :goto_8bc

    .line 2423
    :catchall_8b5
    move-exception v0

    .line 2424
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing NetworkStackClient"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2426
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8bc
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2428
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2430
    :try_start_8c4
    invoke-static {v6}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v0
    :try_end_8c8
    .catchall {:try_start_8c4 .. :try_end_8c8} :catchall_8d2

    move-object v3, v0

    .line 2431
    .end local v23    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :try_start_8c9
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8cf
    .catchall {:try_start_8c9 .. :try_end_8cf} :catchall_8d0

    .line 2434
    goto :goto_8db

    .line 2432
    :catchall_8d0
    move-exception v0

    goto :goto_8d5

    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v23    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :catchall_8d2
    move-exception v0

    move-object/from16 v3, v23

    .line 2433
    .end local v23    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :goto_8d5
    const-string/jumbo v8, "starting NetworkManagement Service"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2435
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8db
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2437
    const-string v0, "StartFontManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2438
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v8, v6, v7}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2439
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2441
    if-eqz v35, :cond_8f8

    invoke-static {}, Landroid/server/Flags;->removeTextService()Z

    move-result v0

    if-nez v0, :cond_907

    .line 2442
    :cond_8f8
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2443
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2444
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2447
    :cond_907
    if-nez v19, :cond_918

    .line 2448
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2449
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2450
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2451
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2454
    :cond_918
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2455
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2456
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2458
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2461
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.NetworkStatsServiceInitializer"

    move-object/from16 v40, v5

    .end local v5    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v40, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v5, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v8, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2463
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2465
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2467
    :try_start_93f
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v6, v5, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_946
    .catchall {:try_start_93f .. :try_end_946} :catchall_950

    move-object v8, v0

    .line 2469
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_947
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_94d
    .catchall {:try_start_947 .. :try_end_94d} :catchall_94e

    .line 2472
    goto :goto_959

    .line 2470
    :catchall_94e
    move-exception v0

    goto :goto_953

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_950
    move-exception v0

    move-object/from16 v8, v36

    .line 2471
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_953
    const-string/jumbo v5, "starting NetworkPolicy Service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2473
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_959
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2476
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 2477
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v23

    move-object/from16 v41, v3

    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v41, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/SystemServerStub;->getMiuilibpath()Ljava/lang/String;

    move-result-object v3

    .line 2476
    invoke-virtual {v0, v5, v3}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2479
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_99b

    .line 2482
    const-string v0, "StartWifi"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2483
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.WifiService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2485
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2486
    const-string v0, "StartWifiScanning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2487
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2489
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2492
    :cond_99b
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlMiuiWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2493
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlSlaveWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2496
    invoke-static {}, Landroid/net/wifi/flags/Flags;->usd()Z

    move-result v0

    if-eqz v0, :cond_9cd

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110139

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9cd

    .line 2498
    const-string v0, "StartWifiUsd"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2499
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.usd.UsdService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2501
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2504
    :cond_9cd
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9ea

    .line 2506
    const-string v0, "StartRttService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2507
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.rtt.RttService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2509
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2512
    :cond_9ea
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a07

    .line 2514
    const-string v0, "StartWifiAware"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2515
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.aware.WifiAwareService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2517
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2520
    :cond_a07
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a24

    .line 2522
    const-string v0, "StartWifiP2P"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2523
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v5, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2525
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2528
    :cond_a24
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.lowpan"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a3f

    .line 2530
    const-string v0, "StartLowpan"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2531
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2532
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2535
    :cond_a3f
    const-string v0, "StartPacProxyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2537
    :try_start_a44
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v6}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V
    :try_end_a49
    .catchall {:try_start_a44 .. :try_end_a49} :catchall_a57

    move-object v3, v0

    .line 2538
    .end local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v3, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :try_start_a4a
    const-string/jumbo v0, "pac_proxy"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a50
    .catchall {:try_start_a4a .. :try_end_a50} :catchall_a53

    .line 2541
    move-object/from16 v16, v3

    goto :goto_a5e

    .line 2539
    :catchall_a53
    move-exception v0

    move-object/from16 v16, v3

    goto :goto_a58

    .end local v3    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :catchall_a57
    move-exception v0

    .line 2540
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_a58
    const-string/jumbo v3, "starting PacProxyService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2542
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a5e
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2545
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 2546
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/SystemServerStub;->getConnectivitylibpath()Ljava/lang/String;

    move-result-object v5

    .line 2545
    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2548
    const-string v0, "StartConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2552
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ConnectivityServiceInitializer"

    const-string v5, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2554
    invoke-virtual {v8}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2555
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2558
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/SystemServerStub;->startAmlConnectivityService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2561
    const-string v0, "StartSecurityStateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2563
    :try_start_a90
    const-string/jumbo v0, "security_state"

    new-instance v3, Lcom/android/server/SecurityStateManagerService;

    invoke-direct {v3, v6}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a9b
    .catchall {:try_start_a90 .. :try_end_a9b} :catchall_a9c

    .line 2567
    goto :goto_aa3

    .line 2565
    :catchall_a9c
    move-exception v0

    .line 2566
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SecurityStateManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2568
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_aa3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2570
    if-eqz v35, :cond_ab7

    invoke-static {}, Landroid/server/Flags;->allowRemovingVpnService()Z

    move-result v0

    if-nez v0, :cond_aaf

    goto :goto_ab7

    .line 2582
    :cond_aaf
    const-string v0, "SystemServer"

    const-string v3, "Not starting VpnManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ad8

    .line 2571
    :cond_ab7
    :goto_ab7
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2573
    :try_start_abc
    invoke-static {v6}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v0
    :try_end_ac0
    .catchall {:try_start_abc .. :try_end_ac0} :catchall_aca

    move-object v3, v0

    .line 2574
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v3, "vpnManager":Lcom/android/server/VpnManagerService;
    :try_start_ac1
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ac7
    .catchall {:try_start_ac1 .. :try_end_ac7} :catchall_ac8

    .line 2577
    goto :goto_ad3

    .line 2575
    :catchall_ac8
    move-exception v0

    goto :goto_acd

    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_aca
    move-exception v0

    move-object/from16 v3, v31

    .line 2576
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_acd
    const-string/jumbo v5, "starting VPN Manager Service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2578
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ad3
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v31, v3

    .line 2587
    .end local v3    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_ad8
    invoke-static {}, Lcom/android/modules/utils/build/SdkLevel;->isAtLeastB()Z

    move-result v0

    if-nez v0, :cond_af7

    .line 2588
    const-string v0, "StartVcnManagementService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2597
    :try_start_ae3
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ConnectivityServiceInitializerB"

    const-string v5, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_aec
    .catchall {:try_start_ae3 .. :try_end_aec} :catchall_aed

    .line 2603
    goto :goto_af4

    .line 2601
    :catchall_aed
    move-exception v0

    .line 2602
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting VCN Management Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2604
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_af4
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2607
    :cond_af7
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2609
    :try_start_afc
    const-string/jumbo v0, "system_update"

    new-instance v3, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v3, v6}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b07
    .catchall {:try_start_afc .. :try_end_b07} :catchall_b08

    .line 2613
    goto :goto_b0f

    .line 2611
    :catchall_b08
    move-exception v0

    .line 2612
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SystemUpdateManagerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2614
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b0f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2616
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2618
    :try_start_b17
    const-string/jumbo v0, "updatelock"

    new-instance v3, Lcom/android/server/UpdateLockService;

    invoke-direct {v3, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b22
    .catchall {:try_start_b17 .. :try_end_b22} :catchall_b23

    .line 2622
    goto :goto_b2a

    .line 2620
    :catchall_b23
    move-exception v0

    .line 2621
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting UpdateLockService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2623
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b2a
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2625
    const-string v0, "StartNotificationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2626
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2627
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2628
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2629
    const-string/jumbo v0, "notification"

    .line 2630
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2629
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 2631
    .end local v39    # "notification":Landroid/app/INotificationManager;
    .local v3, "notification":Landroid/app/INotificationManager;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2633
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2634
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2635
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2637
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2639
    :try_start_b61
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_b68
    .catchall {:try_start_b61 .. :try_end_b68} :catchall_b69

    .line 2642
    goto :goto_b70

    .line 2640
    :catchall_b69
    move-exception v0

    .line 2641
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting TimeDetectorService service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2643
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b70
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2645
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2646
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2647
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2649
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2651
    :try_start_b87
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_b8c
    .catchall {:try_start_b87 .. :try_end_b8c} :catchall_b99

    move-object v5, v0

    .line 2652
    .end local v37    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v5, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_b8d
    const-string v0, "country_detector"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b92
    .catchall {:try_start_b8d .. :try_end_b92} :catchall_b95

    .line 2655
    move-object/from16 v37, v5

    goto :goto_ba0

    .line 2653
    :catchall_b95
    move-exception v0

    move-object/from16 v37, v5

    goto :goto_b9a

    .end local v5    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v37    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_b99
    move-exception v0

    .line 2654
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_b9a
    const-string/jumbo v5, "starting Country Detector"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2656
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ba0
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2658
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2660
    :try_start_ba8
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_baf
    .catchall {:try_start_ba8 .. :try_end_baf} :catchall_bb0

    .line 2663
    goto :goto_bb7

    .line 2661
    :catchall_bb0
    move-exception v0

    .line 2662
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting TimeZoneDetectorService service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2664
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_bb7
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2666
    const-string v0, "StartAltitudeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2668
    :try_start_bbf
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_bc6
    .catchall {:try_start_bbf .. :try_end_bc6} :catchall_bc7

    .line 2671
    goto :goto_bce

    .line 2669
    :catchall_bc7
    move-exception v0

    .line 2670
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting AltitudeService service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2672
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_bce
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2674
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2676
    :try_start_bd6
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_bdd
    .catchall {:try_start_bd6 .. :try_end_bdd} :catchall_bde

    .line 2679
    goto :goto_be5

    .line 2677
    :catchall_bde
    move-exception v0

    .line 2678
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting LocationTimeZoneManagerService service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2680
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_be5
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2682
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111017b

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c0c

    .line 2683
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2685
    :try_start_bfa
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c01
    .catchall {:try_start_bfa .. :try_end_c01} :catchall_c02

    .line 2688
    goto :goto_c09

    .line 2686
    :catchall_c02
    move-exception v0

    .line 2687
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting GnssTimeUpdateService service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2689
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c09
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2692
    :cond_c0c
    if-nez v35, :cond_c25

    .line 2693
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2695
    :try_start_c13
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_c1a
    .catchall {:try_start_c13 .. :try_end_c1a} :catchall_c1b

    .line 2698
    goto :goto_c22

    .line 2696
    :catchall_c1b
    move-exception v0

    .line 2697
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting Search Service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2699
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c22
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2702
    :cond_c25
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x111019a

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c42

    .line 2703
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2704
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2705
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_c49

    .line 2707
    :cond_c42
    const-string v0, "SystemServer"

    const-string v5, "Wallpaper service disabled by config"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    :goto_c49
    const v0, 0x10402b7

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_c61

    .line 2713
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2714
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2715
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2718
    :cond_c61
    const-string v0, "StartAudioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2719
    if-nez v24, :cond_c74

    .line 2720
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v23, v3

    move-object/from16 v36, v8

    goto :goto_cbe

    .line 2722
    :cond_c74
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2723
    const v5, 0x10402bf

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 2725
    .local v5, "className":Ljava/lang/String;
    :try_start_c7f
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;
    :try_end_c81
    .catchall {:try_start_c7f .. :try_end_c81} :catchall_ca2

    move-object/from16 v23, v3

    .end local v3    # "notification":Landroid/app/INotificationManager;
    .local v23, "notification":Landroid/app/INotificationManager;
    :try_start_c83
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3
    :try_end_c8c
    .catchall {:try_start_c83 .. :try_end_c8c} :catchall_c9e

    move-object/from16 v36, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_c8e
    const-string v8, "$Lifecycle"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_c9b
    .catchall {:try_start_c8e .. :try_end_c9b} :catchall_c9c

    .line 2728
    goto :goto_cbe

    .line 2726
    :catchall_c9c
    move-exception v0

    goto :goto_ca7

    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_c9e
    move-exception v0

    move-object/from16 v36, v8

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto :goto_ca7

    .end local v23    # "notification":Landroid/app/INotificationManager;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v3    # "notification":Landroid/app/INotificationManager;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_ca2
    move-exception v0

    move-object/from16 v23, v3

    move-object/from16 v36, v8

    .line 2727
    .end local v3    # "notification":Landroid/app/INotificationManager;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v23    # "notification":Landroid/app/INotificationManager;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_ca7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "starting "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2730
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v5    # "className":Ljava/lang/String;
    :goto_cbe
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2732
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2733
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2734
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2736
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.broadcastradio"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ce9

    .line 2737
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2738
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2739
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2742
    :cond_ce9
    if-nez v25, :cond_cfa

    .line 2743
    const-string v0, "StartDockObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2744
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2745
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2748
    :cond_cfa
    if-eqz v35, :cond_d13

    .line 2749
    const-string v0, "StartThermalObserver"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2753
    :try_start_d01
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_d08
    .catchall {:try_start_d01 .. :try_end_d08} :catchall_d09

    .line 2756
    goto :goto_d10

    .line 2754
    :catchall_d09
    move-exception v0

    .line 2755
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartThermalObserver"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2758
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d10
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2761
    :cond_d13
    if-nez v35, :cond_d2d

    .line 2762
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2765
    :try_start_d1a
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v6, v4}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v4, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_d22
    .catchall {:try_start_d1a .. :try_end_d22} :catchall_d23

    .line 2769
    goto :goto_d2a

    .line 2767
    :catchall_d23
    move-exception v0

    .line 2768
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting WiredAccessoryManager"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2770
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d2a
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2773
    :cond_d2d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.midi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d46

    .line 2775
    const-string v0, "StartMidiManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2776
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/midi/MidiService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2777
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2781
    :cond_d46
    const-string v0, "StartAdbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2783
    :try_start_d4b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/adb/AdbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_d52
    .catchall {:try_start_d4b .. :try_end_d52} :catchall_d53

    .line 2786
    goto :goto_d5b

    .line 2784
    :catchall_d53
    move-exception v0

    .line 2785
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failure starting AdbService"

    invoke-static {v3, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2787
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d5b
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2789
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.host"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d76

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.usb.accessory"

    .line 2790
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_d76

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_d85

    .line 2794
    :cond_d76
    const-string v0, "StartUsbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2795
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2796
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2799
    :cond_d85
    if-nez v35, :cond_d96

    .line 2800
    const-string v0, "StartSerialService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2801
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SerialService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2802
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2805
    :cond_d96
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2807
    :try_start_d9b
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 2808
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_da7
    .catchall {:try_start_d9b .. :try_end_da7} :catchall_da8

    .line 2812
    goto :goto_db0

    .line 2810
    :catchall_da8
    move-exception v0

    .line 2811
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "SystemServer"

    const-string v5, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v3, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2813
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_db0
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2815
    if-nez v35, :cond_dc4

    .line 2816
    const-string v0, "StartTwilightService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2817
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2818
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2821
    :cond_dc4
    const-string v0, "StartColorDisplay"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2822
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2823
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2826
    const-string v0, "StartJobScheduler"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2827
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2828
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2830
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2831
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2832
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2834
    const-string v0, "StartTrustManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2835
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2836
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2839
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    const/4 v8, 0x0

    invoke-virtual {v0, v6, v8}, Lcom/android/server/SystemServerStub;->addExtraServices(Landroid/content/Context;Z)V

    .line 2842
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.backup"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e21

    .line 2843
    const-string v0, "StartBackupManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2844
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2845
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2848
    :cond_e21
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.app_widgets"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e38

    .line 2849
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x111016b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_e47

    .line 2850
    :cond_e38
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2851
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appwidget/AppWidgetService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2852
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2859
    :cond_e47
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2860
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2861
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2863
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_e6f

    .line 2864
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2865
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2866
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2868
    :cond_e6f
    const-string v0, "StartSensorNotification"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2869
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2870
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2872
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.context_hub"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e97

    .line 2873
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2874
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2875
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2878
    :cond_e97
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2880
    :try_start_e9c
    const-string v0, "diskstats"

    new-instance v3, Lcom/android/server/DiskStatsService;

    invoke-direct {v3, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ea6
    .catchall {:try_start_e9c .. :try_end_ea6} :catchall_ea7

    .line 2883
    goto :goto_eae

    .line 2881
    :catchall_ea7
    move-exception v0

    .line 2882
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting DiskStats Service"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2884
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_eae
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2886
    const-string v0, "RuntimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2888
    :try_start_eb6
    const-string/jumbo v0, "runtime"

    new-instance v3, Lcom/android/server/RuntimeService;

    invoke-direct {v3, v6}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ec1
    .catchall {:try_start_eb6 .. :try_end_ec1} :catchall_ec2

    .line 2891
    goto :goto_ec9

    .line 2889
    :catchall_ec2
    move-exception v0

    .line 2890
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting RuntimeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2892
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ec9
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2893
    if-nez v20, :cond_ef9

    if-eqz v35, :cond_ed8

    if-eqz v35, :cond_ef9

    .line 2894
    invoke-static {}, Landroid/server/Flags;->allowNetworkTimeUpdateService()Z

    move-result v0

    if-eqz v0, :cond_ef9

    .line 2895
    :cond_ed8
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2897
    :try_start_edd
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v0, v6}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_ee2
    .catchall {:try_start_edd .. :try_end_ee2} :catchall_eec

    move-object v3, v0

    .line 2898
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v3, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :try_start_ee3
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ee9
    .catchall {:try_start_ee3 .. :try_end_ee9} :catchall_eea

    .line 2901
    goto :goto_ef5

    .line 2899
    :catchall_eea
    move-exception v0

    goto :goto_eef

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :catchall_eec
    move-exception v0

    move-object/from16 v3, v38

    .line 2900
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :goto_eef
    const-string/jumbo v5, "starting NetworkTimeUpdate service"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2902
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ef5
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_efb

    .line 2905
    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :cond_ef9
    move-object/from16 v3, v38

    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :goto_efb
    const-string v0, "CertBlocklister"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2907
    :try_start_f00
    new-instance v0, Lcom/android/server/CertBlocklister;

    invoke-direct {v0, v6}, Lcom/android/server/CertBlocklister;-><init>(Landroid/content/Context;)V
    :try_end_f05
    .catchall {:try_start_f00 .. :try_end_f05} :catchall_f06

    .line 2910
    goto :goto_f0d

    .line 2908
    :catchall_f06
    move-exception v0

    .line 2909
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting CertBlocklister"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2911
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f0d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2915
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2916
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2917
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2920
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2921
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2922
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2925
    const-string v0, "StartDreamManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2926
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2927
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2929
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2930
    const-string/jumbo v0, "graphicsstats"

    new-instance v5, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v5, v6}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2932
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2934
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_f67

    .line 2935
    const-string v0, "AddCoverageService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2936
    const-string v0, "coverage"

    new-instance v5, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v5}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2937
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2940
    :cond_f67
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.print"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f80

    .line 2941
    const-string v0, "StartPrintManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2942
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2943
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2946
    :cond_f80
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2947
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2948
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2950
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.companion_device_setup"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fa8

    .line 2951
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2952
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2953
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2956
    :cond_fa8
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v5, 0x1110199

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_fc4

    .line 2957
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2958
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2959
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2962
    :cond_fc4
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2963
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2964
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2966
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2967
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2968
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2970
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ffb

    .line 2971
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2972
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2973
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2976
    :cond_ffb
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_100f

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    .line 2977
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_101e

    .line 2978
    :cond_100f
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2979
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2980
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2983
    :cond_101e
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.live_tv"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1032

    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    .line 2984
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1041

    .line 2985
    :cond_1032
    const-string v0, "StartTvInputManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2986
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2987
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2990
    :cond_1041
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.tv.tuner"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_105a

    .line 2991
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2992
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2993
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2996
    :cond_105a
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/media/tv/flags/Flags;->mediaQualityFw()Z

    move-result v0

    if-eqz v0, :cond_1071

    if-eqz v25, :cond_1071

    .line 2997
    const-string v0, "StartMediaQuality"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2998
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/quality/MediaQualityService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2999
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3002
    :cond_1071
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.picture_in_picture"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_108a

    .line 3003
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3004
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3005
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3008
    :cond_108a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.software.leanback"

    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10a3

    .line 3009
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3010
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3011
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3014
    :cond_10a3
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3016
    :try_start_10a8
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_10ad
    .catchall {:try_start_10a8 .. :try_end_10ad} :catchall_10bb

    move-object v5, v0

    .line 3017
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v5, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_10ae
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10b4
    .catchall {:try_start_10ae .. :try_end_10b4} :catchall_10b7

    .line 3020
    move-object/from16 v33, v5

    goto :goto_10c2

    .line 3018
    :catchall_10b7
    move-exception v0

    move-object/from16 v33, v5

    goto :goto_10bc

    .end local v5    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_10bb
    move-exception v0

    .line 3019
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_10bc
    const-string/jumbo v5, "starting MediaRouterService"

    invoke-direct {v1, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3021
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_10c2
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3023
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v5, "android.hardware.biometrics.face"

    .line 3024
    invoke-virtual {v0, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v5

    .line 3025
    .local v5, "hasFeatureFace":Z
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v8, "android.hardware.biometrics.iris"

    .line 3026
    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 3027
    .local v8, "hasFeatureIris":Z
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move-object/from16 v38, v3

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const-string v3, "android.hardware.fingerprint"

    .line 3028
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 3030
    .local v3, "hasFeatureFingerprint":Z
    if-eqz v5, :cond_10f6

    .line 3031
    const-string v0, "StartFaceSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3032
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v39, v3

    .end local v3    # "hasFeatureFingerprint":Z
    .local v39, "hasFeatureFingerprint":Z
    const-class v3, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3033
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 3034
    .local v0, "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_10f8

    .line 3030
    .end local v0    # "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    .end local v39    # "hasFeatureFingerprint":Z
    .restart local v3    # "hasFeatureFingerprint":Z
    :cond_10f6
    move/from16 v39, v3

    .line 3037
    .end local v3    # "hasFeatureFingerprint":Z
    .restart local v39    # "hasFeatureFingerprint":Z
    :goto_10f8
    if-eqz v8, :cond_1109

    .line 3038
    const-string v0, "StartIrisSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3039
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3040
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3043
    :cond_1109
    if-eqz v39, :cond_111d

    .line 3044
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3045
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3046
    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 3047
    .local v0, "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3051
    .end local v0    # "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    :cond_111d
    const-string v0, "StartBiometricService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3052
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3053
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3055
    const-string v0, "StartAuthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3056
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3057
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3059
    if-nez v35, :cond_116b

    if-nez v25, :cond_116b

    if-nez v26, :cond_116b

    .line 3060
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/security/Flags;->secureLockdown()Z

    move-result v0

    if-eqz v0, :cond_1156

    .line 3061
    const-string v0, "StartSecureLockDeviceService.Lifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3062
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/SecureLockDeviceService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3063
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3066
    :cond_1156
    invoke-static {}, Landroid/adaptiveauth/Flags;->enableAdaptiveAuth()Z

    move-result v0

    if-eqz v0, :cond_116b

    .line 3067
    const-string v0, "StartAuthenticationPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3068
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/security/authenticationpolicy/AuthenticationPolicyService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3069
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3073
    :cond_116b
    if-nez v35, :cond_1180

    .line 3076
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3078
    :try_start_1172
    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_1175
    .catchall {:try_start_1172 .. :try_end_1175} :catchall_1176

    .line 3081
    goto :goto_117d

    .line 3079
    :catchall_1176
    move-exception v0

    .line 3080
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting DynamicCodeLoggingService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3082
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_117d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3085
    :cond_1180
    if-nez v35, :cond_1194

    .line 3086
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3088
    :try_start_1187
    invoke-static {v6}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_118a
    .catchall {:try_start_1187 .. :try_end_118a} :catchall_118b

    .line 3091
    goto :goto_1191

    .line 3089
    :catchall_118b
    move-exception v0

    .line 3090
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "StartPruneInstantAppsJobService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3092
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1191
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3095
    :cond_1194
    const-string v0, "StartSelinuxAuditLogsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3097
    :try_start_1199
    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_119c
    .catchall {:try_start_1199 .. :try_end_119c} :catchall_119d

    .line 3100
    goto :goto_11a4

    .line 3098
    :catchall_119d
    move-exception v0

    .line 3099
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SelinuxAuditLogsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3101
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_11a4
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3104
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3105
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3106
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3108
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3109
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3110
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3112
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3113
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3114
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3116
    const-string v0, "StartPeopleService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3117
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3118
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3120
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3121
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3122
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3124
    invoke-static {}, Lcom/android/server/flags/Flags;->optionalBackgroundInstallControl()Z

    move-result v0

    if-eqz v0, :cond_1202

    const-string/jumbo v0, "ro.system_settings.service.backgound_install_control_enabled"

    .line 3125
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1211

    .line 3127
    :cond_1202
    const-string v0, "StartBackgroundInstallControlService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3128
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3129
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3133
    .end local v5    # "hasFeatureFace":Z
    .end local v8    # "hasFeatureIris":Z
    .end local v12    # "hasPdb":Z
    .end local v39    # "hasFeatureFingerprint":Z
    :cond_1211
    move-object/from16 v42, v23

    move-object/from16 v43, v40

    move-object/from16 v40, v38

    move-object/from16 v45, v15

    move-object/from16 v46, v16

    move-object/from16 v47, v31

    move-object/from16 v48, v32

    move-object/from16 v49, v33

    move-object/from16 v44, v36

    move-object/from16 v50, v37

    .end local v15    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v16    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v23    # "notification":Landroid/app/INotificationManager;
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v32    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v37    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v40, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v42, "notification":Landroid/app/INotificationManager;
    .local v43, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v44, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v45, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v46, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v47, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v48, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v49, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_1225
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3134
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3135
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3137
    if-eqz v35, :cond_134a

    .line 3139
    const-string v0, "StartWearPowerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3143
    :try_start_123b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1242
    .catchall {:try_start_123b .. :try_end_1242} :catchall_1243

    .line 3146
    goto :goto_124a

    .line 3144
    :catchall_1243
    move-exception v0

    .line 3145
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearPowerService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3148
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_124a
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3150
    const-string v0, "StartHealthService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3154
    :try_start_1252
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1259
    .catchall {:try_start_1252 .. :try_end_1259} :catchall_125a

    .line 3157
    goto :goto_1261

    .line 3155
    :catchall_125a
    move-exception v0

    .line 3156
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartHealthService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3159
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1261
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3161
    const-string v0, "StartSystemStateDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3165
    :try_start_1269
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1270
    .catchall {:try_start_1269 .. :try_end_1270} :catchall_1271

    .line 3168
    goto :goto_1278

    .line 3166
    :catchall_1271
    move-exception v0

    .line 3167
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartSystemStateDisplayService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3170
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1278
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3174
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3176
    :try_start_1280
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_1287
    .catchall {:try_start_1280 .. :try_end_1287} :catchall_1288

    .line 3179
    goto :goto_128f

    .line 3177
    :catchall_1288
    move-exception v0

    .line 3178
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearConnectivityService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3181
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_128f
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3183
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3187
    :try_start_1297
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_129e
    .catchall {:try_start_1297 .. :try_end_129e} :catchall_129f

    .line 3190
    goto :goto_12a6

    .line 3188
    :catchall_129f
    move-exception v0

    .line 3189
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearDisplayService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3192
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12a6
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3194
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_12c4

    .line 3195
    const-string v0, "StartWearDebugService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3199
    :try_start_12b2
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.debug.WearDebugService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12b9
    .catchall {:try_start_12b2 .. :try_end_12b9} :catchall_12ba

    .line 3202
    goto :goto_12c1

    .line 3200
    :catchall_12ba
    move-exception v0

    .line 3201
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearDebugService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3204
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12c1
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3207
    :cond_12c4
    const-string v0, "StartWearTimeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3211
    :try_start_12c9
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12d0
    .catchall {:try_start_12c9 .. :try_end_12d0} :catchall_12d1

    .line 3214
    goto :goto_12d8

    .line 3212
    :catchall_12d1
    move-exception v0

    .line 3213
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearTimeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3216
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12d8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3218
    const-string v0, "StartWearSettingsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3222
    :try_start_12e0
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.settings.WearSettingsService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12e7
    .catchall {:try_start_12e0 .. :try_end_12e7} :catchall_12e8

    .line 3225
    goto :goto_12ef

    .line 3223
    :catchall_12e8
    move-exception v0

    .line 3224
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearSettingsService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3227
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12ef
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3229
    const-string v0, "StartWearModeService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3233
    :try_start_12f7
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.modes.ModeManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12fe
    .catchall {:try_start_12f7 .. :try_end_12fe} :catchall_12ff

    .line 3236
    goto :goto_1306

    .line 3234
    :catchall_12ff
    move-exception v0

    .line 3235
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StartWearModeService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3238
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1306
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3241
    invoke-static {}, Landroid/server/Flags;->migrateWristOrientation()Z

    move-result v0

    if-nez v0, :cond_131a

    const-string v0, "config.enable_wristorientation"

    .line 3242
    const/4 v8, 0x0

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_131a

    const/4 v0, 0x1

    goto :goto_131b

    :cond_131a
    const/4 v0, 0x0

    .line 3243
    .local v0, "enableWristOrientationService":Z
    :goto_131b
    if-eqz v0, :cond_132c

    .line 3244
    const-string v3, "StartWristOrientationService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3245
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.wristorientation.WristOrientationService"

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3246
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3249
    :cond_132c
    invoke-static {}, Landroid/server/Flags;->wearGestureApi()Z

    move-result v3

    if-eqz v3, :cond_134a

    const-string v3, "config.enable_gesture_api"

    .line 3250
    const/4 v8, 0x0

    invoke-static {v3, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_134a

    .line 3251
    const-string v3, "StartWearGestureService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3252
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v5, "com.android.clockwork.gesture.WearGestureService"

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3253
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3257
    .end local v0    # "enableWristOrientationService":Z
    :cond_134a
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.slices_disabled"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1363

    .line 3258
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3259
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3260
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3263
    :cond_1363
    invoke-static {v6}, Lcom/android/internal/pm/RoSystemFeatures;->hasFeatureEmbedded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1378

    .line 3264
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3265
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3266
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3270
    :cond_1378
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3271
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v5, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3273
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3276
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3277
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v5, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3279
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3282
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3283
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3284
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3287
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3288
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3289
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3292
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3293
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3294
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3297
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3298
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3299
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3302
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3303
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3304
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3307
    invoke-static {}, Lcom/android/server/flags/Flags;->enableOdpFeatureGuard()Z

    move-result v0

    if-eqz v0, :cond_13f5

    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    .line 3308
    const/4 v12, 0x1

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1404

    .line 3309
    :cond_13f5
    const-string v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3310
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3311
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3315
    :cond_1404
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    move-result v0

    if-eqz v0, :cond_141b

    .line 3316
    const-string v0, "StartProfilingCompanion"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3317
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v5, "/apex/com.android.profiling/javalib/service-profiling.jar"

    invoke-virtual {v0, v3, v5}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3319
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3322
    :cond_141b
    if-eqz v7, :cond_1422

    .line 3323
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 3326
    :cond_1422
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.telephony"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1442

    .line 3328
    const-string v0, "StartMmsService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3329
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Lcom/android/server/MmsServiceBroker;

    .line 3330
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v51, v14

    goto :goto_1444

    .line 3326
    :cond_1442
    move-object/from16 v51, v14

    .line 3333
    .end local v14    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v51, "mmsService":Lcom/android/server/MmsServiceBroker;
    :goto_1444
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.autofill"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_145d

    .line 3334
    const-string v0, "StartAutoFillService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3335
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3336
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3339
    :cond_145d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.credentials"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1499

    .line 3340
    const-string v0, "credential_manager"

    const-string v3, "enable_credential_manager"

    .line 3341
    const/4 v12, 0x1

    invoke-static {v0, v3, v12}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3343
    .local v0, "credentialManagerEnabled":Z
    if-eqz v0, :cond_1492

    .line 3344
    if-eqz v35, :cond_1482

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->wearCredentialManagerEnabled()Z

    move-result v3

    if-nez v3, :cond_1482

    .line 3345
    const-string v3, "SystemServer"

    const-string v5, "CredentialManager disabled on wear."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1499

    .line 3347
    :cond_1482
    const-string v3, "StartCredentialManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3348
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v3, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3349
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1499

    .line 3352
    :cond_1492
    const-string v3, "SystemServer"

    const-string v5, "CredentialManager disabled."

    invoke-static {v3, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3357
    .end local v0    # "credentialManagerEnabled":Z
    :cond_1499
    :goto_1499
    const v0, 0x10402b5

    invoke-direct {v1, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_14b2

    .line 3358
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3359
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3360
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_14b9

    .line 3362
    :cond_14b2
    const-string v0, "SystemServer"

    const-string v3, "TranslationService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    :goto_14b9
    const-string v0, "StartClipboardService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3367
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3368
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3370
    const-string v0, "AppServiceManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3371
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3372
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3376
    sget-object v0, Lcom/android/server/SystemServer;->sMtkSystemServerIns:Lcom/mediatek/server/MtkSystemServer;

    invoke-virtual {v0}, Lcom/mediatek/server/MtkSystemServer;->startMtkOtherServices()V

    .line 3379
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3380
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3381
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3384
    invoke-static {}, Landroid/uprobestats/flags/Flags;->executableMethodFileOffsets()Z

    move-result v0

    if-eqz v0, :cond_1501

    .line 3385
    const-string v0, "StartDynamicInstrumentationManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3386
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/os/instrumentation/DynamicInstrumentationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3387
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3392
    :cond_1501
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3393
    if-eqz v48, :cond_1513

    .line 3395
    :try_start_1508
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_150b
    .catchall {:try_start_1508 .. :try_end_150b} :catchall_150c

    .line 3398
    goto :goto_1513

    .line 3396
    :catchall_150c
    move-exception v0

    .line 3397
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Lock Settings Service ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3400
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1513
    :goto_1513
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3403
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3404
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x1e0

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3405
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3409
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 3412
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v12, 0x11101d1

    invoke-virtual {v8, v12}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 3410
    invoke-static {v0, v3, v5, v8}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    move-result-object v12

    .line 3413
    .local v12, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    if-eqz v12, :cond_1547

    .line 3414
    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3415
    invoke-virtual {v12, v2}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3416
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3419
    :cond_1547
    const/4 v0, 0x0

    .line 3420
    .local v0, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_1564

    .line 3421
    const-string v3, "CommunalProfileInitializer.init"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3422
    new-instance v3, Lcom/android/server/CommunalProfileInitializer;

    iget-object v5, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v5}, Lcom/android/server/CommunalProfileInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    move-object v0, v3

    .line 3424
    invoke-virtual {v0, v2}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3425
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v52, v0

    goto :goto_1571

    .line 3427
    :cond_1564
    const-string v3, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3428
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 3429
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v52, v0

    .line 3432
    .end local v0    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .local v52, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    :goto_1571
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3433
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3434
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3436
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3438
    :try_start_1585
    invoke-virtual {v9}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_1588
    .catchall {:try_start_1585 .. :try_end_1588} :catchall_1589

    .line 3441
    goto :goto_1590

    .line 3439
    :catchall_1589
    move-exception v0

    .line 3440
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "making Window Manager Service ready"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3442
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1590
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3444
    const-string v0, "RegisterLogMteState"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3446
    :try_start_1598
    invoke-static {v6}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_159b
    .catchall {:try_start_1598 .. :try_end_159b} :catchall_159c

    .line 3449
    goto :goto_15a2

    .line 3447
    :catchall_159c
    move-exception v0

    .line 3448
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v3, "RegisterLogMteState"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3450
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15a2
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3453
    const-class v3, Lcom/android/server/SystemService;

    monitor-enter v3

    .line 3454
    :try_start_15a8
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_15aa
    .catchall {:try_start_15a8 .. :try_end_15aa} :catchall_18cf

    if-eqz v0, :cond_15c7

    .line 3455
    :try_start_15ac
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v5, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 3456
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_15b6
    .catchall {:try_start_15ac .. :try_end_15b6} :catchall_15b7

    goto :goto_15c7

    .line 3458
    :catchall_15b7
    move-exception v0

    move-wide/from16 v53, v10

    move/from16 v10, v26

    move/from16 v8, v35

    move-object/from16 v26, v4

    move-object/from16 v35, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    goto/16 :goto_18dd

    :cond_15c7
    :goto_15c7
    :try_start_15c7
    monitor-exit v3
    :try_end_15c8
    .catchall {:try_start_15c7 .. :try_end_15c8} :catchall_18cf

    .line 3460
    if-eqz v7, :cond_15cf

    .line 3461
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 3467
    :cond_15cf
    const/4 v8, 0x0

    invoke-virtual {v9, v8}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v3

    .line 3468
    .local v3, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v5, v0

    .line 3469
    .local v5, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3470
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3, v5}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3473
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v23

    .line 3474
    .local v23, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_15f5

    .line 3475
    invoke-virtual/range {v23 .. v23}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 3479
    :cond_15f5
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3480
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3481
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3483
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3484
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 3485
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3487
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->refactorCrashrecovery()Z

    move-result v0

    if-eqz v0, :cond_163b

    .line 3494
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/stability/flags/Flags;->enableHyperRescueparty()Z

    move-result v0

    if-eqz v0, :cond_162d

    .line 3495
    const-string v0, "StartCrashRecoveryModuleXM"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3496
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->addCrashRecoveryModuleXM()V

    .line 3497
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1640

    .line 3499
    :cond_162d
    const-string v0, "StartCrashRecoveryModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3500
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->initializeCrashrecoveryModuleService(Lcom/android/server/SystemServiceManager;)V

    .line 3501
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1640

    .line 3509
    :cond_163b
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/crashrecovery/CrashRecoveryAdaptor;->packageWatchdogNoteBoot(Landroid/content/Context;)V

    .line 3513
    :goto_1640
    invoke-static {}, Landroid/os/microsoft/flags/Flags;->ltwEnabled()Z

    move-result v0

    if-eqz v0, :cond_165e

    .line 3514
    const-string v0, "StartCrossDeviceService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3515
    const-string v0, "cross_device_service"

    new-instance v8, Lcom/android/server/wm/CrossDeviceService;

    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v15, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v8, v14, v15}, Lcom/android/server/wm/CrossDeviceService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3518
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3522
    :cond_165e
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3525
    :try_start_1663
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_1668
    .catchall {:try_start_1663 .. :try_end_1668} :catchall_1669

    .line 3528
    goto :goto_1670

    .line 3526
    :catchall_1669
    move-exception v0

    .line 3527
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "making Display Manager Service ready"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3529
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1670
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3531
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3534
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3535
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v8, 0x107004c

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v8

    .line 3537
    .local v8, "classes":[Ljava/lang/String;
    array-length v14, v8

    const/4 v15, 0x0

    :goto_168c
    if-ge v15, v14, :cond_16d8

    move-object/from16 v16, v3

    .end local v3    # "config":Landroid/content/res/Configuration;
    .local v16, "config":Landroid/content/res/Configuration;
    aget-object v3, v8, v15

    .line 3538
    .local v3, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v4

    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v17, "inputManager":Lcom/android/server/input/InputManagerService;
    const-string v4, "StartDeviceSpecificServices "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3540
    :try_start_16aa
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_16af
    .catchall {:try_start_16aa .. :try_end_16af} :catchall_16b2

    .line 3543
    move-object/from16 v31, v5

    goto :goto_16cc

    .line 3541
    :catchall_16b2
    move-exception v0

    .line 3542
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v31, v5

    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .local v31, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v5, "starting "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3544
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_16cc
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3537
    .end local v3    # "className":Ljava/lang/String;
    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, v16

    move-object/from16 v4, v17

    move-object/from16 v5, v31

    goto :goto_168c

    .line 3546
    .end local v16    # "config":Landroid/content/res/Configuration;
    .end local v17    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v31    # "metrics":Landroid/util/DisplayMetrics;
    .local v3, "config":Landroid/content/res/Configuration;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "metrics":Landroid/util/DisplayMetrics;
    :cond_16d8
    move-object/from16 v16, v3

    move-object/from16 v17, v4

    move-object/from16 v31, v5

    .end local v3    # "config":Landroid/content/res/Configuration;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v16    # "config":Landroid/content/res/Configuration;
    .restart local v17    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v31    # "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3548
    if-eqz v35, :cond_16f2

    invoke-static {}, Landroid/server/Flags;->removeGameManagerServiceFromWear()Z

    move-result v0

    if-nez v0, :cond_16ea

    goto :goto_16f2

    .line 3553
    :cond_16ea
    const-string v0, "SystemServer"

    const-string v3, "Not starting GameManagerService"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1701

    .line 3549
    :cond_16f2
    :goto_16f2
    const-string v0, "GameManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3550
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/app/GameManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3551
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3556
    :goto_1701
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_171e

    .line 3557
    const-string v0, "UwbService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3558
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.uwb.UwbService"

    const-string v4, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3559
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3562
    :cond_171e
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingStackEnabled()Z

    move-result v0

    if-eqz v0, :cond_175f

    .line 3563
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.uwb"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_174e

    .line 3564
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_174e

    .line 3566
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/com/android/ranging/flags/Flags;->rangingCsEnabled()Z

    move-result v0

    if-eqz v0, :cond_175f

    .line 3567
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.bluetooth_le"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_175f

    .line 3569
    :cond_174e
    const-string v0, "RangingService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3570
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ranging.RangingService"

    const-string v4, "/apex/com.android.uwb/javalib/service-ranging.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3572
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3576
    :cond_175f
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3577
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v3, 0x208

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3578
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3580
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3581
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3582
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3584
    const-string v0, "AppSearchModule"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3585
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3586
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3588
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_17a5

    .line 3589
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3590
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3591
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3594
    :cond_17a5
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3595
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3596
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3598
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3599
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3600
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3602
    const-string v0, "HealthConnectManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3603
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3604
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3606
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.software.device_lock"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_17ed

    .line 3607
    const-string v0, "DeviceLockService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3608
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.devicelock.DeviceLockService"

    const-string v4, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3610
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3613
    :cond_17ed
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    move-result v0

    if-nez v0, :cond_17f9

    .line 3614
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    move-result v0

    if-eqz v0, :cond_1808

    .line 3615
    :cond_17f9
    const-string v0, "StartSensitiveContentProtectionManager"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3616
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3617
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3621
    :cond_1808
    invoke-static {}, Lcom/android/server/PayJoyAccessManagerStub;->get()Lcom/android/server/PayJoyAccessManagerStub;

    move-result-object v0

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/PayJoyAccessManagerStub;->startService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 3625
    move-object v5, v9

    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v5, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v9, v41

    .line 3626
    .local v9, "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    move-wide v3, v10

    .end local v10    # "bootDexoptStartTime":J
    .local v3, "bootDexoptStartTime":J
    move-object/from16 v10, v44

    .line 3627
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-wide v14, v3

    move-object v4, v13

    .end local v3    # "bootDexoptStartTime":J
    .end local v13    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v4, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v14, "bootDexoptStartTime":J
    move-object/from16 v13, v50

    .line 3628
    .local v13, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-wide/from16 v32, v14

    .end local v14    # "bootDexoptStartTime":J
    .local v32, "bootDexoptStartTime":J
    move-object/from16 v14, v40

    .line 3629
    .local v14, "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    move-object/from16 v15, v17

    .line 3630
    .local v15, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v3, v16

    .end local v16    # "config":Landroid/content/res/Configuration;
    .local v3, "config":Landroid/content/res/Configuration;
    move-object/from16 v16, v29

    .line 3631
    .local v16, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v11, v17

    .end local v17    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v17, v49

    .line 3632
    .local v17, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v18, v51

    .line 3633
    .local v18, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v36, v11

    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v36, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v11, v47

    .line 3634
    .local v11, "vpnManagerF":Lcom/android/server/VpnManagerService;
    move-object/from16 v37, v5

    .line 3635
    .local v37, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    const-string v0, "connectivity"

    .line 3636
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v38, v0

    check-cast v38, Landroid/net/ConnectivityManager;

    .line 3643
    .local v38, "connectivityF":Landroid/net/ConnectivityManager;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v39, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    move/from16 v53, v35

    move-object/from16 v35, v5

    move/from16 v5, v53

    move-wide/from16 v53, v32

    move-object/from16 v55, v39

    move-object/from16 v33, v8

    move-object/from16 v32, v31

    move-object/from16 v8, v38

    move-object/from16 v31, v3

    move/from16 v3, v26

    move-object/from16 v26, v36

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v38    # "connectivityF":Landroid/net/ConnectivityManager;
    .local v3, "isAutomotive":Z
    .local v5, "isWatch":Z
    .local v8, "connectivityF":Landroid/net/ConnectivityManager;
    .local v26, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v31, "config":Landroid/content/res/Configuration;
    .local v32, "metrics":Landroid/util/DisplayMetrics;
    .local v33, "classes":[Ljava/lang/String;
    .local v35, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v53, "bootDexoptStartTime":J
    invoke-direct/range {v0 .. v18}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;ZLcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v39, v11

    move-object/from16 v36, v17

    move-object/from16 v38, v18

    move-object v11, v9

    move-object/from16 v17, v15

    move-object/from16 v18, v16

    move v9, v7

    move-object v15, v13

    move-object/from16 v16, v14

    move-object v13, v4

    move-object v7, v6

    move-object v14, v10

    move-object v6, v1

    move v10, v3

    move-object v1, v0

    move-object/from16 v0, v55

    move-object/from16 v55, v8

    move v8, v5

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
    .local v17, "inputManagerF":Lcom/android/server/input/InputManagerService;
    .local v18, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .local v36, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .local v38, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .local v39, "vpnManagerF":Lcom/android/server/VpnManagerService;
    .local v55, "connectivityF":Landroid/net/ConnectivityManager;
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3925
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v2, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v6, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    move-object/from16 v1, p1

    move-object/from16 v5, v37

    .end local v37    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v5, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {v0 .. v5}, Lcom/sprd/server/SprdSystemServer;->startUniPnPService(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/wm/WindowManagerService;)V

    .line 3932
    move-object v2, v1

    const-string v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3933
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 3934
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/internal/widget/LockSettingsInternal;

    .line 3935
    .local v1, "lockSettingsInternal":Lcom/android/internal/widget/LockSettingsInternal;
    if-eqz v1, :cond_189c

    .line 3936
    invoke-virtual {v1}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 3938
    :cond_189c
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3941
    invoke-static {}, Lcom/sprd/server/SprdSystemServer;->getInstance()Lcom/sprd/server/SprdSystemServer;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/sprd/server/SprdSystemServer;->startUnisocOtherServices(Lcom/android/server/am/ActivityManagerService;)V

    .line 3943
    const-string v0, "StartSystemUI"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3945
    :try_start_18ad
    invoke-static {v7, v5}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_18b0
    .catchall {:try_start_18ad .. :try_end_18b0} :catchall_18b1

    .line 3948
    goto :goto_18b8

    .line 3946
    :catchall_18b1
    move-exception v0

    .line 3947
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting System UI"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3949
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_18b8
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3952
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServerStub;->addCameraCoveredManagerService(Landroid/content/Context;)V

    .line 3956
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServerStub;->onOtherServicesStarted(Landroid/content/Context;)V

    .line 3959
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3960
    return-void

    .line 3458
    .end local v1    # "lockSettingsInternal":Lcom/android/internal/widget/LockSettingsInternal;
    .end local v5    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v8    # "isWatch":Z
    .end local v11    # "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v16    # "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v17    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v18    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v23    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v31    # "config":Landroid/content/res/Configuration;
    .end local v32    # "metrics":Landroid/util/DisplayMetrics;
    .end local v33    # "classes":[Ljava/lang/String;
    .end local v36    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v38    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v39    # "vpnManagerF":Lcom/android/server/VpnManagerService;
    .end local v53    # "bootDexoptStartTime":J
    .end local v55    # "connectivityF":Landroid/net/ConnectivityManager;
    .local v4, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "bootDexoptStartTime":J
    .local v26, "isAutomotive":Z
    .local v35, "isWatch":Z
    :catchall_18cf
    move-exception v0

    move-wide/from16 v53, v10

    move/from16 v10, v26

    move/from16 v8, v35

    move-object/from16 v26, v4

    move-object/from16 v35, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .local v7, "context":Landroid/content/Context;
    .restart local v8    # "isWatch":Z
    .local v9, "safeMode":Z
    .local v10, "isAutomotive":Z
    .local v26, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v35, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v53    # "bootDexoptStartTime":J
    :goto_18dd
    :try_start_18dd
    monitor-exit v3
    :try_end_18de
    .catchall {:try_start_18dd .. :try_end_18de} :catchall_18df

    throw v0

    :catchall_18df
    move-exception v0

    goto :goto_18dd

    .line 2252
    .end local v8    # "isWatch":Z
    .end local v40    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v41    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v42    # "notification":Landroid/app/INotificationManager;
    .end local v43    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v44    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v45    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v46    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v47    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v48    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v49    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v51    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v52    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .end local v53    # "bootDexoptStartTime":J
    .local v3, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v5, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "safeMode":Z
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "bootDexoptStartTime":J
    .local v12, "notification":Landroid/app/INotificationManager;
    .local v13, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v14, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v15, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v16, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v23, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v26, "isAutomotive":Z
    .local v31, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v32, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v33, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v35, "isWatch":Z
    .local v36, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_18e1
    move-exception v0

    move-object/from16 v38, v3

    move-wide/from16 v53, v10

    move-object/from16 v39, v12

    move-object/from16 v37, v13

    move/from16 v10, v26

    move/from16 v8, v35

    move-object/from16 v26, v4

    move-object/from16 v35, v9

    move v9, v7

    move-object v7, v6

    move-object v6, v1

    .end local v3    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v12    # "notification":Landroid/app/INotificationManager;
    .end local v13    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v7, "context":Landroid/content/Context;
    .restart local v8    # "isWatch":Z
    .local v9, "safeMode":Z
    .local v10, "isAutomotive":Z
    .local v26, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v35, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v37, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v38, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v39, "notification":Landroid/app/INotificationManager;
    .restart local v53    # "bootDexoptStartTime":J
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    const-string v3, "dexopt"

    invoke-virtual {v1, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2253
    throw v0

    .line 2122
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v32    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v35    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v37    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v39    # "notification":Landroid/app/INotificationManager;
    .end local v53    # "bootDexoptStartTime":J
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v5, "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v26, "isAutomotive":Z
    :catchall_18ff
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v35, v9

    move-object/from16 v38, v10

    move/from16 v10, v26

    move-object/from16 v26, v4

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v11, v26

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .local v26, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v35    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto/16 :goto_1999

    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v35    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v26, "isAutomotive":Z
    :catchall_1919
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move-object/from16 v26, v4

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v11, v26

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .local v26, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto/16 :goto_1999

    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v26, "isAutomotive":Z
    :catchall_1931
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v29

    move-object/from16 v13, v30

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v26    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto/16 :goto_1999

    .end local v30    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v13, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v26    # "isAutomotive":Z
    :catchall_1945
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v12, v29

    .end local v3    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v26    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1999

    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v34    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v17, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v26    # "isAutomotive":Z
    :catchall_1956
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    move-object/from16 v12, v29

    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v26    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1999

    .end local v29    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v3, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v26    # "isAutomotive":Z
    :catchall_1967
    move-exception v0

    move-object/from16 v29, v3

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    move-object/from16 v12, v29

    .end local v3    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v26    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v29    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1999

    .end local v29    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v26    # "isAutomotive":Z
    :catchall_197a
    move-exception v0

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v26    # "isAutomotive":Z
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    goto :goto_1999

    .end local v28    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v4, "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v5    # "isWatch":Z
    .restart local v6    # "context":Landroid/content/Context;
    .local v7, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v26    # "isAutomotive":Z
    :catchall_1989
    move-exception v0

    move-object/from16 v28, v4

    move-object/from16 v31, v7

    move-object/from16 v36, v8

    move-object/from16 v38, v10

    move/from16 v10, v26

    move v8, v5

    move-object v7, v6

    move-object v6, v1

    move-object/from16 v3, v17

    .line 2123
    .end local v4    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v5    # "isWatch":Z
    .end local v6    # "context":Landroid/content/Context;
    .end local v17    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v26    # "isAutomotive":Z
    .restart local v0    # "e":Ljava/lang/Throwable;
    .local v3, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v7, "context":Landroid/content/Context;
    .local v8, "isWatch":Z
    .local v10, "isAutomotive":Z
    .restart local v28    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v31    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v36    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v38    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :goto_1999
    const-string v1, "System"

    const-string v4, "******************************************"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2124
    const-string v1, "System"

    const-string v4, "************ Failure starting core service"

    invoke-static {v1, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2125
    throw v0
.end method

.method private startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4089
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 4090
    const-string v0, "SystemServer"

    const-string v1, "RotationResolverService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4091
    return-void

    .line 4094
    :cond_e
    const-string v0, "StartRotationResolverService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4095
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4096
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4098
    return-void
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4017
    const v0, 0x10402b3

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 4018
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4019
    return-void

    .line 4022
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4023
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4024
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4025
    return-void
.end method

.method private startSystemConfigInit(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1279
    const-string v0, "SystemServer"

    const-string v1, "Reading configuration..."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1280
    const-string v0, "ReadingSystemConfig"

    .line 1281
    .local v0, "tagSystemConfig":Ljava/lang/String;
    const-string v1, "ReadingSystemConfig"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1282
    new-instance v2, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v2, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1283
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1284
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 4107
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 4108
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 4109
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 4110
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4112
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 4113
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 4114
    return-void
.end method

.method private startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4029
    const-string v0, "StartTextToSpeechManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4030
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4031
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4032
    return-void
.end method

.method private startUniPnPService(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "windowManagerF"    # Lcom/android/server/wm/WindowManagerService;

    .line 4119
    invoke-static {}, Lxiaomi/platform/flags/Flags;->sprdEnabled()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/android/server/SystemServer;->UNIPNP_SWITCH:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 4121
    :try_start_e
    invoke-static {}, Lcom/android/server/unipnp/UnionManagerServiceFactory;->getInstance()Lcom/android/server/unipnp/UnionManagerServiceFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityTaskManagerService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, v1, v2, v3, p1}, Lcom/android/server/unipnp/UnionManagerServiceFactory;->systemReady(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/pm/PackageManagerService;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_1b
    .catchall {:try_start_e .. :try_end_1b} :catchall_1c

    .line 4125
    goto :goto_23

    .line 4123
    :catchall_1c
    move-exception v0

    .line 4124
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting UniPNP"

    invoke-direct {p0, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4127
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_23
    :goto_23
    return-void
.end method

.method private startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4101
    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4102
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 4103
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4104
    return-void
.end method

.method private updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 4005
    const-string v0, "UpdateWatchdogTimeout"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 4006
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 4007
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 4008
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 821
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Runtime restart: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 822
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Start count: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 823
    const-string v0, "Runtime start-up time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 824
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 825
    const-string v0, "Runtime start-elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 826
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 827
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 816
    const-class v0, Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
