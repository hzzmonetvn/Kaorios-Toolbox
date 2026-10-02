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
.field private static final ACCESSIBILITY_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

.field private static final ACCOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.accounts.AccountManagerService$Lifecycle"

.field private static final ADB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adb.AdbService$Lifecycle"

.field private static final AD_SERVICES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.adservices.AdServicesManagerService$Lifecycle"

.field private static final ALARM_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.alarm.AlarmManagerService"

.field private static final APPSEARCH_MODULE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.appsearch.AppSearchModule$Lifecycle"

.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final APP_COMPAT_OVERRIDES_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.compat.overrides.AppCompatOverridesService$Lifecycle"

.field private static final APP_HIBERNATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.apphibernation.AppHibernationService"

.field private static final APP_PREDICTION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appprediction.AppPredictionManagerService"

.field private static final AUTO_FILL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.autofill.AutofillManagerService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final BLOB_STORE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.blob.BlobStoreManagerService"

.field private static final BLOCK_MAP_FILE:Ljava/lang/String; = "/cache/recovery/block.map"

.field private static final BLUETOOTH_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.bluetooth.BluetoothService"

.field private static final CAR_SERVICE_HELPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.internal.car.CarServiceHelperService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONNECTIVITY_SERVICE_APEX_PATH:Ljava/lang/String; = "/apex/com.android.tethering/javalib/service-connectivity.jar"

.field private static final CONNECTIVITY_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.ConnectivityServiceInitializer"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final CREDENTIAL_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.credentials.CredentialManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x10303fb

.field private static final DEVICE_IDLE_CONTROLLER_CLASS:Ljava/lang/String; = "com.android.server.DeviceIdleController"

.field private static final GAME_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.app.GameManagerService$Lifecycle"

.field private static final GNSS_TIME_UPDATE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

.field private static final HEALTHCONNECT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.healthconnect.HealthConnectManagerService"

.field private static final HEALTH_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.healthservices.HealthService"

.field private static final HEAP_DUMP_PATH:Ljava/io/File;

.field private static final IOT_SERVICE_CLASS:Ljava/lang/String; = "com.android.things.server.IoTSystemService"

.field private static final IP_CONNECTIVITY_METRICS_CLASS:Ljava/lang/String; = "com.android.server.connectivity.IpConnectivityMetrics"

.field private static final ISOLATED_COMPILATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.compos.IsolatedCompilationService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final LOCATION_TIME_ZONE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.location.LocationTimeZoneManagerService$Lifecycle"

.field private static final LOCK_SETTINGS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.locksettings.LockSettingsService$Lifecycle"

.field private static final LOWPAN_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.lowpan.LowpanService"

.field private static final MAX_HEAP_DUMPS:I = 0x2

.field private static final MEDIA_COMMUNICATION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaCommunicationService"

.field private static final MEDIA_RESOURCE_MONITOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaResourceMonitorService"

.field private static final MEDIA_SESSION_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.media.MediaSessionService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MUSIC_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.musicrecognition.MusicRecognitionManagerService"

.field private static final NETWORK_STATS_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.NetworkStatsServiceInitializer"

.field private static final ON_DEVICE_PERSONALIZATION_SYSTEM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final REBOOT_READINESS_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

.field private static final RESOURCE_ECONOMY_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.tare.InternalResourceService"

.field private static final ROLE_SERVICE_CLASS:Ljava/lang/String; = "com.android.role.RoleService"

.field private static final ROLLBACK_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.rollback.RollbackManagerService"

.field private static final SAFETY_CENTER_SERVICE_CLASS:Ljava/lang/String; = "com.android.safetycenter.SafetyCenterService"

.field private static final SCHEDULING_APEX_PATH:Ljava/lang/String; = "/apex/com.android.scheduling/javalib/service-scheduling.jar"

.field private static final SDK_SANDBOX_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

.field private static final SEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.search.SearchManagerService$Lifecycle"

.field private static final SEARCH_UI_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.searchui.SearchUiManagerService"

.field private static final SELECTION_TOOLBAR_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.selectiontoolbar.SelectionToolbarManagerService"

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SMARTSPACE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.smartspace.SmartspaceManagerService"

.field private static final SPEECH_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.speech.SpeechRecognitionManagerService"

.field private static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

.field private static final START_SENSOR_MANAGER_SERVICE:Ljava/lang/String; = "StartISensorManagerService"

.field private static final STATS_BOOTSTRAP_ATOM_SERVICE_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.bootstrap.StatsBootstrapAtomService$Lifecycle"

.field private static final STATS_COMPANION_APEX_PATH:Ljava/lang/String; = "/apex/com.android.os.statsd/javalib/service-statsd.jar"

.field private static final STATS_COMPANION_LIFECYCLE_CLASS:Ljava/lang/String; = "com.android.server.stats.StatsCompanion$Lifecycle"

.field private static final STATS_PULL_ATOM_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.stats.pull.StatsPullAtomService"

.field private static final STORAGE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.StorageManagerService$Lifecycle"

.field private static final STORAGE_STATS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usage.StorageStatsService$Lifecycle"

.field private static final SYSPROP_FDTRACK_ABORT_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_abort_threshold"

.field private static final SYSPROP_FDTRACK_ENABLE_THRESHOLD:Ljava/lang/String; = "persist.sys.debug.fdtrack_enable_threshold"

.field private static final SYSPROP_FDTRACK_INTERVAL:Ljava/lang/String; = "persist.sys.debug.fdtrack_interval"

.field private static final SYSPROP_START_COUNT:Ljava/lang/String; = "sys.system_server.start_count"

.field private static final SYSPROP_START_ELAPSED:Ljava/lang/String; = "sys.system_server.start_elapsed"

.field private static final SYSPROP_START_UPTIME:Ljava/lang/String; = "sys.system_server.start_uptime"

.field private static final SYSTEM_CAPTIONS_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.systemcaptions.SystemCaptionsManagerService"

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final TETHERING_CONNECTOR_CLASS:Ljava/lang/String; = "android.net.ITetheringConnector"

.field private static final TEXT_TO_SPEECH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.texttospeech.TextToSpeechManagerService"

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.android.clockwork.ThermalObserver"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

.field private static final TRANSLATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.translation.TranslationManagerService"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final UPDATABLE_DEVICE_CONFIG_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final UWB_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-uwb.jar"

.field private static final UWB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.uwb.UwbService"

.field private static final VIRTUAL_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.virtual.VirtualDeviceManagerService"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_EFFECTS_GENERATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAYOFFLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.displayoffload.DisplayOffloadService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.time.WearTimeService"

.field private static final WIFI_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.wifi/javalib/service-wifi.jar"

.field private static final WIFI_AWARE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.aware.WifiAwareService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_RTT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.rtt.RttService"

.field private static final WIFI_SCANNING_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.scanner.WifiScanningService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"

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
.method public static synthetic $r8$lambda$8zxOYx-QEMffbYJtoGp6Ub2KG-8(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/SystemServer;->handleEarlySystemWtf(Landroid/os/IBinder;Ljava/lang/String;ZLandroid/app/ApplicationErrorReport$ParcelableCrashInfo;I)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$j-o4YiFI6CGg9c4nnNy8d-lY-7g(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 18

    invoke-direct/range {p0 .. p17}, Lcom/android/server/SystemServer;->lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    return-void
.end method

.method public static synthetic $r8$lambda$t1R-mpe1gQ3l_T3UqaEuPqwZT88(Lcom/android/server/SystemServer;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/SystemServer;->lambda$startOtherServices$4()V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 565
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 12

    .line 730
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 489
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 507
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$SystemServerDumper-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 732
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 735
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 736
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 737
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v9

    iput-wide v9, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 738
    move-wide v3, v7

    move-wide v5, v9

    invoke-static/range {v3 .. v10}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 742
    if-le v0, v2, :cond_35

    move v1, v2

    :cond_35
    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 743
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1124
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1125
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1126
    const v2, 0x10303fb

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1128
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1129
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1130
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 3417
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3418
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static dumpHprof()V
    .registers 8

    .line 577
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 580
    .local v0, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemServerStub;->getHeapDumpDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 581
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_16

    new-array v1, v2, [Ljava/io/File;

    .line 582
    :cond_16
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 583
    .local v3, "existingBacktraces":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    array-length v4, v1

    :goto_1c
    if-ge v2, v4, :cond_4a

    aget-object v5, v1, v2

    .line 585
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_27

    .line 586
    goto :goto_47

    .line 589
    :cond_27
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_37

    .line 590
    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 591
    goto :goto_47

    .line 594
    :cond_37
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_44

    .line 595
    goto :goto_47

    .line 597
    :cond_44
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 583
    .end local v5    # "file":Ljava/io/File;
    :goto_47
    add-int/lit8 v2, v2, 0x1

    goto :goto_1c

    .line 599
    :cond_4a
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "System"

    if-lt v2, v4, :cond_8a

    .line 600
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_54
    const/4 v4, 0x1

    if-ge v2, v4, :cond_5d

    .line 602
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 600
    add-int/lit8 v2, v2, 0x1

    goto :goto_54

    .line 604
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

    .line 605
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_89

    .line 606
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

    .line 608
    .end local v4    # "file":Ljava/io/File;
    :cond_89
    goto :goto_61

    .line 611
    :cond_8a
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServerStub;->keepDumpSize(Ljava/util/TreeSet;)V

    .line 617
    :try_start_91
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    sget-object v6, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v2, v4, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 619
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

    .line 620
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

    .line 622
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_de
    .catch Ljava/io/IOException; {:try_start_91 .. :try_end_de} :catch_df

    .line 625
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    goto :goto_e5

    .line 623
    :catch_df
    move-exception v2

    .line 624
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Failed to dump fdtrack hprof"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 626
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_e5
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method private static getMaxFd()I
    .registers 5

    .line 543
    const/4 v0, 0x0

    .line 545
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

    .line 546
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 550
    if-eqz v0, :cond_1f

    .line 552
    :try_start_14
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_17} :catch_18

    .line 556
    goto :goto_1f

    .line 553
    :catch_18
    move-exception v1

    .line 555
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 546
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_1f
    :goto_1f
    return v1

    .line 550
    :catchall_20
    move-exception v1

    goto :goto_4d

    .line 547
    :catch_22
    move-exception v1

    .line 548
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

    .line 550
    nop

    .end local v1    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_49

    .line 552
    :try_start_3e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_41} :catch_42

    .line 556
    goto :goto_49

    .line 553
    :catch_42
    move-exception v1

    .line 555
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 560
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_49
    :goto_49
    const v1, 0x7fffffff

    return v1

    .line 550
    :goto_4d
    if-eqz v0, :cond_5a

    .line 552
    :try_start_4f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_52} :catch_53

    .line 556
    goto :goto_5a

    .line 553
    :catch_53
    move-exception v1

    .line 555
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 558
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

    .line 3528
    const-string/jumbo v0, "system_server"

    .line 3529
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 3531
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

    .line 3534
    const/16 v1, 0x50

    const/16 v2, 0x3e8

    const-string/jumbo v4, "system_server"

    const/4 v6, 0x3

    move-object v3, p1

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3537
    const-class v1, Lcom/android/server/SystemServer;

    monitor-enter v1

    .line 3538
    :try_start_28
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v2, :cond_33

    .line 3539
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 3541
    :cond_33
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3542
    monitor-exit v1

    .line 3543
    const/4 v1, 0x0

    return v1

    .line 3542
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

    .line 1063
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

    .line 1057
    if-eqz p0, :cond_14

    .line 1058
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1059
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1057
    :goto_15
    return v0
.end method

.method static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 14
    .param p0, "enableThreshold"    # I
    .param p1, "abortThreshold"    # I
    .param p2, "checkInterval"    # I

    .line 637
    const/4 v0, 0x0

    .line 638
    .local v0, "enabled":Z
    const-wide/16 v1, 0x0

    .line 641
    .local v1, "nextWrite":J
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 642
    .local v3, "maxFd":I
    if-le v3, p0, :cond_13

    .line 644
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 645
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 646
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 649
    :cond_13
    const-string v4, "System"

    const/4 v5, 0x2

    const/16 v6, 0x16c

    if-le v3, p0, :cond_35

    if-nez v0, :cond_35

    .line 650
    const-string v7, "fdtrack enable threshold reached, enabling"

    invoke-static {v4, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 655
    const-string v4, "fdtrack"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 656
    const/4 v0, 0x1

    .line 658
    sub-int v4, p1, p0

    div-int/2addr v4, v5

    .line 659
    .local v4, "watermark":I
    invoke-static {}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->getInstance()Lcom/android/server/inputmethod/InputMethodManagerServiceStub;

    move-result-object v5

    .line 660
    invoke-virtual {v5, v4}, Lcom/android/server/inputmethod/InputMethodManagerServiceStub;->enableInputMethodMonitor(I)V

    .line 662
    .end local v4    # "watermark":I
    goto :goto_5c

    :cond_35
    if-le v3, p1, :cond_47

    .line 663
    const-string v5, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const/4 v4, 0x3

    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 668
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 669
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_5c

    .line 672
    :cond_47
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 673
    .local v7, "now":J
    cmp-long v4, v7, v1

    if-lez v4, :cond_5c

    .line 674
    const-wide/32 v9, 0x36ee80

    add-long/2addr v9, v7

    .line 675
    .end local v1    # "nextWrite":J
    .local v9, "nextWrite":J
    nop

    .line 676
    if-eqz v0, :cond_57

    goto :goto_58

    .line 677
    :cond_57
    const/4 v5, 0x1

    .line 675
    :goto_58
    invoke-static {v6, v5, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v9

    .line 683
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

    .line 686
    nop

    .line 687
    .end local v3    # "maxFd":I
    goto :goto_3

    .line 684
    .restart local v3    # "maxFd":I
    :catch_64
    move-exception v4

    .line 685
    .local v4, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 5

    .line 1587
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1589
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1590
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1591
    .local v0, "abis32":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_23

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1592
    const-string v3, "Unable to preload default resources for secondary"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1594
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    .line 1597
    .end local v0    # "abis32":[Ljava/lang/String;
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_2d

    .line 1595
    :catch_27
    move-exception v0

    .line 1596
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1598
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 2

    .line 1736
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1737
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartISensorManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1738
    invoke-static {}, Lcom/android/server/SystemServer;->startISensorManagerService()V

    .line 1739
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1740
    return-void
.end method

.method static synthetic lambda$startOtherServices$3()V
    .registers 2

    .line 1743
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1744
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1745
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1746
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1747
    return-void
.end method

.method private synthetic lambda$startOtherServices$4()V
    .registers 4

    .line 3110
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 3112
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3113
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3114
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 3115
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 3116
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3117
    return-void
.end method

.method static synthetic lambda$startOtherServices$5(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 3259
    const/4 v0, 0x0

    const/4 v1, 0x6

    const-string/jumbo v2, "tethering"

    invoke-static {v2, p0, v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3262
    return-void
.end method

.method private synthetic lambda$startOtherServices$6(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
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

    .line 3084
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    move-object/from16 v5, p8

    move-object/from16 v6, p11

    const-string v0, "Making services ready"

    const-string v7, "SystemServer"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3086
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0x226

    invoke-virtual {v0, v2, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3087
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3088
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3090
    :try_start_27
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_2c
    .catchall {:try_start_27 .. :try_end_2c} :catchall_2d

    .line 3093
    goto :goto_34

    .line 3091
    :catchall_2d
    move-exception v0

    .line 3092
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "observing native crashes"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3094
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_34
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3096
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3098
    :try_start_3c
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v8}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_48
    .catchall {:try_start_3c .. :try_end_48} :catchall_49

    .line 3101
    goto :goto_50

    .line 3099
    :catchall_49
    move-exception v0

    .line 3100
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v8, "registering app ops policy"

    invoke-direct {v1, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3102
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_50
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3106
    const-string v8, "WebViewFactoryPreparation"

    .line 3107
    .local v8, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 3108
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-object v9, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    const-string v10, "WebViewFactoryPreparation"

    if-eqz v9, :cond_67

    .line 3109
    new-instance v9, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v9, v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v9, v10}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v9, v0

    goto :goto_68

    .line 3108
    :cond_67
    move-object v9, v0

    .line 3120
    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v9, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_68
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 3121
    const-string v11, "android.hardware.type.automotive"

    invoke-virtual {v0, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v11

    .line 3122
    .local v11, "isAutomotive":Z
    if-eqz v11, :cond_9e

    .line 3123
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3124
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3125
    const-string v12, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 3126
    .local v0, "cshs":Lcom/android/server/SystemService;
    instance-of v12, v0, Landroid/util/Dumpable;

    if-eqz v12, :cond_8b

    .line 3127
    iget-object v12, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v13, v0

    check-cast v13, Landroid/util/Dumpable;

    invoke-static {v12, v13}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3129
    :cond_8b
    instance-of v12, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v12, :cond_98

    .line 3130
    move-object v12, v0

    check-cast v12, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v13, p2

    invoke-virtual {v13, v12}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_9a

    .line 3129
    :cond_98
    move-object/from16 v13, p2

    .line 3132
    :goto_9a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_a0

    .line 3122
    .end local v0    # "cshs":Lcom/android/server/SystemService;
    :cond_9e
    move-object/from16 v13, p2

    .line 3135
    :goto_a0
    if-eqz p3, :cond_d6

    .line 3136
    const-string v0, "StartWearService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3137
    nop

    .line 3138
    const v0, 0x10402fb

    invoke-virtual {v3, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3140
    .local v0, "wearServiceComponentNameString":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_d3

    .line 3141
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v12

    .line 3144
    .local v12, "wearServiceComponentName":Landroid/content/ComponentName;
    if-eqz v12, :cond_ce

    .line 3145
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    .line 3146
    .local v7, "intent":Landroid/content/Intent;
    invoke-virtual {v7, v12}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3147
    const/16 v14, 0x100

    invoke-virtual {v7, v14}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3148
    sget-object v14, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v3, v7, v14}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3149
    .end local v7    # "intent":Landroid/content/Intent;
    goto :goto_d3

    .line 3150
    :cond_ce
    const-string v14, "Null wear service component name."

    invoke-static {v7, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3153
    .end local v12    # "wearServiceComponentName":Landroid/content/ComponentName;
    :cond_d3
    :goto_d3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3161
    .end local v0    # "wearServiceComponentNameString":Ljava/lang/String;
    :cond_d6
    if-eqz p5, :cond_ed

    .line 3162
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3164
    const/4 v0, 0x1

    :try_start_de
    invoke-virtual {v4, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_e1
    .catchall {:try_start_de .. :try_end_e1} :catchall_e2

    .line 3167
    goto :goto_ea

    .line 3165
    :catchall_e2
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3166
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3168
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ea
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3170
    :cond_ed
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3172
    if-eqz p7, :cond_102

    .line 3173
    :try_start_f4
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/net/NetworkManagementService;->systemReady()V
    :try_end_f7
    .catchall {:try_start_f4 .. :try_end_f7} :catchall_f8

    goto :goto_102

    .line 3175
    :catchall_f8
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3176
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Network Managment Service ready"

    invoke-direct {v1, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_103

    .line 3177
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_102
    :goto_102
    nop

    .line 3178
    :goto_103
    const/4 v0, 0x0

    .line 3179
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v5, :cond_10d

    .line 3180
    nop

    .line 3181
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v7, v0

    goto :goto_10e

    .line 3179
    :cond_10d
    move-object v7, v0

    .line 3183
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v7, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_10e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3184
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3186
    if-eqz v4, :cond_126

    .line 3187
    :try_start_118
    invoke-virtual/range {p6 .. p6}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_11b
    .catchall {:try_start_118 .. :try_end_11b} :catchall_11c

    goto :goto_126

    .line 3189
    :catchall_11c
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3190
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making Connectivity Service ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_127

    .line 3191
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_126
    :goto_126
    nop

    .line 3192
    :goto_127
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3193
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3195
    if-eqz p9, :cond_13f

    .line 3196
    :try_start_131
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_134
    .catchall {:try_start_131 .. :try_end_134} :catchall_135

    goto :goto_13f

    .line 3198
    :catchall_135
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3199
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making VpnManagerService ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_140

    .line 3200
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_13f
    :goto_13f
    nop

    .line 3201
    :goto_140
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3202
    const-string v0, "MakeVcnManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3204
    if-eqz p10, :cond_158

    .line 3205
    :try_start_14a
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/VcnManagementService;->systemReady()V
    :try_end_14d
    .catchall {:try_start_14a .. :try_end_14d} :catchall_14e

    goto :goto_158

    .line 3207
    :catchall_14e
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3208
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making VcnManagementService ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_159

    .line 3209
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_158
    :goto_158
    nop

    .line 3210
    :goto_159
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3211
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3213
    if-eqz v5, :cond_171

    .line 3214
    :try_start_163
    invoke-virtual {v5, v7}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_166
    .catchall {:try_start_163 .. :try_end_166} :catchall_167

    goto :goto_171

    .line 3216
    :catchall_167
    move-exception v0

    move-object v12, v0

    move-object v0, v12

    .line 3217
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v12, "making Network Policy Service ready"

    invoke-direct {v1, v12, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_172

    .line 3218
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_171
    :goto_171
    nop

    .line 3219
    :goto_172
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3222
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3226
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3228
    if-eqz v9, :cond_184

    .line 3229
    invoke-static {v9, v10}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3231
    :cond_184
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v10, 0x258

    invoke-virtual {v0, v2, v10}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3232
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3234
    if-eqz v6, :cond_19b

    .line 3235
    const-string v0, "HsumBootUserInitializer.systemRunning"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {v6, v2}, Lcom/android/server/HsumBootUserInitializer;->systemRunning(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3237
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3240
    :cond_19b
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3247
    :try_start_1a0
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_1a7
    .catchall {:try_start_1a0 .. :try_end_1a7} :catchall_1a8

    .line 3250
    goto :goto_1af

    .line 3248
    :catchall_1a8
    move-exception v0

    .line 3249
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Network Stack"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3251
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1af
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3253
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3256
    :try_start_1b7
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v10, "android.net.ITetheringConnector"

    const-string v12, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v14, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v14}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v10, v12, v14}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_1c7
    .catchall {:try_start_1b7 .. :try_end_1c7} :catchall_1c8

    .line 3265
    goto :goto_1cf

    .line 3263
    :catchall_1c8
    move-exception v0

    .line 3264
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v10, "starting Tethering"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3266
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1cf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3268
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3270
    if-eqz p12, :cond_1e6

    .line 3271
    :try_start_1d9
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1dc
    .catchall {:try_start_1d9 .. :try_end_1dc} :catchall_1dd

    goto :goto_1e6

    .line 3273
    :catchall_1dd
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3274
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying CountryDetectorService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1e7

    .line 3275
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1e6
    :goto_1e6
    nop

    .line 3276
    :goto_1e7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3277
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3279
    if-eqz p13, :cond_1fe

    .line 3280
    :try_start_1f1
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/timedetector/NetworkTimeUpdateService;->systemRunning()V
    :try_end_1f4
    .catchall {:try_start_1f1 .. :try_end_1f4} :catchall_1f5

    goto :goto_1fe

    .line 3282
    :catchall_1f5
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3283
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying NetworkTimeService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ff

    .line 3284
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1fe
    :goto_1fe
    nop

    .line 3285
    :goto_1ff
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3286
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3289
    if-eqz p14, :cond_216

    .line 3290
    :try_start_209
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_20c
    .catchall {:try_start_209 .. :try_end_20c} :catchall_20d

    goto :goto_216

    .line 3292
    :catchall_20d
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3293
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying InputManagerService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_217

    .line 3294
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_216
    :goto_216
    nop

    .line 3295
    :goto_217
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3296
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3298
    if-eqz p15, :cond_22e

    .line 3299
    :try_start_221
    invoke-virtual/range {p15 .. p15}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_224
    .catchall {:try_start_221 .. :try_end_224} :catchall_225

    goto :goto_22e

    .line 3301
    :catchall_225
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3302
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying TelephonyRegistry running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_22f

    .line 3303
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_22e
    :goto_22e
    nop

    .line 3304
    :goto_22f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3305
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3307
    if-eqz p16, :cond_246

    .line 3308
    :try_start_239
    invoke-virtual/range {p16 .. p16}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_23c
    .catchall {:try_start_239 .. :try_end_23c} :catchall_23d

    goto :goto_246

    .line 3310
    :catchall_23d
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3311
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MediaRouterService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_247

    .line 3312
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_246
    :goto_246
    nop

    .line 3313
    :goto_247
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3314
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v10, "android.hardware.telephony"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_26c

    .line 3315
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3317
    if-eqz p17, :cond_268

    :try_start_25b
    invoke-virtual/range {p17 .. p17}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_25e
    .catchall {:try_start_25b .. :try_end_25e} :catchall_25f

    goto :goto_268

    .line 3318
    :catchall_25f
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3319
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Notifying MmsService running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_269

    .line 3320
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_268
    :goto_268
    nop

    .line 3321
    :goto_269
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3324
    :cond_26c
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3328
    :try_start_271
    const-string/jumbo v0, "incident"

    .line 3329
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3328
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 3330
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_281

    .line 3331
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_281
    .catchall {:try_start_271 .. :try_end_281} :catchall_282

    .line 3335
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_281
    goto :goto_288

    .line 3333
    :catchall_282
    move-exception v0

    .line 3334
    .local v0, "e":Ljava/lang/Throwable;
    const-string v10, "Notifying incident daemon running"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3336
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_288
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3338
    iget-wide v14, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v16, 0x0

    cmp-long v0, v14, v16

    if-eqz v0, :cond_2a0

    .line 3339
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3340
    iget-wide v14, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v14, v15}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3341
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3344
    :cond_2a0
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3346
    :try_start_2a5
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_2a8
    .catchall {:try_start_2a5 .. :try_end_2a8} :catchall_2a9

    .line 3349
    goto :goto_2b1

    .line 3347
    :catchall_2a9
    move-exception v0

    move-object v10, v0

    move-object v0, v10

    .line 3348
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v10, "Triggering OdsignStatsLogger"

    invoke-direct {v1, v10, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3350
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2b1
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3351
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 707
    invoke-static {}, Lcom/android/server/MiuiServicesRouter;->init()V

    .line 711
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerStub;->markSystemRun(J)V

    .line 716
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/BootKeeperStub;->beforeBoot()V

    .line 720
    invoke-static {}, Lcom/android/server/ProcHunterStub;->getInstance()Lcom/android/server/ProcHunterStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ProcHunterStub;->start()V

    .line 724
    invoke-static {}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->getInstance()Lcom/android/server/miuibpf/MiuiBpfServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/miuibpf/MiuiBpfServiceStub;->start()V

    .line 727
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 728
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1072
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1074
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1075
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

    .line 1078
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1079
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1081
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1089
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1090
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1091
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1092
    const/4 v7, 0x0

    .line 1094
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1097
    goto :goto_56

    .line 1095
    :catch_50
    move-exception v2

    .line 1096
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1099
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1100
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1101
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1103
    return-void

    .line 1108
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1116
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1117
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1118
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1121
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

    .line 1067
    const-string v0, "***********************************************"

    const-string v1, "SystemServer"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1068
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

    .line 1069
    return-void
.end method

.method private run()V
    .registers 16

    .line 835
    const-string/jumbo v0, "persist.sys.language"

    const-string v1, ""

    new-instance v2, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 837
    .local v2, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_a
    const-string v3, "InitBeforeStartServices"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 840
    const-string/jumbo v3, "sys.system_server.start_count"

    iget v4, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 841
    const-string/jumbo v3, "sys.system_server.start_elapsed"

    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    const-string/jumbo v3, "sys.system_server.start_uptime"

    iget-wide v4, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget v4, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 845
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    iget-wide v6, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    iget-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    .line 844
    const/16 v4, 0xbc3

    invoke-static {v4, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 848
    invoke-static {}, Lcom/android/server/SystemTimeZone;->initializeTimeZoneSettingsIfRequired()V

    .line 858
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_80

    .line 859
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v3

    .line 861
    .local v3, "languageTag":Ljava/lang/String;
    const-string/jumbo v4, "persist.sys.locale"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 862
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 863
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 864
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 868
    .end local v3    # "languageTag":Ljava/lang/String;
    :cond_80
    invoke-static {v6}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 870
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 873
    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 876
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 879
    const-string v1, "SystemServer"

    const-string v3, "Entered the Android system server!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 880
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 881
    .local v3, "uptimeMillis":J
    const/16 v1, 0xbc2

    invoke-static {v1, v3, v4}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 882
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v7, 0xf0

    if-nez v1, :cond_a9

    .line 883
    const/16 v1, 0x13

    invoke-static {v7, v1, v3, v4}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 896
    :cond_a9
    const-string/jumbo v1, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v8

    invoke-virtual {v8}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v8

    invoke-static {v1, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 901
    invoke-static {}, Landroid/app/ActivityThreadStub;->get()Landroid/app/ActivityThreadStub;

    move-result-object v1

    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v1, v8}, Landroid/app/ActivityThreadStub;->useGrowthLimitOutExpendMethod(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_ca

    .line 902
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 908
    :cond_ca
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 912
    invoke-static {v6}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 916
    invoke-static {v6}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 919
    invoke-static {v6}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 922
    invoke-static {v6}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 925
    const/16 v1, 0x1f

    invoke-static {v1}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 928
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 930
    invoke-static {v5}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 931
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 932
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const-wide/16 v8, 0x64

    const-wide/16 v10, 0xc8

    invoke-virtual {v1, v8, v9, v10, v11}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 935
    sput-boolean v6, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 938
    const-string v1, "android_servers"

    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 941
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 944
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v1, :cond_104

    .line 945
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V

    .line 950
    :cond_104
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 953
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 956
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 959
    const-string/jumbo v1, "system_server_dumper"

    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v1, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 960
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v1, p0}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 963
    new-instance v8, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v8, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 964
    iget-boolean v9, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v10, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v12, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v8 .. v13}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 966
    iget-object v1, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v6}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 968
    const-class v1, Lcom/android/server/SystemServiceManager;

    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v1, v6}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 970
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v1

    .line 971
    .local v1, "tp":Lcom/android/server/SystemServerInitThreadPool;
    iget-object v6, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v6, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 977
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 981
    sget-boolean v6, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_148
    .catchall {:try_start_a .. :try_end_148} :catchall_223

    const-string v8, "System"

    if-eqz v6, :cond_18d

    .line 983
    :try_start_14c
    const-string/jumbo v6, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 984
    .local v6, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_18d

    .line 985
    const/16 v9, 0x3d

    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    .line 986
    .local v9, "equalIndex":I
    invoke-virtual {v6, v5, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v10

    .line 987
    .local v10, "libraryPath":Ljava/lang/String;
    add-int/lit8 v11, v9, 0x1

    .line 988
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v6, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11
    :try_end_16d
    .catchall {:try_start_14c .. :try_end_16d} :catchall_223

    .line 991
    .local v11, "parameterList":Ljava/lang/String;
    :try_start_16d
    invoke-static {v10, v11, v0}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_170
    .catch Ljava/lang/Exception; {:try_start_16d .. :try_end_170} :catch_171
    .catchall {:try_start_16d .. :try_end_170} :catchall_223

    .line 995
    goto :goto_18d

    .line 992
    :catch_171
    move-exception v12

    .line 993
    .local v12, "e":Ljava/lang/Exception;
    :try_start_172
    const-string v13, "*************************************************"

    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "********** Failed to load jvmti plugin: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18d
    .catchall {:try_start_172 .. :try_end_18d} :catchall_223

    .line 999
    .end local v1    # "tp":Lcom/android/server/SystemServerInitThreadPool;
    .end local v3    # "uptimeMillis":J
    .end local v6    # "jvmtiAgent":Ljava/lang/String;
    .end local v9    # "equalIndex":I
    .end local v10    # "libraryPath":Ljava/lang/String;
    .end local v11    # "parameterList":Ljava/lang/String;
    .end local v12    # "e":Ljava/lang/Exception;
    :cond_18d
    :goto_18d
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1000
    nop

    .line 1003
    new-instance v1, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 1006
    const-string v1, "debug.debug_system"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1a4

    .line 1007
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 1013
    :cond_1a4
    :try_start_1a4
    const-string v1, "StartServices"

    invoke-virtual {v2, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1014
    invoke-direct {p0, v2}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1015
    invoke-direct {p0, v2}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1016
    invoke-direct {p0, v2}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1017
    invoke-direct {p0, v2}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1020
    invoke-direct {p0, v2}, Lcom/android/server/SystemServer;->updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1022
    invoke-static {}, Lcom/android/internal/os/ZygoteConfigStub;->getInstance()Lcom/android/internal/os/ZygoteConfigStub;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1, v3}, Lcom/android/internal/os/ZygoteConfigStub;->initialize(Landroid/content/Context;)V
    :try_end_1c1
    .catchall {:try_start_1a4 .. :try_end_1c1} :catchall_211

    .line 1029
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1030
    nop

    .line 1032
    invoke-static {v0}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1034
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_1fd

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_1fd

    .line 1035
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1036
    .local v0, "uptimeMillis":J
    const/16 v3, 0x14

    invoke-static {v7, v3, v0, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1039
    const-wide/32 v3, 0xea60

    .line 1040
    .local v3, "maxUptimeMillis":J
    const-wide/32 v5, 0xea60

    cmp-long v5, v0, v5

    if-lez v5, :cond_1fd

    .line 1041
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "SystemServerTiming"

    invoke-static {v6, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v0    # "uptimeMillis":J
    .end local v3    # "maxUptimeMillis":J
    :cond_1fd
    invoke-static {}, Lcom/android/server/BootKeeperStub;->getInstance()Lcom/android/server/BootKeeperStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-interface {v0, v1}, Lcom/android/server/BootKeeperStub;->afterBoot(Landroid/content/Context;)V

    .line 1052
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1053
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1024
    :catchall_211
    move-exception v0

    .line 1025
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_212
    const-string v1, "******************************************"

    invoke-static {v8, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1026
    const-string v1, "************ Failure starting system services"

    invoke-static {v8, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1027
    nop

    .end local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_21e
    .catchall {:try_start_212 .. :try_end_21e} :catchall_21e

    .line 1029
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v2    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_21e
    move-exception v0

    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1030
    throw v0

    .line 999
    :catchall_223
    move-exception v0

    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1000
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static spawnFdLeakCheckThread()V
    .registers 5

    .line 632
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x640

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 633
    .local v0, "enableThreshold":I
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0xbb8

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 634
    .local v1, "abortThreshold":I
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 636
    .local v2, "checkInterval":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 688
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 689
    return-void
.end method

.method private startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3501
    const-string v0, "StartAmbientContextService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3502
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3503
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3504
    return-void
.end method

.method private startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3388
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3391
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 3392
    .local v0, "services":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/pm/ApexSystemServiceInfo;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_12
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_52

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/pm/ApexSystemServiceInfo;

    .line 3393
    .local v2, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3394
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v4

    .line 3395
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

    .line 3396
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 3397
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_4e

    .line 3399
    :cond_49
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3401
    :goto_4e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3402
    .end local v2    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    goto :goto_12

    .line 3405
    :cond_52
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 3407
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3408
    return-void
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3477
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3478
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3479
    return-void

    .line 3482
    :cond_e
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3483
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3484
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3485
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 16
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1139
    const-string/jumbo v0, "moveab"

    const-string/jumbo v1, "packagemanagermain"

    const-string/jumbo v2, "startBootstrapServices"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1141
    const-string v2, "ArtModuleServiceInitializer"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1149
    new-instance v2, Landroid/os/ArtModuleServiceManager;

    invoke-direct {v2}, Landroid/os/ArtModuleServiceManager;-><init>()V

    invoke-static {v2}, Lcom/android/server/art/ArtModuleServiceInitializer;->setArtModuleServiceManager(Landroid/os/ArtModuleServiceManager;)V

    .line 1150
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1154
    const-string v2, "StartWatchdog"

    invoke-virtual {p1, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1155
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    .line 1156
    .local v2, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v2}, Lcom/android/server/Watchdog;->start()V

    .line 1157
    iget-object v3, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v3, v2}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1158
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1160
    const-string v3, "SystemServer"

    const-string v4, "Reading configuration..."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1161
    const-string v3, "ReadingSystemConfig"

    .line 1162
    .local v3, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v4, "ReadingSystemConfig"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1163
    new-instance v5, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {v5, v4}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1164
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1168
    const-string v4, "PlatformCompat"

    invoke-virtual {p1, v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1169
    new-instance v4, Lcom/android/server/compat/PlatformCompat;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1170
    .local v4, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v5, "platform_compat"

    invoke-static {v5, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1171
    new-instance v5, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v5, v4}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v6, "platform_compat_native"

    invoke-static {v6, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1173
    const/4 v5, 0x0

    new-array v6, v5, [J

    invoke-static {v6}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 1174
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1179
    const-string v6, "StartFileIntegrityService"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1180
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1181
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1186
    const-string v6, "StartInstaller"

    invoke-virtual {p1, v6}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1187
    iget-object v6, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/pm/Installer;

    invoke-virtual {v6, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v6

    check-cast v6, Lcom/android/server/pm/Installer;

    .line 1188
    .local v6, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1192
    const-string v7, "DeviceIdentifiersPolicyService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1193
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1194
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1197
    const-string v7, "UriGrantsManagerService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1198
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1199
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1201
    const-string v7, "StartPowerStatsService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1203
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1204
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1206
    const-string v7, "StartIStatsService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1207
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1208
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1212
    const-string v7, "MemtrackProxyService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1213
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1214
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1217
    const-string v7, "StartAccessCheckingService"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1218
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/permission/access/AccessCheckingService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1219
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1222
    const-string v7, "StartActivityManager"

    invoke-virtual {p1, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1224
    iget-object v7, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1225
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v7

    .line 1226
    .local v7, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v8, v7}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1228
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v8, v9}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1229
    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8, v6}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1230
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v8

    iput-object v8, p0, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1231
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1234
    const-string v8, "StartDataLoaderManagerService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1235
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1237
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1240
    const-string v8, "StartIncrementalService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1241
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1242
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1248
    const-string v8, "StartPowerManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1249
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/power/PowerManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1250
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1252
    const-string v8, "StartThermalManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1253
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1254
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1256
    const-string v8, "StartHintManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1257
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1258
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1262
    const-string v8, "InitPowerManagement"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1263
    iget-object v8, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1264
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1267
    const-string v8, "StartRecoverySystemService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1268
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1269
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1274
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    .line 1275
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 1278
    const-string v8, "StartLightsService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1281
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/SystemServerStub;->createLightsServices()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1283
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1285
    const-string v8, "StartDisplayOffloadService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1287
    const-string v8, "config.enable_display_offload"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1b7

    .line 1288
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1290
    :cond_1b7
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1292
    const-string v8, "StartSidekickService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1294
    const-string v8, "config.enable_sidekick_graphics"

    invoke-static {v8, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_1ce

    .line 1295
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1297
    :cond_1ce
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1301
    const-string v8, "StartDisplayManager"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1302
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v8

    check-cast v8, Lcom/android/server/display/DisplayManagerService;

    iput-object v8, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1303
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1306
    const-string v8, "WaitForDisplay"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1307
    iget-object v8, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x64

    invoke-virtual {v8, p1, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1308
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1311
    iget-boolean v8, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v9, 0xf0

    if-nez v8, :cond_204

    .line 1312
    nop

    .line 1315
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1312
    const/16 v8, 0xe

    invoke-static {v9, v8, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1318
    :cond_204
    const-string v8, "StartDomainVerificationService"

    invoke-virtual {p1, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1319
    new-instance v8, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1320
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v11

    invoke-direct {v8, v10, v11, v4}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    .line 1321
    .local v8, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    iget-object v10, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v10, v8}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1322
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1325
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 1328
    .local v10, "pmsStartTime":J
    const-string v12, "StartPackageManagerService"

    invoke-virtual {p1, v12}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1330
    :try_start_225
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1332
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1334
    iget-object v12, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v13, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v13, :cond_23b

    const/4 v13, 0x1

    goto :goto_23c

    :cond_23b
    move v13, v5

    :goto_23c
    invoke-static {v12, v6, v8, v13}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;Z)Lcom/android/server/pm/PackageManagerService;

    move-result-object v12

    iput-object v12, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;
    :try_end_242
    .catchall {:try_start_225 .. :try_end_242} :catchall_388

    .line 1338
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1342
    nop

    .line 1345
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    invoke-virtual {v1, v10, v11, v12, v13}, Lcom/android/server/SystemServerStub;->markPmsScan(JJ)V

    .line 1348
    iget-object v1, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1349
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1350
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1352
    const-string v1, "DexUseManagerLocal"

    invoke-virtual {p1, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1355
    const-class v1, Lcom/android/server/art/DexUseManagerLocal;

    iget-object v12, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1356
    invoke-static {v12}, Lcom/android/server/art/DexUseManagerLocal;->createInstance(Landroid/content/Context;)Lcom/android/server/art/DexUseManagerLocal;

    move-result-object v12

    .line 1355
    invoke-static {v1, v12}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1357
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1359
    iget-boolean v1, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v1, :cond_296

    invoke-direct {p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v1

    if-nez v1, :cond_296

    .line 1360
    nop

    .line 1363
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v12

    .line 1360
    const/16 v1, 0xf

    invoke-static {v9, v1, v12, v13}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1367
    :cond_296
    const-string v1, "config.disable_otadexopt"

    invoke-static {v1, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1368
    .local v1, "disableOtaDexopt":Z
    if-nez v1, :cond_2d0

    .line 1369
    const-string v9, "StartOtaDexOptService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1371
    :try_start_2a3
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1372
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v12, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v9, v12}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_2b1
    .catchall {:try_start_2a3 .. :try_end_2b1} :catchall_2b2

    goto :goto_2b9

    .line 1373
    :catchall_2b2
    move-exception v9

    .line 1374
    .local v9, "e":Ljava/lang/Throwable;
    :try_start_2b3
    const-string/jumbo v12, "starting OtaDexOptService"

    invoke-direct {p0, v12, v9}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2b9
    .catchall {:try_start_2b3 .. :try_end_2b9} :catchall_2c4

    .line 1376
    .end local v9    # "e":Ljava/lang/Throwable;
    :goto_2b9
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1378
    goto :goto_2d0

    .line 1376
    :catchall_2c4
    move-exception v5

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v9

    invoke-virtual {v9, v0}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1377
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1378
    throw v5

    .line 1381
    :cond_2d0
    :goto_2d0
    const-string v0, "StartUserManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1382
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1383
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1386
    const-string v0, "InitAttributerCache"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1387
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1388
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1391
    const-string v0, "SetSystemProcess"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1392
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1393
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1396
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v4, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1400
    const-string v0, "InitWatchdog"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1401
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v0, v9}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1402
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1406
    iget-object v0, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1409
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1410
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Lcom/android/server/om/OverlayManagerService;

    iget-object v12, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v12}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1411
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1414
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1415
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v9}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1416
    .local v0, "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    iget-object v9, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v9}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1417
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v9, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1418
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1420
    const-string v9, "StartSensorPrivacyService"

    invoke-virtual {p1, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1421
    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v12, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v13, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v12, v13}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v9, v12}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1422
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1424
    const-string/jumbo v9, "persist.sys.displayinset.top"

    invoke-static {v9, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    if-lez v5, :cond_36c

    .line 1426
    iget-object v5, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1427
    const-class v5, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v5}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v5}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1432
    :cond_36c
    const-string v5, "StartSensorService"

    invoke-virtual {p1, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1433
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v5, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1434
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1437
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v5

    iget-object v9, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v5, v9, v6}, Lcom/android/server/SystemServerStub;->addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 1440
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1441
    return-void

    .line 1338
    .end local v0    # "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    .end local v1    # "disableOtaDexopt":Z
    :catchall_388
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1340
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1342
    throw v0
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3443
    const/4 v0, 0x0

    .line 3444
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3446
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 3447
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3448
    if-eqz v0, :cond_22

    .line 3449
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3451
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3452
    return-void

    .line 3457
    :cond_28
    :goto_28
    if-nez v0, :cond_39

    .line 3458
    const v3, 0x1040260

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 3459
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    return-void

    .line 3464
    :cond_39
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3465
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3467
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3468
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3469
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_56

    .line 3470
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 3473
    :cond_56
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3474
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1447
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1450
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1451
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1452
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1454
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1456
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1457
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1460
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1461
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1462
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1463
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1462
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1464
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1467
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1468
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1469
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1470
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1474
    :cond_5e
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1476
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1479
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1481
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1484
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1485
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1486
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1489
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1490
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.rollback.RollbackManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1491
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1494
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1495
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1496
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1499
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1500
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1501
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1504
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1505
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1506
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1509
    const-string v0, "StartRemoteProvisioningService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1510
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/rkp/RemoteProvisioningService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1511
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1515
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_de

    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    if-eqz v0, :cond_ed

    .line 1517
    :cond_de
    const-string v0, "CpuMonitorService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1518
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/cpu/CpuMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1519
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1522
    :cond_ed
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1523
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

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 70
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1529
    move-object/from16 v13, p0

    move-object/from16 v7, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1530
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1532
    iget-object v8, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1533
    .local v8, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1534
    .local v1, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v9, 0x0

    .line 1535
    .local v9, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v10, 0x0

    .line 1536
    .local v10, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    const/4 v11, 0x0

    .line 1537
    .local v11, "vpnManager":Lcom/android/server/VpnManagerService;
    const/4 v12, 0x0

    .line 1538
    .local v12, "vcnManagement":Lcom/android/server/VcnManagementService;
    const/4 v14, 0x0

    .line 1539
    .local v14, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/4 v2, 0x0

    .line 1540
    .local v2, "wm":Lcom/android/server/wm/WindowManagerService;
    const/4 v15, 0x0

    .line 1541
    .local v15, "serial":Lcom/android/server/SerialService;
    const/16 v16, 0x0

    .line 1542
    .local v16, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    const/4 v3, 0x0

    .line 1543
    .local v3, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v4, 0x0

    .line 1544
    .local v4, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v5, 0x0

    .line 1545
    .local v5, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v17, 0x0

    .line 1546
    .local v17, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v18, 0x0

    .line 1547
    .local v18, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v19, 0x0

    .line 1548
    .local v19, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    const/16 v20, 0x0

    .line 1549
    .local v20, "wigigP2pService":Ljava/lang/Object;
    const/16 v21, 0x0

    .line 1551
    .local v21, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v22

    .line 1554
    .local v22, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v23

    .line 1556
    .local v23, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1559
    .local v24, "disableCameraService":Z
    const-string/jumbo v0, "ro.boot.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "1"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v26

    .line 1560
    .local v26, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1562
    .local v27, "enableWigig":Z
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.type.watch"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v28

    .line 1565
    .local v28, "isWatch":Z
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v6, "org.chromium.arc"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v29

    .line 1568
    .local v29, "isArc":Z
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.software.leanback"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v30

    .line 1571
    .local v30, "isTv":Z
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v6, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    .line 1575
    .local v31, "enableVrService":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_8d

    const-string v0, "debug.crash_system"

    const/4 v6, 0x0

    invoke-static {v0, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_87

    goto :goto_8d

    .line 1576
    :cond_87
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1580
    :cond_8d
    :goto_8d
    :try_start_8d
    const-string v0, "SecondaryZygotePreload"

    .line 1585
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v6}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    move-object/from16 v32, v0

    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    .local v32, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    const-string v0, "SecondaryZygotePreload"

    invoke-static {v6, v0}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1600
    const-string v0, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1601
    const-string/jumbo v0, "sec_key_att_app_id_provider"

    new-instance v6, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v6, v8}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1603
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1605
    const-string v0, "StartKeyChainSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1606
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1607
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1609
    const-string v0, "StartBinaryTransparencyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1610
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1611
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1613
    const-string v0, "StartSchedulingPolicyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1614
    const-string/jumbo v0, "scheduling_policy"

    new-instance v6, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v6}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1619
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.microphone"

    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_ea
    .catchall {:try_start_8d .. :try_end_ea} :catchall_161f

    if-nez v0, :cond_10b

    :try_start_ec
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.software.telecom"

    .line 1620
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10b

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v6, "android.hardware.telephony"

    .line 1621
    invoke-virtual {v0, v6}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_fe
    .catchall {:try_start_ec .. :try_end_fe} :catchall_101

    if-eqz v0, :cond_11a

    goto :goto_10b

    .line 1811
    .end local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_101
    move-exception v0

    move-object/from16 v25, v1

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    goto/16 :goto_1629

    .line 1622
    .restart local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_10b
    :goto_10b
    :try_start_10b
    const-string v0, "StartTelecomLoaderService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1623
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v6, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1624
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1627
    :cond_11a
    const-string v0, "StartTelephonyRegistry"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1628
    new-instance v0, Lcom/android/server/TelephonyRegistry;

    new-instance v6, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v6}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v0, v8, v6}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_129
    .catchall {:try_start_10b .. :try_end_129} :catchall_161f

    move-object v6, v0

    .line 1630
    .end local v4    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_12a
    const-string/jumbo v0, "telephony.registry"

    invoke-static {v0, v6}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1631
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1633
    const-string v0, "StartEntropyMixer"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1634
    new-instance v0, Lcom/android/server/EntropyMixer;

    invoke-direct {v0, v8}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v0, v13, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1635
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1637
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, v13, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1640
    const-string v0, "StartAccountManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1641
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1642
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1644
    const-string v0, "StartContentService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1645
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1646
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1648
    const-string v0, "InstallSystemProviders"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1649
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1651
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.deviceconfig.DeviceConfigInit$Lifecycle"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1653
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1654
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1659
    const-string v0, "StartDropBoxManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1660
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1661
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1664
    const-string v0, "StartRoleManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1665
    const-class v0, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v4, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;
    :try_end_199
    .catchall {:try_start_12a .. :try_end_199} :catchall_1610

    move-object/from16 v33, v1

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v33, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_19b
    iget-object v1, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v1}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v4}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1667
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.role.RoleService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1668
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1670
    const-string v0, "StartVibratorManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1671
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1672
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1674
    const-string v0, "StartDynamicSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1675
    new-instance v0, Lcom/android/server/DynamicSystemService;

    invoke-direct {v0, v8}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_1c6
    .catchall {:try_start_19b .. :try_end_1c6} :catchall_1603

    move-object v4, v0

    .line 1676
    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v4, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_1c7
    const-string v0, "dynamic_system"

    invoke-static {v0, v4}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1677
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1679
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.consumerir"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_1d9
    .catchall {:try_start_1c7 .. :try_end_1d9} :catchall_15f6

    if-eqz v0, :cond_1fc

    .line 1680
    :try_start_1db
    const-string v0, "StartConsumerIrService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1681
    new-instance v0, Lcom/android/server/ConsumerIrService;

    invoke-direct {v0, v8}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v5, v0

    .line 1682
    const-string v0, "consumer_ir"

    invoke-static {v0, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1ee
    .catchall {:try_start_1db .. :try_end_1ee} :catchall_1f1

    move-object/from16 v33, v5

    goto :goto_1fe

    .line 1811
    .end local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_1f1
    move-exception v0

    move-object/from16 v25, v4

    move-object v4, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    goto/16 :goto_1629

    .line 1679
    .restart local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_1fc
    move-object/from16 v33, v5

    .line 1687
    .end local v5    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v33, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_1fe
    :try_start_1fe
    const-string v0, "StartResourceEconomy"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1688
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.tare.InternalResourceService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1689
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1692
    const-string v0, "StartAlarmManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1693
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.alarm.AlarmManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1694
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1696
    const-string v0, "StartInputManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    new-instance v0, Lcom/android/server/input/InputManagerService;

    invoke-direct {v0, v8}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_226
    .catchall {:try_start_1fe .. :try_end_226} :catchall_15e7

    move-object v5, v0

    .line 1698
    .end local v3    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v5, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_227
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1700
    const-string v0, "DeviceStateManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1701
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1702
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_239
    .catchall {:try_start_227 .. :try_end_239} :catchall_15d3

    .line 1704
    if-nez v24, :cond_259

    .line 1705
    :try_start_23b
    const-string v0, "StartCameraServiceProxy"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1706
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1707
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_24a
    .catchall {:try_start_23b .. :try_end_24a} :catchall_24b

    goto :goto_259

    .line 1811
    .end local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_24b
    move-exception v0

    move-object/from16 v25, v4

    move-object v3, v5

    move-object v4, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v5, v33

    goto/16 :goto_1629

    .line 1710
    .restart local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_259
    :goto_259
    :try_start_259
    const-string v0, "StartWindowManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1712
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0xc8

    invoke-virtual {v0, v7, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1713
    iget-boolean v0, v13, Lcom/android/server/SystemServer;->mFirstBoot:Z

    if-nez v0, :cond_26b

    const/4 v0, 0x1

    goto :goto_26c

    :cond_26b
    const/4 v0, 0x0

    .line 1716
    :goto_26c
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/SystemServerStub;->createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v1

    iget-object v3, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1713
    invoke-static {v8, v5, v0, v1, v3}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0
    :try_end_27c
    .catchall {:try_start_259 .. :try_end_27c} :catchall_15d3

    move-object v3, v0

    .line 1718
    .end local v2    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v3, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_27d
    const-string/jumbo v0, "window"

    const/16 v1, 0x11

    const/4 v2, 0x0

    invoke-static {v0, v3, v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1720
    const-string/jumbo v0, "input"

    const/4 v1, 0x1

    invoke-static {v0, v5, v2, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1722
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1724
    const-string v0, "SetWindowManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1725
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1726
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1728
    const-string v0, "WindowManagerServiceOnInitReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1729
    invoke-virtual {v3}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1730
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1735
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    const-string v1, "StartISensorManagerService"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1742
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>()V

    const-string v1, "StartHidlServices"

    invoke-static {v0, v1}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_2bc
    .catchall {:try_start_27d .. :try_end_2bc} :catchall_15bb

    .line 1749
    if-nez v28, :cond_2df

    if-eqz v31, :cond_2df

    .line 1750
    :try_start_2c0
    const-string v0, "StartVrManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1751
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1752
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2cf
    .catchall {:try_start_2c0 .. :try_end_2cf} :catchall_2d0

    goto :goto_2df

    .line 1811
    .end local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_2d0
    move-exception v0

    move-object v2, v3

    move-object/from16 v25, v4

    move-object v3, v5

    move-object v4, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v5, v33

    goto/16 :goto_1629

    .line 1755
    .restart local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2df
    :goto_2df
    :try_start_2df
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v1

    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;
    :try_end_2e5
    .catchall {:try_start_2df .. :try_end_2e5} :catchall_15bb

    move-object/from16 v25, v4

    .end local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v25, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :try_start_2e7
    iget-object v4, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;
    :try_end_2e9
    .catchall {:try_start_2e7 .. :try_end_2e9} :catchall_15a5

    const/16 v34, 0x1

    move/from16 v35, v2

    move-object/from16 v2, p1

    move-object/from16 v36, v3

    move/from16 v67, v34

    move-object/from16 v34, v9

    move/from16 v9, v67

    .end local v3    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v34, "storageManager":Landroid/os/storage/IStorageManager;
    .local v36, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object v3, v0

    move-object/from16 v37, v5

    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v37, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v5, v36

    move-object/from16 v35, v6

    .end local v6    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v35, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v6, v37

    :try_start_300
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/SystemServerStub;->startMiuiMagicPointerService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;Lcom/android/server/input/InputManagerService;)V

    .line 1758
    const-string v0, "StartInputManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1759
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v0
    :try_end_30c
    .catchall {:try_start_300 .. :try_end_30c} :catchall_1593

    move-object/from16 v6, v37

    .end local v37    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v6, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_30e
    invoke-virtual {v6, v0}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1760
    invoke-virtual {v6}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1761
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1764
    const-string v0, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1765
    iget-object v0, v13, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1766
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1768
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_326
    .catchall {:try_start_30e .. :try_end_326} :catchall_1581

    if-ne v0, v9, :cond_33d

    .line 1769
    :try_start_328
    const-string v0, "SystemServer"

    const-string v1, "No Bluetooth Service (factory test)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_32f
    .catchall {:try_start_328 .. :try_end_32f} :catchall_330

    goto :goto_360

    .line 1811
    .end local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_330
    move-exception v0

    move-object v3, v6

    move-object v1, v7

    move-object v6, v8

    move-object v7, v13

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    move-object/from16 v2, v36

    goto/16 :goto_1629

    .line 1770
    .restart local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_33d
    :try_start_33d
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    .line 1771
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0
    :try_end_347
    .catchall {:try_start_33d .. :try_end_347} :catchall_1581

    if-nez v0, :cond_351

    .line 1772
    :try_start_349
    const-string v0, "SystemServer"

    const-string v1, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_350
    .catchall {:try_start_349 .. :try_end_350} :catchall_330

    goto :goto_360

    .line 1774
    :cond_351
    :try_start_351
    const-string v0, "StartBluetoothService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1775
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.bluetooth.BluetoothService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1776
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1779
    :goto_360
    const-string v0, "IpConnectivityMetrics"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1780
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.connectivity.IpConnectivityMetrics"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1781
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1783
    const-string v0, "NetworkWatchlistService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1784
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1785
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1787
    const-string v0, "PinnerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1788
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/PinnerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1789
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1791
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1793
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_396
    .catchall {:try_start_351 .. :try_end_396} :catchall_1581

    if-eqz v0, :cond_3ad

    :try_start_398
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v0

    if-eqz v0, :cond_3ad

    .line 1794
    const-string v0, "ProfcollectForwardingService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1795
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1796
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3ad
    .catchall {:try_start_398 .. :try_end_3ad} :catchall_330

    .line 1799
    :cond_3ad
    :try_start_3ad
    const-string v0, "SignedConfigService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1800
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1801
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1803
    const-string v0, "AppIntegrityService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1804
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1805
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1807
    const-string v0, "StartLogcatManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1808
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1809
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3d8
    .catchall {:try_start_3ad .. :try_end_3d8} :catchall_1581

    .line 1815
    .end local v32    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    nop

    .line 1819
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v5

    .line 1820
    .local v5, "safeMode":Z
    if-eqz v5, :cond_3ea

    .line 1825
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    invoke-static {v0, v1, v9}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    goto :goto_403

    .line 1827
    :cond_3ea
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_402

    .line 1828
    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_403

    .line 1827
    :cond_402
    const/4 v2, 0x0

    .line 1832
    :goto_403
    const/4 v1, 0x0

    .line 1833
    .local v1, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v3, 0x0

    .line 1834
    .local v3, "notification":Landroid/app/INotificationManager;
    const/4 v4, 0x0

    .line 1835
    .local v4, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v32, 0x0

    .line 1836
    .local v32, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v37, 0x0

    .line 1839
    .local v37, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eq v0, v9, :cond_485

    .line 1840
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1841
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x1040288

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1843
    .local v2, "immsClassName":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_42e

    .line 1844
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v40, v1

    goto :goto_46a

    .line 1847
    :cond_42e
    :try_start_42e
    const-string v0, "SystemServer"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_435
    .catchall {:try_start_42e .. :try_end_435} :catchall_450

    move-object/from16 v40, v1

    .end local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v40, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_437
    const-string v1, "Starting custom IMMS: "

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1848
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_44d
    .catchall {:try_start_437 .. :try_end_44d} :catchall_44e

    .line 1851
    goto :goto_46a

    .line 1849
    :catchall_44e
    move-exception v0

    goto :goto_453

    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_450
    move-exception v0

    move-object/from16 v40, v1

    .line 1850
    .end local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_453
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1853
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_46a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1855
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1857
    :try_start_472
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_479
    .catchall {:try_start_472 .. :try_end_479} :catchall_47a

    .line 1860
    goto :goto_481

    .line 1858
    :catchall_47a
    move-exception v0

    .line 1859
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting Accessibility Manager"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1861
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_481
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_487

    .line 1839
    .end local v2    # "immsClassName":Ljava/lang/String;
    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_485
    move-object/from16 v40, v1

    .line 1864
    .end local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_487
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1866
    :try_start_48c
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_48f
    .catchall {:try_start_48c .. :try_end_48f} :catchall_490

    .line 1869
    goto :goto_499

    .line 1867
    :catchall_490
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1868
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making display ready"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1870
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_499
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1872
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4ee

    .line 1873
    const-string v0, "0"

    const-string/jumbo v1, "system_init.startmountservice"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4ee

    .line 1874
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1880
    :try_start_4b5
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1881
    const-string/jumbo v0, "mount"

    .line 1882
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1881
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_4c7
    .catchall {:try_start_4b5 .. :try_end_4c7} :catchall_4c9

    move-object v9, v0

    .line 1885
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    goto :goto_4d2

    .line 1883
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_4c9
    move-exception v0

    .line 1884
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting StorageManagerService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v9, v34

    .line 1886
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_4d2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1888
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1890
    :try_start_4da
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_4e1
    .catchall {:try_start_4da .. :try_end_4e1} :catchall_4e2

    .line 1893
    goto :goto_4e9

    .line 1891
    :catchall_4e2
    move-exception v0

    .line 1892
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting StorageStatsService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1894
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4e9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v34, v9

    .line 1900
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    :cond_4ee
    const-string v0, "StartUiModeManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1901
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1902
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1904
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1906
    :try_start_502
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_509
    .catchall {:try_start_502 .. :try_end_509} :catchall_50a

    .line 1909
    goto :goto_511

    .line 1907
    :catchall_50a
    move-exception v0

    .line 1908
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting LocaleManagerService service"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1910
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_511
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1912
    const-string v0, "StartGrammarInflectionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1914
    :try_start_519
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/grammaticalinflection/GrammaticalInflectionService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_520
    .catchall {:try_start_519 .. :try_end_520} :catchall_521

    .line 1917
    goto :goto_528

    .line 1915
    :catchall_521
    move-exception v0

    .line 1916
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting GrammarInflectionService service"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1918
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_528
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1920
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1921
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.apphibernation.AppHibernationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1922
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1924
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1925
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v8, v0}, Lcom/android/server/pm/DexOptHelper;->initializeArtManagerLocal(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)V

    .line 1926
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1928
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1930
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1933
    .local v1, "bootDexoptStartTime":J
    :try_start_550
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v9, "dexopt"

    invoke-virtual {v0, v9}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1934
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_55e
    .catchall {:try_start_550 .. :try_end_55e} :catchall_55f

    goto :goto_566

    .line 1935
    :catchall_55f
    move-exception v0

    .line 1936
    .restart local v0    # "e":Ljava/lang/Throwable;
    :try_start_560
    const-string/jumbo v9, "update packages"

    invoke-direct {v13, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_566
    .catchall {:try_start_560 .. :try_end_566} :catchall_1568

    .line 1938
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_566
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v9, "dexopt"

    invoke-virtual {v0, v9}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1939
    nop

    .line 1940
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1942
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v9, v3

    move-object/from16 v41, v4

    .end local v3    # "notification":Landroid/app/INotificationManager;
    .end local v4    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v9, "notification":Landroid/app/INotificationManager;
    .local v41, "countryDetector":Lcom/android/server/CountryDetectorService;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/SystemServerStub;->markBootDexopt(JJ)V

    .line 1956
    iget v0, v13, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_5ab

    .line 1957
    const/4 v0, 0x0

    move-object/from16 v44, v0

    move-wide/from16 v42, v1

    move-object/from16 v47, v9

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move-object/from16 v51, v14

    move-object/from16 v52, v15

    move-object/from16 v53, v16

    move-object/from16 v54, v18

    move-object/from16 v55, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v56, v32

    move-object/from16 v57, v37

    move-object/from16 v45, v40

    move-object/from16 v46, v41

    .local v0, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    goto/16 :goto_1052

    .line 1959
    .end local v0    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_5ab
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1961
    :try_start_5b0
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1962
    const-string/jumbo v0, "lock_settings"

    .line 1963
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1962
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_5c2
    .catchall {:try_start_5b0 .. :try_end_5c2} :catchall_5c5

    .line 1966
    .end local v32    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v32, v0

    goto :goto_5cc

    .line 1964
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v32    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_5c5
    move-exception v0

    .line 1965
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "starting LockSettingsService service"

    invoke-direct {v13, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1967
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5cc
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1969
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x1

    xor-int/2addr v0, v3

    move v3, v0

    .line 1970
    .local v3, "hasPdb":Z
    if-eqz v3, :cond_5f0

    .line 1971
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1972
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1973
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1976
    :cond_5f0
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1977
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1978
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1980
    if-nez v3, :cond_607

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_616

    .line 1982
    :cond_607
    const-string v0, "StartOemLockService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1983
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1987
    :cond_616
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1988
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v4, "com.android.server.DeviceIdleController"

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1989
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1993
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1994
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 1995
    .local v4, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1997
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1999
    :try_start_63d
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v8}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_642
    .catchall {:try_start_63d .. :try_end_642} :catchall_66f

    move-object/from16 v40, v0

    .line 2000
    if-nez v28, :cond_652

    .line 2001
    :try_start_646
    invoke-virtual/range {v40 .. v40}, Lcom/android/server/statusbar/StatusBarManagerService;->publishGlobalActionsProvider()V
    :try_end_649
    .catchall {:try_start_646 .. :try_end_649} :catchall_64a

    goto :goto_652

    .line 2005
    :catchall_64a
    move-exception v0

    move-wide/from16 v42, v1

    move/from16 v44, v3

    move-object/from16 v1, v40

    goto :goto_676

    .line 2003
    :cond_652
    :goto_652
    :try_start_652
    const-string/jumbo v0, "statusbar"
    :try_end_655
    .catchall {:try_start_652 .. :try_end_655} :catchall_666

    move-wide/from16 v42, v1

    .end local v1    # "bootDexoptStartTime":J
    .local v42, "bootDexoptStartTime":J
    const/16 v1, 0x14

    move/from16 v44, v3

    move-object/from16 v2, v40

    const/4 v3, 0x0

    .end local v3    # "hasPdb":Z
    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v2, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v44, "hasPdb":Z
    :try_start_65e
    invoke-static {v0, v2, v3, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V
    :try_end_661
    .catchall {:try_start_65e .. :try_end_661} :catchall_663

    .line 2007
    move-object v1, v2

    goto :goto_67c

    .line 2005
    :catchall_663
    move-exception v0

    move-object v1, v2

    goto :goto_676

    .end local v2    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v42    # "bootDexoptStartTime":J
    .end local v44    # "hasPdb":Z
    .restart local v1    # "bootDexoptStartTime":J
    .restart local v3    # "hasPdb":Z
    .restart local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_666
    move-exception v0

    move-wide/from16 v42, v1

    move/from16 v44, v3

    move-object/from16 v2, v40

    move-object v1, v2

    .end local v1    # "bootDexoptStartTime":J
    .end local v3    # "hasPdb":Z
    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v2    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v42    # "bootDexoptStartTime":J
    .restart local v44    # "hasPdb":Z
    goto :goto_676

    .end local v2    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v42    # "bootDexoptStartTime":J
    .end local v44    # "hasPdb":Z
    .restart local v1    # "bootDexoptStartTime":J
    .restart local v3    # "hasPdb":Z
    .restart local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_66f
    move-exception v0

    move-wide/from16 v42, v1

    move/from16 v44, v3

    move-object/from16 v1, v40

    .line 2006
    .end local v3    # "hasPdb":Z
    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .local v1, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v42    # "bootDexoptStartTime":J
    .restart local v44    # "hasPdb":Z
    :goto_676
    const-string/jumbo v2, "starting StatusBarManagerService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2008
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_67c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2010
    const v0, 0x1040269

    invoke-direct {v13, v8, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_698

    .line 2012
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2013
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.musicrecognition.MusicRecognitionManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2014
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_69f

    .line 2016
    :cond_698
    const-string v0, "SystemServer"

    const-string v2, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2020
    :goto_69f
    invoke-direct {v13, v8, v7}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2021
    invoke-direct {v13, v8, v7}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2022
    invoke-direct {v13, v8, v7}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2023
    invoke-direct {v13, v8, v7}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2024
    invoke-direct {v13, v8, v7}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2025
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2026
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2029
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2030
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.speech.SpeechRecognitionManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2031
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2034
    const v0, 0x1040259

    invoke-direct {v13, v8, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6dc

    .line 2035
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2036
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2037
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_6e3

    .line 2039
    :cond_6dc
    const-string v0, "SystemServer"

    const-string v2, "AppPredictionService not defined by OEM"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2043
    :goto_6e3
    const v0, 0x1040261

    invoke-direct {v13, v8, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_6fc

    .line 2044
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2045
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2046
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_703

    .line 2048
    :cond_6fc
    const-string v0, "SystemServer"

    const-string v2, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2053
    :goto_703
    const-string v0, "StartSearchUiService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2054
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.searchui.SearchUiManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2055
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2059
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2060
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.smartspace.SmartspaceManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2061
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2063
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2065
    :try_start_726
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_72d
    .catchall {:try_start_726 .. :try_end_72d} :catchall_72e

    .line 2068
    goto :goto_735

    .line 2066
    :catchall_72e
    move-exception v0

    .line 2067
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "initializing ConnectivityModuleConnector"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2069
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_735
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2071
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2073
    :try_start_73d
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_744
    .catchall {:try_start_73d .. :try_end_744} :catchall_745

    .line 2076
    goto :goto_74c

    .line 2074
    :catchall_745
    move-exception v0

    .line 2075
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "initializing NetworkStackClient"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2077
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_74c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2079
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2081
    :try_start_754
    invoke-static {v8}, Lcom/android/server/net/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/net/NetworkManagementService;

    move-result-object v0

    move-object v10, v0

    .line 2082
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v10}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_75f
    .catchall {:try_start_754 .. :try_end_75f} :catchall_760

    .line 2085
    goto :goto_767

    .line 2083
    :catchall_760
    move-exception v0

    .line 2084
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting NetworkManagement Service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2086
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_767
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2088
    const-string v0, "StartFontManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2089
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v2, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v2, v8, v5}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2090
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2092
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2093
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2094
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2096
    if-nez v22, :cond_79c

    .line 2097
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2098
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2099
    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2100
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2103
    :cond_79c
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2104
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2105
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2107
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2110
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.NetworkStatsServiceInitializer"

    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2112
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2114
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2116
    :try_start_7c1
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v2, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v8, v2, v10}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v14, v0

    .line 2118
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_7cf
    .catchall {:try_start_7c1 .. :try_end_7cf} :catchall_7d0

    .line 2121
    goto :goto_7d7

    .line 2119
    :catchall_7d0
    move-exception v0

    .line 2120
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting NetworkPolicy Service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2122
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_7d7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2125
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 2126
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemServerStub;->getMiuilibpath()Ljava/lang/String;

    move-result-object v3

    .line 2125
    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2128
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.wifi"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_817

    .line 2131
    const-string v0, "StartWifi"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2132
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.wifi.WifiService"

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2134
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2135
    const-string v0, "StartWifiScanning"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2136
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2138
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2142
    :cond_817
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SystemServerStub;->startAmlMiuiWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2143
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v7, v8}, Lcom/android/server/SystemServerStub;->startAmlSlaveWifiService(Lcom/android/server/utils/TimingsTraceAndSlog;Landroid/content/Context;)V

    .line 2146
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_842

    .line 2148
    const-string v0, "StartRttService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2149
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.wifi.rtt.RttService"

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2151
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2154
    :cond_842
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.wifi.aware"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_85f

    .line 2156
    const-string v0, "StartWifiAware"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2157
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.wifi.aware.WifiAwareService"

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2159
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2162
    :cond_85f
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.wifi.direct"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_87c

    .line 2164
    const-string v0, "StartWifiP2P"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2165
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v3, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2167
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2170
    :cond_87c
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.lowpan"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_897

    .line 2172
    const-string v0, "StartLowpan"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2173
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2174
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2177
    :cond_897
    const-string v0, "StartPacProxyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2179
    :try_start_89c
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v8}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V
    :try_end_8a1
    .catchall {:try_start_89c .. :try_end_8a1} :catchall_8af

    move-object v2, v0

    .line 2180
    .end local v19    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v2, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :try_start_8a2
    const-string/jumbo v0, "pac_proxy"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8a8
    .catchall {:try_start_8a2 .. :try_end_8a8} :catchall_8ab

    .line 2183
    move-object/from16 v19, v2

    goto :goto_8b6

    .line 2181
    :catchall_8ab
    move-exception v0

    move-object/from16 v19, v2

    goto :goto_8b0

    .end local v2    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v19    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :catchall_8af
    move-exception v0

    .line 2182
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_8b0
    const-string/jumbo v2, "starting PacProxyService"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2184
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8b6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2187
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 2188
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/SystemServerStub;->getConnectivitylibpath()Ljava/lang/String;

    move-result-object v3

    .line 2187
    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2190
    const-string v0, "StartConnectivityService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2194
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.ConnectivityServiceInitializer"

    const-string v3, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v2, v3}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2196
    invoke-virtual {v14}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2197
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2199
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2201
    :try_start_8e1
    invoke-static {v8}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v0

    move-object v11, v0

    .line 2202
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8ec
    .catchall {:try_start_8e1 .. :try_end_8ec} :catchall_8ed

    .line 2205
    goto :goto_8f4

    .line 2203
    :catchall_8ed
    move-exception v0

    .line 2204
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting VPN Manager Service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2206
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_8f4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2208
    const-string v0, "StartVcnManagementService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2210
    :try_start_8fc
    invoke-static {v8}, Lcom/android/server/VcnManagementService;->create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;

    move-result-object v0

    move-object v12, v0

    .line 2211
    const-string/jumbo v0, "vcn_management"

    invoke-static {v0, v12}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_907
    .catchall {:try_start_8fc .. :try_end_907} :catchall_908

    .line 2214
    goto :goto_90f

    .line 2212
    :catchall_908
    move-exception v0

    .line 2213
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting VCN Management Service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2215
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_90f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2217
    if-eqz v27, :cond_99d

    .line 2219
    :try_start_914
    const-string v0, "SystemServer"

    const-string v2, "Wigig Service"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2220
    const-string v0, "/system/system_ext/framework/wigig-service.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    .line 2225
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v2, Ldalvik/system/PathClassLoader;

    .line 2226
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2227
    .local v2, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v3, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v2, v3}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3
    :try_end_930
    .catchall {:try_start_914 .. :try_end_930} :catchall_993

    .line 2229
    .local v3, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v45, v0

    move-object/from16 v40, v1

    const/4 v1, 0x1

    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v45, "wigigClassPath":Ljava/lang/String;
    :try_start_935
    new-array v0, v1, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v1, v0, v38

    invoke-virtual {v3, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2230
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v20, v1

    .line 2231
    const-string v1, "SystemServer"

    move-object/from16 v46, v0

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v46, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    const-string v0, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2232
    const-string/jumbo v0, "wigigp2p"

    move-object/from16 v1, v20

    check-cast v1, Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2234
    const-string v0, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v2, v0}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 2236
    .local v0, "wigigClass":Ljava/lang/Class;
    move-object/from16 v47, v2

    const/4 v1, 0x1

    .end local v2    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v47, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    new-array v2, v1, [Ljava/lang/Class;

    const-class v1, Landroid/content/Context;

    const/16 v38, 0x0

    aput-object v1, v2, v38

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 2237
    .end local v46    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v1, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    filled-new-array {v8}, [Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v21, v2

    .line 2238
    const-string v2, "SystemServer"

    move-object/from16 v46, v0

    .end local v0    # "wigigClass":Ljava/lang/Class;
    .local v46, "wigigClass":Ljava/lang/Class;
    const-string v0, "Successfully loaded WigigService class"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2239
    const-string/jumbo v0, "wigig"

    move-object/from16 v2, v21

    check-cast v2, Landroid/os/IBinder;

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_990
    .catchall {:try_start_935 .. :try_end_990} :catchall_991

    .line 2242
    .end local v1    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v3    # "wigigP2pClass":Ljava/lang/Class;
    .end local v45    # "wigigClassPath":Ljava/lang/String;
    .end local v46    # "wigigClass":Ljava/lang/Class;
    .end local v47    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_99f

    .line 2240
    :catchall_991
    move-exception v0

    goto :goto_996

    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v1, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_993
    move-exception v0

    move-object/from16 v40, v1

    .line 2241
    .end local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_996
    const-string/jumbo v1, "starting WigigService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_99f

    .line 2217
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_99d
    move-object/from16 v40, v1

    .line 2245
    .end local v1    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_99f
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2247
    :try_start_9a4
    const-string/jumbo v0, "system_update"

    new-instance v1, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v1, v8}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9af
    .catchall {:try_start_9a4 .. :try_end_9af} :catchall_9b0

    .line 2251
    goto :goto_9b7

    .line 2249
    :catchall_9b0
    move-exception v0

    .line 2250
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting SystemUpdateManagerService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2252
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9b7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2254
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2256
    :try_start_9bf
    const-string/jumbo v0, "updatelock"

    new-instance v1, Lcom/android/server/UpdateLockService;

    invoke-direct {v1, v8}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_9ca
    .catchall {:try_start_9bf .. :try_end_9ca} :catchall_9cb

    .line 2260
    goto :goto_9d2

    .line 2258
    :catchall_9cb
    move-exception v0

    .line 2259
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting UpdateLockService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2261
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9d2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2263
    const-string v0, "StartNotificationManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2264
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2265
    invoke-static {v8}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2266
    invoke-static {v8}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2267
    const-string/jumbo v0, "notification"

    .line 2268
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2267
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v3

    .line 2269
    .end local v9    # "notification":Landroid/app/INotificationManager;
    .local v3, "notification":Landroid/app/INotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2271
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2272
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2273
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2275
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2277
    :try_start_a09
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a10
    .catchall {:try_start_a09 .. :try_end_a10} :catchall_a11

    .line 2280
    goto :goto_a18

    .line 2278
    :catchall_a11
    move-exception v0

    .line 2279
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting TimeDetectorService service"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2281
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a18
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2283
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2284
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2285
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2287
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2289
    :try_start_a2f
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v8}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_a34
    .catchall {:try_start_a2f .. :try_end_a34} :catchall_a3d

    move-object v1, v0

    .line 2290
    .end local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v1, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_a35
    const-string v0, "country_detector"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a3a
    .catchall {:try_start_a35 .. :try_end_a3a} :catchall_a3b

    .line 2293
    goto :goto_a46

    .line 2291
    :catchall_a3b
    move-exception v0

    goto :goto_a40

    .end local v1    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_a3d
    move-exception v0

    move-object/from16 v1, v41

    .line 2292
    .end local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v1    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_a40
    const-string/jumbo v2, "starting Country Detector"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2294
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a46
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2296
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2298
    :try_start_a4e
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a55
    .catchall {:try_start_a4e .. :try_end_a55} :catchall_a56

    .line 2301
    goto :goto_a5d

    .line 2299
    :catchall_a56
    move-exception v0

    .line 2300
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting TimeZoneDetectorService service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2302
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a5d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2304
    const-string v0, "StartAltitudeService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2306
    :try_start_a65
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/location/altitude/AltitudeService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_a6c
    .catchall {:try_start_a65 .. :try_end_a6c} :catchall_a6d

    .line 2309
    goto :goto_a74

    .line 2307
    :catchall_a6d
    move-exception v0

    .line 2308
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting AltitudeService service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2310
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a74
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2312
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2314
    :try_start_a7c
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.timezonedetector.location.LocationTimeZoneManagerService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a83
    .catchall {:try_start_a7c .. :try_end_a83} :catchall_a84

    .line 2317
    goto :goto_a8b

    .line 2315
    :catchall_a84
    move-exception v0

    .line 2316
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting LocationTimeZoneManagerService service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2318
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a8b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2320
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111014c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ab2

    .line 2321
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2323
    :try_start_aa0
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_aa7
    .catchall {:try_start_aa0 .. :try_end_aa7} :catchall_aa8

    .line 2326
    goto :goto_aaf

    .line 2324
    :catchall_aa8
    move-exception v0

    .line 2325
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting GnssTimeUpdateService service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2327
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_aaf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2330
    :cond_ab2
    if-nez v28, :cond_acb

    .line 2331
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2333
    :try_start_ab9
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_ac0
    .catchall {:try_start_ab9 .. :try_end_ac0} :catchall_ac1

    .line 2336
    goto :goto_ac8

    .line 2334
    :catchall_ac1
    move-exception v0

    .line 2335
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting Search Service"

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2337
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ac8
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2340
    :cond_acb
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x111015f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ae8

    .line 2341
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2342
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2343
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_aef

    .line 2345
    :cond_ae8
    const-string v0, "SystemServer"

    const-string v2, "Wallpaper service disabled by config"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2351
    :goto_aef
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2352
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2354
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2356
    const-string v0, "StartAudioService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2357
    if-nez v29, :cond_b0f

    .line 2358
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-object/from16 v41, v1

    goto :goto_b51

    .line 2360
    :cond_b0f
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 2361
    const v2, 0x1040284

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 2363
    .local v2, "className":Ljava/lang/String;
    :try_start_b1a
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9
    :try_end_b25
    .catchall {:try_start_b1a .. :try_end_b25} :catchall_b37

    move-object/from16 v41, v1

    .end local v1    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_b27
    const-string v1, "$Lifecycle"

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b34
    .catchall {:try_start_b27 .. :try_end_b34} :catchall_b35

    .line 2366
    goto :goto_b51

    .line 2364
    :catchall_b35
    move-exception v0

    goto :goto_b3a

    .end local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v1    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :catchall_b37
    move-exception v0

    move-object/from16 v41, v1

    .line 2365
    .end local v1    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :goto_b3a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "starting "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2368
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v2    # "className":Ljava/lang/String;
    :goto_b51
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2370
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2371
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2372
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2374
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.broadcastradio"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b7c

    .line 2375
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2376
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2377
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2380
    :cond_b7c
    if-nez v30, :cond_b8d

    .line 2381
    const-string v0, "StartDockObserver"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2382
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2383
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2386
    :cond_b8d
    if-eqz v28, :cond_b9e

    .line 2387
    const-string v0, "StartThermalObserver"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2388
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2389
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2392
    :cond_b9e
    if-nez v28, :cond_bb8

    .line 2393
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2396
    :try_start_ba5
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v8, v6}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v6, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_bad
    .catchall {:try_start_ba5 .. :try_end_bad} :catchall_bae

    .line 2400
    goto :goto_bb5

    .line 2398
    :catchall_bae
    move-exception v0

    .line 2399
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting WiredAccessoryManager"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2401
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_bb5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2404
    :cond_bb8
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_bd1

    .line 2406
    const-string v0, "StartMidiManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2407
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2408
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2412
    :cond_bd1
    const-string v0, "StartAdbService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2414
    :try_start_bd6
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_bdd
    .catchall {:try_start_bd6 .. :try_end_bdd} :catchall_bde

    .line 2417
    goto :goto_be6

    .line 2415
    :catchall_bde
    move-exception v0

    .line 2416
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v2, "Failure starting AdbService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2418
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_be6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2420
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bff

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.accessory"

    .line 2421
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_bff

    if-eqz v26, :cond_c0e

    .line 2425
    :cond_bff
    const-string v0, "StartUsbService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2426
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2427
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2430
    :cond_c0e
    if-nez v28, :cond_c2d

    .line 2431
    const-string v0, "StartSerialService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2434
    :try_start_c15
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v8}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V

    move-object v15, v0

    .line 2435
    const-string/jumbo v0, "serial"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c21
    .catchall {:try_start_c15 .. :try_end_c21} :catchall_c22

    .line 2438
    goto :goto_c2a

    .line 2436
    :catchall_c22
    move-exception v0

    .line 2437
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v2, "Failure starting SerialService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2439
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c2a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2442
    :cond_c2d
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2444
    :try_start_c32
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v8}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_c37
    .catchall {:try_start_c32 .. :try_end_c37} :catchall_c45

    move-object v1, v0

    .line 2445
    .end local v18    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v1, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_c38
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c3e
    .catchall {:try_start_c38 .. :try_end_c3e} :catchall_c41

    .line 2449
    move-object/from16 v18, v1

    goto :goto_c4d

    .line 2447
    :catchall_c41
    move-exception v0

    move-object/from16 v18, v1

    goto :goto_c46

    .end local v1    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v18    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_c45
    move-exception v0

    .line 2448
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_c46
    const-string v1, "SystemServer"

    const-string v2, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2450
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_c4d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2452
    if-nez v28, :cond_c61

    .line 2453
    const-string v0, "StartTwilightService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2454
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2455
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2458
    :cond_c61
    const-string v0, "StartColorDisplay"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2459
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2460
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2463
    const-string v0, "StartJobScheduler"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2464
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.job.JobSchedulerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2465
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2467
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2468
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2469
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2471
    const-string v0, "StartTrustManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2472
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2473
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2476
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v8, v1}, Lcom/android/server/SystemServerStub;->addExtraServices(Landroid/content/Context;Z)V

    .line 2479
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.backup"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_cbe

    .line 2480
    const-string v0, "StartBackupManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2481
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2482
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2485
    :cond_cbe
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_cd5

    .line 2486
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110142

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_ce4

    .line 2487
    :cond_cd5
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2488
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2489
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2496
    :cond_ce4
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2497
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2498
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2500
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_d0c

    .line 2501
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2502
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2503
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2505
    :cond_d0c
    const-string v0, "StartSensorNotification"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2506
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2507
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2509
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.context_hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d34

    .line 2510
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2511
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2512
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2515
    :cond_d34
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2517
    :try_start_d39
    const-string v0, "diskstats"

    new-instance v1, Lcom/android/server/DiskStatsService;

    invoke-direct {v1, v8}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d43
    .catchall {:try_start_d39 .. :try_end_d43} :catchall_d44

    .line 2520
    goto :goto_d4b

    .line 2518
    :catchall_d44
    move-exception v0

    .line 2519
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting DiskStats Service"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2521
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d4b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2523
    const-string v0, "RuntimeService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2525
    :try_start_d53
    const-string/jumbo v0, "runtime"

    new-instance v1, Lcom/android/server/RuntimeService;

    invoke-direct {v1, v8}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d5e
    .catchall {:try_start_d53 .. :try_end_d5e} :catchall_d5f

    .line 2528
    goto :goto_d66

    .line 2526
    :catchall_d5f
    move-exception v0

    .line 2527
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting RuntimeService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2529
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d66
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2531
    if-nez v28, :cond_d91

    if-nez v23, :cond_d91

    .line 2532
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2534
    :try_start_d72
    new-instance v0, Lcom/android/server/timedetector/NetworkTimeUpdateService;

    invoke-direct {v0, v8}, Lcom/android/server/timedetector/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_d77
    .catchall {:try_start_d72 .. :try_end_d77} :catchall_d83

    move-object v1, v0

    .line 2535
    .end local v16    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v1, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :try_start_d78
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_d7e
    .catchall {:try_start_d78 .. :try_end_d7e} :catchall_d7f

    .line 2538
    goto :goto_d8c

    .line 2536
    :catchall_d7f
    move-exception v0

    move-object/from16 v16, v1

    goto :goto_d84

    .end local v1    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v16    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :catchall_d83
    move-exception v0

    .line 2537
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_d84
    const-string/jumbo v1, "starting NetworkTimeUpdate service"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v1, v16

    .line 2539
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v16    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v1    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :goto_d8c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v16, v1

    .line 2542
    .end local v1    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .restart local v16    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    :cond_d91
    const-string v0, "CertBlacklister"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2544
    :try_start_d96
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v8}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_d9b
    .catchall {:try_start_d96 .. :try_end_d9b} :catchall_d9c

    .line 2547
    goto :goto_da3

    .line 2545
    :catchall_d9c
    move-exception v0

    .line 2546
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting CertBlacklister"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2548
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_da3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2552
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2553
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2554
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2557
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2558
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.blob.BlobStoreManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2559
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2562
    const-string v0, "StartDreamManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2563
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2564
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2566
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2567
    const-string/jumbo v0, "graphicsstats"

    new-instance v1, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v1, v8}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2569
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2571
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_dfd

    .line 2572
    const-string v0, "AddCoverageService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2573
    const-string v0, "coverage"

    new-instance v1, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v1}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2574
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2577
    :cond_dfd
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.print"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e16

    .line 2578
    const-string v0, "StartPrintManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2579
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2580
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2583
    :cond_e16
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2584
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2585
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2587
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.companion_device_setup"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e4d

    .line 2588
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2589
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2590
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2593
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2594
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.companion.virtual.VirtualDeviceManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2595
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2598
    :cond_e4d
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2599
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2600
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2602
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2603
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.media.MediaSessionService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2604
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2606
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e84

    .line 2607
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2608
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2609
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2612
    :cond_e84
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.live_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e98

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.leanback"

    .line 2613
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ea7

    .line 2614
    :cond_e98
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2615
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2616
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2619
    :cond_ea7
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.live_tv"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_ebb

    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.leanback"

    .line 2620
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_eca

    .line 2621
    :cond_ebb
    const-string v0, "StartTvInputManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2622
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2623
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2626
    :cond_eca
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.tv.tuner"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_ee3

    .line 2627
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2628
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2629
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2632
    :cond_ee3
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.picture_in_picture"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_efc

    .line 2633
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2634
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.media.MediaResourceMonitorService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2635
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2638
    :cond_efc
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.leanback"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f15

    .line 2639
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2640
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2641
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2644
    :cond_f15
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2646
    :try_start_f1a
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v8}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_f1f
    .catchall {:try_start_f1a .. :try_end_f1f} :catchall_f2d

    move-object v1, v0

    .line 2647
    .end local v37    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v1, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_f20
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_f26
    .catchall {:try_start_f20 .. :try_end_f26} :catchall_f29

    .line 2650
    move-object/from16 v37, v1

    goto :goto_f34

    .line 2648
    :catchall_f29
    move-exception v0

    move-object/from16 v37, v1

    goto :goto_f2e

    .end local v1    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v37    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_f2d
    move-exception v0

    .line 2649
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_f2e
    const-string/jumbo v1, "starting MediaRouterService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2651
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f34
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2653
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.biometrics.face"

    .line 2654
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2655
    .local v1, "hasFeatureFace":Z
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.biometrics.iris"

    .line 2656
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2657
    .local v2, "hasFeatureIris":Z
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v9, "android.hardware.fingerprint"

    .line 2658
    invoke-virtual {v0, v9}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v9

    .line 2660
    .local v9, "hasFeatureFingerprint":Z
    if-eqz v1, :cond_f66

    .line 2661
    const-string v0, "StartFaceSensor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2662
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v45, v1

    .end local v1    # "hasFeatureFace":Z
    .local v45, "hasFeatureFace":Z
    const-class v1, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2663
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2664
    .local v0, "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_f68

    .line 2660
    .end local v0    # "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    .end local v45    # "hasFeatureFace":Z
    .restart local v1    # "hasFeatureFace":Z
    :cond_f66
    move/from16 v45, v1

    .line 2667
    .end local v1    # "hasFeatureFace":Z
    .restart local v45    # "hasFeatureFace":Z
    :goto_f68
    if-eqz v2, :cond_f79

    .line 2668
    const-string v0, "StartIrisSensor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2669
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2670
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2673
    :cond_f79
    if-eqz v9, :cond_f8d

    .line 2674
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2675
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2676
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2677
    .local v0, "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2681
    .end local v0    # "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    :cond_f8d
    const-string v0, "StartBiometricService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2682
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2683
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2685
    const-string v0, "StartAuthService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2686
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2687
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2689
    if-nez v28, :cond_fc2

    .line 2692
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2694
    :try_start_fb2
    invoke-static {v8}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_fb5
    .catchall {:try_start_fb2 .. :try_end_fb5} :catchall_fb6

    .line 2697
    goto :goto_fbf

    .line 2695
    :catchall_fb6
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2696
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting DynamicCodeLoggingService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2698
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_fbf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2701
    :cond_fc2
    if-nez v28, :cond_fd8

    .line 2702
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2704
    :try_start_fc9
    invoke-static {v8}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_fcc
    .catchall {:try_start_fc9 .. :try_end_fcc} :catchall_fcd

    .line 2707
    goto :goto_fd5

    .line 2705
    :catchall_fcd
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2706
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "StartPruneInstantAppsJobService"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2708
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_fd5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2712
    :cond_fd8
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2713
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2714
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2716
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2717
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2718
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2720
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2721
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2722
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2724
    const-string v0, "StartPeopleService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2725
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2726
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2728
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2729
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2730
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2732
    const-string v0, "StartBackgroundInstallControlService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2733
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/pm/BackgroundInstallControlService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2734
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v47, v3

    move-object/from16 v44, v4

    move-object/from16 v48, v10

    move-object/from16 v49, v11

    move-object/from16 v50, v12

    move-object/from16 v51, v14

    move-object/from16 v52, v15

    move-object/from16 v53, v16

    move-object/from16 v54, v18

    move-object/from16 v55, v19

    move-object/from16 v4, v20

    move-object/from16 v3, v21

    move-object/from16 v56, v32

    move-object/from16 v57, v37

    move-object/from16 v45, v40

    move-object/from16 v46, v41

    .line 2737
    .end local v2    # "hasFeatureIris":Z
    .end local v9    # "hasFeatureFingerprint":Z
    .end local v10    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v11    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v12    # "vcnManagement":Lcom/android/server/VcnManagementService;
    .end local v14    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "serial":Lcom/android/server/SerialService;
    .end local v16    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v18    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v19    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v20    # "wigigP2pService":Ljava/lang/Object;
    .end local v21    # "wigigService":Ljava/lang/Object;
    .end local v32    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v37    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v3, "wigigService":Ljava/lang/Object;
    .local v4, "wigigP2pService":Ljava/lang/Object;
    .local v44, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v45, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v46, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v47, "notification":Landroid/app/INotificationManager;
    .local v48, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v49, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v50, "vcnManagement":Lcom/android/server/VcnManagementService;
    .local v51, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v52, "serial":Lcom/android/server/SerialService;
    .local v53, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v54, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v55, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v56, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v57, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_1052
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2738
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2739
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2741
    if-eqz v28, :cond_10bd

    .line 2743
    const-string v0, "StartWearPowerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2744
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2745
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2747
    const-string v0, "StartHealthService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2748
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2749
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2751
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2752
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2753
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2755
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2756
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2757
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2759
    const-string v0, "StartWearTimeService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2760
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2761
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2763
    const-string v0, "StartWearGlobalActionsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2764
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2765
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2768
    :cond_10bd
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.slices_disabled"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_10d6

    .line 2769
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2770
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2771
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2774
    :cond_10d6
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_10f1

    .line 2775
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2776
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2777
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2781
    :cond_10f1
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2782
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v2, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2784
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2787
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2788
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v2, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2790
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2793
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2794
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.pull.StatsPullAtomService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2795
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2798
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2799
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.bootstrap.StatsBootstrapAtomService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2800
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2803
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2804
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2805
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2808
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2809
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2810
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2813
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2814
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    .line 2815
    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v2

    .line 2816
    .local v2, "adServices":Lcom/android/server/SystemService;
    instance-of v0, v2, Landroid/util/Dumpable;

    if-eqz v0, :cond_1168

    .line 2817
    iget-object v0, v13, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v1, v2

    check-cast v1, Landroid/util/Dumpable;

    invoke-static {v0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 2819
    :cond_1168
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2822
    const-string v0, "StartOnDevicePersonalizationSystemService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2823
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.ondevicepersonalization.OnDevicePersonalizationSystemService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2824
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2826
    if-eqz v5, :cond_1181

    .line 2827
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2830
    :cond_1181
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11a2

    .line 2832
    const-string v0, "StartMmsService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2833
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Lcom/android/server/MmsServiceBroker;

    .line 2834
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v58, v17

    goto :goto_11a4

    .line 2830
    :cond_11a2
    move-object/from16 v58, v17

    .line 2837
    .end local v17    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v58, "mmsService":Lcom/android/server/MmsServiceBroker;
    :goto_11a4
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.autofill"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11bd

    .line 2838
    const-string v0, "StartAutoFillService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2839
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2840
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2843
    :cond_11bd
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.credentials"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_11e9

    .line 2844
    const-string v0, "credential_manager"

    const-string v1, "enable_credential_manager"

    .line 2845
    const/4 v9, 0x1

    invoke-static {v0, v1, v9}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    .line 2847
    .local v0, "credentialManagerEnabled":Z
    if-eqz v0, :cond_11e2

    .line 2848
    const-string v1, "StartCredentialManagerService"

    invoke-virtual {v7, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2849
    iget-object v1, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.credentials.CredentialManagerService"

    invoke-virtual {v1, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2850
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_11e9

    .line 2852
    :cond_11e2
    const-string v1, "SystemServer"

    const-string v9, "CredentialManager disabled."

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2857
    .end local v0    # "credentialManagerEnabled":Z
    :cond_11e9
    :goto_11e9
    const v0, 0x104027a

    invoke-direct {v13, v8, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1202

    .line 2858
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2859
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.translation.TranslationManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2860
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_1209

    .line 2862
    :cond_1202
    const-string v0, "SystemServer"

    const-string v1, "TranslationService not defined by OEM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2866
    :goto_1209
    const-string v0, "StartSelectionToolbarManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2867
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.selectiontoolbar.SelectionToolbarManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2868
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2871
    const-string v0, "StartClipboardService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2872
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2873
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2875
    const-string v0, "AppServiceManager"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2876
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2877
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2880
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2881
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2882
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2886
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2887
    if-eqz v56, :cond_125a

    .line 2889
    :try_start_124d
    invoke-interface/range {v56 .. v56}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_1250
    .catchall {:try_start_124d .. :try_end_1250} :catchall_1251

    .line 2892
    goto :goto_125a

    .line 2890
    :catchall_1251
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2891
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Lock Settings Service ready"

    invoke-direct {v13, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2894
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_125a
    :goto_125a
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2897
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2898
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x1e0

    invoke-virtual {v0, v7, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2899
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2903
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iget-object v9, v13, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 2906
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x1110187

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v10

    .line 2904
    invoke-static {v0, v1, v9, v10}, Lcom/android/server/HsumBootUserInitializer;->createInstance(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/pm/PackageManagerService;Landroid/content/ContentResolver;Z)Lcom/android/server/HsumBootUserInitializer;

    move-result-object v1

    .line 2907
    .local v1, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    if-eqz v1, :cond_128e

    .line 2908
    const-string v0, "HsumBootUserInitializer.init"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2909
    invoke-virtual {v1, v7}, Lcom/android/server/HsumBootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2910
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2913
    :cond_128e
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2914
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v9, 0x1f4

    invoke-virtual {v0, v7, v9}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2915
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2919
    if-eqz v27, :cond_12f2

    .line 2921
    :try_start_129f
    const-string v0, "SystemServer"

    const-string v10, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2922
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2923
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v10, "onBootPhase"

    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v14, 0x0

    aput-object v11, v12, v14

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    .line 2924
    .local v10, "m":Ljava/lang/reflect/Method;
    const/4 v11, 0x1

    new-array v12, v11, [Ljava/lang/Object;

    new-instance v11, Ljava/lang/Integer;

    invoke-direct {v11, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v14, 0x0

    aput-object v11, v12, v14

    invoke-virtual {v10, v4, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2927
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v11

    .line 2928
    .local v11, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v12, "onBootPhase"

    const/4 v14, 0x1

    new-array v15, v14, [Ljava/lang/Class;

    sget-object v14, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/16 v16, 0x0

    aput-object v14, v15, v16

    invoke-virtual {v11, v12, v15}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v12

    move-object v10, v12

    .line 2929
    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    new-instance v14, Ljava/lang/Integer;

    invoke-direct {v14, v9}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x0

    aput-object v14, v12, v9

    invoke-virtual {v10, v3, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_12ea
    .catchall {:try_start_129f .. :try_end_12ea} :catchall_12ec

    .line 2933
    nop

    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v10    # "m":Ljava/lang/reflect/Method;
    .end local v11    # "wigigClass":Ljava/lang/Class;
    goto :goto_12f2

    .line 2931
    :catchall_12ec
    move-exception v0

    .line 2932
    .local v0, "e":Ljava/lang/Throwable;
    const-string v9, "Wigig services ready"

    invoke-direct {v13, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2936
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_12f2
    :goto_12f2
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2938
    :try_start_12f7
    invoke-virtual/range {v36 .. v36}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_12fa
    .catchall {:try_start_12f7 .. :try_end_12fa} :catchall_12fb

    .line 2941
    goto :goto_1304

    .line 2939
    :catchall_12fb
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 2940
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Window Manager Service ready"

    invoke-direct {v13, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2942
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1304
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2944
    const-string v0, "RegisterLogMteState"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2946
    :try_start_130c
    invoke-static {v8}, Lcom/android/server/LogMteState;->register(Landroid/content/Context;)V
    :try_end_130f
    .catchall {:try_start_130c .. :try_end_130f} :catchall_1310

    .line 2949
    goto :goto_1318

    .line 2947
    :catchall_1310
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 2948
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v9, "RegisterLogMteState"

    invoke-direct {v13, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2950
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1318
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2953
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v13, v7}, Lcom/android/server/SystemServerStub;->makeMiuiMagicPointerServiceReady(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 2957
    const-class v39, Lcom/android/server/SystemService;

    monitor-enter v39

    .line 2958
    :try_start_1325
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_1327
    .catchall {:try_start_1325 .. :try_end_1327} :catchall_1552

    if-eqz v0, :cond_1346

    .line 2959
    :try_start_1329
    iget-object v9, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 2960
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_1331
    .catchall {:try_start_1329 .. :try_end_1331} :catchall_1332

    goto :goto_1346

    .line 2962
    :catchall_1332
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v62, v2

    move-object/from16 v64, v4

    move/from16 v65, v5

    move-object/from16 v66, v6

    move-object v1, v7

    move-object v6, v8

    move-object v7, v13

    move-object/from16 v59, v36

    move-object/from16 v36, v3

    goto/16 :goto_1564

    :cond_1346
    :goto_1346
    :try_start_1346
    monitor-exit v39
    :try_end_1347
    .catchall {:try_start_1346 .. :try_end_1347} :catchall_1552

    .line 2964
    if-eqz v5, :cond_134e

    .line 2965
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2971
    :cond_134e
    move-object/from16 v12, v36

    const/4 v9, 0x0

    .end local v36    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v12, "wm":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual {v12, v9}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v11

    .line 2972
    .local v11, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v15, v0

    .line 2973
    .local v15, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v8}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v15}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2974
    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v11, v15}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2977
    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v20

    .line 2978
    .local v20, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_1376

    .line 2979
    invoke-virtual/range {v20 .. v20}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2983
    :cond_1376
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2984
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v9, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2985
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2987
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2988
    iget-object v0, v13, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 2989
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2997
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3000
    :try_start_1397
    iget-object v0, v13, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(Z)V
    :try_end_139c
    .catchall {:try_start_1397 .. :try_end_139c} :catchall_139d

    .line 3003
    goto :goto_13a4

    .line 3001
    :catchall_139d
    move-exception v0

    .line 3002
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Display Manager Service ready"

    invoke-direct {v13, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3004
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13a4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3006
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v5}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 3009
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3010
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v9, 0x107003d

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 3012
    .local v14, "classes":[Ljava/lang/String;
    array-length v9, v14

    const/4 v10, 0x0

    :goto_13c0
    if-ge v10, v9, :cond_140c

    move-object/from16 v21, v1

    .end local v1    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .local v21, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    aget-object v1, v14, v10

    .line 3013
    .local v1, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v2

    .end local v2    # "adServices":Lcom/android/server/SystemService;
    .local v32, "adServices":Lcom/android/server/SystemService;
    const-string v2, "StartDeviceSpecificServices "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3015
    :try_start_13de
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_13e3
    .catchall {:try_start_13de .. :try_end_13e3} :catchall_13e6

    .line 3018
    move-object/from16 v36, v3

    goto :goto_1400

    .line 3016
    :catchall_13e6
    move-exception v0

    .line 3017
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v36, v3

    .end local v3    # "wigigService":Ljava/lang/Object;
    .local v36, "wigigService":Ljava/lang/Object;
    const-string/jumbo v3, "starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v13, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3019
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1400
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3012
    .end local v1    # "className":Ljava/lang/String;
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, v21

    move-object/from16 v2, v32

    move-object/from16 v3, v36

    goto :goto_13c0

    .line 3021
    .end local v21    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v32    # "adServices":Lcom/android/server/SystemService;
    .end local v36    # "wigigService":Ljava/lang/Object;
    .local v1, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .restart local v2    # "adServices":Lcom/android/server/SystemService;
    .restart local v3    # "wigigService":Ljava/lang/Object;
    :cond_140c
    move-object/from16 v21, v1

    move-object/from16 v32, v2

    move-object/from16 v36, v3

    .end local v1    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v2    # "adServices":Lcom/android/server/SystemService;
    .end local v3    # "wigigService":Ljava/lang/Object;
    .restart local v21    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .restart local v32    # "adServices":Lcom/android/server/SystemService;
    .restart local v36    # "wigigService":Ljava/lang/Object;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3023
    const-string v0, "GameManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3024
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.app.GameManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3025
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3027
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.uwb"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1441

    .line 3028
    const-string v0, "UwbService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3029
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.uwb.UwbService"

    const-string v2, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3030
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3033
    :cond_1441
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3034
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v7, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3035
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3037
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3038
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3039
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3041
    const-string v0, "AppSearchModule"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3042
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3043
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3045
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1487

    .line 3046
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3047
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3048
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3051
    :cond_1487
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3052
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3053
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3055
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3056
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.compat.overrides.AppCompatOverridesService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3057
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3059
    const-string v0, "HealthConnectManagerService"

    invoke-virtual {v7, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3060
    iget-object v0, v13, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.healthconnect.HealthConnectManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3061
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3064
    move-object/from16 v9, v48

    .line 3065
    .local v9, "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    move-object/from16 v10, v51

    .line 3066
    .local v10, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v37, v14

    .end local v14    # "classes":[Ljava/lang/String;
    .local v37, "classes":[Ljava/lang/String;
    move-object/from16 v14, v46

    .line 3067
    .local v14, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v38, v15

    .end local v15    # "metrics":Landroid/util/DisplayMetrics;
    .local v38, "metrics":Landroid/util/DisplayMetrics;
    move-object/from16 v15, v53

    .line 3068
    .local v15, "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    move-object/from16 v16, v6

    .line 3069
    .local v16, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v17, v35

    .line 3070
    .local v17, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v18, v57

    .line 3071
    .local v18, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v19, v58

    .line 3072
    .local v19, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v39, v11

    .end local v11    # "config":Landroid/content/res/Configuration;
    .local v39, "config":Landroid/content/res/Configuration;
    move-object/from16 v11, v49

    .line 3073
    .local v11, "vpnManagerF":Lcom/android/server/VpnManagerService;
    move-object/from16 v59, v12

    .end local v12    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v59, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v12, v50

    .line 3074
    .local v12, "vcnManagementF":Lcom/android/server/VcnManagementService;
    move-object/from16 v3, v59

    .line 3075
    .local v3, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    const-string v0, "connectivity"

    .line 3076
    invoke-virtual {v8, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v40, v0

    check-cast v40, Landroid/net/ConnectivityManager;

    move-object v2, v8

    .end local v8    # "context":Landroid/content/Context;
    .local v2, "context":Landroid/content/Context;
    .local v40, "connectivityF":Landroid/net/ConnectivityManager;
    move-object/from16 v8, v40

    .line 3083
    iget-object v0, v13, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v1, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;

    move-object/from16 v60, v21

    move-object/from16 v21, v1

    .end local v21    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .local v60, "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    move-object/from16 v61, v2

    move-object/from16 v62, v32

    .end local v2    # "context":Landroid/content/Context;
    .end local v32    # "adServices":Lcom/android/server/SystemService;
    .local v61, "context":Landroid/content/Context;
    .local v62, "adServices":Lcom/android/server/SystemService;
    move-object/from16 v2, p0

    move-object/from16 v63, v3

    .end local v3    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v63, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v3, p1

    move-object/from16 v64, v4

    .end local v4    # "wigigP2pService":Ljava/lang/Object;
    .local v64, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v4, v44

    move/from16 v65, v5

    .end local v5    # "safeMode":Z
    .local v65, "safeMode":Z
    move/from16 v5, v28

    move-object/from16 v66, v6

    .end local v6    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v66, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v6, v61

    move/from16 v7, v65

    move-object/from16 v13, v60

    invoke-direct/range {v1 .. v19}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/content/Context;ZLandroid/net/ConnectivityManager;Lcom/android/server/net/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/HsumBootUserInitializer;Lcom/android/server/CountryDetectorService;Lcom/android/server/timedetector/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v1, p1

    move-object/from16 v2, v21

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3353
    const-string v0, "LockSettingsThirdPartyAppsStarted"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3354
    const-class v0, Lcom/android/internal/widget/LockSettingsInternal;

    .line 3355
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/internal/widget/LockSettingsInternal;

    .line 3356
    .local v2, "lockSettingsInternal":Lcom/android/internal/widget/LockSettingsInternal;
    if-eqz v2, :cond_151e

    .line 3357
    invoke-virtual {v2}, Lcom/android/internal/widget/LockSettingsInternal;->onThirdPartyAppsStarted()V

    .line 3359
    :cond_151e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3361
    const-string v0, "StartSystemUI"

    invoke-virtual {v1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3363
    move-object/from16 v6, v61

    move-object/from16 v3, v63

    .end local v61    # "context":Landroid/content/Context;
    .end local v63    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .restart local v3    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v6, "context":Landroid/content/Context;
    :try_start_152a
    invoke-static {v6, v3}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_152d
    .catchall {:try_start_152a .. :try_end_152d} :catchall_1530

    .line 3366
    move-object/from16 v7, p0

    goto :goto_153b

    .line 3364
    :catchall_1530
    move-exception v0

    move-object v4, v0

    move-object v0, v4

    .line 3365
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting System UI"

    move-object/from16 v7, p0

    invoke-direct {v7, v4, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3367
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_153b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3370
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v4, v7, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/server/SystemServerStub;->addCameraCoveredManagerService(Landroid/content/Context;)V

    .line 3374
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/server/SystemServerStub;->onOtherServicesStarted(Landroid/content/Context;)V

    .line 3377
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3378
    return-void

    .line 2962
    .end local v9    # "networkManagementF":Lcom/android/server/net/NetworkManagementService;
    .end local v10    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "vpnManagerF":Lcom/android/server/VpnManagerService;
    .end local v12    # "vcnManagementF":Lcom/android/server/VcnManagementService;
    .end local v14    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v15    # "networkTimeUpdaterF":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v16    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v17    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v18    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v19    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v20    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v37    # "classes":[Ljava/lang/String;
    .end local v38    # "metrics":Landroid/util/DisplayMetrics;
    .end local v39    # "config":Landroid/content/res/Configuration;
    .end local v40    # "connectivityF":Landroid/net/ConnectivityManager;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v60    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v62    # "adServices":Lcom/android/server/SystemService;
    .end local v64    # "wigigP2pService":Ljava/lang/Object;
    .end local v65    # "safeMode":Z
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v1    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .local v2, "adServices":Lcom/android/server/SystemService;
    .local v3, "wigigService":Ljava/lang/Object;
    .restart local v4    # "wigigP2pService":Ljava/lang/Object;
    .restart local v5    # "safeMode":Z
    .local v6, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v8    # "context":Landroid/content/Context;
    .local v36, "wm":Lcom/android/server/wm/WindowManagerService;
    :catchall_1552
    move-exception v0

    move-object/from16 v60, v1

    move-object/from16 v62, v2

    move-object/from16 v64, v4

    move/from16 v65, v5

    move-object/from16 v66, v6

    move-object v1, v7

    move-object v6, v8

    move-object v7, v13

    move-object/from16 v59, v36

    move-object/from16 v36, v3

    .end local v1    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v2    # "adServices":Lcom/android/server/SystemService;
    .end local v3    # "wigigService":Ljava/lang/Object;
    .end local v4    # "wigigP2pService":Ljava/lang/Object;
    .end local v5    # "safeMode":Z
    .end local v8    # "context":Landroid/content/Context;
    .local v6, "context":Landroid/content/Context;
    .local v36, "wigigService":Ljava/lang/Object;
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v60    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .restart local v62    # "adServices":Lcom/android/server/SystemService;
    .restart local v64    # "wigigP2pService":Ljava/lang/Object;
    .restart local v65    # "safeMode":Z
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    :goto_1564
    :try_start_1564
    monitor-exit v39
    :try_end_1565
    .catchall {:try_start_1564 .. :try_end_1565} :catchall_1566

    throw v0

    :catchall_1566
    move-exception v0

    goto :goto_1564

    .line 1938
    .end local v42    # "bootDexoptStartTime":J
    .end local v44    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v45    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v46    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v47    # "notification":Landroid/app/INotificationManager;
    .end local v48    # "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .end local v49    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v50    # "vcnManagement":Lcom/android/server/VcnManagementService;
    .end local v51    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v52    # "serial":Lcom/android/server/SerialService;
    .end local v53    # "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .end local v54    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v55    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v56    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v57    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v58    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v60    # "hsumBootUserInitializer":Lcom/android/server/HsumBootUserInitializer;
    .end local v62    # "adServices":Lcom/android/server/SystemService;
    .end local v64    # "wigigP2pService":Ljava/lang/Object;
    .end local v65    # "safeMode":Z
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v1, "bootDexoptStartTime":J
    .local v3, "notification":Landroid/app/INotificationManager;
    .local v4, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v5    # "safeMode":Z
    .local v6, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v8    # "context":Landroid/content/Context;
    .local v10, "networkManagement":Lcom/android/server/net/NetworkManagementService;
    .local v11, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v12, "vcnManagement":Lcom/android/server/VcnManagementService;
    .local v14, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v15, "serial":Lcom/android/server/SerialService;
    .local v16, "networkTimeUpdater":Lcom/android/server/timedetector/NetworkTimeUpdateService;
    .local v17, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v18, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v19, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v20, "wigigP2pService":Ljava/lang/Object;
    .local v21, "wigigService":Ljava/lang/Object;
    .local v32, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v36, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v37, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v40, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_1568
    move-exception v0

    move-wide/from16 v42, v1

    move-object v9, v3

    move-object/from16 v41, v4

    move/from16 v65, v5

    move-object/from16 v66, v6

    move-object v1, v7

    move-object v6, v8

    move-object v7, v13

    move-object/from16 v59, v36

    .end local v1    # "bootDexoptStartTime":J
    .end local v3    # "notification":Landroid/app/INotificationManager;
    .end local v4    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v5    # "safeMode":Z
    .end local v8    # "context":Landroid/content/Context;
    .end local v36    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v6, "context":Landroid/content/Context;
    .local v9, "notification":Landroid/app/INotificationManager;
    .restart local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v42    # "bootDexoptStartTime":J
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v65    # "safeMode":Z
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v2

    const-string v3, "dexopt"

    invoke-virtual {v2, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1939
    throw v0

    .line 1811
    .end local v9    # "notification":Landroid/app/INotificationManager;
    .end local v32    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v37    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v40    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v41    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v42    # "bootDexoptStartTime":J
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v65    # "safeMode":Z
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v6, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v36    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catchall_1581
    move-exception v0

    move-object/from16 v66, v6

    move-object v1, v7

    move-object v6, v8

    move-object v7, v13

    move-object/from16 v59, v36

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    move-object/from16 v2, v59

    move-object/from16 v3, v66

    .end local v8    # "context":Landroid/content/Context;
    .end local v36    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v6, "context":Landroid/content/Context;
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_1629

    .end local v6    # "context":Landroid/content/Context;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v36    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v37, "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_1593
    move-exception v0

    move-object v1, v7

    move-object v6, v8

    move-object v7, v13

    move-object/from16 v59, v36

    move-object/from16 v66, v37

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    move-object/from16 v2, v59

    move-object/from16 v3, v66

    .end local v8    # "context":Landroid/content/Context;
    .end local v36    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v37    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_1629

    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v3, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v5, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .local v9, "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_15a5
    move-exception v0

    move-object/from16 v59, v3

    move-object/from16 v66, v5

    move-object/from16 v35, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    move-object/from16 v2, v59

    move-object/from16 v3, v66

    .end local v3    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v6, "context":Landroid/content/Context;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_1629

    .end local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v3    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v4, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_15bb
    move-exception v0

    move-object/from16 v59, v3

    move-object/from16 v25, v4

    move-object/from16 v66, v5

    move-object/from16 v35, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    move-object/from16 v2, v59

    move-object/from16 v3, v66

    .end local v3    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v6, "context":Landroid/content/Context;
    .restart local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_1629

    .end local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v59    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v2, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_15d3
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v66, v5

    move-object/from16 v35, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    move-object/from16 v3, v66

    .end local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v5    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v6, "context":Landroid/content/Context;
    .restart local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    goto/16 :goto_1629

    .end local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v66    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v3, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_15e7
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v35, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v5, v33

    move-object/from16 v4, v35

    .end local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v6, "context":Landroid/content/Context;
    .restart local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_1629

    .end local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v33    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v5, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_15f6
    move-exception v0

    move-object/from16 v25, v4

    move-object/from16 v35, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v4, v35

    .end local v4    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v6, "context":Landroid/content/Context;
    .restart local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_1629

    .end local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v33, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    :catchall_1603
    move-exception v0

    move-object/from16 v35, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v25, v33

    move-object/from16 v4, v35

    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v6, "context":Landroid/content/Context;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_1629

    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v1, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v6, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_1610
    move-exception v0

    move-object/from16 v33, v1

    move-object/from16 v35, v6

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v25, v33

    move-object/from16 v4, v35

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v6, "context":Landroid/content/Context;
    .restart local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto :goto_1629

    .end local v6    # "context":Landroid/content/Context;
    .end local v33    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v35    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v4, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v8    # "context":Landroid/content/Context;
    .restart local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    :catchall_161f
    move-exception v0

    move-object/from16 v33, v1

    move-object v1, v7

    move-object v6, v8

    move-object/from16 v34, v9

    move-object v7, v13

    move-object/from16 v25, v33

    .line 1812
    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v8    # "context":Landroid/content/Context;
    .end local v9    # "storageManager":Landroid/os/storage/IStorageManager;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v6    # "context":Landroid/content/Context;
    .restart local v25    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v34    # "storageManager":Landroid/os/storage/IStorageManager;
    :goto_1629
    const-string v8, "System"

    const-string v9, "******************************************"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1813
    const-string v8, "System"

    const-string v9, "************ Failure starting core service"

    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1814
    throw v0
.end method

.method private startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3489
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3490
    const-string v0, "SystemServer"

    const-string v1, "RotationResolverService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3491
    return-void

    .line 3494
    :cond_e
    const-string v0, "StartRotationResolverService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3495
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3496
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3498
    return-void
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3423
    const v0, 0x1040278

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3424
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3425
    return-void

    .line 3428
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3429
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3430
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3431
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 3513
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3514
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3515
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3516
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3518
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3519
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 3520
    return-void
.end method

.method private startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3435
    const-string v0, "StartTextToSpeechManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3436
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.texttospeech.TextToSpeechManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3437
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3438
    return-void
.end method

.method private startWearableSensingService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3507
    const-string/jumbo v0, "startWearableSensingService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3508
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/wearable/WearableSensingManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3509
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3510
    return-void
.end method

.method private updateWatchdogTimeout(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3411
    const-string v0, "UpdateWatchdogTimeout"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3412
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 3413
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3414
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 752
    iget-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Runtime restart: %b\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 753
    iget v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "Start count: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 754
    const-string v0, "Runtime start-up time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 755
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 756
    const-string v0, "Runtime start-elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 757
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 758
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 747
    const-class v0, Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
