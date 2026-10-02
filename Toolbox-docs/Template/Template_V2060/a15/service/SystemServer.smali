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

.field private static final ARC_NETWORK_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.arc.net.ArcNetworkService"

.field private static final ARC_PERSISTENT_DATA_BLOCK_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

.field private static final ARC_SYSTEM_HEALTH_SERVICE:Ljava/lang/String; = "com.android.server.arc.health.ArcSystemHealthService"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BLUETOOTH_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.btservices/javalib/service-bluetooth.jar"

.field private static final BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.bluetooth.BluetoothService"

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final CONNECTIVITY_SERVICE_APEX_PATH:Ljava/lang/String; = "/apex/com.android.tethering/javalib/service-connectivity.jar"

.field private static final CONNECTIVITY_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.ConnectivityServiceInitializer"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x1030416

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

.field private static final ON_DEVICE_PERSONALIZATION_SYSTEM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PROFILING_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.profiling/javalib/service-profiling.jar"

.field private static final PROFILING_SERVICE_LIFECYCLE_CLASS:Ljava/lang/String; = "android.os.profiling.ProfilingService$Lifecycle"

.field private static final REBOOT_READINESS_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

.field private static final ROLE_SERVICE_CLASS:Ljava/lang/String; = "com.android.role.RoleService"

.field private static final SAFETY_CENTER_SERVICE_CLASS:Ljava/lang/String; = "com.android.safetycenter.SafetyCenterService"

.field private static final SCHEDULING_APEX_PATH:Ljava/lang/String; = "/apex/com.android.scheduling/javalib/service-scheduling.jar"

.field private static final SDK_SANDBOX_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

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

.field private static final UPDATABLE_DEVICE_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

.field private static final UWB_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-uwb.jar"

.field private static final UWB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.uwb.UwbService"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DEBUG_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.debug.WearDebugService"

.field private static final WEAR_DISPLAYOFFLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.displayoffload.DisplayOffloadService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.display.WearDisplayService"

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

.field private static final WRIST_ORIENTATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.wristorientation.WristOrientationService"

.field private static final sMaxBinderThreads:I = 0x1f

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
.method public static synthetic $r8$lambda$CKXj3ds6gqFm1f6gBL5oAqAHviY(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$w-3Gi3miXNKiyB8PAYBtjKLKx_o(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 18

    invoke-direct/range {p0 .. p17}, Lcom/android/server/SystemServer;->lambda$startOtherServices$7(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

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
    .registers 2

    .line 577
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 14

    .line 738
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 501
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 519
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$SystemServerDumper-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 740
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 743
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 744
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 745
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 746
    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    iget-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static/range {v5 .. v12}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 750
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    if-le v0, v2, :cond_3d

    move v1, v2

    :cond_3d
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 751
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1161
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1162
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1163
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x1030416

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1165
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1166
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1167
    invoke-static {}, Landroid/os/Trace;->registerWithPerfetto()V

    .line 1168
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 3689
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3690
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static dumpHprof()V
    .registers 8

    .line 589
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 592
    .local v0, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemServerStub;->getHeapDumpDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 593
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    new-array v1, v2, [Ljava/io/File;

    .line 594
    :cond_16
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 595
    .local v3, "existingBacktraces":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    array-length v4, v1

    :goto_1c
    if-ge v2, v4, :cond_4a

    aget-object v5, v1, v2

    .line 597
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_27

    .line 598
    goto :goto_47

    .line 601
    :cond_27
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 602
    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 603
    goto :goto_47

    .line 606
    :cond_37
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 607
    goto :goto_47

    .line 609
    :cond_44
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 595
    .end local v5    # "file":Ljava/io/File;
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 611
    :cond_4a
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "System"

    if-lt v2, v4, :cond_8a

    .line 612
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    const/4 v4, 0x1

    if-ge v2, v4, :cond_5d

    .line 614
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 612
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 616
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

    .line 617
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_89

    .line 618
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

    .line 620
    .end local v4    # "file":Ljava/io/File;
    :cond_89
    goto :goto_61

    .line 623
    :cond_8a
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServerStub;->keepDumpSize(Ljava/util/TreeSet;)V

    .line 629
    :try_start_91
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 631
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

    .line 632
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

    .line 634
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_de} :catch_df

    .line 637
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    goto :goto_e5

    .line 635
    :catch_df
    move-exception v2

    .line 636
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Failed to dump fdtrack hprof"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 638
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_e5
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method private static getMaxFd()I
    .registers 5

    .line 555
    const/4 v0, 0x0

    .line 557
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

    .line 558
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 562
    if-eqz v0, :cond_1f

    .line 564
    :try_start_14
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_17} :catch_18

    .line 568
    goto :goto_1f

    .line 565
    :catch_18
    move-exception v1

    .line 567
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 558
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_1f
    :goto_1f
    return v1

    .line 562
    :catchall_20
    move-exception v1

    goto :goto_4d

    .line 559
    :catch_22
    move-exception v1

    .line 560
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

    .line 562
    nop

    .end local v1    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_49

    .line 564
    :try_start_3e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_41} :catch_42

    .line 568
    goto :goto_49

    .line 565
    :catch_42
    move-exception v1

    .line 567
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 572
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_49
    :goto_49
    const v1, 0x7fffffff

    return v1

    .line 562
    :goto_4d
    if-eqz v0, :cond_5a

    .line 564
    :try_start_4f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_52} :catch_53

    .line 568
    goto :goto_5a

    .line 565
    :catch_53
    move-exception v1

    .line 567
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 570
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

    .line 3800
    const-string/jumbo v0, "system_server"

    .line 3801
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 3803
    .local v7, "myPid":I
    const/16 v1, 0x3e8

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v3, "system_server"

    const/4 v4, -0x1

    iget-object v6, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    move v2, v7

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3806
    const-string/jumbo v4, "system_server"

    const/4 v6, 0x3

    const/16 v1, 0x50

    const/16 v2, 0x3e8

    move-object v3, p1

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3809
    const-class v1, Lcom/android/server/SystemServer;

    monitor-enter v1

    .line 3810
    :try_start_28
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v2, :cond_33

    .line 3811
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 3813
    :cond_33
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3814
    monitor-exit v1

    .line 3815
    const/4 v1, 0x0

    return v1

    .line 3814
    :catchall_40
    move-exception v2

    monitor-exit v1
    :try_end_42
    .catchall {:try_start_28 .. :try_end_42} :catchall_40

    throw v2
.end method

.method private static native initZygoteChildHeapProfiling()V
.end method

.method private isFirstBootOrUpgrade()Z
    .registers 2

    .line 1100
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

    .line 1094
    if-eqz p0, :cond_14

    .line 1095
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1096
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1094
    :goto_15
    return v0
.end method

.method static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 14
    .param p0, "enableThreshold"    # I
    .param p1, "abortThreshold"    # I
    .param p2, "checkInterval"    # I

    .line 649
    const/4 v0, 0x0

    .line 650
    .local v0, "enabled":Z
    const-wide/16 v1, 0x0

    .line 653
    .local v1, "nextWrite":J
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 654
    .local v3, "maxFd":I
    if-le v3, p0, :cond_13

    .line 656
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 657
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 658
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 661
    :cond_13
    const-string v4, "System"

    const/4 v5, 0x2

    const/16 v6, 0x16c

    if-le v3, p0, :cond_35

    if-nez v0, :cond_35

    .line 662
    const-string v7, "fdtrack enable threshold reached, enabling"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 663
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 667
    const-string v4, "fdtrack"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 668
    const/4 v0, 0x1

    .line 670
    sub-int v4, p1, p0

    div-int/2addr v4, v5

    .line 671
    .local v4, "watermark":I
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v5

    .line 672
    invoke-virtual {v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->enableInputMethodMonitor(I)V

    .line 674
    .end local v4    # "watermark":I
    goto :goto_5c

    :cond_35
    if-le v3, p1, :cond_47

    .line 675
    const-string v5, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    const/4 v4, 0x3

    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 680
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 681
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_5c

    .line 684
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 685
    .local v7, "now":J
    cmp-long v4, v7, v1

    if-lez v4, :cond_5c

    .line 686
    const-wide/32 v9, 0x36ee80

    add-long/2addr v9, v7

    .line 687
    .end local v1    # "nextWrite":J
    .local v9, "nextWrite":J
    nop

    .line 688
    if-eqz v0, :cond_57

    goto :goto_58

    .line 689
    :cond_57
    const/4 v5, 0x1

    .line 687
    :goto_58
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v9

    .line 695
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

    .line 698
    nop

    .line 699
    .end local v3    # "maxFd":I
    goto :goto_3

    .line 696
    .restart local v3    # "maxFd":I
    :catch_64
    move-exception v4

    .line 697
    .local v4, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method static synthetic lambda$startBootstrapServices$1()V
    .registers 1

    .line 1204
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->startCustFeatureResolverService()V

    .line 1205
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 5

    .line 1650
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1651
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1652
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1653
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1654
    .local v0, "abis32":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_23

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1655
    const-string v3, "Unable to preload default resources for secondary"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1657
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    .line 1660
    .end local v0    # "abis32":[Ljava/lang/String;
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_2d

    .line 1658
    :catch_27
    move-exception v0

    .line 1659
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1661
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method static synthetic lambda$startOtherServices$3()V
    .registers 2

    .line 1813
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1814
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1815
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 1816
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1817
    return-void
.end method

.method static synthetic lambda$startOtherServices$4()V
    .registers 2

    .line 1820
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1821
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1822
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1823
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1824
    return-void
.end method

.method private synthetic lambda$startOtherServices$5()V
    .registers 4

    .line 3324
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3325
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3326
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3327
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3328
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3329
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3330
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3331
    return-void
.end method

.method static synthetic lambda$startOtherServices$6(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 3473
    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string/jumbo v2, "tethering"

    invoke-static {v2, p0, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3476
    return-void
.end method

.method private synthetic lambda$startOtherServices$7(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 36
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "dpms"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .param p3, "isWatch"    # Z
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "safeMode"    # Z
    .param p6, "connectivityF"    # Landroid/net/ConnectivityManager;
    .param p7, "networkManagementF"    # Lcom/android/server/net/NetworkManagementService;
    .param p8, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p9, "vpnManagerF"    # Lcom/android/server/VpnManagerService;
    .param p10, "vcnManagementF"    # Lcom/android/server/VcnManagementService;
    .param p11, "hsumBootUserInitializer"    # Lcom/android/server/HsumBootUserInitializer;
    .param p12, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p13, "networkTimeUpdaterF"    # Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .param p14, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p15, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p16, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p17, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 3298
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p11

    const-string v0, "Making services ready"

    const-string v7, "SystemServer"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3300
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x226

    invoke-virtual {v0, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3301
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3302
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3304
    :try_start_27
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    .line 3307
    goto :goto_34

    .line 3305
    :catchall_2d
    move-exception v0

    .line 3306
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "observing native crashes"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3308
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3310
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3312
    :try_start_3c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    .line 3315
    goto :goto_50

    .line 3313
    :catchall_49
    move-exception v0

    .line 3314
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "registering app ops policy"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3316
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_50
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3320
    const-string v8, "WebViewFactoryPreparation"

    .line 3321
    .local v8, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3322
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v9, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v10, "WebViewFactoryPreparation"

    if-eqz v9, :cond_67

    .line 3323
    new-instance v9, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v9, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v9, v0

    goto :goto_68

    .line 3322
    :cond_67
    move-object v9, v0

    .line 3334
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v9, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_68
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3335
    const-string v11, "android.hardware.type.automotive"

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 3336
    .local v11, "isAutomotive":Z
    if-eqz v11, :cond_9e

    .line 3337
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3338
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3339
    const-string v12, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 3340
    .local v0, "cshs":Lcom/android/server/SystemService;
    instance-of v12, v0, Landroid/util/Dumpable;

    if-eqz v12, :cond_8b

    .line 3341
    iget-object v12, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v13, v0

    check-cast v13, Landroid/util/Dumpable;

    invoke-static {v12, v13}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3343
    :cond_8b
    instance-of v12, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v12, :cond_98

    .line 3344
    move-object v12, v0

    check-cast v12, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_9a

    .line 3343
    :cond_98
    move-object/from16 v13, p2

    .line 3346
    :goto_9a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_a0

    .line 3336
    .end local v0    # "cshs":Lcom/android/server/SystemService;
    :cond_9e
    move-object/from16 v13, p2

    .line 3349
    :goto_a0
    if-eqz p3, :cond_d6

    .line 3350
    const-string v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3351
    nop

    .line 3352
    const v0, 0x1040327

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3354
    .local v0, "wearServiceComponentNameString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d3

    .line 3355
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 3358
    .local v12, "wearServiceComponentName":Landroid/content/ComponentName;
    if-eqz v12, :cond_ce

    .line 3359
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 3360
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3361
    const/16 v14, 0x100

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3362
    sget-object v14, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3363
    .end local v7    # "intent":Landroid/content/Intent;
    goto :goto_d3

    .line 3364
    :cond_ce
    const-string v14, "Null wear service component name."

    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3367
    .end local v12    # "wearServiceComponentName":Landroid/content/ComponentName;
    :cond_d3
    :goto_d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3375
    .end local v0    # "wearServiceComponentNameString":Ljava/lang/String;
    :cond_d6
    if-eqz p5, :cond_ed

    .line 3376
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3378
    const/4 v0, 0x1

    :try_start_de
    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e2

    .line 3381
    goto :goto_ea

    .line 3379
    :catchall_e2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3380
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3382
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ea
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3384
    :cond_ed
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3386
    if-eqz p7, :cond_102

    .line 3387
    :try_start_f4
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkManagementService;->systemReady()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    goto :goto_102

    .line 3389
    :catchall_f8
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3390
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Managment Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_103

    .line 3391
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_102
    :goto_102
    nop

    .line 3392
    :goto_103
    const/4 v0, 0x0

    .line 3393
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v5, :cond_10d

    .line 3394
    nop

    .line 3395
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v7, v0

    goto :goto_10e

    .line 3393
    :cond_10d
    move-object v7, v0

    .line 3397
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_10e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3398
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3400
    if-eqz v4, :cond_126

    .line 3401
    :try_start_118
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11c

    goto :goto_126

    .line 3403
    :catchall_11c
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3404
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making Connectivity Service ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_127

    .line 3405
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_126
    :goto_126
    nop

    .line 3406
    :goto_127
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3407
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3409
    if-eqz p9, :cond_13f

    .line 3410
    :try_start_131
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_135

    goto :goto_13f

    .line 3412
    :catchall_135
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3413
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making VpnManagerService ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_140

    .line 3414
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_13f
    :goto_13f
    nop

    .line 3415
    :goto_140
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3416
    const-string v0, "MakeVcnManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3418
    if-eqz p10, :cond_158

    .line 3419
    :try_start_14a
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VcnManagementService;->systemReady()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    goto :goto_158

    .line 3421
    :catchall_14e
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3422
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making VcnManagementService ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_159

    .line 3423
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_158
    :goto_158
    nop

    .line 3424
    :goto_159
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3425
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3427
    if-eqz v5, :cond_171

    .line 3428
    :try_start_163
    invoke-virtual {v5, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_167

    goto :goto_171

    .line 3430
    :catchall_167
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3431
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making Network Policy Service ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_172

    .line 3432
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_171
    :goto_171
    nop

    .line 3433
    :goto_172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3436
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3440
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3442
    if-eqz v9, :cond_184

    .line 3443
    invoke-static {v9, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3445
    :cond_184
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x258

    invoke-virtual {v0, v2, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3446
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3448
    if-eqz v6, :cond_19b

    .line 3449
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3450
    invoke-virtual {v6, v2}, Lcom/android/server/HsumBootUserInitializer;->systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3451
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3454
    :cond_19b
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3461
    :try_start_1a0
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_1a7
    .catchall {:try_start_1a0 .. :try_end_1a7} :catchall_1a8

    .line 3464
    goto :goto_1af

    .line 3462
    :catchall_1a8
    move-exception v0

    .line 3463
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Network Stack"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3465
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1af
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3467
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3470
    :try_start_1b7
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v10, "android.net.ITetheringConnector"

    const-string v12, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v14, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v14}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v10, v12, v14}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_1c7
    .catchall {:try_start_1b7 .. :try_end_1c7} :catchall_1c8

    .line 3479
    goto :goto_1cf

    .line 3477
    :catchall_1c8
    move-exception v0

    .line 3478
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Tethering"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3480
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1cf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3482
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3484
    if-eqz p12, :cond_1e6

    .line 3485
    :try_start_1d9
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1dc
    .catchall {:try_start_1d9 .. :try_end_1dc} :catchall_1dd

    goto :goto_1e6

    .line 3487
    :catchall_1dd
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3488
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying CountryDetectorService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e7

    .line 3489
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1e6
    :goto_1e6
    nop

    .line 3490
    :goto_1e7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3491
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3493
    if-eqz p13, :cond_1fe

    .line 3494
    :try_start_1f1
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_1f4
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_1f5

    goto :goto_1fe

    .line 3496
    :catchall_1f5
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3497
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying NetworkTimeService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ff

    .line 3498
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1fe
    :goto_1fe
    nop

    .line 3499
    :goto_1ff
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3500
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3503
    if-eqz p14, :cond_216

    .line 3504
    :try_start_209
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_20c
    .catchall {:try_start_209 .. :try_end_20c} :catchall_20d

    goto :goto_216

    .line 3506
    :catchall_20d
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3507
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying InputManagerService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_217

    .line 3508
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_216
    :goto_216
    nop

    .line 3509
    :goto_217
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3510
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3512
    if-eqz p15, :cond_22e

    .line 3513
    :try_start_221
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_224
    .catchall {:try_start_221 .. :try_end_224} :catchall_225

    goto :goto_22e

    .line 3515
    :catchall_225
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3516
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22f

    .line 3517
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22e
    :goto_22e
    nop

    .line 3518
    :goto_22f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3519
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3521
    if-eqz p16, :cond_246

    .line 3522
    :try_start_239
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_23d

    goto :goto_246

    .line 3524
    :catchall_23d
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3525
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MediaRouterService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_247

    .line 3526
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_246
    :goto_246
    nop

    .line 3527
    :goto_247
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3528
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26c

    .line 3529
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3531
    if-eqz p17, :cond_268

    :try_start_25b
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_25e
    .catchall {:try_start_25b .. :try_end_25e} :catchall_25f

    goto :goto_268

    .line 3532
    :catchall_25f
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3533
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MmsService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_269

    .line 3534
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_268
    :goto_268
    nop

    .line 3535
    :goto_269
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3538
    :cond_26c
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3542
    :try_start_271
    const-string/jumbo v0, "incident"

    .line 3543
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3542
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 3544
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_281

    .line 3545
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_281
    .catchall {:try_start_271 .. :try_end_281} :catchall_282

    .line 3549
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_281
    goto :goto_288

    .line 3547
    :catchall_282
    move-exception v0

    .line 3548
    .local v0, "e":Ljava/lang/Throwable;
    const-string v10, "Notifying incident daemon running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3550
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_288
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3552
    iget-wide v14, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-eqz v0, :cond_2a0

    .line 3553
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3554
    iget-wide v14, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v14, v15}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3555
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3558
    :cond_2a0
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3560
    :try_start_2a5
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_2a8
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_2a9

    .line 3563
    goto :goto_2b1

    .line 3561
    :catchall_2a9
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3562
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Triggering OdsignStatsLogger"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3564
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3565
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 719
    invoke-static {}, Lcom/android/server/MiuiServicesRouter;->init()V

    .line 723
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerStub;->markSystemRun(J)V

    .line 728
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/BootKeeperStub;->beforeBoot()V

    .line 733
    invoke-static {}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->getInstance()Lcom/android/server/miuibpf/MiuiBpfServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->start()V

    .line 735
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 736
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1109
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1111
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1112
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

    .line 1115
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1116
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1118
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1126
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1127
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1128
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1129
    const/4 v7, 0x0

    .line 1131
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1134
    goto :goto_56

    .line 1132
    :catch_50
    move-exception v2

    .line 1133
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1136
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1137
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1138
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1140
    return-void

    .line 1145
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$2;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1153
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1154
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1155
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1158
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

    .line 1104
    const-string v0, "***********************************************"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
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

    .line 1106
    return-void
.end method

.method private run()V
    .registers 16

    .line 843
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    const-string v2, "SystemServer"

    new-instance v3, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 845
    .local v3, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_c
    const-string v4, "InitBeforeStartServices"

    invoke-virtual {v3, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 848
    const-string/jumbo v4, "sys.system_server.start_count"

    iget v5, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    const-string/jumbo v4, "sys.system_server.start_elapsed"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    const-string/jumbo v4, "sys.system_server.start_uptime"

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    iget v4, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 853
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iget-wide v6, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    filled-new-array {v4, v5, v6}, [Ljava/lang/Object;

    move-result-object v4

    .line 852
    const/16 v5, 0xbc3

    invoke-static {v5, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 856
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 866
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_7a

    .line 867
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v4

    .line 869
    .local v4, "languageTag":Ljava/lang/String;
    const-string/jumbo v5, "persist.sys.locale"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 870
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 871
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 872
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    .end local v4    # "languageTag":Ljava/lang/String;
    :cond_7a
    const/4 v0, 0x1

    invoke-static {v0}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 878
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 881
    const-string v1, "FULL"

    sput-object v1, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 884
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 887
    const-string v4, "Entered the Android system server!"

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 888
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 889
    .local v4, "uptimeMillis":J
    const/16 v6, 0xbc2

    invoke-static {v6, v4, v5}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 890
    iget-boolean v6, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v6, :cond_a2

    .line 891
    const/16 v6, 0x13

    invoke-static {v7, v6, v4, v5}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 897
    :cond_a2
    invoke-static {}, Lcom/android/internal/os/ZygoteInitStub;->getInstance()Lcom/android/internal/os/ZygoteInitStub;

    move-result-object v6

    const-string/jumbo v8, "start_android"

    invoke-virtual {v6, v8}, Lcom/android/internal/os/ZygoteInitStub;->addBootEvent(Ljava/lang/String;)V

    .line 907
    const-string/jumbo v6, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v6, v8}, Landroid/app/ActivityThreadStub;->useGrowthLimitOutExpendMethod(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_cd

    .line 913
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v6

    invoke-virtual {v6}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 919
    :cond_cd
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 923
    invoke-static {v0}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 927
    invoke-static {v0}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 930
    invoke-static {v0}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 933
    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 936
    const/16 v6, 0x1f

    invoke-static {v6}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 939
    const/4 v6, -0x2

    invoke-static {v6}, Landroid/os/Process;->setThreadPriority(I)V

    .line 941
    const/4 v6, 0x0

    invoke-static {v6}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 942
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 943
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v8

    const-wide/16 v9, 0x64

    const-wide/16 v11, 0xc8

    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 946
    sput-boolean v0, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 949
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 952
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 955
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 964
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 967
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 970
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 973
    const-string/jumbo v0, "system_server_dumper"

    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 974
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 977
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 978
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    iget-boolean v10, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v11, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v13, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 980
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v8}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 982
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 984
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    .line 985
    .local v0, "tp":Lcom/android/server/SystemServerInitThreadPool;
    iget-object v8, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v8, v0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 989
    invoke-static {}, Lcom/android/text/flags/Flags;->useOptimizedBoottimeFontLoading()Z

    move-result v8

    if-nez v8, :cond_163

    .line 991
    const-string v8, "Loading pre-installed system font map."

    invoke-static {v2, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14f
    .catchall {:try_start_c .. :try_end_14f} :catchall_258

    .line 995
    :try_start_14f
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V
    :try_end_152
    .catch Ljava/lang/Exception; {:try_start_14f .. :try_end_152} :catch_153
    .catchall {:try_start_14f .. :try_end_152} :catchall_258

    .line 1000
    goto :goto_163

    .line 996
    :catch_153
    move-exception v8

    .line 997
    .local v8, "e":Ljava/lang/Exception;
    :try_start_154
    const-string v9, "System font map reload"

    invoke-static {v2, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemServerStub;->resetFonts()V

    .line 999
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 1005
    .end local v8    # "e":Ljava/lang/Exception;
    :cond_163
    :goto_163
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_165
    .catchall {:try_start_154 .. :try_end_165} :catchall_258

    const-string v8, "System"

    if-eqz v2, :cond_1aa

    .line 1007
    :try_start_169
    const-string/jumbo v2, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1008
    .local v2, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_1aa

    .line 1009
    const/16 v9, 0x3d

    invoke-virtual {v2, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 1010
    .local v9, "equalIndex":I
    invoke-virtual {v2, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 1011
    .local v10, "libraryPath":Ljava/lang/String;
    add-int/lit8 v11, v9, 0x1

    .line 1012
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v2, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11
    :try_end_18a
    .catchall {:try_start_169 .. :try_end_18a} :catchall_258

    .line 1015
    .local v11, "parameterList":Ljava/lang/String;
    :try_start_18a
    invoke-static {v10, v11, v1}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_18d
    .catch Ljava/lang/Exception; {:try_start_18a .. :try_end_18d} :catch_18e
    .catchall {:try_start_18a .. :try_end_18d} :catchall_258

    .line 1019
    goto :goto_1aa

    .line 1016
    :catch_18e
    move-exception v12

    .line 1017
    .local v12, "e":Ljava/lang/Exception;
    :try_start_18f
    const-string v13, "*************************************************"

    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1018
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "********** Failed to load jvmti plugin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1aa
    .catchall {:try_start_18f .. :try_end_1aa} :catchall_258

    .line 1023
    .end local v0    # "tp":Lcom/android/server/SystemServerInitThreadPool;
    .end local v2    # "jvmtiAgent":Ljava/lang/String;
    .end local v4    # "uptimeMillis":J
    .end local v9    # "equalIndex":I
    .end local v10    # "libraryPath":Ljava/lang/String;
    .end local v11    # "parameterList":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_1aa
    :goto_1aa
    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1024
    nop

    .line 1027
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 1030
    const-string v0, "debug.debug_system"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 1031
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1037
    :cond_1c1
    :try_start_1c1
    const-string v0, "StartServices"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1038
    invoke-direct {p0, v3}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1039
    invoke-direct {p0, v3}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1040
    invoke-direct {p0, v3}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1041
    invoke-direct {p0, v3}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1044
    invoke-direct {p0, v3}, Lcom/android/server/SystemServer;->updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1046
    invoke-static {}, Lcom/android/internal/os/ZygoteConfigStub;->getInstance()Lcom/android/internal/os/ZygoteConfigStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/internal/os/ZygoteConfigStub;->initialize(Landroid/content/Context;)V

    .line 1048
    invoke-static {}, Lcom/android/server/criticalevents/CriticalEventLog;->getInstance()Lcom/android/server/criticalevents/CriticalEventLog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/criticalevents/CriticalEventLog;->logSystemServerStarted()V
    :try_end_1e5
    .catchall {:try_start_1c1 .. :try_end_1e5} :catchall_246

    .line 1054
    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1055
    nop

    .line 1057
    invoke-static {v1}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1059
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_221

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_221

    .line 1060
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1061
    .local v0, "uptimeMillis":J
    const/16 v2, 0x14

    invoke-static {v7, v2, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1064
    const-wide/32 v4, 0xea60

    .line 1065
    .local v4, "maxUptimeMillis":J
    const-wide/32 v6, 0xea60

    cmp-long v2, v0, v6

    if-lez v2, :cond_221

    .line 1066
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v6, "SystemServerTiming"

    invoke-static {v6, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    .end local v0    # "uptimeMillis":J
    .end local v4    # "maxUptimeMillis":J
    :cond_221
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v0}, Landroid/os/Binder;->setTransactionCallback(Landroid/os/IBinderCallback;)V

    .line 1081
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/BootKeeperStub;->afterBoot(Landroid/content/Context;)V

    .line 1085
    invoke-static {}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->getInstance()Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/apppreload/MiuiAppLaunchPreloadStub;->initialize(Landroid/content/Context;)V

    .line 1089
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1090
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1049
    :catchall_246
    move-exception v0

    .line 1050
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_247
    const-string v1, "******************************************"

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    const-string v1, "************ Failure starting system services"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1052
    nop

    .end local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_253
    .catchall {:try_start_247 .. :try_end_253} :catchall_253

    .line 1054
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v3    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_253
    move-exception v0

    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1055
    throw v0

    .line 1023
    :catchall_258
    move-exception v0

    invoke-virtual {v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1024
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private shouldRunPayJoyAccessService()Z
    .registers 13

    .line 3605
    invoke-static {}, Lcom/payjoy/service/PayJoyAccessManager;->isSupportRegion()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3606
    return v1

    .line 3608
    :cond_8
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 3609
    const-string/jumbo v2, "persistent_data_block"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/persistentdata/PersistentDataBlockManager;

    .line 3610
    .local v0, "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    if-nez v0, :cond_16

    .line 3611
    return v1

    .line 3613
    :cond_16
    const/16 v2, 0x3ff

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/service/persistentdata/PersistentDataBlockManager;->readPayJoyRPMBData(II)[B

    move-result-object v2

    .line 3614
    .local v2, "data":[B
    array-length v4, v2

    const-string/jumbo v5, "payjoy"

    if-ge v4, v3, :cond_2a

    .line 3615
    const-string/jumbo v3, "read RPMB flag is null"

    invoke-static {v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3616
    return v1

    .line 3618
    :cond_2a
    aget-byte v4, v2, v1

    if-eq v4, v3, :cond_34

    .line 3619
    const-string v3, "RPMB flag is not 1, so should not run PayJoyAccessService..."

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3620
    return v1

    .line 3622
    :cond_34
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz v1, :cond_6e

    .line 3624
    :try_start_38
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "com.payjoy.access"

    invoke-virtual {v1, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v1

    .line 3625
    .local v1, "isEnable":I
    const/4 v4, 0x3

    if-ne v1, v4, :cond_67

    .line 3626
    const-string v4, "PayjoyAccess is disabled, so enable it! "

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3628
    invoke-static {}, Landroid/app/ActivityThread;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v4
    :try_end_4c
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_4c} :catch_68

    .line 3629
    .local v4, "pm":Landroid/content/pm/IPackageManager;
    if-eqz v4, :cond_67

    .line 3631
    :try_start_4e
    const-string v7, "com.payjoy.access"

    const/16 v6, 0x3e8

    invoke-static {v6}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    const-string/jumbo v11, "payjoy"

    const/4 v8, 0x1

    const/4 v9, 0x0

    move-object v6, v4

    invoke-interface/range {v6 .. v11}, Landroid/content/pm/IPackageManager;->setApplicationEnabledSetting(Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_5f
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_5f} :catch_60
    .catch Ljava/lang/Exception; {:try_start_4e .. :try_end_5f} :catch_68

    .line 3634
    goto :goto_67

    .line 3632
    :catch_60
    move-exception v6

    .line 3633
    .local v6, "e":Landroid/os/RemoteException;
    :try_start_61
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .end local v0    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    .end local v2    # "data":[B
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v7
    :try_end_67
    .catch Ljava/lang/Exception; {:try_start_61 .. :try_end_67} :catch_68

    .line 3639
    .end local v1    # "isEnable":I
    .end local v4    # "pm":Landroid/content/pm/IPackageManager;
    .end local v6    # "e":Landroid/os/RemoteException;
    .restart local v0    # "manager":Landroid/service/persistentdata/PersistentDataBlockManager;
    .restart local v2    # "data":[B
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :cond_67
    :goto_67
    goto :goto_6e

    .line 3637
    :catch_68
    move-exception v1

    .line 3638
    .local v1, "e":Ljava/lang/Exception;
    const-string v4, "PayjoyAccess is unknown!"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3641
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_6e
    :goto_6e
    return v3
.end method

.method private static spawnFdLeakCheckThread()V
    .registers 5

    .line 644
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x640

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 645
    .local v0, "enableThreshold":I
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 646
    .local v1, "abortThreshold":I
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 648
    .local v2, "checkInterval":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 700
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 701
    return-void
.end method

.method private startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3652
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 3654
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_1a

    .line 3655
    const-string v0, "debug.crash_system"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_1a

    .line 3656
    :cond_14
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 3660
    :cond_1a
    :goto_1a
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3663
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 3664
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexSystemServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 3665
    .local v2, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3666
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v4

    .line 3667
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

    .line 3668
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_63

    .line 3669
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_68

    .line 3671
    :cond_63
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3673
    :goto_68
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3674
    .end local v2    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    goto :goto_2c

    .line 3677
    :cond_6c
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 3679
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3680
    return-void
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3755
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3756
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3757
    return-void

    .line 3760
    :cond_e
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3761
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3762
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3763
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 16
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1177
    const-string/jumbo v0, "moveab"

    const-string/jumbo v1, "packagemanagermain"

    const-string/jumbo v2, "startBootstrapServices"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1179
    const-string v2, "ArtModuleServiceInitializer"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1187
    new-instance v2, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v2}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v2}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 1188
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1192
    const-string v2, "StartWatchdog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1193
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 1194
    .local v2, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 1195
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, v2}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1196
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1201
    const-string/jumbo v3, "ro.mi.os.custfeatureresolve"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, "SystemServer"

    if-eqz v3, :cond_4c

    .line 1202
    const-string v3, "Feature cust_feature_resolve is enabled"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    new-instance v3, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>()V

    const-string v6, "LoadingCustFeatureConfig"

    invoke-static {v3, v6}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    goto :goto_51

    .line 1207
    :cond_4c
    const-string v3, "Feature cust_feature_resolve is disabled"

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1211
    :goto_51
    const-string v3, "Reading configuration..."

    invoke-static {v5, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1212
    const-string v3, "ReadingSystemConfig"

    .line 1213
    .local v3, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v5, "ReadingSystemConfig"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1214
    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v6}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v6, v5}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1215
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1219
    const-string v5, "PlatformCompat"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1220
    new-instance v5, Lcom/android/server/compat/PlatformCompat;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1221
    .local v5, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v6, "platform_compat"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1222
    new-instance v6, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v6, v5}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v7, "platform_compat_native"

    invoke-static {v7, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1224
    new-array v6, v4, [J

    new-array v7, v4, [J

    invoke-static {v6, v7}, Landroid/app/AppCompatCallbacks;->install([J[J)V

    .line 1225
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1230
    const-string v6, "StartFileIntegrityService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1231
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1232
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1237
    const-string v6, "StartInstaller"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1238
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/Installer;

    .line 1239
    .local v6, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1243
    const-string v7, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1244
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1245
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1249
    const-string v7, "StartFeatureFlagsService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1250
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/flags/FeatureFlagsService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1251
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1254
    const-string v7, "UriGrantsManagerService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1255
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1256
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1258
    const-string v7, "StartPowerStatsService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1260
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1261
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1263
    const-string v7, "StartIStatsService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1264
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1265
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1269
    const-string v7, "MemtrackProxyService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1270
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1271
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1274
    const-string v7, "StartAccessCheckingService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1275
    const-class v7, Lcom/android/server/pm/permission/PermissionMigrationHelper;

    new-instance v8, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;

    invoke-direct {v8}, Lcom/android/server/pm/permission/PermissionMigrationHelperImpl;-><init>()V

    invoke-static {v7, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1277
    const-class v7, Lcom/android/server/appop/AppOpMigrationHelper;

    new-instance v8, Lcom/android/server/appop/AppOpMigrationHelperImpl;

    invoke-direct {v8}, Lcom/android/server/appop/AppOpMigrationHelperImpl;-><init>()V

    invoke-static {v7, v8}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1279
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1280
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1283
    const-string v7, "StartActivityManager"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1285
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1286
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v7

    .line 1288
    .local v7, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v8

    invoke-virtual {v8, v7}, Lcom/android/server/SystemServerStub;->addMiuiPeriodicCleanerService(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 1290
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v8, v7}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1292
    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1293
    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1294
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1295
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1298
    const-string v8, "StartDataLoaderManagerService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1299
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1301
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1304
    const-string v8, "StartIncrementalService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1305
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1306
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1312
    const-string v8, "StartPowerManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1313
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1314
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1316
    const-string v8, "StartThermalManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1317
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1318
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1322
    const-string v8, "InitPowerManagement"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1323
    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1324
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1327
    const-string v8, "StartRecoverySystemService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1328
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1329
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1332
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    .line 1333
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    move-result v8

    if-nez v8, :cond_1d1

    .line 1337
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 1341
    :cond_1d1
    const-string v8, "StartLightsService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1344
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/SystemServerStub;->createLightsServices()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1346
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1348
    const-string v8, "StartDisplayOffloadService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1350
    const-string v8, "config.enable_display_offload"

    invoke-static {v8, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1fa

    .line 1351
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1353
    :cond_1fa
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1357
    const-string v8, "StartDisplayManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1358
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1359
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1362
    const-string v8, "WaitForDisplay"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1363
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v8, p1, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1364
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1367
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v9, 0xf0

    if-nez v8, :cond_230

    .line 1368
    nop

    .line 1371
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1368
    const/16 v8, 0xe

    invoke-static {v9, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1374
    :cond_230
    const-string v8, "StartDomainVerificationService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1375
    new-instance v8, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1376
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v11

    invoke-direct {v8, v10, v11, v5}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1377
    .local v8, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v10, v8}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1378
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1381
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1384
    .local v10, "pmsStartTime":J
    const-string v12, "StartPackageManagerService"

    invoke-virtual {p1, v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1386
    :try_start_251
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1388
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1390
    iget-object v12, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v13, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v13, :cond_267

    const/4 v13, 0x1

    goto :goto_268

    :cond_267
    move v13, v4

    :goto_268
    invoke-static {v12, v6, v8, v13}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_26e
    .catchall {:try_start_251 .. :try_end_26e} :catchall_3c7

    .line 1394
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1398
    nop

    .line 1401
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/server/SystemServerStub;->markPmsScan(JJ)V

    .line 1404
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1405
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1406
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1408
    const-string v1, "DexUseManagerLocal"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1411
    const-class v1, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v12, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1412
    invoke-static {v12}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v12

    .line 1411
    invoke-static {v1, v12}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1413
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1415
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v1, :cond_2c2

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_2c2

    .line 1416
    nop

    .line 1419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1416
    const/16 v1, 0xf

    invoke-static {v9, v1, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1423
    :cond_2c2
    const-string v1, "config.disable_otadexopt"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1424
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_2fc

    .line 1425
    const-string v9, "StartOtaDexOptService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1427
    :try_start_2cf
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1428
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, v12}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_2dd
    .catchall {:try_start_2cf .. :try_end_2dd} :catchall_2de

    goto :goto_2e5

    .line 1429
    :catchall_2de
    move-exception v9

    .line 1430
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2df
    const-string/jumbo v12, "starting OtaDexOptService"

    invoke-direct {p0, v12, v9}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2e5
    .catchall {:try_start_2df .. :try_end_2e5} :catchall_2f0

    .line 1432
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_2e5
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1434
    goto :goto_2fc

    .line 1432
    :catchall_2f0
    move-exception v4

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1433
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1434
    throw v4

    .line 1437
    :cond_2fc
    :goto_2fc
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_30f

    .line 1438
    const-string v0, "StartArcSystemHealthService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1439
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.arc.health.ArcSystemHealthService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1440
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1443
    :cond_30f
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1448
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1449
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1450
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1453
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1454
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1455
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1458
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1462
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1463
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1468
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1471
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/om/OverlayManagerService;

    iget-object v12, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v12}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1473
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1476
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1477
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1478
    .local v0, "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1479
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v9, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1480
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1482
    const-string v9, "StartSensorPrivacyService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1483
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v12, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v13, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1484
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1486
    const-string/jumbo v9, "persist.sys.displayinset.top"

    invoke-static {v9, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_3ab

    .line 1488
    iget-object v4, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1489
    const-class v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v4}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1494
    :cond_3ab
    const-string v4, "StartSensorService"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1495
    iget-object v4, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v4, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1496
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1499
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4, v9, v6}, Lcom/android/server/SystemServerStub;->addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 1502
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1503
    return-void

    .line 1394
    .end local v0    # "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    .end local v1    # "disableOtaDexopt":Z
    :catchall_3c7
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1396
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1398
    throw v0
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3715
    const/4 v0, 0x0

    .line 3716
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3718
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 3719
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3720
    if-eqz v0, :cond_22

    .line 3721
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3723
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3724
    return-void

    .line 3729
    :cond_28
    :goto_28
    if-nez v0, :cond_47

    .line 3730
    const v3, 0x104026e

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 3731
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3732
    return-void

    .line 3734
    :cond_39
    const v3, 0x104026f

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_47

    .line 3735
    const-string v3, "ContentProtectionService disabled because resource is not overlaid, ContentCaptureService still enabled"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3742
    :cond_47
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3743
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentcapture/ContentCaptureManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3745
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3746
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3747
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_66

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_66

    .line 3748
    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 3751
    :cond_66
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3752
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1509
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1512
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1513
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1514
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1516
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1519
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1522
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1523
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1524
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1525
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1524
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1526
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1529
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1530
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1531
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1532
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1536
    :cond_5e
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1537
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1538
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1541
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1542
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1543
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1546
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1547
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1548
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1551
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1552
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rollback/RollbackManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1553
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1556
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1557
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1558
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1561
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1562
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1563
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1566
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1567
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1568
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1571
    const-string v0, "StartRemoteProvisioningService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1572
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1573
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1577
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_de

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_ed

    .line 1579
    :cond_de
    const-string v0, "CpuMonitorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1580
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1581
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1584
    :cond_ed
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1585
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

    .line 3595
    const-string/jumbo v0, "startOnDeviceIntelligenceManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3596
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ondeviceintelligence/OnDeviceIntelligenceManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3597
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3598
    return-void
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 69
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1591
    move-object/from16 v13, p0

    move-object/from16 v7, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1592
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1594
    iget-object v6, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1595
    .local v6, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1596
    .local v1, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v2, 0x0

    .line 1597
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v3, 0x0

    .line 1598
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    const/4 v4, 0x0

    .line 1599
    .local v4, "vpnManager":Lcom/android/server/VpnManagerService;
    const/4 v5, 0x0

    .line 1600
    .local v5, "vcnManagement":Lcom/android/server/VcnManagementService;
    const/4 v8, 0x0

    .line 1601
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v9, 0x0

    .line 1602
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    const/4 v10, 0x0

    .line 1603
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const/4 v11, 0x0

    .line 1604
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v12, 0x0

    .line 1605
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v14, 0x0

    .line 1606
    .local v14, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/4 v15, 0x0

    .line 1607
    .local v15, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v16, 0x0

    .line 1608
    .local v16, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v17, 0x0

    .line 1609
    .local v17, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    const/16 v18, 0x0

    .line 1610
    .local v18, "wigigP2pService":Ljava/lang/Object;
    const/16 v19, 0x0

    .line 1612
    .local v19, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    move-object/from16 v20, v1

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v20, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v21

    .line 1615
    .local v21, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1617
    .local v22, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1620
    .local v23, "disableCameraService":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1622
    .local v24, "enableWigig":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.watch"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v26

    .line 1625
    .local v26, "isWatch":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "org.chromium.arc"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v27

    .line 1628
    .local v27, "isArc":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v28

    .line 1631
    .local v28, "isTv":Z
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v29

    .line 1634
    .local v29, "enableVrService":Z
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    move-result v0

    if-nez v0, :cond_84

    .line 1636
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_84

    const-string v0, "debug.crash_system"

    .line 1637
    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_7e

    goto :goto_84

    .line 1638
    :cond_7e
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1643
    :cond_84
    :goto_84
    :try_start_84
    const-string v0, "SecondaryZygotePreload"

    .line 1648
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    new-instance v1, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    move-object/from16 v30, v0

    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .local v30, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    const-string v0, "SecondaryZygotePreload"

    invoke-static {v1, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1663
    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1664
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v1, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v1, v6}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1666
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1668
    const-string v0, "StartKeyChainSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1669
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1670
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1672
    const-string v0, "StartBinaryTransparencyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1673
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1674
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1676
    const-string v0, "StartSchedulingPolicyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1677
    const-string/jumbo v0, "scheduling_policy"

    new-instance v1, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v1}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1678
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1682
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.microphone"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_e1
    .catchall {:try_start_84 .. :try_end_e1} :catchall_1823

    if-nez v0, :cond_106

    :try_start_e3
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.telecom"

    .line 1683
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_106

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    .line 1684
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_f5
    .catchall {:try_start_e3 .. :try_end_f5} :catchall_f8

    if-eqz v0, :cond_115

    goto :goto_106

    .line 1886
    .end local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_f8
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    goto/16 :goto_182f

    .line 1685
    .restart local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_106
    :goto_106
    :try_start_106
    const-string v0, "StartTelecomLoaderService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1686
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1687
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1690
    :cond_115
    const-string v0, "StartTelephonyRegistry"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1691
    new-instance v0, Lcom/android/server/TelephonyRegistry;

    new-instance v1, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v1}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v0, v6, v1}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_124
    .catchall {:try_start_106 .. :try_end_124} :catchall_1823

    move-object v1, v0

    .line 1693
    .end local v12    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v1, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_125
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1694
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1696
    const-string v0, "StartEntropyMixer"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v6}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v13, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1698
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1700
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1703
    const-string v0, "StartAccountManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1704
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/accounts/AccountManagerService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1705
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1707
    const-string v0, "StartContentService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1708
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/content/ContentService$Lifecycle;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1709
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1711
    const-string v0, "InstallSystemProviders"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1712
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1714
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1716
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1717
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1722
    const-string v0, "StartDropBoxManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1723
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1724
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1726
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->enhancedConfirmationModeApisEnabled()Z

    move-result v0
    :try_end_18f
    .catchall {:try_start_125 .. :try_end_18f} :catchall_1812

    if-eqz v0, :cond_1b0

    .line 1727
    :try_start_191
    const-string v0, "StartEnhancedConfirmationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1728
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.android.ecm.EnhancedConfirmationService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1729
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1a0
    .catchall {:try_start_191 .. :try_end_1a0} :catchall_1a1

    goto :goto_1b0

    .line 1886
    .end local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_1a1
    move-exception v0

    move-object v12, v1

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    goto/16 :goto_182f

    .line 1732
    .restart local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_1b0
    :goto_1b0
    :try_start_1b0
    const-string v0, "StartHintManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1733
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1734
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1737
    const-string v0, "StartRoleManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1738
    const-class v0, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v12, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
    :try_end_1c8
    .catchall {:try_start_1b0 .. :try_end_1c8} :catchall_1812

    move-object/from16 v31, v2

    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v31, "storageManager":Landroid/os/storage/IStorageManager;
    :try_start_1ca
    iget-object v2, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v2}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v12}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1740
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.role.RoleService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1741
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1dc
    .catchall {:try_start_1ca .. :try_end_1dc} :catchall_1803

    .line 1743
    if-nez v28, :cond_1fb

    .line 1744
    :try_start_1de
    const-string v0, "StartVibratorManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1745
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1746
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1ed
    .catchall {:try_start_1de .. :try_end_1ed} :catchall_1ee

    goto :goto_1fb

    .line 1886
    .end local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_1ee
    move-exception v0

    move-object v12, v1

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    goto/16 :goto_182f

    .line 1749
    .restart local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_1fb
    :goto_1fb
    :try_start_1fb
    const-string v0, "StartDynamicSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1750
    new-instance v0, Lcom/android/server/DynamicSystemService;

    invoke-direct {v0, v6}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_205
    .catchall {:try_start_1fb .. :try_end_205} :catchall_1803

    move-object v2, v0

    .line 1751
    .end local v20    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v2, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_206
    const-string v0, "dynamic_system"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1752
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1754
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v12, "android.hardware.consumerir"

    invoke-virtual {v0, v12}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_218
    .catchall {:try_start_206 .. :try_end_218} :catchall_17f0

    if-eqz v0, :cond_23f

    .line 1755
    :try_start_21a
    const-string v0, "StartConsumerIrService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1756
    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v6}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v14, v0

    .line 1757
    const-string v0, "consumer_ir"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1758
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_22d
    .catchall {:try_start_21a .. :try_end_22d} :catchall_230

    move-object/from16 v20, v14

    goto :goto_241

    .line 1886
    .end local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_230
    move-exception v0

    move-object v12, v1

    move-object/from16 v20, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    goto/16 :goto_182f

    .line 1754
    .restart local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_23f
    move-object/from16 v20, v14

    .line 1762
    .end local v14    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v20, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_241
    :try_start_241
    const-string v0, "StartSsruService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1763
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/SystemServerStub;->addSsruService()V

    .line 1764
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1768
    const-string v0, "StartAlarmManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1769
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/alarm/AlarmManagerService;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1770
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1772
    const-string v0, "StartInputManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1773
    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_269
    .catchall {:try_start_241 .. :try_end_269} :catchall_17db

    move-object v12, v0

    .line 1774
    .end local v11    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_26a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1776
    const-string v0, "DeviceStateManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1777
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1778
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_27c
    .catchall {:try_start_26a .. :try_end_27c} :catchall_17c1

    .line 1780
    if-nez v23, :cond_2a0

    .line 1781
    :try_start_27e
    const-string v0, "StartCameraServiceProxy"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1782
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1783
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_28d
    .catchall {:try_start_27e .. :try_end_28d} :catchall_28e

    goto :goto_2a0

    .line 1886
    .end local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_28e
    move-exception v0

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object/from16 v40, v8

    move-object v11, v12

    move-object v6, v13

    move-object/from16 v14, v20

    move-object v12, v1

    move-object/from16 v20, v2

    move-object v1, v7

    goto/16 :goto_182f

    .line 1786
    .restart local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2a0
    :goto_2a0
    :try_start_2a0
    const-string v0, "StartWindowManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1788
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v11, 0xc8

    invoke-virtual {v0, v7, v11}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1789
    iget-boolean v0, v13, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v0, :cond_2b2

    const/4 v0, 0x1

    goto :goto_2b3

    :cond_2b2
    const/4 v0, 0x0

    .line 1792
    :goto_2b3
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/SystemServerStub;->createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v14

    iget-object v11, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v11, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1789
    invoke-static {v6, v12, v0, v14, v11}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_2c3
    .catchall {:try_start_2a0 .. :try_end_2c3} :catchall_17c1

    move-object v11, v0

    .line 1794
    .end local v9    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v11, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_2c4
    const-string/jumbo v0, "window"

    const/16 v9, 0x13

    const/4 v14, 0x0

    invoke-static {v0, v11, v14, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1797
    const-string/jumbo v0, "input"

    const/4 v9, 0x1

    invoke-static {v0, v12, v14, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1799
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1801
    const-string v0, "SetWindowManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1802
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1803
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1805
    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1806
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1807
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1812
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>()V

    const-string v9, "StartISensorManagerService"

    invoke-static {v0, v9}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1819
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>()V

    const-string v9, "StartHidlServices"

    invoke-static {v0, v9}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_303
    .catchall {:try_start_2c4 .. :try_end_303} :catchall_17a3

    .line 1826
    if-nez v26, :cond_32a

    if-eqz v29, :cond_32a

    .line 1827
    :try_start_307
    const-string v0, "StartVrManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1828
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1829
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_316
    .catchall {:try_start_307 .. :try_end_316} :catchall_317

    goto :goto_32a

    .line 1886
    .end local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_317
    move-exception v0

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object/from16 v40, v8

    move-object v9, v11

    move-object v11, v12

    move-object v6, v13

    move-object/from16 v14, v20

    move-object v12, v1

    move-object/from16 v20, v2

    move-object v1, v7

    goto/16 :goto_182f

    .line 1832
    .restart local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_32a
    :goto_32a
    :try_start_32a
    const-string v0, "StartInputManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1833
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1834
    invoke-virtual {v12}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1835
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1838
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1839
    iget-object v0, v13, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1840
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1842
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_34b
    .catchall {:try_start_32a .. :try_end_34b} :catchall_17a3

    const/4 v9, 0x1

    if-ne v0, v9, :cond_356

    .line 1843
    :try_start_34e
    const-string v0, "SystemServer"

    const-string v9, "No Bluetooth Service (factory test)"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_355
    .catchall {:try_start_34e .. :try_end_355} :catchall_317

    goto :goto_37b

    .line 1844
    :cond_356
    :try_start_356
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v9, "android.hardware.bluetooth"

    .line 1845
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_360
    .catchall {:try_start_356 .. :try_end_360} :catchall_17a3

    if-nez v0, :cond_36a

    .line 1846
    :try_start_362
    const-string v0, "SystemServer"

    const-string v9, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_369
    .catchall {:try_start_362 .. :try_end_369} :catchall_317

    goto :goto_37b

    .line 1848
    :cond_36a
    :try_start_36a
    const-string v0, "StartBluetoothService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1849
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.bluetooth.BluetoothService"

    const-string v14, "/apex/com.android.btservices/javalib/service-bluetooth.jar"

    invoke-virtual {v0, v9, v14}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1851
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1854
    :goto_37b
    const-string v0, "IpConnectivityMetrics"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1855
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/connectivity/IpConnectivityMetrics;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1856
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1858
    const-string v0, "NetworkWatchlistService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1859
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1860
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1862
    const-string v0, "PinnerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1863
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1864
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1866
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1868
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_3b1
    .catchall {:try_start_36a .. :try_end_3b1} :catchall_17a3

    if-eqz v0, :cond_3c8

    :try_start_3b3
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v0

    if-eqz v0, :cond_3c8

    .line 1869
    const-string v0, "ProfcollectForwardingService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1870
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1871
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3c8
    .catchall {:try_start_3b3 .. :try_end_3c8} :catchall_317

    .line 1874
    :cond_3c8
    :try_start_3c8
    const-string v0, "SignedConfigService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1875
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1876
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1878
    const-string v0, "AppIntegrityService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1879
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1880
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1882
    const-string v0, "StartLogcatManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1883
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1884
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3f3
    .catchall {:try_start_3c8 .. :try_end_3f3} :catchall_17a3

    .line 1890
    .end local v30    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    nop

    .line 1892
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServerStub;->initAppRescuepartyLevel(Landroid/content/Context;)V

    .line 1897
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v14

    .line 1898
    .local v14, "safeMode":Z
    if-eqz v14, :cond_40e

    .line 1903
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v9, "airplane_mode_on"

    move-object/from16 v30, v2

    const/4 v2, 0x1

    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v30, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    invoke-static {v0, v9, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_427

    .line 1905
    .end local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :cond_40e
    move-object/from16 v30, v2

    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111003d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_427

    .line 1906
    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "airplane_mode_on"

    const/4 v9, 0x0

    invoke-static {v0, v2, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1910
    :cond_427
    :goto_427
    const/4 v2, 0x0

    .line 1911
    .local v2, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v9, 0x0

    .line 1912
    .local v9, "notification":Landroid/app/INotificationManager;
    const/16 v33, 0x0

    .line 1913
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v34, 0x0

    .line 1914
    .local v34, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v35, 0x0

    .line 1917
    .local v35, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    move-object/from16 v36, v2

    const/4 v2, 0x1

    .end local v2    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v36, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    if-eq v0, v2, :cond_4b1

    .line 1918
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1919
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10402a3

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1921
    .local v2, "immsClassName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_458

    .line 1922
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move-object/from16 v37, v3

    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v37, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    const-class v3, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v38, v4

    goto :goto_496

    .line 1925
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :cond_458
    move-object/from16 v37, v3

    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :try_start_45a
    const-string v0, "SystemServer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_461
    .catchall {:try_start_45a .. :try_end_461} :catchall_47c

    move-object/from16 v38, v4

    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v38, "vpnManager":Lcom/android/server/VpnManagerService;
    :try_start_463
    const-string v4, "Starting custom IMMS: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1926
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_479
    .catchall {:try_start_463 .. :try_end_479} :catchall_47a

    .line 1929
    goto :goto_496

    .line 1927
    :catchall_47a
    move-exception v0

    goto :goto_47f

    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_47c
    move-exception v0

    move-object/from16 v38, v4

    .line 1928
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_47f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1931
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_496
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1933
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1935
    :try_start_49e
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/accessibility/AccessibilityManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_4a5
    .catchall {:try_start_49e .. :try_end_4a5} :catchall_4a6

    .line 1938
    goto :goto_4ad

    .line 1936
    :catchall_4a6
    move-exception v0

    .line 1937
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Accessibility Manager"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1939
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4ad
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_4b5

    .line 1917
    .end local v2    # "immsClassName":Ljava/lang/String;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    :cond_4b1
    move-object/from16 v37, v3

    move-object/from16 v38, v4

    .line 1942
    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_4b5
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1944
    :try_start_4ba
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_4bd
    .catchall {:try_start_4ba .. :try_end_4bd} :catchall_4be

    .line 1947
    goto :goto_4c7

    .line 1945
    :catchall_4be
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 1946
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "making display ready"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1948
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4c7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1950
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_51c

    .line 1951
    const-string v0, "0"

    const-string/jumbo v2, "system_init.startmountservice"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_51c

    .line 1952
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1958
    :try_start_4e3
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/StorageManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1959
    const-string/jumbo v0, "mount"

    .line 1960
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1959
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_4f5
    .catchall {:try_start_4e3 .. :try_end_4f5} :catchall_4f7

    move-object v2, v0

    .line 1963
    .end local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_500

    .line 1961
    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_4f7
    move-exception v0

    .line 1962
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting StorageManagerService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, v31

    .line 1964
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_500
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1966
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1968
    :try_start_508
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/usage/StorageStatsService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_50f
    .catchall {:try_start_508 .. :try_end_50f} :catchall_510

    .line 1971
    goto :goto_517

    .line 1969
    :catchall_510
    move-exception v0

    .line 1970
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting StorageStatsService"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1972
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_517
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v31, v2

    .line 1978
    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_51c
    const-string v0, "StartUiModeManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1979
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1980
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1982
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1984
    :try_start_530
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_537
    .catchall {:try_start_530 .. :try_end_537} :catchall_538

    .line 1987
    goto :goto_53f

    .line 1985
    :catchall_538
    move-exception v0

    .line 1986
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting LocaleManagerService service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1988
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_53f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1990
    const-string v0, "StartGrammarInflectionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1992
    :try_start_547
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_54e
    .catchall {:try_start_547 .. :try_end_54e} :catchall_54f

    .line 1995
    goto :goto_556

    .line 1993
    :catchall_54f
    move-exception v0

    .line 1994
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting GrammarInflectionService service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1996
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_556
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1998
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1999
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/apphibernation/AppHibernationService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2000
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2002
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2003
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v6, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 2004
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2006
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2008
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 2011
    .local v3, "bootDexoptStartTime":J
    :try_start_57e
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v2, "dexopt"

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 2012
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_58c
    .catchall {:try_start_57e .. :try_end_58c} :catchall_58d

    goto :goto_594

    .line 2013
    :catchall_58d
    move-exception v0

    .line 2014
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_58e
    const-string/jumbo v2, "update packages"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_594
    .catchall {:try_start_58e .. :try_end_594} :catchall_1787

    .line 2016
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_594
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v2, "dexopt"

    invoke-virtual {v0, v2}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2017
    nop

    .line 2018
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2020
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v2, v8

    move-object/from16 v39, v9

    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v9    # "notification":Landroid/app/INotificationManager;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v39, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    invoke-virtual {v0, v3, v4, v8, v9}, Lcom/android/server/SystemServerStub;->markBootDexopt(JJ)V

    .line 2034
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v8, 0x1

    if-ne v0, v8, :cond_5d7

    .line 2035
    const/4 v0, 0x0

    move-object/from16 v43, v0

    move-object/from16 v44, v2

    move-wide/from16 v41, v3

    move-object/from16 v49, v5

    move-object/from16 v50, v10

    move-object/from16 v51, v16

    move-object/from16 v52, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v53, v33

    move-object/from16 v54, v34

    move-object/from16 v55, v35

    move-object/from16 v45, v36

    move-object/from16 v47, v37

    move-object/from16 v48, v38

    move-object/from16 v46, v39

    .local v0, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    goto/16 :goto_1171

    .line 2037
    .end local v0    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_5d7
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2039
    :try_start_5dc
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/locksettings/LockSettingsService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2040
    const-string/jumbo v0, "lock_settings"

    .line 2041
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2040
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_5ee
    .catchall {:try_start_5dc .. :try_end_5ee} :catchall_5f1

    .line 2044
    .end local v34    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v34, v0

    goto :goto_5f8

    .line 2042
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v34    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_5f1
    move-exception v0

    .line 2043
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "starting LockSettingsService service"

    invoke-direct {v13, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2045
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5f8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2047
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v8, ""

    invoke-virtual {v0, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v8, 0x1

    xor-int/2addr v0, v8

    move v8, v0

    .line 2048
    .local v8, "hasPdb":Z
    if-eqz v8, :cond_61c

    .line 2049
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2050
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pdb/PersistentDataBlockService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2051
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2054
    :cond_61c
    sget-boolean v0, Landroid/os/Build;->IS_ARC:Z

    if-eqz v0, :cond_63a

    const-string/jumbo v0, "ro.boot.dev_mode"

    const/4 v9, 0x0

    invoke-static {v0, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, 0x1

    if-ne v0, v9, :cond_63a

    .line 2055
    const-string v0, "StartArcPersistentDataBlock"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2056
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.arc.persistent_data_block.ArcPersistentDataBlockService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2057
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2060
    :cond_63a
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2061
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2062
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2064
    if-nez v8, :cond_651

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_660

    .line 2066
    :cond_651
    const-string v0, "StartOemLockService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2067
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2068
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2071
    :cond_660
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2072
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2073
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2077
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2078
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v9, v0

    check-cast v9, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 2079
    .local v9, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2081
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2083
    :try_start_687
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_68c
    .catchall {:try_start_687 .. :try_end_68c} :catchall_6ae

    move-object/from16 v36, v0

    .line 2084
    :try_start_68e
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V

    .line 2085
    const-string/jumbo v0, "statusbar"
    :try_end_694
    .catchall {:try_start_68e .. :try_end_694} :catchall_6a5

    move-object/from16 v40, v2

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v40, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v2, 0x14

    move-wide/from16 v41, v3

    move-object/from16 v3, v36

    const/4 v4, 0x0

    .end local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v41, "bootDexoptStartTime":J
    :try_start_69d
    invoke-static {v0, v3, v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_6a0
    .catchall {:try_start_69d .. :try_end_6a0} :catchall_6a2

    .line 2089
    move-object v2, v3

    goto :goto_6bb

    .line 2087
    :catchall_6a2
    move-exception v0

    move-object v2, v3

    goto :goto_6b5

    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41    # "bootDexoptStartTime":J
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "bootDexoptStartTime":J
    .restart local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_6a5
    move-exception v0

    move-object/from16 v40, v2

    move-wide/from16 v41, v3

    move-object/from16 v3, v36

    move-object v2, v3

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v41    # "bootDexoptStartTime":J
    goto :goto_6b5

    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41    # "bootDexoptStartTime":J
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "bootDexoptStartTime":J
    .restart local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_6ae
    move-exception v0

    move-object/from16 v40, v2

    move-wide/from16 v41, v3

    move-object/from16 v2, v36

    .line 2088
    .end local v3    # "bootDexoptStartTime":J
    .end local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .local v2, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v41    # "bootDexoptStartTime":J
    :goto_6b5
    const-string/jumbo v3, "starting StatusBarManagerService"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2090
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6bb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2092
    const v0, 0x1040280

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6d7

    .line 2094
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2095
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/musicrecognition/MusicRecognitionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2096
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_6de

    .line 2098
    :cond_6d7
    const-string v0, "SystemServer"

    const-string v3, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2102
    :goto_6de
    invoke-direct {v13, v6, v7}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2103
    invoke-direct {v13, v6, v7}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2104
    invoke-direct {v13, v6, v7}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2105
    invoke-direct {v13, v6, v7}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2106
    invoke-direct {v13, v6, v7}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2107
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2108
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startOnDeviceIntelligenceService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2110
    const v0, 0x1040266

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_70c

    .line 2112
    const-string v0, "StartAmbientContextService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2113
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2114
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_713

    .line 2116
    :cond_70c
    const-string v0, "SystemServer"

    const-string v3, "AmbientContextManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2120
    :goto_713
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2121
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/speech/SpeechRecognitionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2125
    const v0, 0x1040267

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_73b

    .line 2126
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2127
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/appprediction/AppPredictionManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2128
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_742

    .line 2130
    :cond_73b
    const-string v0, "SystemServer"

    const-string v3, "AppPredictionService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2134
    :goto_742
    const v0, 0x1040270

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_75b

    .line 2135
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2136
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contentsuggestions/ContentSuggestionsManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2137
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_762

    .line 2139
    :cond_75b
    const-string v0, "SystemServer"

    const-string v3, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2143
    :goto_762
    const v0, 0x104028f

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_77a

    .line 2144
    const-string v0, "StartSearchUiService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2145
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/searchui/SearchUiManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2146
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2150
    :cond_77a
    const v0, 0x1040291

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_793

    .line 2151
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2152
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/smartspace/SmartspaceManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2153
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_79a

    .line 2155
    :cond_793
    const-string v0, "SystemServer"

    const-string v3, "SmartspaceManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2159
    :goto_79a
    const v0, 0x1040274

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_7b3

    .line 2161
    const-string v0, "StartContextualSearchService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2162
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/contextualsearch/ContextualSearchManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2163
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_7ba

    .line 2165
    :cond_7b3
    const-string v0, "SystemServer"

    const-string v3, "ContextualSearchManagerService not defined or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2168
    :goto_7ba
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2170
    :try_start_7bf
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_7c6
    .catchall {:try_start_7bf .. :try_end_7c6} :catchall_7c7

    .line 2173
    goto :goto_7ce

    .line 2171
    :catchall_7c7
    move-exception v0

    .line 2172
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing ConnectivityModuleConnector"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2174
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7ce
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2176
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2178
    :try_start_7d6
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_7dd
    .catchall {:try_start_7d6 .. :try_end_7dd} :catchall_7de

    .line 2181
    goto :goto_7e5

    .line 2179
    :catchall_7de
    move-exception v0

    .line 2180
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing NetworkStackClient"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2182
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7e5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2184
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2186
    :try_start_7ed
    invoke-static {v6}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v0
    :try_end_7f1
    .catchall {:try_start_7ed .. :try_end_7f1} :catchall_7fb

    move-object v3, v0

    .line 2187
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :try_start_7f2
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7f8
    .catchall {:try_start_7f2 .. :try_end_7f8} :catchall_7f9

    .line 2190
    goto :goto_804

    .line 2188
    :catchall_7f9
    move-exception v0

    goto :goto_7fe

    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :catchall_7fb
    move-exception v0

    move-object/from16 v3, v37

    .line 2189
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    :goto_7fe
    const-string/jumbo v4, "starting NetworkManagement Service"

    invoke-direct {v13, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2191
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_804
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2193
    const-string v0, "StartFontManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2194
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v4, v6, v14}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2197
    if-eqz v26, :cond_821

    invoke-static {}, Landroid/server/Flags;->removeTextService()Z

    move-result v0

    if-nez v0, :cond_830

    .line 2198
    :cond_821
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2199
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2200
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2203
    :cond_830
    if-nez v21, :cond_841

    .line 2204
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2205
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2206
    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2207
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2210
    :cond_841
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2211
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2212
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2214
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2217
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.NetworkStatsServiceInitializer"

    move-object/from16 v36, v2

    .end local v2    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const-string v2, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v4, v2}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2221
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2223
    :try_start_868
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v6, v2, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V
    :try_end_86f
    .catchall {:try_start_868 .. :try_end_86f} :catchall_87b

    move-object v2, v0

    .line 2225
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_870
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_876
    .catchall {:try_start_870 .. :try_end_876} :catchall_877

    .line 2228
    goto :goto_884

    .line 2226
    :catchall_877
    move-exception v0

    move-object/from16 v40, v2

    goto :goto_87c

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_87b
    move-exception v0

    .line 2227
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_87c
    const-string/jumbo v2, "starting NetworkPolicy Service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, v40

    .line 2229
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_884
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2232
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 2233
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v37

    move-object/from16 v43, v3

    .end local v3    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v43, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/SystemServerStub;->getMiuilibpath()Ljava/lang/String;

    move-result-object v3

    .line 2232
    invoke-virtual {v0, v4, v3}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2235
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8c8

    .line 2238
    if-nez v27, :cond_8c8

    .line 2239
    const-string v0, "StartWifi"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2240
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.WifiService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2242
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2243
    const-string v0, "StartWifiScanning"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2244
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2246
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2251
    :cond_8c8
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/SystemServerStub;->startAmlMiuiWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2252
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/SystemServerStub;->startAmlSlaveWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2258
    if-eqz v27, :cond_8e7

    .line 2259
    const-string v0, "StartArcNetworking"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2260
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.arc.net.ArcNetworkService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2261
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2264
    :cond_8e7
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_904

    .line 2266
    const-string v0, "StartRttService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2267
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.rtt.RttService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2269
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2272
    :cond_904
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.aware"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_921

    .line 2274
    const-string v0, "StartWifiAware"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2275
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.aware.WifiAwareService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2277
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2280
    :cond_921
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.wifi.direct"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_93e

    .line 2282
    const-string v0, "StartWifiP2P"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2283
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v4, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2285
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2288
    :cond_93e
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.hardware.lowpan"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_959

    .line 2290
    const-string v0, "StartLowpan"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2291
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2292
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2295
    :cond_959
    const-string v0, "StartPacProxyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2297
    :try_start_95e
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v6}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V
    :try_end_963
    .catchall {:try_start_95e .. :try_end_963} :catchall_971

    move-object v3, v0

    .line 2298
    .end local v17    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v3, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :try_start_964
    const-string/jumbo v0, "pac_proxy"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_96a
    .catchall {:try_start_964 .. :try_end_96a} :catchall_96d

    .line 2301
    move-object/from16 v17, v3

    goto :goto_978

    .line 2299
    :catchall_96d
    move-exception v0

    move-object/from16 v17, v3

    goto :goto_972

    .end local v3    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v17    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :catchall_971
    move-exception v0

    .line 2300
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_972
    const-string/jumbo v3, "starting PacProxyService"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2302
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_978
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2305
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 2306
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/SystemServerStub;->getConnectivitylibpath()Ljava/lang/String;

    move-result-object v4

    .line 2305
    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2308
    const-string v0, "StartConnectivityService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2312
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.ConnectivityServiceInitializer"

    const-string v4, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2314
    invoke-virtual {v2}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2315
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2318
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7, v6}, Lcom/android/server/SystemServerStub;->startAmlConnectivityService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2321
    const-string v0, "StartSecurityStateManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2323
    :try_start_9aa
    const-string/jumbo v0, "security_state"

    new-instance v3, Lcom/android/server/SecurityStateManagerService;

    invoke-direct {v3, v6}, Lcom/android/server/SecurityStateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9b5
    .catchall {:try_start_9aa .. :try_end_9b5} :catchall_9b6

    .line 2327
    goto :goto_9bd

    .line 2325
    :catchall_9b6
    move-exception v0

    .line 2326
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting SecurityStateManagerService"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2328
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9bd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2330
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2332
    :try_start_9c5
    invoke-static {v6}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v0
    :try_end_9c9
    .catchall {:try_start_9c5 .. :try_end_9c9} :catchall_9d3

    move-object v4, v0

    .line 2333
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    :try_start_9ca
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9d0
    .catchall {:try_start_9ca .. :try_end_9d0} :catchall_9d1

    .line 2336
    goto :goto_9dc

    .line 2334
    :catchall_9d1
    move-exception v0

    goto :goto_9d6

    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_9d3
    move-exception v0

    move-object/from16 v4, v38

    .line 2335
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    :goto_9d6
    const-string/jumbo v3, "starting VPN Manager Service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2337
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9dc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2339
    const-string v0, "StartVcnManagementService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2341
    :try_start_9e4
    invoke-static {v6}, Lcom/android/server/VcnManagementService;->create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;

    move-result-object v0

    move-object v5, v0

    .line 2342
    const-string/jumbo v0, "vcn_management"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9ef
    .catchall {:try_start_9e4 .. :try_end_9ef} :catchall_9f0

    .line 2345
    goto :goto_9f7

    .line 2343
    :catchall_9f0
    move-exception v0

    .line 2344
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting VCN Management Service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2346
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9f7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2348
    if-eqz v24, :cond_a8e

    .line 2350
    :try_start_9fc
    const-string v0, "SystemServer"

    const-string v3, "Wigig Service"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    const-string v0, "/system/system_ext/framework/wigig-service.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    .line 2356
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v3, Ldalvik/system/PathClassLoader;

    .line 2357
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v37
    :try_end_a0b
    .catchall {:try_start_9fc .. :try_end_a0b} :catchall_a82

    move-object/from16 v40, v2

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_a0d
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v3, v0, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    move-object v2, v3

    .line 2358
    .local v2, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v2, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_a1b
    .catchall {:try_start_a0d .. :try_end_a1b} :catchall_a7e

    .line 2360
    .local v3, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v38, v0

    move-object/from16 v37, v4

    const/4 v4, 0x1

    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v37, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v38, "wigigClassPath":Ljava/lang/String;
    :try_start_a20
    new-array v0, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/16 v25, 0x0

    aput-object v4, v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2361
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v18, v4

    .line 2362
    const-string v4, "SystemServer"

    move-object/from16 v44, v0

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v44, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const-string v0, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2363
    const-string/jumbo v0, "wigigp2p"

    move-object/from16 v4, v18

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2365
    const-string v0, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v2, v0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2367
    .local v0, "wigigClass":Ljava/lang/Class;
    move-object/from16 v45, v2

    const/4 v4, 0x1

    .end local v2    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v45, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    new-array v2, v4, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/16 v25, 0x0

    aput-object v4, v2, v25

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 2368
    .end local v44    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v2, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    filled-new-array {v6}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v19, v4

    .line 2369
    const-string v4, "SystemServer"

    move-object/from16 v44, v0

    .end local v0    # "wigigClass":Ljava/lang/Class;
    .local v44, "wigigClass":Ljava/lang/Class;
    const-string v0, "Successfully loaded WigigService class"

    invoke-static {v4, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2370
    const-string/jumbo v0, "wigig"

    move-object/from16 v4, v19

    check-cast v4, Landroid/os/IBinder;

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a7b
    .catchall {:try_start_a20 .. :try_end_a7b} :catchall_a7c

    .line 2373
    .end local v2    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v3    # "wigigP2pClass":Ljava/lang/Class;
    .end local v38    # "wigigClassPath":Ljava/lang/String;
    .end local v44    # "wigigClass":Ljava/lang/Class;
    .end local v45    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_a92

    .line 2371
    :catchall_a7c
    move-exception v0

    goto :goto_a87

    .end local v37    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_a7e
    move-exception v0

    move-object/from16 v37, v4

    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v37    # "vpnManager":Lcom/android/server/VpnManagerService;
    goto :goto_a87

    .end local v37    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_a82
    move-exception v0

    move-object/from16 v40, v2

    move-object/from16 v37, v4

    .line 2372
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v37    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_a87
    const-string/jumbo v2, "starting WigigService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_a92

    .line 2348
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v37    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    :cond_a8e
    move-object/from16 v40, v2

    move-object/from16 v37, v4

    .line 2376
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v37    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_a92
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2378
    :try_start_a97
    const-string/jumbo v0, "system_update"

    new-instance v2, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v2, v6}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_aa2
    .catchall {:try_start_a97 .. :try_end_aa2} :catchall_aa3

    .line 2382
    goto :goto_aaa

    .line 2380
    :catchall_aa3
    move-exception v0

    .line 2381
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting SystemUpdateManagerService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2383
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_aaa
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2385
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2387
    :try_start_ab2
    const-string/jumbo v0, "updatelock"

    new-instance v2, Lcom/android/server/UpdateLockService;

    invoke-direct {v2, v6}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_abd
    .catchall {:try_start_ab2 .. :try_end_abd} :catchall_abe

    .line 2391
    goto :goto_ac5

    .line 2389
    :catchall_abe
    move-exception v0

    .line 2390
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting UpdateLockService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2392
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ac5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2394
    const-string v0, "StartNotificationManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2395
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2396
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2397
    invoke-static {v6}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2398
    const-string/jumbo v0, "notification"

    .line 2399
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2398
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v2

    .line 2400
    .end local v39    # "notification":Landroid/app/INotificationManager;
    .local v2, "notification":Landroid/app/INotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2402
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2403
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2404
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2406
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2408
    :try_start_afc
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timedetector/TimeDetectorService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_b03
    .catchall {:try_start_afc .. :try_end_b03} :catchall_b04

    .line 2411
    goto :goto_b0b

    .line 2409
    :catchall_b04
    move-exception v0

    .line 2410
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting TimeDetectorService service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2412
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b0b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2414
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2415
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2416
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2418
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2420
    :try_start_b22
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v6}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_b27
    .catchall {:try_start_b22 .. :try_end_b27} :catchall_b34

    move-object v3, v0

    .line 2421
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v3, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_b28
    const-string v0, "country_detector"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b2d
    .catchall {:try_start_b28 .. :try_end_b2d} :catchall_b30

    .line 2424
    move-object/from16 v33, v3

    goto :goto_b3b

    .line 2422
    :catchall_b30
    move-exception v0

    move-object/from16 v33, v3

    goto :goto_b35

    .end local v3    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_b34
    move-exception v0

    .line 2423
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_b35
    const-string/jumbo v3, "starting Country Detector"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2425
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b3b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2427
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2429
    :try_start_b43
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timezonedetector/TimeZoneDetectorService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_b4a
    .catchall {:try_start_b43 .. :try_end_b4a} :catchall_b4b

    .line 2432
    goto :goto_b52

    .line 2430
    :catchall_b4b
    move-exception v0

    .line 2431
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting TimeZoneDetectorService service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2433
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b52
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2435
    const-string v0, "StartAltitudeService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2437
    :try_start_b5a
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_b61
    .catchall {:try_start_b5a .. :try_end_b61} :catchall_b62

    .line 2440
    goto :goto_b69

    .line 2438
    :catchall_b62
    move-exception v0

    .line 2439
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting AltitudeService service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2441
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b69
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2443
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2445
    :try_start_b71
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timezonedetector/location/LocationTimeZoneManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_b78
    .catchall {:try_start_b71 .. :try_end_b78} :catchall_b79

    .line 2448
    goto :goto_b80

    .line 2446
    :catchall_b79
    move-exception v0

    .line 2447
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting LocationTimeZoneManagerService service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2449
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b80
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2451
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110170

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ba7

    .line 2452
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2454
    :try_start_b95
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/timedetector/GnssTimeUpdateService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_b9c
    .catchall {:try_start_b95 .. :try_end_b9c} :catchall_b9d

    .line 2457
    goto :goto_ba4

    .line 2455
    :catchall_b9d
    move-exception v0

    .line 2456
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting GnssTimeUpdateService service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2458
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ba4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2461
    :cond_ba7
    if-nez v26, :cond_bc0

    .line 2462
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2464
    :try_start_bae
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/search/SearchManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_bb5
    .catchall {:try_start_bae .. :try_end_bb5} :catchall_bb6

    .line 2467
    goto :goto_bbd

    .line 2465
    :catchall_bb6
    move-exception v0

    .line 2466
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting Search Service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2468
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_bbd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2471
    :cond_bc0
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x1110186

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_bdd

    .line 2472
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2473
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2474
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_be4

    .line 2476
    :cond_bdd
    const-string v0, "SystemServer"

    const-string v3, "Wallpaper service disabled by config"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2480
    :goto_be4
    const v0, 0x1040297

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_bfc

    .line 2482
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2483
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/wallpapereffectsgeneration/WallpaperEffectsGenerationManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2484
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2487
    :cond_bfc
    const-string v0, "StartAudioService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2488
    if-nez v27, :cond_c0d

    .line 2489
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v38, v2

    goto :goto_c4f

    .line 2491
    :cond_c0d
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2492
    const v3, 0x104029f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 2494
    .local v3, "className":Ljava/lang/String;
    :try_start_c18
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4
    :try_end_c23
    .catchall {:try_start_c18 .. :try_end_c23} :catchall_c35

    move-object/from16 v38, v2

    .end local v2    # "notification":Landroid/app/INotificationManager;
    .local v38, "notification":Landroid/app/INotificationManager;
    :try_start_c25
    const-string v2, "$Lifecycle"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_c32
    .catchall {:try_start_c25 .. :try_end_c32} :catchall_c33

    .line 2497
    goto :goto_c4f

    .line 2495
    :catchall_c33
    move-exception v0

    goto :goto_c38

    .end local v38    # "notification":Landroid/app/INotificationManager;
    .restart local v2    # "notification":Landroid/app/INotificationManager;
    :catchall_c35
    move-exception v0

    move-object/from16 v38, v2

    .line 2496
    .end local v2    # "notification":Landroid/app/INotificationManager;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v38    # "notification":Landroid/app/INotificationManager;
    :goto_c38
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "starting "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2499
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v3    # "className":Ljava/lang/String;
    :goto_c4f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2501
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2502
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2503
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2505
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.broadcastradio"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c7a

    .line 2506
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2507
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2508
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2511
    :cond_c7a
    if-nez v28, :cond_c8b

    .line 2512
    const-string v0, "StartDockObserver"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2513
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2514
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2517
    :cond_c8b
    if-eqz v26, :cond_c9c

    .line 2518
    const-string v0, "StartThermalObserver"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2519
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2520
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2523
    :cond_c9c
    if-nez v26, :cond_cb6

    .line 2524
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2527
    :try_start_ca3
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v6, v12}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v12, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_cab
    .catchall {:try_start_ca3 .. :try_end_cab} :catchall_cac

    .line 2531
    goto :goto_cb3

    .line 2529
    :catchall_cac
    move-exception v0

    .line 2530
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting WiredAccessoryManager"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2532
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_cb3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2535
    :cond_cb6
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.midi"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ccf

    .line 2537
    const-string v0, "StartMidiManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2538
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/midi/MidiService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2539
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2543
    :cond_ccf
    const-string v0, "StartAdbService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2545
    :try_start_cd4
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/adb/AdbService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_cdb
    .catchall {:try_start_cd4 .. :try_end_cdb} :catchall_cdc

    .line 2548
    goto :goto_ce4

    .line 2546
    :catchall_cdc
    move-exception v0

    .line 2547
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "SystemServer"

    const-string v3, "Failure starting AdbService"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ce4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2551
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.usb.host"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cff

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.usb.accessory"

    .line 2552
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cff

    sget-boolean v0, Landroid/os/Build;->IS_EMULATOR:Z

    if-eqz v0, :cond_d0e

    .line 2556
    :cond_cff
    const-string v0, "StartUsbService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2557
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/usb/UsbService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2558
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2561
    :cond_d0e
    if-nez v26, :cond_d1f

    .line 2562
    const-string v0, "StartSerialService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2563
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/SerialService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2564
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2567
    :cond_d1f
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2569
    :try_start_d24
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v6}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_d29
    .catchall {:try_start_d24 .. :try_end_d29} :catchall_d37

    move-object v2, v0

    .line 2570
    .end local v16    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v2, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_d2a
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d30
    .catchall {:try_start_d2a .. :try_end_d30} :catchall_d33

    .line 2574
    move-object/from16 v16, v2

    goto :goto_d3f

    .line 2572
    :catchall_d33
    move-exception v0

    move-object/from16 v16, v2

    goto :goto_d38

    .end local v2    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v16    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_d37
    move-exception v0

    .line 2573
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_d38
    const-string v2, "SystemServer"

    const-string v3, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2575
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d3f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2577
    if-nez v26, :cond_d53

    .line 2578
    const-string v0, "StartTwilightService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2579
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2580
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2583
    :cond_d53
    const-string v0, "StartColorDisplay"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2584
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2585
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2588
    const-string v0, "StartJobScheduler"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2589
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2590
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2592
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2593
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2594
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2596
    const-string v0, "StartTrustManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2597
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2598
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2601
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v6, v2}, Lcom/android/server/SystemServerStub;->addExtraServices(Landroid/content/Context;Z)V

    .line 2604
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.backup"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_db0

    .line 2605
    const-string v0, "StartBackupManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2606
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/backup/BackupManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2610
    :cond_db0
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.app_widgets"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_dc7

    .line 2611
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110163

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_dd6

    .line 2612
    :cond_dc7
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2613
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/appwidget/AppWidgetService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2614
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2621
    :cond_dd6
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2622
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/voiceinteraction/VoiceInteractionManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2623
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2625
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_dfe

    .line 2626
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2627
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2628
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2630
    :cond_dfe
    const-string v0, "StartSensorNotification"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2631
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2632
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2634
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.context_hub"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e26

    .line 2635
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2636
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2637
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2640
    :cond_e26
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2642
    :try_start_e2b
    const-string v0, "diskstats"

    new-instance v2, Lcom/android/server/DiskStatsService;

    invoke-direct {v2, v6}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e35
    .catchall {:try_start_e2b .. :try_end_e35} :catchall_e36

    .line 2645
    goto :goto_e3d

    .line 2643
    :catchall_e36
    move-exception v0

    .line 2644
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting DiskStats Service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2646
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e3d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2648
    const-string v0, "RuntimeService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2650
    :try_start_e45
    const-string/jumbo v0, "runtime"

    new-instance v2, Lcom/android/server/RuntimeService;

    invoke-direct {v2, v6}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e50
    .catchall {:try_start_e45 .. :try_end_e50} :catchall_e51

    .line 2653
    goto :goto_e58

    .line 2651
    :catchall_e51
    move-exception v0

    .line 2652
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting RuntimeService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2654
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e58
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2656
    if-nez v26, :cond_e7b

    if-nez v22, :cond_e7b

    .line 2657
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2659
    :try_start_e64
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v0, v6}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V

    move-object v10, v0

    .line 2660
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_e70
    .catchall {:try_start_e64 .. :try_end_e70} :catchall_e71

    .line 2663
    goto :goto_e78

    .line 2661
    :catchall_e71
    move-exception v0

    .line 2662
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting NetworkTimeUpdate service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2664
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e78
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2667
    :cond_e7b
    const-string v0, "CertBlacklister"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2669
    :try_start_e80
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v6}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_e85
    .catchall {:try_start_e80 .. :try_end_e85} :catchall_e86

    .line 2672
    goto :goto_e8d

    .line 2670
    :catchall_e86
    move-exception v0

    .line 2671
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting CertBlacklister"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2673
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_e8d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2677
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2678
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2679
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2682
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2683
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/blob/BlobStoreManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2684
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2687
    const-string v0, "StartDreamManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2688
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2689
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2691
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2692
    const-string/jumbo v0, "graphicsstats"

    new-instance v2, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v2, v6}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2694
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2696
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_ee7

    .line 2697
    const-string v0, "AddCoverageService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2698
    const-string v0, "coverage"

    new-instance v2, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v2}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2699
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2702
    :cond_ee7
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.print"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f00

    .line 2703
    const-string v0, "StartPrintManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2704
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/print/PrintManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2705
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2708
    :cond_f00
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2709
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2712
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.companion_device_setup"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f28

    .line 2713
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2714
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2715
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2718
    :cond_f28
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1110185

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_f44

    .line 2719
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2720
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/companion/virtual/VirtualDeviceManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2721
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2724
    :cond_f44
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2725
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2726
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2728
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2729
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2730
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2732
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f7b

    .line 2733
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2734
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2735
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2738
    :cond_f7b
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.live_tv"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_f8f

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    .line 2739
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f9e

    .line 2740
    :cond_f8f
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2741
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2742
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2745
    :cond_f9e
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.live_tv"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_fb2

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    .line 2746
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fc1

    .line 2747
    :cond_fb2
    const-string v0, "StartTvInputManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2748
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2752
    :cond_fc1
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.tv.tuner"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_fda

    .line 2753
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2754
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2755
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2758
    :cond_fda
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ff3

    .line 2759
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2760
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/media/MediaResourceMonitorService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2761
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2764
    :cond_ff3
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_100c

    .line 2765
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2766
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2767
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2770
    :cond_100c
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2772
    :try_start_1011
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v6}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_1016
    .catchall {:try_start_1011 .. :try_end_1016} :catchall_1024

    move-object v2, v0

    .line 2773
    .end local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v2, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_1017
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_101d
    .catchall {:try_start_1017 .. :try_end_101d} :catchall_1020

    .line 2776
    move-object/from16 v35, v2

    goto :goto_102b

    .line 2774
    :catchall_1020
    move-exception v0

    move-object/from16 v35, v2

    goto :goto_1025

    .end local v2    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_1024
    move-exception v0

    .line 2775
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_1025
    const-string/jumbo v2, "starting MediaRouterService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2777
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_102b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2779
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.biometrics.face"

    .line 2780
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2781
    .local v2, "hasFeatureFace":Z
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.biometrics.iris"

    .line 2782
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 2783
    .local v3, "hasFeatureIris":Z
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v4, "android.hardware.fingerprint"

    .line 2784
    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 2786
    .local v4, "hasFeatureFingerprint":Z
    if-eqz v2, :cond_105d

    .line 2787
    const-string v0, "StartFaceSensor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2788
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v39, v2

    .end local v2    # "hasFeatureFace":Z
    .local v39, "hasFeatureFace":Z
    const-class v2, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2789
    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2790
    .local v0, "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_105f

    .line 2786
    .end local v0    # "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    .end local v39    # "hasFeatureFace":Z
    .restart local v2    # "hasFeatureFace":Z
    :cond_105d
    move/from16 v39, v2

    .line 2793
    .end local v2    # "hasFeatureFace":Z
    .restart local v39    # "hasFeatureFace":Z
    :goto_105f
    if-eqz v3, :cond_1070

    .line 2794
    const-string v0, "StartIrisSensor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2795
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2796
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2799
    :cond_1070
    if-eqz v4, :cond_1084

    .line 2800
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2801
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2802
    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2803
    .local v0, "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2807
    .end local v0    # "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    :cond_1084
    const-string v0, "StartBiometricService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2808
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2809
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2811
    const-string v0, "StartAuthService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2812
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2813
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2815
    invoke-static {}, Landroid/adaptiveauth/Flags;->enableAdaptiveAuth()Z

    move-result v0

    if-eqz v0, :cond_10b7

    .line 2816
    const-string v0, "StartAdaptiveAuthService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2817
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/adaptiveauth/AdaptiveAuthService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2818
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2821
    :cond_10b7
    if-nez v26, :cond_10ce

    .line 2824
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2826
    :try_start_10be
    invoke-static {v6}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_10c1
    .catchall {:try_start_10be .. :try_end_10c1} :catchall_10c2

    .line 2829
    goto :goto_10cb

    .line 2827
    :catchall_10c2
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2828
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting DynamicCodeLoggingService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2830
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_10cb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2833
    :cond_10ce
    if-nez v26, :cond_10e4

    .line 2834
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2836
    :try_start_10d5
    invoke-static {v6}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_10d8
    .catchall {:try_start_10d5 .. :try_end_10d8} :catchall_10d9

    .line 2839
    goto :goto_10e1

    .line 2837
    :catchall_10d9
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2838
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "StartPruneInstantAppsJobService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2840
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_10e1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2843
    :cond_10e4
    const-string v0, "StartSelinuxAuditLogsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2845
    :try_start_10e9
    invoke-static {v6}, Lcom/android/server/selinux/SelinuxAuditLogsService;->schedule(Landroid/content/Context;)V
    :try_end_10ec
    .catchall {:try_start_10e9 .. :try_end_10ec} :catchall_10ed

    .line 2848
    goto :goto_10f6

    .line 2846
    :catchall_10ed
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2847
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting SelinuxAuditLogsService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2849
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_10f6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2852
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2853
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2854
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2856
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2857
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2858
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2860
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2861
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2862
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2864
    const-string v0, "StartPeopleService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2865
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2866
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2868
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2869
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2870
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2872
    const-string v0, "StartBackgroundInstallControlService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2873
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2874
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v49, v5

    move-object/from16 v50, v10

    move-object/from16 v51, v16

    move-object/from16 v52, v17

    move-object/from16 v5, v18

    move-object/from16 v4, v19

    move-object/from16 v53, v33

    move-object/from16 v54, v34

    move-object/from16 v55, v35

    move-object/from16 v45, v36

    move-object/from16 v48, v37

    move-object/from16 v46, v38

    move-object/from16 v44, v40

    move-object/from16 v47, v43

    move-object/from16 v43, v9

    .line 2877
    .end local v3    # "hasFeatureIris":Z
    .end local v8    # "hasPdb":Z
    .end local v9    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v10    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v16    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v17    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v18    # "wigigP2pService":Ljava/lang/Object;
    .end local v19    # "wigigService":Ljava/lang/Object;
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v34    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v37    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v38    # "notification":Landroid/app/INotificationManager;
    .end local v39    # "hasFeatureFace":Z
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v4, "wigigService":Ljava/lang/Object;
    .local v5, "wigigP2pService":Ljava/lang/Object;
    .local v43, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v44, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v45, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v46, "notification":Landroid/app/INotificationManager;
    .local v47, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v48, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v49, "vcnManagement":Lcom/android/server/VcnManagementService;
    .local v50, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v51, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v52, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v53, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v54, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v55, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_1171
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2878
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2879
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2881
    if-eqz v26, :cond_1225

    .line 2883
    const-string v0, "StartWearPowerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2884
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2885
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2887
    const-string v0, "StartHealthService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2888
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2889
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2891
    const-string v0, "StartSystemStateDisplayService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2892
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.systemstatedisplay.SystemStateDisplayService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2893
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2895
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2896
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2897
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2899
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2900
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2901
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2903
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_11e0

    .line 2904
    const-string v0, "StartWearDebugService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2905
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.debug.WearDebugService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2906
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2909
    :cond_11e0
    const-string v0, "StartWearTimeService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2910
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2911
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2913
    const-string v0, "StartWearSettingsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2914
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.settings.WearSettingsService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2915
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2917
    const-string v0, "StartWearModeService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2918
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.clockwork.modes.ModeManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2919
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2921
    const-string v0, "config.enable_wristorientation"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 2923
    .local v0, "enableWristOrientationService":Z
    if-eqz v0, :cond_1225

    .line 2924
    const-string v2, "StartWristOrientationService"

    invoke-virtual {v7, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2925
    iget-object v2, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.clockwork.wristorientation.WristOrientationService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2926
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2930
    .end local v0    # "enableWristOrientationService":Z
    :cond_1225
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.slices_disabled"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_123e

    .line 2931
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2932
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/slice/SliceManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2933
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2936
    :cond_123e
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.type.embedded"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1259

    .line 2937
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2938
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2939
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2943
    :cond_1259
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2944
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v3, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2946
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2949
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2950
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v3, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2952
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2955
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2956
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/stats/pull/StatsPullAtomService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2960
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2961
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/stats/bootstrap/StatsBootstrapAtomService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2962
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2965
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2966
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2967
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2970
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2971
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2972
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2975
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2976
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2977
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2980
    invoke-static {}, Lcom/android/server/flags/Flags;->enableOdpFeatureGuard()Z

    move-result v0

    if-eqz v0, :cond_12d6

    const-string/jumbo v0, "ro.system_settings.service.odp_enabled"

    .line 2981
    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_12e5

    .line 2982
    :cond_12d6
    const-string v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2983
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2988
    :cond_12e5
    invoke-static {}, Landroid/server/Flags;->telemetryApisService()Z

    move-result v0

    if-eqz v0, :cond_12fc

    .line 2989
    const-string v0, "StartProfilingCompanion"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2990
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "android.os.profiling.ProfilingService$Lifecycle"

    const-string v3, "/apex/com.android.profiling/javalib/service-profiling.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2992
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2995
    :cond_12fc
    if-eqz v14, :cond_1303

    .line 2996
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2999
    :cond_1303
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1323

    .line 3001
    const-string v0, "StartMmsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3002
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/MmsServiceBroker;

    .line 3003
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v56, v15

    goto :goto_1325

    .line 2999
    :cond_1323
    move-object/from16 v56, v15

    .line 3006
    .end local v15    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v56, "mmsService":Lcom/android/server/MmsServiceBroker;
    :goto_1325
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.autofill"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_133e

    .line 3007
    const-string v0, "StartAutoFillService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3008
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/autofill/AutofillManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3009
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3012
    :cond_133e
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.credentials"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_137a

    .line 3013
    const-string v0, "credential_manager"

    const-string v2, "enable_credential_manager"

    .line 3014
    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 3016
    .local v0, "credentialManagerEnabled":Z
    if-eqz v0, :cond_1373

    .line 3017
    if-eqz v26, :cond_1363

    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/credentials/flags/Flags;->wearCredentialManagerEnabled()Z

    move-result v2

    if-nez v2, :cond_1363

    .line 3018
    const-string v2, "SystemServer"

    const-string v3, "CredentialManager disabled on wear."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_137a

    .line 3020
    :cond_1363
    const-string v2, "StartCredentialManagerService"

    invoke-virtual {v7, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3021
    iget-object v2, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/credentials/CredentialManagerService;

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3022
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_137a

    .line 3025
    :cond_1373
    const-string v2, "SystemServer"

    const-string v3, "CredentialManager disabled."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    .end local v0    # "credentialManagerEnabled":Z
    :cond_137a
    :goto_137a
    const v0, 0x1040295

    invoke-direct {v13, v6, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1393

    .line 3031
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3032
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/translation/TranslationManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3033
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_139a

    .line 3035
    :cond_1393
    const-string v0, "SystemServer"

    const-string v2, "TranslationService not defined by OEM"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3039
    :goto_139a
    const-string v0, "StartClipboardService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3040
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3041
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3043
    const-string v0, "AppServiceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3044
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3045
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3048
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3049
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3050
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3054
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3055
    if-eqz v54, :cond_13dc

    .line 3057
    :try_start_13cf
    invoke-interface/range {v54 .. v54}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_13d2
    .catchall {:try_start_13cf .. :try_end_13d2} :catchall_13d3

    .line 3060
    goto :goto_13dc

    .line 3058
    :catchall_13d3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3059
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "making Lock Settings Service ready"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3062
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_13dc
    :goto_13dc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3065
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3066
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x1e0

    invoke-virtual {v0, v7, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3067
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3071
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v3, v13, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 3074
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x11101b6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v8

    .line 3072
    invoke-static {v0, v2, v3, v8}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    move-result-object v3

    .line 3075
    .local v3, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    if-eqz v3, :cond_1410

    .line 3076
    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3077
    invoke-virtual {v3, v7}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3078
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3081
    :cond_1410
    const/4 v0, 0x0

    .line 3082
    .local v0, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    invoke-static {}, Landroid/os/UserManager;->isCommunalProfileEnabled()Z

    move-result v2

    if-eqz v2, :cond_142d

    .line 3083
    const-string v2, "CommunalProfileInitializer.init"

    invoke-virtual {v7, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3084
    new-instance v2, Lcom/android/server/CommunalProfileInitializer;

    iget-object v8, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v2, v8}, Lcom/android/server/CommunalProfileInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    move-object v0, v2

    .line 3086
    invoke-virtual {v0, v7}, Lcom/android/server/CommunalProfileInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3087
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v57, v0

    goto :goto_143a

    .line 3089
    :cond_142d
    const-string v2, "CommunalProfileInitializer.removeCommunalProfileIfPresent"

    invoke-virtual {v7, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3090
    invoke-static {}, Lcom/android/server/CommunalProfileInitializer;->removeCommunalProfileIfPresent()V

    .line 3091
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v57, v0

    .line 3094
    .end local v0    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .local v57, "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    :goto_143a
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3095
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x1f4

    invoke-virtual {v0, v7, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3096
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3100
    if-eqz v24, :cond_149a

    .line 3102
    :try_start_144b
    const-string v0, "SystemServer"

    const-string v8, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3103
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 3104
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v8, "onBootPhase"

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Class;

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v9, v10, v15

    invoke-virtual {v0, v8, v10}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 3105
    .local v8, "m":Ljava/lang/reflect/Method;
    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, v2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v9}, [Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v5, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 3108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    .line 3109
    .local v9, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v10, "onBootPhase"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Class;

    sget-object v16, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v17, 0x0

    aput-object v16, v15, v17

    invoke-virtual {v9, v10, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v8, v10

    .line 3110
    new-instance v10, Ljava/lang/Integer;

    invoke-direct {v10, v2}, Ljava/lang/Integer;-><init>(I)V

    filled-new-array {v10}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1492
    .catchall {:try_start_144b .. :try_end_1492} :catchall_1494

    .line 3114
    nop

    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v8    # "m":Ljava/lang/reflect/Method;
    .end local v9    # "wigigClass":Ljava/lang/Class;
    goto :goto_149a

    .line 3112
    :catchall_1494
    move-exception v0

    .line 3113
    .local v0, "e":Ljava/lang/Throwable;
    const-string v2, "Wigig services ready"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3117
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_149a
    :goto_149a
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3119
    :try_start_149f
    invoke-virtual {v11}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_14a2
    .catchall {:try_start_149f .. :try_end_14a2} :catchall_14a3

    .line 3122
    goto :goto_14ac

    .line 3120
    :catchall_14a3
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3121
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "making Window Manager Service ready"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3123
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_14ac
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3125
    const-string v0, "RegisterLogMteState"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3127
    :try_start_14b4
    invoke-static {v6}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_14b7
    .catchall {:try_start_14b4 .. :try_end_14b7} :catchall_14b8

    .line 3130
    goto :goto_14c0

    .line 3128
    :catchall_14b8
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3129
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "RegisterLogMteState"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3131
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_14c0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3134
    const-class v2, Lcom/android/server/SystemService;

    monitor-enter v2

    .line 3135
    :try_start_14c6
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_14c8
    .catchall {:try_start_14c6 .. :try_end_14c8} :catchall_1771

    if-eqz v0, :cond_14e9

    .line 3136
    :try_start_14ca
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    sget-object v8, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 3137
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_14d4
    .catchall {:try_start_14ca .. :try_end_14d4} :catchall_14d5

    goto :goto_14e9

    .line 3139
    :catchall_14d5
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v61, v3

    move-object/from16 v63, v4

    move-object/from16 v65, v5

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v58, v11

    move-object/from16 v59, v12

    move-object v6, v13

    move/from16 v25, v14

    goto/16 :goto_1783

    :cond_14e9
    :goto_14e9
    :try_start_14e9
    monitor-exit v2
    :try_end_14ea
    .catchall {:try_start_14e9 .. :try_end_14ea} :catchall_1771

    .line 3141
    if-eqz v14, :cond_14f1

    .line 3142
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 3148
    :cond_14f1
    const/4 v2, 0x0

    invoke-virtual {v11, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v8

    .line 3149
    .local v8, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v2, v0

    .line 3150
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v6}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 3151
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8, v2}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 3154
    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v32

    .line 3155
    .local v32, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_1517

    .line 3156
    invoke-virtual/range {v32 .. v32}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 3160
    :cond_1517
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3161
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3162
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3164
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3165
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 3166
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3168
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/crashrecovery/flags/Flags;->recoverabilityDetection()Z

    move-result v0

    if-eqz v0, :cond_1542

    .line 3173
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 3177
    :cond_1542
    invoke-static {}, Landroid/os/microsoft/flags/Flags;->ltwEnabled()Z

    move-result v0

    if-eqz v0, :cond_1560

    .line 3178
    const-string v0, "StartCrossDeviceService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3179
    const-string v0, "cross_device_service"

    new-instance v9, Lcom/android/server/wm/CrossDeviceService;

    iget-object v10, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v15, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v9, v10, v15}, Lcom/android/server/wm/CrossDeviceService;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 3182
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3186
    :cond_1560
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3189
    :try_start_1565
    iget-object v0, v13, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v14}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_156a
    .catchall {:try_start_1565 .. :try_end_156a} :catchall_156b

    .line 3192
    goto :goto_1572

    .line 3190
    :catchall_156b
    move-exception v0

    .line 3191
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Display Manager Service ready"

    invoke-direct {v13, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3193
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1572
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3195
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3198
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3199
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x1070046

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v15

    .line 3201
    .local v15, "classes":[Ljava/lang/String;
    array-length v9, v15

    const/4 v10, 0x0

    :goto_158e
    if-ge v10, v9, :cond_15da

    move-object/from16 v33, v2

    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .local v33, "metrics":Landroid/util/DisplayMetrics;
    aget-object v2, v15, v10

    .line 3202
    .local v2, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v34, v3

    .end local v3    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .local v34, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    const-string v3, "StartDeviceSpecificServices "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3204
    :try_start_15ac
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_15b1
    .catchall {:try_start_15ac .. :try_end_15b1} :catchall_15b4

    .line 3207
    move-object/from16 v35, v4

    goto :goto_15ce

    .line 3205
    :catchall_15b4
    move-exception v0

    .line 3206
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v35, v4

    .end local v4    # "wigigService":Ljava/lang/Object;
    .local v35, "wigigService":Ljava/lang/Object;
    const-string/jumbo v4, "starting "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3208
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_15ce
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3201
    .end local v2    # "className":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v2, v33

    move-object/from16 v3, v34

    move-object/from16 v4, v35

    goto :goto_158e

    .line 3210
    .end local v33    # "metrics":Landroid/util/DisplayMetrics;
    .end local v34    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v35    # "wigigService":Ljava/lang/Object;
    .local v2, "metrics":Landroid/util/DisplayMetrics;
    .restart local v3    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .restart local v4    # "wigigService":Ljava/lang/Object;
    :cond_15da
    move-object/from16 v33, v2

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    .end local v2    # "metrics":Landroid/util/DisplayMetrics;
    .end local v3    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v4    # "wigigService":Ljava/lang/Object;
    .restart local v33    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v34    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .restart local v35    # "wigigService":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3212
    const-string v0, "GameManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3213
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/app/GameManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3214
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3216
    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.uwb"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_160f

    .line 3217
    const-string v0, "UwbService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3218
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.uwb.UwbService"

    const-string v3, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3219
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3222
    :cond_160f
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3223
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v2, 0x208

    invoke-virtual {v0, v7, v2}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3224
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3226
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3227
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3228
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3230
    const-string v0, "AppSearchModule"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3231
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3232
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3234
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1655

    .line 3235
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3236
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3240
    :cond_1655
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3241
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3242
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3244
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3245
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/compat/overrides/AppCompatOverridesService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3246
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3248
    const-string v0, "HealthConnectManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3249
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3250
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3252
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.device_lock"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_169d

    .line 3253
    const-string v0, "DeviceLockService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3254
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.devicelock.DeviceLockService"

    const-string v3, "/apex/com.android.devicelock/javalib/service-devicelock.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3256
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3259
    :cond_169d
    invoke-static {}, Lcom/android/internal/hidden_from_bootclasspath/android/permission/flags/Flags;->sensitiveNotificationAppProtection()Z

    move-result v0

    if-nez v0, :cond_16a9

    .line 3260
    invoke-static {}, Landroid/view/flags/Flags;->sensitiveContentAppProtection()Z

    move-result v0

    if-eqz v0, :cond_16b8

    .line 3261
    :cond_16a9
    const-string v0, "StartSensitiveContentProtectionManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3262
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/SensitiveContentProtectionManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3263
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3267
    :cond_16b8
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->shouldRunPayJoyAccessService()Z

    move-result v0

    if-eqz v0, :cond_16d5

    .line 3268
    const-string v0, "StartPayJoyAccessService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3270
    :try_start_16c3
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/payjoy/server/PayJoyAccessService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_16ca
    .catchall {:try_start_16c3 .. :try_end_16ca} :catchall_16cb

    .line 3273
    goto :goto_16d2

    .line 3271
    :catchall_16cb
    move-exception v0

    .line 3272
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting PayJoyAccessService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3274
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_16d2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3278
    :cond_16d5
    move-object/from16 v9, v47

    .line 3279
    .local v9, "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    move-object/from16 v10, v44

    .line 3280
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move/from16 v25, v14

    .end local v14    # "safeMode":Z
    .local v25, "safeMode":Z
    move-object/from16 v14, v53

    .line 3281
    .local v14, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v36, v15

    .end local v15    # "classes":[Ljava/lang/String;
    .local v36, "classes":[Ljava/lang/String;
    move-object/from16 v15, v50

    .line 3282
    .local v15, "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    move-object/from16 v16, v12

    .line 3283
    .local v16, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v17, v1

    .line 3284
    .local v17, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v18, v55

    .line 3285
    .local v18, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v19, v56

    .line 3286
    .local v19, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v58, v11

    .end local v11    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v58, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v11, v48

    .line 3287
    .local v11, "vpnManagerF":Lcom/android/server/VpnManagerService;
    move-object/from16 v59, v12

    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v59, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v12, v49

    .line 3288
    .local v12, "vcnManagementF":Lcom/android/server/VcnManagementService;
    move-object/from16 v4, v58

    .line 3289
    .local v4, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    const-string v0, "connectivity"

    .line 3290
    invoke-virtual {v6, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v37, v0

    check-cast v37, Landroid/net/ConnectivityManager;

    move-object/from16 v38, v8

    .end local v8    # "config":Landroid/content/res/Configuration;
    .local v37, "connectivityF":Landroid/net/ConnectivityManager;
    .local v38, "config":Landroid/content/res/Configuration;
    move-object/from16 v8, v37

    .line 3297
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v3, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;

    move-object/from16 v60, v1

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v60, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object v1, v3

    move-object/from16 v2, p0

    move-object/from16 v62, v3

    move-object/from16 v61, v34

    .end local v34    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .local v61, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    move-object/from16 v3, p1

    move-object/from16 v64, v4

    move-object/from16 v63, v35

    .end local v4    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v35    # "wigigService":Ljava/lang/Object;
    .local v63, "wigigService":Ljava/lang/Object;
    .local v64, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v4, v43

    move-object/from16 v65, v5

    .end local v5    # "wigigP2pService":Ljava/lang/Object;
    .local v65, "wigigP2pService":Ljava/lang/Object;
    move/from16 v5, v26

    move-object/from16 v66, v6

    .end local v6    # "context":Landroid/content/Context;
    .local v66, "context":Landroid/content/Context;
    move/from16 v7, v25

    move-object/from16 v13, v61

    invoke-direct/range {v1 .. v19}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v62

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3567
    const-string v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3568
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 3569
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/LockSettingsInternal;

    .line 3570
    .local v2, "lockSettingsInternal":Lcom/android/internal/widget/LockSettingsInternal;
    if-eqz v2, :cond_173d

    .line 3571
    invoke-virtual {v2}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 3573
    :cond_173d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3575
    const-string v0, "StartSystemUI"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3577
    move-object/from16 v4, v64

    move-object/from16 v3, v66

    .end local v64    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v66    # "context":Landroid/content/Context;
    .local v3, "context":Landroid/content/Context;
    .restart local v4    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    :try_start_1749
    invoke-static {v3, v4}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_174c
    .catchall {:try_start_1749 .. :try_end_174c} :catchall_174f

    .line 3580
    move-object/from16 v6, p0

    goto :goto_175a

    .line 3578
    :catchall_174f
    move-exception v0

    move-object v5, v0

    move-object v0, v5

    .line 3579
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "starting System UI"

    move-object/from16 v6, p0

    invoke-direct {v6, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3581
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_175a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3584
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v5, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServerStub;->addCameraCoveredManagerService(Landroid/content/Context;)V

    .line 3588
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServerStub;->onOtherServicesStarted(Landroid/content/Context;)V

    .line 3591
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3592
    return-void

    .line 3139
    .end local v2    # "lockSettingsInternal":Lcom/android/internal/widget/LockSettingsInternal;
    .end local v9    # "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v16    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v17    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v18    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v19    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v25    # "safeMode":Z
    .end local v32    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v33    # "metrics":Landroid/util/DisplayMetrics;
    .end local v36    # "classes":[Ljava/lang/String;
    .end local v37    # "connectivityF":Landroid/net/ConnectivityManager;
    .end local v38    # "config":Landroid/content/res/Configuration;
    .end local v58    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v61    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v63    # "wigigService":Ljava/lang/Object;
    .end local v65    # "wigigP2pService":Ljava/lang/Object;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .local v4, "wigigService":Ljava/lang/Object;
    .restart local v5    # "wigigP2pService":Ljava/lang/Object;
    .restart local v6    # "context":Landroid/content/Context;
    .local v11, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v14, "safeMode":Z
    :catchall_1771
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v61, v3

    move-object/from16 v63, v4

    move-object/from16 v65, v5

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v58, v11

    move-object/from16 v59, v12

    move-object v6, v13

    move/from16 v25, v14

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "wigigService":Ljava/lang/Object;
    .end local v5    # "wigigP2pService":Ljava/lang/Object;
    .end local v6    # "context":Landroid/content/Context;
    .end local v11    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v14    # "safeMode":Z
    .local v3, "context":Landroid/content/Context;
    .restart local v25    # "safeMode":Z
    .restart local v58    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v61    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .restart local v63    # "wigigService":Ljava/lang/Object;
    .restart local v65    # "wigigP2pService":Ljava/lang/Object;
    :goto_1783
    :try_start_1783
    monitor-exit v2
    :try_end_1784
    .catchall {:try_start_1783 .. :try_end_1784} :catchall_1785

    throw v0

    :catchall_1785
    move-exception v0

    goto :goto_1783

    .line 2016
    .end local v25    # "safeMode":Z
    .end local v41    # "bootDexoptStartTime":J
    .end local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v46    # "notification":Landroid/app/INotificationManager;
    .end local v47    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v48    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v49    # "vcnManagement":Lcom/android/server/VcnManagementService;
    .end local v50    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v51    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v52    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v53    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v54    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v55    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v56    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v57    # "communalProfileInitializer":Lcom/android/server/CommunalProfileInitializer;
    .end local v58    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v61    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v63    # "wigigService":Ljava/lang/Object;
    .end local v65    # "wigigP2pService":Ljava/lang/Object;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "bootDexoptStartTime":J
    .local v5, "vcnManagement":Lcom/android/server/VcnManagementService;
    .restart local v6    # "context":Landroid/content/Context;
    .local v8, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v9, "notification":Landroid/app/INotificationManager;
    .local v10, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v11    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v14    # "safeMode":Z
    .local v15, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v16, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v17, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v18, "wigigP2pService":Ljava/lang/Object;
    .local v19, "wigigService":Ljava/lang/Object;
    .local v33, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v34, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v35, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v36, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v37, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v38, "vpnManager":Lcom/android/server/VpnManagerService;
    :catchall_1787
    move-exception v0

    move-object/from16 v60, v1

    move-wide/from16 v41, v3

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object/from16 v39, v9

    move-object/from16 v58, v11

    move-object/from16 v59, v12

    move-object v6, v13

    move/from16 v25, v14

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v9    # "notification":Landroid/app/INotificationManager;
    .end local v11    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v14    # "safeMode":Z
    .local v3, "context":Landroid/content/Context;
    .restart local v25    # "safeMode":Z
    .local v39, "notification":Landroid/app/INotificationManager;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v41    # "bootDexoptStartTime":J
    .restart local v58    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const-string v4, "dexopt"

    invoke-virtual {v2, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 2017
    throw v0

    .line 1886
    .end local v25    # "safeMode":Z
    .end local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v33    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v34    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v35    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v36    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v39    # "notification":Landroid/app/INotificationManager;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v41    # "bootDexoptStartTime":J
    .end local v58    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v2, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v4, "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v11    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_17a3
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v30, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object/from16 v58, v11

    move-object/from16 v59, v12

    move-object v6, v13

    move-object/from16 v14, v20

    move-object/from16 v20, v30

    move-object/from16 v9, v58

    move-object/from16 v11, v59

    move-object/from16 v12, v60

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v3, "context":Landroid/content/Context;
    .restart local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v58    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_182f

    .end local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v58    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v9, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_17c1
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v30, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object/from16 v59, v12

    move-object v6, v13

    move-object/from16 v14, v20

    move-object/from16 v20, v30

    move-object/from16 v11, v59

    move-object/from16 v12, v60

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v3, "context":Landroid/content/Context;
    .restart local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_182f

    .end local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v59    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v11, "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_17db
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v30, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    move-object/from16 v14, v20

    move-object/from16 v20, v30

    move-object/from16 v12, v60

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "context":Landroid/content/Context;
    .restart local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_182f

    .end local v20    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v14, "consumerIr":Lcom/android/server/ConsumerIrService;
    :catchall_17f0
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v30, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    move-object/from16 v20, v30

    move-object/from16 v12, v60

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v2    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "context":Landroid/content/Context;
    .restart local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_182f

    .end local v30    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v20, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :catchall_1803
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    move-object/from16 v12, v60

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "context":Landroid/content/Context;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_182f

    .end local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :catchall_1812
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    move-object/from16 v12, v60

    .end local v1    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v3, "context":Landroid/content/Context;
    .restart local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_182f

    .end local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v60    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v3, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v12, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_1823
    move-exception v0

    move-object/from16 v31, v2

    move-object/from16 v37, v3

    move-object/from16 v38, v4

    move-object v3, v6

    move-object v1, v7

    move-object/from16 v40, v8

    move-object v6, v13

    .line 1887
    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v4    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v6    # "context":Landroid/content/Context;
    .end local v8    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .local v3, "context":Landroid/content/Context;
    .restart local v31    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v37    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .restart local v38    # "vpnManager":Lcom/android/server/VpnManagerService;
    .restart local v40    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_182f
    const-string v2, "System"

    const-string v4, "******************************************"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    const-string v2, "System"

    const-string v4, "************ Failure starting core service"

    invoke-static {v2, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1889
    throw v0
.end method

.method private startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3767
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3768
    const-string v0, "SystemServer"

    const-string v1, "RotationResolverService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3769
    return-void

    .line 3772
    :cond_e
    const-string v0, "StartRotationResolverService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3773
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3774
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3776
    return-void
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3695
    const v0, 0x1040293

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3696
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3697
    return-void

    .line 3700
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3701
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/systemcaptions/SystemCaptionsManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3702
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3703
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 3785
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3786
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3787
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3788
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3790
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3791
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 3792
    return-void
.end method

.method private startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3707
    const-string v0, "StartTextToSpeechManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3708
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/texttospeech/TextToSpeechManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3709
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3710
    return-void
.end method

.method private startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3779
    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3780
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3781
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3782
    return-void
.end method

.method private updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3683
    const-string v0, "UpdateWatchdogTimeout"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3684
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 3685
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3686
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 760
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Runtime restart: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 761
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Start count: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 762
    const-string v0, "Runtime start-up time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 763
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 764
    const-string v0, "Runtime start-elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 765
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 766
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 755
    const-class v0, Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
