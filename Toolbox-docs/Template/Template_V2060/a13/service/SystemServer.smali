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

.field private static final CLOUDSEARCH_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.cloudsearch.CloudSearchManagerService"

.field private static final COMPANION_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.CompanionDeviceManagerService"

.field private static final CONNECTIVITY_SERVICE_APEX_PATH:Ljava/lang/String; = "/apex/com.android.tethering/javalib/service-connectivity.jar"

.field private static final CONNECTIVITY_SERVICE_INITIALIZER_CLASS:Ljava/lang/String; = "com.android.server.ConnectivityServiceInitializer"

.field private static final CONTENT_CAPTURE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentcapture.ContentCaptureManagerService"

.field private static final CONTENT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.content.ContentService$Lifecycle"

.field private static final CONTENT_SUGGESTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

.field private static final DEFAULT_SYSTEM_THEME:I = 0x103040c

.field private static final DEVICE_IDLE_CONTROLLER_CLASS:Ljava/lang/String; = "com.android.server.DeviceIdleController"

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final GAME_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.app.GameManagerService$Lifecycle"

.field private static final GNSS_TIME_UPDATE_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

.field private static final HEALTH_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.healthservices.HealthService"

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

.field private static final SLICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.slice.SliceManagerService$Lifecycle"

.field private static final SLOW_DELIVERY_THRESHOLD_MS:J = 0xc8L

.field private static final SLOW_DISPATCH_THRESHOLD_MS:J = 0x64L

.field private static final SMARTSPACE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.smartspace.SmartspaceManagerService"

.field private static final SPEECH_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.speech.SpeechRecognitionManagerService"

.field private static final START_BLOB_STORE_SERVICE:Ljava/lang/String; = "startBlobStoreManagerService"

.field private static final START_HIDL_SERVICES:Ljava/lang/String; = "StartHidlServices"

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

.field private static final THERMAL_OBSERVER_CLASS:Ljava/lang/String; = "com.google.android.clockwork.ThermalObserver"

.field private static final TIME_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timedetector.TimeDetectorService$Lifecycle"

.field private static final TIME_ZONE_DETECTOR_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

.field private static final TIME_ZONE_RULES_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.timezone.RulesManagerService$Lifecycle"

.field private static final TRANSLATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.translation.TranslationManagerService"

.field private static final UNCRYPT_PACKAGE_FILE:Ljava/lang/String; = "/cache/recovery/uncrypt_file"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final UWB_APEX_SERVICE_JAR_PATH:Ljava/lang/String; = "/apex/com.android.uwb/javalib/service-uwb.jar"

.field private static final UWB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.uwb.UwbService"

.field private static final VIRTUAL_DEVICE_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.companion.virtual.VirtualDeviceManagerService"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WALLPAPER_EFFECTS_GENERATION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

.field private static final WALLPAPER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

.field private static final WEAR_CONNECTIVITY_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.connectivity.WearConnectivityService"

.field private static final WEAR_DISPLAYOFFLOAD_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.displayoffload.DisplayOffloadService"

.field private static final WEAR_DISPLAY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.display.WearDisplayService"

.field private static final WEAR_GLOBAL_ACTIONS_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.globalactions.GlobalActionsService"

.field private static final WEAR_LEFTY_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.lefty.WearLeftyService"

.field private static final WEAR_POWER_SERVICE_CLASS:Ljava/lang/String; = "com.android.clockwork.power.WearPowerService"

.field private static final WEAR_SIDEKICK_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.sidekick.SidekickService"

.field private static final WEAR_TIME_SERVICE_CLASS:Ljava/lang/String; = "com.google.android.clockwork.time.WearTimeService"

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

.field private mOnlyCore:Z

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

.method static constructor <clinit>()V
    .registers 2

    .line 542
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/heapdump/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .registers 10

    .line 706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 487
    new-instance v0, Lcom/android/server/SystemServer$SystemServerDumper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/SystemServer$SystemServerDumper-IA;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    .line 708
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 713
    const-string/jumbo v0, "sys.system_server.start_count"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/SystemServer;->mStartCount:I

    .line 714
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    .line 715
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    iput-wide v7, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    .line 716
    move-wide v1, v5

    move-wide v3, v7

    invoke-static/range {v1 .. v8}, Landroid/os/Process;->setStartTimes(JJJJ)V

    .line 723
    const-string/jumbo v0, "sys.boot_completed"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    .line 724
    return-void
.end method

.method private createSystemContext()V
    .registers 4

    .line 1098
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 1099
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1100
    const v2, 0x103040c

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1102
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v1

    .line 1103
    .local v1, "systemUiContext":Landroid/content/Context;
    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 1104
    return-void
.end method

.method private deviceHasConfigString(Landroid/content/Context;I)Z
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resId"    # I

    .line 3254
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 3255
    .local v0, "serviceName":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method private static dumpHprof()V
    .registers 10

    .line 568
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 571
    .local v0, "existingTombstones":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    invoke-static {}, Lcom/android/server/SystemServer;->getHeapDumpDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    .line 572
    .local v1, "files":[Ljava/io/File;
    const/4 v2, 0x0

    if-nez v1, :cond_12

    new-array v1, v2, [Ljava/io/File;

    .line 573
    :cond_12
    new-instance v3, Ljava/util/TreeSet;

    invoke-direct {v3}, Ljava/util/TreeSet;-><init>()V

    .line 575
    .local v3, "existingBacktraces":Ljava/util/TreeSet;, "Ljava/util/TreeSet<Ljava/io/File;>;"
    array-length v4, v1

    :goto_18
    if-ge v2, v4, :cond_46

    aget-object v5, v1, v2

    .line 576
    .local v5, "file":Ljava/io/File;
    invoke-virtual {v5}, Ljava/io/File;->isFile()Z

    move-result v6

    if-nez v6, :cond_23

    .line 577
    goto :goto_43

    .line 580
    :cond_23
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack_u"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 581
    invoke-virtual {v3, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 582
    goto :goto_43

    .line 585
    :cond_33
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "fdtrack-"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_40

    .line 586
    goto :goto_43

    .line 588
    :cond_40
    invoke-virtual {v0, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 575
    .end local v5    # "file":Ljava/io/File;
    :goto_43
    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    .line 590
    :cond_46
    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v4, 0x2

    const-string v5, "System"

    const/4 v6, 0x1

    if-lt v2, v4, :cond_86

    .line 591
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_51
    if-ge v2, v6, :cond_59

    .line 593
    invoke-virtual {v0}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 591
    add-int/lit8 v2, v2, 0x1

    goto :goto_51

    .line 595
    .end local v2    # "i":I
    :cond_59
    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_86

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/io/File;

    .line 596
    .local v7, "file":Ljava/io/File;
    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v8

    if-nez v8, :cond_85

    .line 597
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Failed to clean up hprof "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v5, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    .end local v7    # "file":Ljava/io/File;
    :cond_85
    goto :goto_5d

    .line 602
    :cond_86
    invoke-virtual {v3}, Ljava/util/TreeSet;->size()I

    move-result v2

    if-lt v2, v4, :cond_c2

    .line 603
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_8d
    if-ge v2, v6, :cond_95

    .line 604
    invoke-virtual {v3}, Ljava/util/TreeSet;->pollLast()Ljava/lang/Object;

    .line 603
    add-int/lit8 v2, v2, 0x1

    goto :goto_8d

    .line 606
    .end local v2    # "i":I
    :cond_95
    invoke-virtual {v3}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_99
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/io/File;

    .line 607
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v6

    if-nez v6, :cond_c1

    .line 608
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to clean up fdtrack "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    .end local v4    # "file":Ljava/io/File;
    :cond_c1
    goto :goto_99

    .line 615
    :cond_c2
    :try_start_c2
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string/jumbo v4, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v2, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    .line 618
    .local v2, "date":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/android/server/SystemServer;->getHeapDumpDir()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/fdtrack-p"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

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

    .line 619
    .local v4, "filename":Ljava/lang/String;
    invoke-static {v4}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_109
    .catch Ljava/io/IOException; {:try_start_c2 .. :try_end_109} :catch_10a

    .line 622
    .end local v2    # "date":Ljava/lang/String;
    .end local v4    # "filename":Ljava/lang/String;
    goto :goto_110

    .line 620
    :catch_10a
    move-exception v2

    .line 621
    .local v2, "ex":Ljava/io/IOException;
    const-string v4, "Failed to dump fdtrack hprof"

    invoke-static {v5, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 623
    .end local v2    # "ex":Ljava/io/IOException;
    :goto_110
    return-void
.end method

.method private static native fdtrackAbort()V
.end method

.method private static getHeapDumpDir()Ljava/io/File;
    .registers 4

    .line 547
    new-instance v0, Ljava/io/File;

    const-string v1, "data/miuilog/stability/resleak/fdtrack/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 548
    .local v0, "fdtrackDir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_16

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v1

    if-nez v1, :cond_16

    .line 550
    sget-object v1, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-object v1

    .line 552
    :cond_16
    const/16 v1, 0x1ed

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v3

    invoke-static {v0, v1, v2, v3}, Landroid/os/FileUtils;->setPermissions(Ljava/io/File;III)I

    move-result v1

    if-eqz v1, :cond_29

    .line 553
    sget-object v1, Lcom/android/server/SystemServer;->HEAP_DUMP_PATH:Ljava/io/File;

    return-object v1

    .line 555
    :cond_29
    return-object v0
.end method

.method private static getMaxFd()I
    .registers 5

    .line 520
    const/4 v0, 0x0

    .line 522
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

    .line 523
    invoke-virtual {v0}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v1
    :try_end_12
    .catch Landroid/system/ErrnoException; {:try_start_1 .. :try_end_12} :catch_22
    .catchall {:try_start_1 .. :try_end_12} :catchall_20

    .line 527
    if-eqz v0, :cond_1f

    .line 529
    :try_start_14
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_17
    .catch Landroid/system/ErrnoException; {:try_start_14 .. :try_end_17} :catch_18

    .line 533
    goto :goto_1f

    .line 530
    :catch_18
    move-exception v1

    .line 532
    .local v1, "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 523
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_1f
    :goto_1f
    return v1

    .line 527
    :catchall_20
    move-exception v1

    goto :goto_4d

    .line 524
    :catch_22
    move-exception v1

    .line 525
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

    .line 527
    nop

    .end local v1    # "ex":Landroid/system/ErrnoException;
    if-eqz v0, :cond_49

    .line 529
    :try_start_3e
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_41
    .catch Landroid/system/ErrnoException; {:try_start_3e .. :try_end_41} :catch_42

    .line 533
    goto :goto_49

    .line 530
    :catch_42
    move-exception v1

    .line 532
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 537
    .end local v1    # "ex":Landroid/system/ErrnoException;
    :cond_49
    :goto_49
    const v1, 0x7fffffff

    return v1

    .line 527
    :goto_4d
    if-eqz v0, :cond_5a

    .line 529
    :try_start_4f
    invoke-static {v0}, Landroid/system/Os;->close(Ljava/io/FileDescriptor;)V
    :try_end_52
    .catch Landroid/system/ErrnoException; {:try_start_4f .. :try_end_52} :catch_53

    .line 533
    goto :goto_5a

    .line 530
    :catch_53
    move-exception v1

    .line 532
    .restart local v1    # "ex":Landroid/system/ErrnoException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 535
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

    .line 3359
    const-string/jumbo v0, "system_server"

    .line 3360
    .local v0, "processName":Ljava/lang/String;
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    .line 3362
    .local v7, "myPid":I
    const/16 v1, 0x3e8

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    const-string/jumbo v3, "system_server"

    iget-object v6, p3, Landroid/app/ApplicationErrorReport$ParcelableCrashInfo;->exceptionMessage:Ljava/lang/String;

    const/4 v4, -0x1

    move v2, v7

    move-object v5, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/EventLogTags;->writeAmWtf(IILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 3365
    const-string/jumbo v4, "system_server"

    const/16 v1, 0x50

    const/16 v2, 0x3e8

    const/4 v6, 0x3

    move-object v3, p1

    move v5, v7

    invoke-static/range {v1 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;II)V

    .line 3368
    const-class v1, Lcom/android/server/SystemServer;

    monitor-enter v1

    .line 3369
    :try_start_28
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    if-nez v2, :cond_33

    .line 3370
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    sput-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    .line 3372
    :cond_33
    sget-object v2, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;

    new-instance v3, Landroid/util/Pair;

    invoke-direct {v3, p1, p3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 3373
    monitor-exit v1

    .line 3374
    const/4 v1, 0x0

    return v1

    .line 3373
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

    .line 1035
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

    .line 1029
    if-eqz p0, :cond_14

    .line 1030
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_14

    .line 1031
    invoke-static {}, Lcom/android/i18n/timezone/ZoneInfoDb;->getInstance()Lcom/android/i18n/timezone/ZoneInfoDb;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/i18n/timezone/ZoneInfoDb;->hasTimeZone(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1029
    :goto_15
    return v0
.end method

.method static synthetic lambda$spawnFdLeakCheckThread$0(III)V
    .registers 14
    .param p0, "enableThreshold"    # I
    .param p1, "abortThreshold"    # I
    .param p2, "checkInterval"    # I

    .line 634
    const/4 v0, 0x0

    .line 635
    .local v0, "enabled":Z
    const-wide/16 v1, 0x0

    .line 638
    .local v1, "nextWrite":J
    :goto_3
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 639
    .local v3, "maxFd":I
    if-le v3, p0, :cond_13

    .line 641
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 642
    invoke-static {}, Ljava/lang/System;->runFinalization()V

    .line 643
    invoke-static {}, Lcom/android/server/SystemServer;->getMaxFd()I

    move-result v3

    .line 646
    :cond_13
    const/4 v4, 0x2

    const-string v5, "System"

    const/16 v6, 0x16c

    if-le v3, p0, :cond_2b

    if-nez v0, :cond_2b

    .line 647
    const-string v7, "fdtrack enable threshold reached, enabling"

    invoke-static {v5, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 652
    const-string v4, "fdtrack"

    invoke-static {v4}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 653
    const/4 v0, 0x1

    goto :goto_52

    .line 654
    :cond_2b
    if-le v3, p1, :cond_3d

    .line 655
    const-string v4, "fdtrack abort threshold reached, dumping and aborting"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    const/4 v4, 0x3

    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    .line 660
    invoke-static {}, Lcom/android/server/SystemServer;->dumpHprof()V

    .line 661
    invoke-static {}, Lcom/android/server/SystemServer;->fdtrackAbort()V

    goto :goto_52

    .line 664
    :cond_3d
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 665
    .local v7, "now":J
    cmp-long v5, v7, v1

    if-lez v5, :cond_52

    .line 666
    const-wide/32 v9, 0x36ee80

    add-long/2addr v9, v7

    .line 667
    .end local v1    # "nextWrite":J
    .local v9, "nextWrite":J
    nop

    .line 668
    if-eqz v0, :cond_4d

    goto :goto_4e

    .line 669
    :cond_4d
    const/4 v4, 0x1

    .line 667
    :goto_4e
    invoke-static {v6, v4, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(III)V

    move-wide v1, v9

    .line 675
    .end local v7    # "now":J
    .end local v9    # "nextWrite":J
    .restart local v1    # "nextWrite":J
    :cond_52
    :goto_52
    mul-int/lit16 v4, p2, 0x3e8

    int-to-long v4, v4

    :try_start_55
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_58
    .catch Ljava/lang/InterruptedException; {:try_start_55 .. :try_end_58} :catch_5a

    .line 678
    nop

    .line 679
    .end local v3    # "maxFd":I
    goto :goto_3

    .line 676
    .restart local v3    # "maxFd":I
    :catch_5a
    move-exception v4

    .line 677
    .local v4, "ex":Ljava/lang/InterruptedException;
    goto :goto_3
.end method

.method static synthetic lambda$startOtherServices$1()V
    .registers 5

    .line 1546
    const-string v0, "SecondaryZygotePreload"

    const-string v1, "SystemServer"

    :try_start_4
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v2

    .line 1548
    .local v2, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1549
    sget-object v0, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    .line 1550
    .local v0, "abis32":[Ljava/lang/String;
    array-length v3, v0

    if-lez v3, :cond_23

    sget-object v3, Landroid/os/Process;->ZYGOTE_PROCESS:Landroid/os/ZygoteProcess;

    const/4 v4, 0x0

    aget-object v4, v0, v4

    invoke-virtual {v3, v4}, Landroid/os/ZygoteProcess;->preloadDefault(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_23

    .line 1551
    const-string v3, "Unable to preload default resources for secondary"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1553
    :cond_23
    invoke-virtual {v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_26
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_26} :catch_27

    .line 1556
    .end local v0    # "abis32":[Ljava/lang/String;
    .end local v2    # "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    goto :goto_2d

    .line 1554
    :catch_27
    move-exception v0

    .line 1555
    .local v0, "ex":Ljava/lang/Exception;
    const-string v2, "Exception preloading default resources"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1557
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_2d
    return-void
.end method

.method static synthetic lambda$startOtherServices$2()V
    .registers 2

    .line 1695
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 1696
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    const-string v1, "StartHidlServices"

    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1697
    invoke-static {}, Lcom/android/server/SystemServer;->startHidlServices()V

    .line 1698
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1699
    return-void
.end method

.method static synthetic lambda$startOtherServices$4(Landroid/os/IBinder;)V
    .registers 4
    .param p0, "service"    # Landroid/os/IBinder;

    .line 3115
    const-string/jumbo v0, "tethering"

    const/4 v1, 0x0

    const/4 v2, 0x6

    invoke-static {v0, p0, v1, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 3118
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .registers 4
    .param p0, "args"    # [Ljava/lang/String;

    .line 698
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    .line 699
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    sget-wide v1, Lcom/android/internal/os/ZygoteInit;->BOOT_START_TIME:J

    invoke-virtual {v0, v1, v2}, Lcom/android/server/SystemServerStub;->markSystemRun(J)V

    .line 701
    invoke-static {}, Lcom/android/server/ProcHunterStub;->getInstance()Lcom/android/server/ProcHunterStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ProcHunterStub;->start()V

    .line 703
    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    .line 704
    return-void
.end method

.method private performPendingShutdown()V
    .registers 10

    .line 1044
    const-string v0, "SystemServer"

    const-string/jumbo v1, "sys.shutdown.requested"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1046
    .local v1, "shutdownAction":Ljava/lang/String;
    if-eqz v1, :cond_8a

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_8a

    .line 1047
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

    .line 1050
    .local v3, "reboot":Z
    :goto_20
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v5, :cond_2f

    .line 1051
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    .local v4, "reason":Ljava/lang/String;
    goto :goto_30

    .line 1053
    .end local v4    # "reason":Ljava/lang/String;
    :cond_2f
    const/4 v4, 0x0

    .line 1061
    .restart local v4    # "reason":Ljava/lang/String;
    :goto_30
    if-eqz v4, :cond_73

    const-string/jumbo v6, "recovery-update"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_73

    .line 1062
    new-instance v6, Ljava/io/File;

    const-string v7, "/cache/recovery/uncrypt_file"

    invoke-direct {v6, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1063
    .local v6, "packageFile":Ljava/io/File;
    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_73

    .line 1064
    const/4 v7, 0x0

    .line 1066
    .local v7, "filename":Ljava/lang/String;
    const/4 v8, 0x0

    :try_start_4a
    invoke-static {v6, v2, v8}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_4a .. :try_end_4e} :catch_50

    move-object v7, v2

    .line 1069
    goto :goto_56

    .line 1067
    :catch_50
    move-exception v2

    .line 1068
    .local v2, "e":Ljava/io/IOException;
    const-string v8, "Error reading uncrypt package file"

    invoke-static {v0, v8, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1071
    .end local v2    # "e":Ljava/io/IOException;
    :goto_56
    if-eqz v7, :cond_73

    const-string v2, "/data"

    invoke-virtual {v7, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_73

    .line 1072
    new-instance v2, Ljava/io/File;

    const-string v8, "/cache/recovery/block.map"

    invoke-direct {v2, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_73

    .line 1073
    const-string v2, "Can\'t find block map file, uncrypt failed or unexpected runtime restart?"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1075
    return-void

    .line 1080
    .end local v6    # "packageFile":Ljava/io/File;
    .end local v7    # "filename":Ljava/lang/String;
    :cond_73
    new-instance v0, Lcom/android/server/SystemServer$1;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;ZLjava/lang/String;)V

    .line 1090
    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-static {v2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;Ljava/lang/Runnable;)Landroid/os/Message;

    move-result-object v2

    .line 1091
    .local v2, "msg":Landroid/os/Message;
    invoke-virtual {v2, v5}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 1092
    invoke-static {}, Lcom/android/server/UiThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1095
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

    .line 1039
    const-string v0, "SystemServer"

    const-string v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1041
    return-void
.end method

.method private run()V
    .registers 17

    .line 816
    move-object/from16 v1, p0

    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v2, "persist.sys.timezone"

    const-string v3, ""

    new-instance v4, Lcom/android/server/utils/TimingsTraceAndSlog;

    invoke-direct {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;-><init>()V

    .line 818
    .local v4, "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    :try_start_f
    const-string v5, "InitBeforeStartServices"

    invoke-virtual {v4, v5}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 821
    const-string/jumbo v5, "sys.system_server.start_count"

    iget v6, v1, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    const-string/jumbo v5, "sys.system_server.start_elapsed"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    const-string/jumbo v5, "sys.system_server.start_uptime"

    iget-wide v6, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    const/16 v5, 0xbc3

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget v7, v1, Lcom/android/server/SystemServer;->mStartCount:I

    .line 826
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-wide v9, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v9, 0x1

    aput-object v7, v6, v9

    const/4 v7, 0x2

    iget-wide v10, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v6, v7

    .line 825
    invoke-static {v5, v6}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 831
    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 832
    .local v5, "timezoneProperty":Ljava/lang/String;
    invoke-static {v5}, Lcom/android/server/SystemServer;->isValidTimeZoneId(Ljava/lang/String;)Z

    move-result v6
    :try_end_63
    .catchall {:try_start_f .. :try_end_63} :catchall_239

    const-string v7, "SystemServer"

    if-nez v6, :cond_89

    .line 833
    :try_start_67
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "persist.sys.timezone is not valid ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v10, "); setting to GMT."

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    const-string v6, "GMT"

    invoke-static {v2, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 846
    :cond_89
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_b0

    .line 847
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v2

    .line 849
    .local v2, "languageTag":Ljava/lang/String;
    const-string/jumbo v6, "persist.sys.locale"

    invoke-static {v6, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 850
    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 851
    const-string/jumbo v0, "persist.sys.country"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    const-string/jumbo v0, "persist.sys.localevar"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 856
    .end local v2    # "languageTag":Ljava/lang/String;
    :cond_b0
    invoke-static {v9}, Landroid/os/Binder;->setWarnOnBlocking(Z)V

    .line 858
    invoke-static {}, Landroid/content/pm/PackageItemInfo;->forceSafeLabels()V

    .line 861
    const-string v0, "FULL"

    sput-object v0, Landroid/database/sqlite/SQLiteGlobal;->sDefaultSyncMode:Ljava/lang/String;

    .line 864
    const/4 v2, 0x0

    invoke-static {v2}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->init(Ljava/lang/String;)V

    .line 867
    const-string v0, "Entered the Android system server!"

    invoke-static {v7, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 868
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    .line 869
    .local v6, "uptimeMillis":J
    const/16 v0, 0xbc2

    invoke-static {v0, v6, v7}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 870
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v3, 0xf0

    if-nez v0, :cond_d7

    .line 871
    const/16 v0, 0x13

    invoke-static {v3, v0, v6, v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 884
    :cond_d7
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v10

    invoke-static {v0, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 887
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 891
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 895
    invoke-static {v9}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 899
    invoke-static {v9}, Landroid/os/BaseBundle;->setShouldDefuse(Z)V

    .line 902
    invoke-static {v9}, Landroid/os/Parcel;->setStackTraceParceling(Z)V

    .line 905
    invoke-static {v9}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 908
    const/16 v0, 0x1f

    invoke-static {v0}, Lcom/android/internal/os/BinderInternal;->setMaxThreads(I)V

    .line 911
    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 913
    invoke-static {v8}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 914
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 915
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    const-wide/16 v10, 0x64

    const-wide/16 v12, 0xc8

    invoke-virtual {v0, v10, v11, v12, v13}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 918
    sput-boolean v9, Landroid/app/SystemServiceRegistry;->sEnableServiceNotFoundWtf:Z

    .line 921
    const-string v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 924
    invoke-static {}, Lcom/android/server/SystemServer;->initZygoteChildHeapProfiling()V

    .line 927
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_126

    .line 928
    invoke-static {}, Lcom/android/server/SystemServer;->spawnFdLeakCheckThread()V

    .line 933
    :cond_126
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 936
    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 939
    invoke-static {}, Landroid/app/ActivityThread;->initializeMainlineModules()V

    .line 942
    const-string/jumbo v0, "system_server_dumper"

    iget-object v9, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 943
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v1}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 946
    new-instance v9, Lcom/android/server/SystemServiceManager;

    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v9, v0}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 947
    iget-boolean v10, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    iget-wide v11, v1, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    iget-wide v13, v1, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-virtual/range {v9 .. v14}, Lcom/android/server/SystemServiceManager;->setStartInfo(ZJJ)V

    .line 949
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 951
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v9}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 953
    invoke-static {}, Lcom/android/server/SystemServerInitThreadPool;->start()Lcom/android/server/SystemServerInitThreadPool;

    move-result-object v0

    move-object v9, v0

    .line 954
    .local v9, "tp":Lcom/android/server/SystemServerInitThreadPool;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v9}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 960
    invoke-static {}, Landroid/graphics/Typeface;->loadPreinstalledSystemFontMap()V

    .line 964
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_16b
    .catchall {:try_start_67 .. :try_end_16b} :catchall_239

    const-string v10, "System"

    if-eqz v0, :cond_1b6

    .line 966
    :try_start_16f
    const-string/jumbo v0, "persist.sys.dalvik.jvmtiagent"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    .line 967
    .local v11, "jvmtiAgent":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b6

    .line 968
    const/16 v0, 0x3d

    invoke-virtual {v11, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    move v12, v0

    .line 969
    .local v12, "equalIndex":I
    invoke-virtual {v11, v8, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 970
    .local v13, "libraryPath":Ljava/lang/String;
    add-int/lit8 v0, v12, 0x1

    .line 971
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v14

    invoke-virtual {v11, v0, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0
    :try_end_193
    .catchall {:try_start_16f .. :try_end_193} :catchall_239

    move-object v14, v0

    .line 974
    .local v14, "parameterList":Ljava/lang/String;
    :try_start_194
    invoke-static {v13, v14, v2}, Landroid/os/Debug;->attachJvmtiAgent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_197
    .catch Ljava/lang/Exception; {:try_start_194 .. :try_end_197} :catch_198
    .catchall {:try_start_194 .. :try_end_197} :catchall_239

    .line 978
    goto :goto_1b6

    .line 975
    :catch_198
    move-exception v0

    move-object v15, v0

    move-object v0, v15

    .line 976
    .local v0, "e":Ljava/lang/Exception;
    :try_start_19b
    const-string v15, "*************************************************"

    invoke-static {v10, v15}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 977
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "********** Failed to load jvmti plugin: "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v10, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1b6
    .catchall {:try_start_19b .. :try_end_1b6} :catchall_239

    .line 982
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v5    # "timezoneProperty":Ljava/lang/String;
    .end local v6    # "uptimeMillis":J
    .end local v9    # "tp":Lcom/android/server/SystemServerInitThreadPool;
    .end local v11    # "jvmtiAgent":Ljava/lang/String;
    .end local v12    # "equalIndex":I
    .end local v13    # "libraryPath":Ljava/lang/String;
    .end local v14    # "parameterList":Ljava/lang/String;
    :cond_1b6
    :goto_1b6
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 983
    nop

    .line 986
    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/android/internal/os/RuntimeInit;->setDefaultApplicationWtfHandler(Lcom/android/internal/os/RuntimeInit$ApplicationWtfHandler;)V

    .line 989
    const-string v0, "debug.debug_system"

    invoke-static {v0, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1cd

    .line 990
    invoke-static {}, Landroid/os/Debug;->waitForDebugger()V

    .line 996
    :cond_1cd
    :try_start_1cd
    const-string v0, "StartServices"

    invoke-virtual {v4, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 997
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 998
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 999
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1000
    invoke-direct {v1, v4}, Lcom/android/server/SystemServer;->startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    :try_end_1de
    .catchall {:try_start_1cd .. :try_end_1de} :catchall_227

    .line 1006
    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1007
    nop

    .line 1009
    invoke-static {v2}, Landroid/os/StrictMode;->initVmDefaults(Landroid/content/pm/ApplicationInfo;)V

    .line 1011
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_21c

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_21c

    .line 1012
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 1013
    .local v2, "uptimeMillis":J
    const/16 v0, 0x14

    const/16 v5, 0xf0

    invoke-static {v5, v0, v2, v3}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1016
    const-wide/32 v5, 0xea60

    .line 1017
    .local v5, "maxUptimeMillis":J
    const-wide/32 v7, 0xea60

    cmp-long v0, v2, v7

    if-lez v0, :cond_21c

    .line 1018
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SystemServer init took too long. uptimeMillis="

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v7, "SystemServerTiming"

    invoke-static {v7, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    .end local v2    # "uptimeMillis":J
    .end local v5    # "maxUptimeMillis":J
    :cond_21c
    invoke-static {}, Landroid/security/kaorios/KaoriosHook;->initSystemServer()V

    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 1025
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v2, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1001
    :catchall_227
    move-exception v0

    .line 1002
    .local v0, "ex":Ljava/lang/Throwable;
    :try_start_228
    const-string v2, "******************************************"

    invoke-static {v10, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const-string v2, "************ Failure starting system services"

    invoke-static {v10, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1004
    nop

    .end local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .end local p0    # "this":Lcom/android/server/SystemServer;
    throw v0
    :try_end_234
    .catchall {:try_start_228 .. :try_end_234} :catchall_234

    .line 1006
    .end local v0    # "ex":Ljava/lang/Throwable;
    .restart local v4    # "t":Lcom/android/server/utils/TimingsTraceAndSlog;
    .restart local p0    # "this":Lcom/android/server/SystemServer;
    :catchall_234
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1007
    throw v0

    .line 982
    :catchall_239
    move-exception v0

    invoke-virtual {v4}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 983
    throw v0
.end method

.method private static native setIncrementalServiceSystemReady(J)V
.end method

.method private static spawnFdLeakCheckThread()V
    .registers 5

    .line 629
    const-string/jumbo v0, "persist.sys.debug.fdtrack_enable_threshold"

    const/16 v1, 0x400

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 630
    .local v0, "enableThreshold":I
    const-string/jumbo v1, "persist.sys.debug.fdtrack_abort_threshold"

    const/16 v2, 0x800

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 631
    .local v1, "abortThreshold":I
    const-string/jumbo v2, "persist.sys.debug.fdtrack_interval"

    const/16 v3, 0x78

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 633
    .local v2, "checkInterval":I
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;

    invoke-direct {v4, v0, v1, v2}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 680
    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 681
    return-void
.end method

.method private startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3338
    const-string v0, "StartAmbientContextService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3339
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ambientcontext/AmbientContextManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3340
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3341
    return-void
.end method

.method private startApexServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 9
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3231
    const-string/jumbo v0, "startApexServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3234
    invoke-static {}, Lcom/android/server/pm/ApexManager;->getInstance()Lcom/android/server/pm/ApexManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/pm/ApexManager;->getApexSystemServices()Ljava/util/List;

    move-result-object v0

    .line 3235
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

    .line 3236
    .local v2, "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getName()Ljava/lang/String;

    move-result-object v3

    .line 3237
    .local v3, "name":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/server/pm/ApexSystemServiceInfo;->getJarPath()Ljava/lang/String;

    move-result-object v4

    .line 3238
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

    .line 3239
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_49

    .line 3240
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    goto :goto_4e

    .line 3242
    :cond_49
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v5, v3, v4}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3244
    :goto_4e
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3245
    .end local v2    # "info":Lcom/android/server/pm/ApexSystemServiceInfo;
    .end local v3    # "name":Ljava/lang/String;
    .end local v4    # "jarPath":Ljava/lang/String;
    goto :goto_12

    .line 3248
    :cond_52
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v1}, Lcom/android/server/SystemServiceManager;->sealStartedServices()V

    .line 3250
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3251
    return-void
.end method

.method private startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3314
    invoke-static {p1}, Lcom/android/server/attention/AttentionManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3315
    const-string v0, "SystemServer"

    const-string v1, "AttentionService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3316
    return-void

    .line 3319
    :cond_e
    const-string v0, "StartAttentionManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3320
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/attention/AttentionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3321
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3322
    return-void
.end method

.method private startBootstrapServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 19
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1113
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string/jumbo v3, "packagemanagermain"

    const-string/jumbo v4, "moveab"

    const-string/jumbo v0, "startBootstrapServices"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1117
    const-string v0, "StartWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1118
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v5

    .line 1119
    .local v5, "watchdog":Lcom/android/server/Watchdog;
    invoke-virtual {v5}, Lcom/android/server/Watchdog;->start()V

    .line 1120
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    invoke-static {v0, v5}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 1121
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1123
    const-string v0, "SystemServer"

    const-string v6, "Reading configuration..."

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1124
    const-string v6, "ReadingSystemConfig"

    .line 1125
    .local v6, "TAG_SYSTEM_CONFIG":Ljava/lang/String;
    const-string v7, "ReadingSystemConfig"

    invoke-virtual {v2, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1126
    new-instance v8, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;

    invoke-direct {v8}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v8, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    .line 1127
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1131
    const-string v7, "PlatformCompat"

    invoke-virtual {v2, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1132
    new-instance v7, Lcom/android/server/compat/PlatformCompat;

    iget-object v8, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/android/server/compat/PlatformCompat;-><init>(Landroid/content/Context;)V

    .line 1133
    .local v7, "platformCompat":Lcom/android/server/compat/PlatformCompat;
    const-string/jumbo v8, "platform_compat"

    invoke-static {v8, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1134
    new-instance v8, Lcom/android/server/compat/PlatformCompatNative;

    invoke-direct {v8, v7}, Lcom/android/server/compat/PlatformCompatNative;-><init>(Lcom/android/server/compat/PlatformCompat;)V

    const-string/jumbo v9, "platform_compat_native"

    invoke-static {v9, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1136
    const/4 v8, 0x0

    new-array v9, v8, [J

    invoke-static {v9}, Landroid/app/AppCompatCallbacks;->install([J)V

    .line 1137
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1142
    const-string v9, "StartFileIntegrityService"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1143
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/security/FileIntegrityService;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1144
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1149
    const-string v9, "StartInstaller"

    invoke-virtual {v2, v9}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1150
    iget-object v9, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/pm/Installer;

    invoke-virtual {v9, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v9

    check-cast v9, Lcom/android/server/pm/Installer;

    .line 1151
    .local v9, "installer":Lcom/android/server/pm/Installer;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1155
    const-string v10, "DeviceIdentifiersPolicyService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1156
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/os/DeviceIdentifiersPolicyService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1157
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1160
    const-string v10, "UriGrantsManagerService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1161
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/uri/UriGrantsManagerService$Lifecycle;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1162
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1164
    const-string v10, "StartPowerStatsService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1166
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/powerstats/PowerStatsService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1167
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1169
    const-string v10, "StartIStatsService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1170
    invoke-static {}, Lcom/android/server/SystemServer;->startIStatsService()V

    .line 1171
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1175
    const-string v10, "MemtrackProxyService"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1176
    invoke-static {}, Lcom/android/server/SystemServer;->startMemtrackProxyService()V

    .line 1177
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1180
    const-string v10, "StartActivityManager"

    invoke-virtual {v2, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1182
    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;

    .line 1183
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;->getService()Lcom/android/server/wm/ActivityTaskManagerService;

    move-result-object v10

    .line 1184
    .local v10, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v11, v10}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->startService(Lcom/android/server/SystemServiceManager;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 1186
    iget-object v12, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v11, v12}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 1187
    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11, v9}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 1188
    invoke-virtual {v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;

    move-result-object v11

    iput-object v11, v1, Lcom/android/server/SystemServer;->mWindowManagerGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 1189
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1192
    const-string v11, "StartDataLoaderManagerService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1193
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/pm/DataLoaderManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v11

    check-cast v11, Lcom/android/server/pm/DataLoaderManagerService;

    iput-object v11, v1, Lcom/android/server/SystemServer;->mDataLoaderManagerService:Lcom/android/server/pm/DataLoaderManagerService;

    .line 1195
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1198
    const-string v11, "StartIncrementalService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1199
    invoke-static {}, Lcom/android/server/SystemServer;->startIncrementalService()J

    move-result-wide v11

    iput-wide v11, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    .line 1200
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1206
    const-string v11, "StartPowerManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1207
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v11

    check-cast v11, Lcom/android/server/power/PowerManagerService;

    iput-object v11, v1, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 1208
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1210
    const-string v11, "StartThermalManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1211
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/ThermalManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1212
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1214
    const-string v11, "StartHintManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1215
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/power/hint/HintManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1216
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1220
    const-string v11, "InitPowerManagement"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1221
    iget-object v11, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v11}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 1222
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1225
    const-string v11, "StartRecoverySystemService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1226
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/recoverysystem/RecoverySystemService$Lifecycle;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1227
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1232
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/RescueParty;->registerHealthObserver(Landroid/content/Context;)V

    .line 1233
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v11}, Lcom/android/server/PackageWatchdog;->getInstance(Landroid/content/Context;)Lcom/android/server/PackageWatchdog;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/PackageWatchdog;->noteBoot()V

    .line 1236
    const-string v11, "StartLightsService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1239
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/SystemServerStub;->createLightsServices()Ljava/lang/Class;

    move-result-object v12

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1240
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1242
    const-string v11, "StartDisplayOffloadService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1244
    const-string v11, "config.enable_display_offload"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_19c

    .line 1245
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.google.android.clockwork.displayoffload.DisplayOffloadService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1247
    :cond_19c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1249
    const-string v11, "StartSidekickService"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1251
    const-string v11, "config.enable_sidekick_graphics"

    invoke-static {v11, v8}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_1b3

    .line 1252
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v12, "com.google.android.clockwork.sidekick.SidekickService"

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1254
    :cond_1b3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1258
    const-string v11, "StartDisplayManager"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1259
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v12, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v11, v12}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v11

    check-cast v11, Lcom/android/server/display/DisplayManagerService;

    iput-object v11, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 1260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1263
    const-string v11, "WaitForDisplay"

    invoke-virtual {v2, v11}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1264
    iget-object v11, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v12, 0x64

    invoke-virtual {v11, v2, v12}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1265
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1268
    invoke-static {}, Landroid/sysprop/VoldProperties;->decrypt()Ljava/util/Optional;

    move-result-object v11

    const-string v12, ""

    invoke-virtual {v11, v12}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 1269
    .local v11, "cryptState":Ljava/lang/String;
    const-string/jumbo v12, "trigger_restart_min_framework"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    const/4 v13, 0x1

    if-eqz v12, :cond_1f7

    .line 1270
    const-string v12, "Detected encryption in progress - only parsing core apps"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1271
    iput-boolean v13, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_206

    .line 1272
    :cond_1f7
    const-string v12, "1"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_206

    .line 1273
    const-string v12, "Device encrypted - only parsing core apps"

    invoke-static {v0, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    iput-boolean v13, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1278
    :cond_206
    :goto_206
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    const/16 v12, 0xf0

    if-nez v0, :cond_215

    .line 1279
    const/16 v0, 0xe

    .line 1282
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v14

    .line 1279
    invoke-static {v12, v0, v14, v15}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1285
    :cond_215
    const-string v0, "StartDomainVerificationService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1286
    new-instance v0, Lcom/android/server/pm/verify/domain/DomainVerificationService;

    iget-object v14, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1287
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v15

    invoke-direct {v0, v14, v15, v7}, Lcom/android/server/pm/verify/domain/DomainVerificationService;-><init>(Landroid/content/Context;Lcom/android/server/SystemConfig;Lcom/android/server/compat/PlatformCompat;)V

    move-object v14, v0

    .line 1288
    .local v14, "domainVerificationService":Lcom/android/server/pm/verify/domain/DomainVerificationService;
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v14}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1292
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1295
    .local v12, "pmsStartTime":J
    const-string v0, "StartPackageManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1297
    :try_start_237
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1298
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget v15, v1, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v15, :cond_246

    const/4 v15, 0x1

    goto :goto_247

    :cond_246
    move v15, v8

    :goto_247
    iget-boolean v8, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-static {v0, v9, v14, v15, v8}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;Lcom/android/server/pm/verify/domain/DomainVerificationService;ZZ)Landroid/util/Pair;

    move-result-object v0

    .line 1301
    .local v0, "pmsPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/IPackageManager;>;"
    iget-object v8, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/pm/PackageManagerService;

    iput-object v8, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 1302
    iget-object v8, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Landroid/content/pm/IPackageManager;

    .line 1304
    .local v8, "iPackageManager":Landroid/content/pm/IPackageManager;
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v15

    invoke-virtual {v15, v3}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V
    :try_end_25e
    .catchall {:try_start_237 .. :try_end_25e} :catchall_3b3

    .line 1307
    .end local v0    # "pmsPair":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/pm/PackageManagerService;Landroid/content/pm/IPackageManager;>;"
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1309
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1311
    nop

    .line 1314
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v15, v10

    move-object/from16 v16, v11

    .end local v10    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v11    # "cryptState":Ljava/lang/String;
    .local v15, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .local v16, "cryptState":Ljava/lang/String;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    invoke-virtual {v0, v12, v13, v10, v11}, Lcom/android/server/SystemServerStub;->markPmsScan(JJ)V

    .line 1319
    invoke-static {v8}, Lcom/android/server/pm/dex/SystemServerDexLoadReporter;->configureSystemServerDexReporter(Landroid/content/pm/IPackageManager;)V

    .line 1321
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 1322
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 1323
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1324
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    if-nez v0, :cond_2a6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/SystemServer;->isFirstBootOrUpgrade()Z

    move-result v0

    if-nez v0, :cond_2a6

    .line 1325
    const/16 v0, 0xf

    .line 1328
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 1325
    const/16 v3, 0xf0

    invoke-static {v3, v0, v10, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIJ)V

    .line 1333
    :cond_2a6
    iget-boolean v0, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_2fa

    .line 1334
    const-string v0, "config.disable_otadexopt"

    const/4 v3, 0x0

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    .line 1336
    .local v10, "disableOtaDexopt":Z
    if-nez v10, :cond_2fa

    .line 1337
    const-string v0, "StartOtaDexOptService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1339
    :try_start_2b8
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1341
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1343
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-static {v0, v3}, Lcom/android/server/pm/OtaDexoptService;->main(Landroid/content/Context;Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/pm/OtaDexoptService;
    :try_end_2cd
    .catchall {:try_start_2b8 .. :try_end_2cd} :catchall_2ce

    goto :goto_2d5

    .line 1344
    :catchall_2ce
    move-exception v0

    .line 1345
    .local v0, "e":Ljava/lang/Throwable;
    :try_start_2cf
    const-string/jumbo v3, "starting OtaDexOptService"

    invoke-direct {v1, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2d5
    .catchall {:try_start_2cf .. :try_end_2d5} :catchall_2e7

    .line 1347
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2d5
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1349
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1352
    goto :goto_2fa

    .line 1347
    :catchall_2e7
    move-exception v0

    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1349
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1351
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1352
    throw v0

    .line 1356
    .end local v10    # "disableOtaDexopt":Z
    :cond_2fa
    :goto_2fa
    const-string v0, "StartUserManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1357
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v3, Lcom/android/server/pm/UserManagerService$LifeCycle;

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1358
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1361
    const-string v0, "InitAttributerCache"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1362
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/AttributeCache;->init(Landroid/content/Context;)V

    .line 1363
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1366
    const-string v0, "SetSystemProcess"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1367
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 1368
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1371
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v7, v0}, Lcom/android/server/compat/PlatformCompat;->registerPackageReceiver(Landroid/content/Context;)V

    .line 1375
    const-string v0, "InitWatchdog"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1376
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5, v0, v3}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 1377
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1381
    iget-object v0, v1, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v0}, Lcom/android/server/display/DisplayManagerService;->setupSchedulerPolicies()V

    .line 1384
    const-string v0, "StartOverlayManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1385
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v3, Lcom/android/server/om/OverlayManagerService;

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/android/server/om/OverlayManagerService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1386
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1389
    const-string v0, "StartResourcesManagerService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1390
    new-instance v0, Lcom/android/server/resources/ResourcesManagerService;

    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;-><init>(Landroid/content/Context;)V

    .line 1391
    .local v0, "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v3}, Lcom/android/server/resources/ResourcesManagerService;->setActivityManagerService(Lcom/android/server/am/ActivityManagerService;)V

    .line 1392
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v3, v0}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1393
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1395
    const-string v3, "StartSensorPrivacyService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1396
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v4, Lcom/android/server/sensorprivacy/SensorPrivacyService;

    iget-object v10, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v4, v10}, Lcom/android/server/sensorprivacy/SensorPrivacyService;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 1397
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1399
    const-string/jumbo v3, "persist.sys.displayinset.top"

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_397

    .line 1401
    iget-object v3, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->updateSystemUiContext()V

    .line 1402
    const-class v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/display/DisplayManagerInternal;

    invoke-virtual {v3}, Landroid/hardware/display/DisplayManagerInternal;->onOverlayChanged()V

    .line 1407
    :cond_397
    const-string v3, "StartSensorService"

    invoke-virtual {v2, v3}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1408
    iget-object v3, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v4, Lcom/android/server/sensors/SensorService;

    invoke-virtual {v3, v4}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1409
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1412
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v3

    iget-object v4, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v3, v4, v9}, Lcom/android/server/SystemServerStub;->addMiuiRestoreManagerService(Landroid/content/Context;Lcom/android/server/pm/Installer;)V

    .line 1415
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1416
    return-void

    .line 1307
    .end local v0    # "resourcesService":Lcom/android/server/resources/ResourcesManagerService;
    .end local v8    # "iPackageManager":Landroid/content/pm/IPackageManager;
    .end local v15    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v16    # "cryptState":Ljava/lang/String;
    .local v10, "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local v11    # "cryptState":Ljava/lang/String;
    :catchall_3b3
    move-exception v0

    move-object v15, v10

    move-object/from16 v16, v11

    .end local v10    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local v11    # "cryptState":Ljava/lang/String;
    .restart local v15    # "atm":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local v16    # "cryptState":Ljava/lang/String;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1309
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1311
    throw v0
.end method

.method private startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3280
    const/4 v0, 0x0

    .line 3281
    .local v0, "explicitlyEnabled":Z
    const-string v1, "content_capture"

    const-string/jumbo v2, "service_explicitly_enabled"

    invoke-static {v1, v2}, Landroid/provider/DeviceConfig;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3283
    .local v1, "settings":Ljava/lang/String;
    const-string v2, "SystemServer"

    if-eqz v1, :cond_28

    const-string v3, "default"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_28

    .line 3284
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 3285
    if-eqz v0, :cond_22

    .line 3286
    const-string v3, "ContentCaptureService explicitly enabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_28

    .line 3288
    :cond_22
    const-string v3, "ContentCaptureService explicitly disabled by DeviceConfig"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3289
    return-void

    .line 3294
    :cond_28
    :goto_28
    if-nez v0, :cond_39

    .line 3295
    const v3, 0x104024d

    invoke-direct {p0, p1, v3}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v3

    if-nez v3, :cond_39

    .line 3296
    const-string v3, "ContentCaptureService disabled because resource is not overlaid"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3297
    return-void

    .line 3301
    :cond_39
    const-string v2, "StartContentCaptureService"

    invoke-virtual {p2, v2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3302
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentcapture.ContentCaptureManagerService"

    invoke-virtual {v2, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3304
    const-class v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3305
    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/contentcapture/ContentCaptureManagerInternal;

    .line 3306
    .local v2, "ccmi":Lcom/android/server/contentcapture/ContentCaptureManagerInternal;
    if-eqz v2, :cond_56

    iget-object v3, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v3, :cond_56

    .line 3307
    invoke-virtual {v3, v2}, Lcom/android/server/am/ActivityManagerService;->setContentCaptureManager(Lcom/android/server/contentcapture/ContentCaptureManagerInternal;)V

    .line 3310
    :cond_56
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3311
    return-void
.end method

.method private startCoreServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 4
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1422
    const-string/jumbo v0, "startCoreServices"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1425
    const-string v0, "StartSystemConfigService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1426
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SystemConfigService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1427
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1429
    const-string v0, "StartBatteryService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1431
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1432
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1435
    const-string v0, "StartUsageService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1436
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1437
    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    const-class v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1438
    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/usage/UsageStatsManagerInternal;

    .line 1437
    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 1439
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1442
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.webview"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    .line 1443
    const-string v0, "StartWebViewUpdateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1444
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/webkit/WebViewUpdateService;

    iput-object v0, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    .line 1445
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1449
    :cond_5e
    const-string v0, "StartCachedDeviceStateService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1450
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/CachedDeviceStateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1451
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1454
    const-string v0, "StartBinderCallsStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1455
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BinderCallsStatsService$LifeCycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1456
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1459
    const-string v0, "StartLooperStatsService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1460
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/LooperStatsService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1461
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1464
    const-string v0, "StartRollbackManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1465
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.rollback.RollbackManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1466
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1469
    const-string v0, "StartNativeTombstoneManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1470
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/NativeTombstoneManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1471
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1474
    const-string v0, "StartBugreportManagerService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1475
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/os/BugreportManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1476
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1479
    const-string v0, "GpuService"

    invoke-virtual {p1, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1480
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/gpu/GpuService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1481
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1483
    invoke-virtual {p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1484
    return-void
.end method

.method private static native startHidlServices()V
.end method

.method private static native startIStatsService()V
.end method

.method private static native startIncrementalService()J
.end method

.method private static native startMemtrackProxyService()V
.end method

.method private startOtherServices(Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 62
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 1490
    move-object/from16 v6, p0

    move-object/from16 v5, p1

    const-string/jumbo v0, "startOtherServices"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1491
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0}, Lcom/android/server/SystemServiceManager;->updateOtherServicesStartIndex()V

    .line 1493
    iget-object v4, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 1494
    .local v4, "context":Landroid/content/Context;
    const/4 v1, 0x0

    .line 1495
    .local v1, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    const/4 v2, 0x0

    .line 1496
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    const/4 v3, 0x0

    .line 1497
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v13, 0x0

    .line 1498
    .local v13, "vpnManager":Lcom/android/server/VpnManagerService;
    const/4 v14, 0x0

    .line 1499
    .local v14, "vcnManagement":Lcom/android/server/VcnManagementService;
    const/4 v15, 0x0

    .line 1500
    .local v15, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v16, 0x0

    .line 1501
    .local v16, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v17, 0x0

    .line 1502
    .local v17, "serial":Lcom/android/server/SerialService;
    const/16 v18, 0x0

    .line 1503
    .local v18, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/4 v7, 0x0

    .line 1504
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    const/4 v8, 0x0

    .line 1505
    .local v8, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/4 v9, 0x0

    .line 1506
    .local v9, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v19, 0x0

    .line 1507
    .local v19, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v20, 0x0

    .line 1508
    .local v20, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    const/16 v21, 0x0

    .line 1509
    .local v21, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    const/16 v22, 0x0

    .line 1510
    .local v22, "wigigP2pService":Ljava/lang/Object;
    const/16 v23, 0x0

    .line 1512
    .local v23, "wigigService":Ljava/lang/Object;
    const-string v0, "config.disable_systemtextclassifier"

    const/4 v12, 0x0

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v24

    .line 1515
    .local v24, "disableSystemTextClassifier":Z
    const-string v0, "config.disable_networktime"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v25

    .line 1517
    .local v25, "disableNetworkTime":Z
    const-string v0, "config.disable_cameraservice"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v26

    .line 1519
    .local v26, "disableCameraService":Z
    const-string v0, "config.enable_lefty"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v27

    .line 1521
    .local v27, "enableLeftyService":Z
    const-string/jumbo v0, "ro.boot.qemu"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v10, "1"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v28

    .line 1522
    .local v28, "isEmulator":Z
    const-string/jumbo v0, "persist.vendor.wigig.enable"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v29

    .line 1524
    .local v29, "enableWigig":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.type.watch"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v30

    .line 1527
    .local v30, "isWatch":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v10, "org.chromium.arc"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v31

    .line 1530
    .local v31, "isArc":Z
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v32

    .line 1534
    .local v32, "enableVrService":Z
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_89

    const-string v0, "debug.crash_system"

    invoke-static {v0, v12}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_83

    goto :goto_89

    .line 1535
    :cond_83
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 1539
    :cond_89
    :goto_89
    :try_start_89
    const-string v0, "SecondaryZygotePreload"

    .line 1544
    .local v0, "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    new-instance v10, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;

    invoke-direct {v10}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda5;-><init>()V

    const-string v11, "SecondaryZygotePreload"

    invoke-static {v10, v11}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v10

    iput-object v10, v6, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 1559
    const-string v10, "StartKeyAttestationApplicationIdProviderService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1560
    const-string/jumbo v10, "sec_key_att_app_id_provider"

    new-instance v11, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;

    invoke-direct {v11, v4}, Lcom/android/server/security/KeyAttestationApplicationIdProviderService;-><init>(Landroid/content/Context;)V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1562
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1564
    const-string v10, "StartKeyChainSystemService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1565
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/security/KeyChainSystemService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1566
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1568
    const-string v10, "StartBinaryTransparencyService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1569
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/BinaryTransparencyService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1570
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1572
    const-string v10, "StartSchedulingPolicyService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1573
    const-string/jumbo v10, "scheduling_policy"

    new-instance v11, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v11}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v10, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1574
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1578
    iget-object v10, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.microphone"

    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10
    :try_end_e4
    .catchall {:try_start_89 .. :try_end_e4} :catchall_1481

    if-nez v10, :cond_102

    :try_start_e6
    iget-object v10, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.software.telecom"

    .line 1579
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_102

    iget-object v10, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v11, "android.hardware.telephony"

    .line 1580
    invoke-virtual {v10, v11}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10
    :try_end_f8
    .catchall {:try_start_e6 .. :try_end_f8} :catchall_fb

    if-eqz v10, :cond_111

    goto :goto_102

    .line 1760
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_fb
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    goto/16 :goto_1486

    .line 1581
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_102
    :goto_102
    :try_start_102
    const-string v10, "StartTelecomLoaderService"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1582
    iget-object v10, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v11, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v10, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1583
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1586
    :cond_111
    const-string v10, "StartTelephonyRegistry"

    invoke-virtual {v5, v10}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1587
    new-instance v10, Lcom/android/server/TelephonyRegistry;

    new-instance v11, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;

    invoke-direct {v11}, Lcom/android/server/TelephonyRegistry$ConfigurationProvider;-><init>()V

    invoke-direct {v10, v4, v11}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;Lcom/android/server/TelephonyRegistry$ConfigurationProvider;)V
    :try_end_120
    .catchall {:try_start_102 .. :try_end_120} :catchall_1481

    move-object v11, v10

    .line 1589
    .end local v8    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_121
    const-string/jumbo v8, "telephony.registry"

    invoke-static {v8, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1590
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1592
    const-string v8, "StartEntropyMixer"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1593
    new-instance v8, Lcom/android/server/EntropyMixer;

    invoke-direct {v8, v4}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V

    iput-object v8, v6, Lcom/android/server/SystemServer;->mEntropyMixer:Lcom/android/server/EntropyMixer;

    .line 1594
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1596
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    iput-object v8, v6, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1599
    const-string v8, "StartAccountManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1600
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.accounts.AccountManagerService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1601
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1603
    const-string v8, "StartContentService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1604
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.server.content.ContentService$Lifecycle"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1605
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1607
    const-string v8, "InstallSystemProviders"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1608
    iget-object v8, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v8}, Lcom/android/server/am/ActivityManagerService;->getContentProviderHelper()Lcom/android/server/am/ContentProviderHelper;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/am/ContentProviderHelper;->installSystemProviders()V

    .line 1610
    invoke-static {}, Landroid/database/sqlite/SQLiteCompatibilityWalFlags;->reset()V

    .line 1611
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1613
    const-string v8, "UpdateWatchdogTimeout"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1614
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, v4}, Lcom/android/server/Watchdog;->registerSettingsObserver(Landroid/content/Context;)V

    .line 1615
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1620
    const-string v8, "StartDropBoxManager"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1621
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/DropBoxManagerService;

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1622
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1625
    const-string v8, "StartRoleManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1626
    const-class v8, Lcom/android/server/role/RoleServicePlatformHelper;

    new-instance v10, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;

    iget-object v12, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v10, v12}, Lcom/android/server/policy/role/RoleServicePlatformHelperImpl;-><init>(Landroid/content/Context;)V

    invoke-static {v8, v10}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1628
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v10, "com.android.role.RoleService"

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1629
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1631
    const-string v8, "StartVibratorManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1632
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v10, Lcom/android/server/vibrator/VibratorManagerService$Lifecycle;

    invoke-virtual {v8, v10}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1633
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1635
    const-string v8, "StartDynamicSystemService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1636
    new-instance v8, Lcom/android/server/DynamicSystemService;

    invoke-direct {v8, v4}, Lcom/android/server/DynamicSystemService;-><init>(Landroid/content/Context;)V
    :try_end_1c3
    .catchall {:try_start_121 .. :try_end_1c3} :catchall_1477

    move-object v1, v8

    .line 1637
    :try_start_1c4
    const-string v8, "dynamic_system"

    invoke-static {v8, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1638
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1cc
    .catchall {:try_start_1c4 .. :try_end_1cc} :catchall_146b

    .line 1640
    if-nez v30, :cond_1ec

    .line 1641
    :try_start_1ce
    const-string v8, "StartConsumerIrService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1642
    new-instance v8, Lcom/android/server/ConsumerIrService;

    invoke-direct {v8, v4}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V

    move-object v9, v8

    .line 1643
    const-string v8, "consumer_ir"

    invoke-static {v8, v9}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1644
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_1e1
    .catchall {:try_start_1ce .. :try_end_1e1} :catchall_1e4

    move-object/from16 v34, v9

    goto :goto_1ee

    .line 1760
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_1e4
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object v8, v11

    goto/16 :goto_1486

    .line 1640
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_1ec
    move-object/from16 v34, v9

    .line 1648
    .end local v9    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v34, "consumerIr":Lcom/android/server/ConsumerIrService;
    :goto_1ee
    :try_start_1ee
    const-string v8, "StartResourceEconomy"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1649
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.tare.InternalResourceService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1650
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1653
    const-string v8, "StartAlarmManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1654
    iget-object v8, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v9, "com.android.server.alarm.AlarmManagerService"

    invoke-virtual {v8, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1655
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1657
    const-string v8, "StartInputManagerService"

    invoke-virtual {v5, v8}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1658
    new-instance v8, Lcom/android/server/input/InputManagerService;

    invoke-direct {v8, v4}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_216
    .catchall {:try_start_1ee .. :try_end_216} :catchall_145d

    move-object v12, v8

    .line 1659
    .end local v7    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_217
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1661
    const-string v7, "DeviceStateManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1662
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/devicestate/DeviceStateManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1663
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_229
    .catchall {:try_start_217 .. :try_end_229} :catchall_144b

    .line 1665
    if-nez v26, :cond_246

    .line 1666
    :try_start_22b
    const-string v7, "StartCameraServiceProxy"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1667
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/camera/CameraServiceProxy;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1668
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_23a
    .catchall {:try_start_22b .. :try_end_23a} :catchall_23b

    goto :goto_246

    .line 1760
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_23b
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object v8, v11

    move-object v7, v12

    move-object/from16 v9, v34

    goto/16 :goto_1486

    .line 1671
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_246
    :goto_246
    :try_start_246
    const-string v7, "StartWindowManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1673
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v8, 0xc8

    invoke-virtual {v7, v5, v8}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 1674
    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mFirstBoot:Z

    const/4 v10, 0x1

    if-nez v7, :cond_259

    move v9, v10

    goto :goto_25a

    :cond_259
    const/4 v9, 0x0

    :goto_25a
    iget-boolean v8, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 1676
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/SystemServerStub;->createPhoneWindowManager()Lcom/android/server/policy/PhoneWindowManager;

    move-result-object v35

    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;
    :try_end_268
    .catchall {:try_start_246 .. :try_end_268} :catchall_144b

    .line 1674
    move-object/from16 v36, v7

    move-object v7, v4

    move/from16 v37, v8

    move-object v8, v12

    move-object/from16 v38, v1

    move v1, v10

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .local v38, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    move/from16 v10, v37

    move-object/from16 v37, v11

    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v37, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v11, v35

    move-object/from16 v39, v12

    const/4 v1, 0x0

    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v39, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v12, v36

    :try_start_27c
    invoke-static/range {v7 .. v12}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZLcom/android/server/policy/WindowManagerPolicy;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v7
    :try_end_280
    .catchall {:try_start_27c .. :try_end_280} :catchall_143b

    move-object v10, v7

    .line 1677
    .end local v16    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v10, "wm":Lcom/android/server/wm/WindowManagerService;
    :try_start_281
    const-string/jumbo v7, "window"

    const/16 v8, 0x11

    invoke-static {v7, v10, v1, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1679
    const-string/jumbo v7, "input"
    :try_end_28c
    .catchall {:try_start_281 .. :try_end_28c} :catchall_1426

    move-object/from16 v9, v39

    const/4 v8, 0x1

    .end local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v9, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_28f
    invoke-static {v7, v9, v1, v8}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;ZI)V

    .line 1681
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1683
    const-string v7, "SetWindowManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1684
    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v10}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1685
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1687
    const-string v7, "WindowManagerServiceOnInitReady"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1688
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->onInitReady()V

    .line 1689
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1694
    new-instance v7, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;

    invoke-direct {v7}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda6;-><init>()V

    const-string v8, "StartHidlServices"

    invoke-static {v7, v8}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;
    :try_end_2b7
    .catchall {:try_start_28f .. :try_end_2b7} :catchall_1411

    .line 1701
    if-nez v30, :cond_2db

    if-eqz v32, :cond_2db

    .line 1702
    :try_start_2bb
    const-string v7, "StartVrManagerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1703
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/vr/VrManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1704
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_2ca
    .catchall {:try_start_2bb .. :try_end_2ca} :catchall_2cb

    goto :goto_2db

    .line 1760
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :catchall_2cb
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object v7, v9

    move-object/from16 v16, v10

    move-object/from16 v9, v34

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    goto/16 :goto_1486

    .line 1707
    .restart local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    :cond_2db
    :goto_2db
    :try_start_2db
    const-string v7, "StartInputManager"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1708
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->getInputManagerCallback()Lcom/android/server/wm/InputManagerCallback;

    move-result-object v7

    invoke-virtual {v9, v7}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 1709
    invoke-virtual {v9}, Lcom/android/server/input/InputManagerService;->start()V

    .line 1710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1713
    const-string v7, "DisplayManagerWindowManagerAndInputReady"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1714
    iget-object v7, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v7}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 1715
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1717
    iget v7, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I
    :try_end_2fc
    .catchall {:try_start_2db .. :try_end_2fc} :catchall_1411

    const/4 v8, 0x1

    if-ne v7, v8, :cond_307

    .line 1718
    :try_start_2ff
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (factory test)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_306
    .catchall {:try_start_2ff .. :try_end_306} :catchall_2cb

    goto :goto_32a

    .line 1719
    :cond_307
    :try_start_307
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    const-string v8, "android.hardware.bluetooth"

    .line 1720
    invoke-virtual {v7, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v7
    :try_end_311
    .catchall {:try_start_307 .. :try_end_311} :catchall_1411

    if-nez v7, :cond_31b

    .line 1721
    :try_start_313
    const-string v7, "SystemServer"

    const-string v8, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_31a
    .catchall {:try_start_313 .. :try_end_31a} :catchall_2cb

    goto :goto_32a

    .line 1723
    :cond_31b
    :try_start_31b
    const-string v7, "StartBluetoothService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1724
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.bluetooth.BluetoothService"

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1725
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1728
    :goto_32a
    const-string v7, "IpConnectivityMetrics"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1729
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.connectivity.IpConnectivityMetrics"

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1730
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1732
    const-string v7, "NetworkWatchlistService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1733
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/net/watchlist/NetworkWatchlistService$Lifecycle;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1734
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1736
    const-string v7, "PinnerService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1737
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/PinnerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1740
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/ActivityTriggerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1742
    sget-boolean v7, Landroid/os/Build;->IS_DEBUGGABLE:Z
    :try_end_360
    .catchall {:try_start_31b .. :try_end_360} :catchall_1411

    if-eqz v7, :cond_377

    :try_start_362
    invoke-static {}, Lcom/android/server/profcollect/ProfcollectForwardingService;->enabled()Z

    move-result v7

    if-eqz v7, :cond_377

    .line 1743
    const-string v7, "ProfcollectForwardingService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1744
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/profcollect/ProfcollectForwardingService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1745
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_377
    .catchall {:try_start_362 .. :try_end_377} :catchall_2cb

    .line 1748
    :cond_377
    :try_start_377
    const-string v7, "SignedConfigService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1749
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/android/server/signedconfig/SignedConfigService;->registerUpdateReceiver(Landroid/content/Context;)V

    .line 1750
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1752
    const-string v7, "AppIntegrityService"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1753
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/integrity/AppIntegrityManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1754
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1756
    const-string v7, "StartLogcatManager"

    invoke-virtual {v5, v7}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1757
    iget-object v7, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/logcat/LogcatManagerService;

    invoke-virtual {v7, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1758
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V
    :try_end_3a2
    .catchall {:try_start_377 .. :try_end_3a2} :catchall_1411

    .line 1764
    .end local v0    # "SECONDARY_ZYGOTE_PRELOAD":Ljava/lang/String;
    nop

    .line 1768
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v12

    .line 1769
    .local v12, "safeMode":Z
    if-eqz v12, :cond_3b4

    .line 1774
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "airplane_mode_on"

    const/4 v8, 0x1

    invoke-static {v0, v7, v8}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3ca

    .line 1776
    :cond_3b4
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x1110031

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3ca

    .line 1777
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v7, "airplane_mode_on"

    invoke-static {v0, v7, v1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1781
    :cond_3ca
    :goto_3ca
    const/4 v7, 0x0

    .line 1782
    .local v7, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/4 v8, 0x0

    .line 1783
    .local v8, "notification":Landroid/app/INotificationManager;
    const/4 v11, 0x0

    .line 1784
    .local v11, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v16, 0x0

    .line 1785
    .local v16, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    const/16 v33, 0x0

    .line 1788
    .local v33, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3fc

    .line 1789
    const-string v0, "StartInputMethodManagerLifecycle"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1790
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/inputmethod/InputMethodManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1791
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1793
    const-string v0, "StartAccessibilityManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1795
    :try_start_3ea
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.accessibility.AccessibilityManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_3f1
    .catchall {:try_start_3ea .. :try_end_3f1} :catchall_3f2

    .line 1798
    goto :goto_3f9

    .line 1796
    :catchall_3f2
    move-exception v0

    .line 1797
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting Accessibility Manager"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1799
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_3f9
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1802
    :cond_3fc
    const-string v0, "MakeDisplayReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1804
    :try_start_401
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_404
    .catchall {:try_start_401 .. :try_end_404} :catchall_405

    .line 1807
    goto :goto_40e

    .line 1805
    :catchall_405
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 1806
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making display ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1808
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_40e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1810
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_462

    .line 1811
    const-string v0, "0"

    const-string/jumbo v1, "system_init.startmountservice"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_462

    .line 1812
    const-string v0, "StartStorageManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1818
    :try_start_42a
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.StorageManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1819
    const-string/jumbo v0, "mount"

    .line 1820
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1819
    invoke-static {v0}, Landroid/os/storage/IStorageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IStorageManager;

    move-result-object v0
    :try_end_43c
    .catchall {:try_start_42a .. :try_end_43c} :catchall_43e

    move-object v2, v0

    .line 1823
    goto :goto_445

    .line 1821
    :catchall_43e
    move-exception v0

    .line 1822
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting StorageManagerService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1824
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_445
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1826
    const-string v0, "StartStorageStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1828
    :try_start_44d
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.usage.StorageStatsService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_454
    .catchall {:try_start_44d .. :try_end_454} :catchall_455

    .line 1831
    goto :goto_45c

    .line 1829
    :catchall_455
    move-exception v0

    .line 1830
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting StorageStatsService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1832
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_45c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v39, v2

    goto :goto_464

    .line 1838
    :cond_462
    move-object/from16 v39, v2

    .end local v2    # "storageManager":Landroid/os/storage/IStorageManager;
    .local v39, "storageManager":Landroid/os/storage/IStorageManager;
    :goto_464
    const-string v0, "StartUiModeManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1839
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1840
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1842
    const-string v0, "StartLocaleManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1844
    :try_start_478
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/locales/LocaleManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_47f
    .catchall {:try_start_478 .. :try_end_47f} :catchall_480

    .line 1847
    goto :goto_487

    .line 1845
    :catchall_480
    move-exception v0

    .line 1846
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting LocaleManagerService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1848
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_487
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1851
    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_4f8

    .line 1852
    const-string v0, "UpdatePackagesIfNeeded"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1854
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1856
    .local v1, "bootDexoptStartTime":J
    :try_start_497
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0
    :try_end_49b
    .catchall {:try_start_497 .. :try_end_49b} :catchall_4b3

    move-object/from16 v40, v3

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v40, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_49d
    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->pauseWatchingCurrentThread(Ljava/lang/String;)V

    .line 1858
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/ScoutStub;->pauseScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1860
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->updatePackagesIfNeeded()V
    :try_end_4b0
    .catchall {:try_start_49d .. :try_end_4b0} :catchall_4b1

    goto :goto_4bc

    .line 1861
    :catchall_4b1
    move-exception v0

    goto :goto_4b6

    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_4b3
    move-exception v0

    move-object/from16 v40, v3

    .line 1862
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_4b6
    :try_start_4b6
    const-string/jumbo v3, "update packages"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4bc
    .catchall {:try_start_4b6 .. :try_end_4bc} :catchall_4e1

    .line 1864
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4bc
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1866
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v0

    const-string v3, "dexopt"

    invoke-virtual {v0, v3}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1868
    nop

    .line 1869
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1871
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    move-object v3, v7

    move-object/from16 v41, v8

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v41, "notification":Landroid/app/INotificationManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    invoke-virtual {v0, v1, v2, v7, v8}, Lcom/android/server/SystemServerStub;->markBootDexopt(JJ)V

    goto :goto_4fd

    .line 1864
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :catchall_4e1
    move-exception v0

    move-object v3, v7

    move-object/from16 v41, v8

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v41    # "notification":Landroid/app/INotificationManager;
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v7

    const-string v8, "dexopt"

    invoke-virtual {v7, v8}, Lcom/android/server/Watchdog;->resumeWatchingCurrentThread(Ljava/lang/String;)V

    .line 1866
    invoke-static {}, Lcom/android/server/ScoutStub;->getInstance()Lcom/android/server/ScoutStub;

    move-result-object v7

    const-string v8, "dexopt"

    invoke-virtual {v7, v8}, Lcom/android/server/ScoutStub;->resumeScoutWatchingCurrentThread(Ljava/lang/String;)V

    .line 1868
    throw v0

    .line 1851
    .end local v1    # "bootDexoptStartTime":J
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v8    # "notification":Landroid/app/INotificationManager;
    :cond_4f8
    move-object/from16 v40, v3

    move-object v3, v7

    move-object/from16 v41, v8

    .line 1885
    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .local v3, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v41    # "notification":Landroid/app/INotificationManager;
    :goto_4fd
    iget v0, v6, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_523

    .line 1886
    const/4 v0, 0x0

    move-object/from16 v43, v0

    move-object/from16 v42, v11

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    move-object/from16 v49, v17

    move-object/from16 v50, v18

    move-object/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v2, v23

    move-object/from16 v53, v33

    move-object/from16 v44, v40

    move-object/from16 v33, v3

    move-object/from16 v3, v22

    .local v0, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    goto/16 :goto_fbc

    .line 1888
    .end local v0    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :cond_523
    const-string v0, "StartLockSettingsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1890
    :try_start_528
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.locksettings.LockSettingsService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1891
    const-string/jumbo v0, "lock_settings"

    .line 1892
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1891
    invoke-static {v0}, Lcom/android/internal/widget/ILockSettings$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v0
    :try_end_53a
    .catchall {:try_start_528 .. :try_end_53a} :catchall_53d

    .line 1895
    .end local v16    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v0, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    move-object/from16 v16, v0

    goto :goto_544

    .line 1893
    .end local v0    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .restart local v16    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    :catchall_53d
    move-exception v0

    .line 1894
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting LockSettingsService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1896
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_544
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1898
    const-string/jumbo v0, "ro.frp.pst"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    move v1, v0

    .line 1899
    .local v1, "hasPdb":Z
    if-eqz v1, :cond_568

    .line 1900
    const-string v0, "StartPersistentDataBlock"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1901
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1902
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1905
    :cond_568
    const-string v0, "StartTestHarnessMode"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1906
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/testharness/TestHarnessModeService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1907
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1909
    if-nez v1, :cond_57f

    invoke-static {}, Lcom/android/server/oemlock/OemLockService;->isHalPresent()Z

    move-result v0

    if-eqz v0, :cond_58e

    .line 1911
    :cond_57f
    const-string v0, "StartOemLockService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1912
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/oemlock/OemLockService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1913
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1916
    :cond_58e
    const-string v0, "StartDeviceIdleController"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1917
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.DeviceIdleController"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1918
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1922
    const-string v0, "StartDevicePolicyManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1923
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    .line 1924
    .local v2, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1926
    if-nez v30, :cond_5d2

    .line 1927
    const-string v0, "StartStatusBarManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1929
    :try_start_5b7
    new-instance v0, Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-direct {v0, v4}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;)V
    :try_end_5bc
    .catchall {:try_start_5b7 .. :try_end_5bc} :catchall_5c6

    move-object v7, v0

    .line 1930
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_5bd
    const-string/jumbo v0, "statusbar"

    invoke-static {v0, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_5c3
    .catchall {:try_start_5bd .. :try_end_5c3} :catchall_5c4

    .line 1933
    goto :goto_5ce

    .line 1931
    :catchall_5c4
    move-exception v0

    goto :goto_5c8

    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catchall_5c6
    move-exception v0

    move-object v7, v3

    .line 1932
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_5c8
    const-string/jumbo v3, "starting StatusBarManagerService"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 1934
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_5ce
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_5d3

    .line 1926
    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_5d2
    move-object v7, v3

    .line 1937
    .end local v3    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :goto_5d3
    const v0, 0x1040252

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_5ec

    .line 1939
    const-string v0, "StartMusicRecognitionManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1940
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.musicrecognition.MusicRecognitionManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1941
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_5f3

    .line 1943
    :cond_5ec
    const-string v0, "SystemServer"

    const-string v3, "MusicRecognitionManagerService not defined by OEM or disabled by flag"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1947
    :goto_5f3
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startContentCaptureService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1948
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startAttentionService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1949
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1950
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1951
    invoke-direct {v6, v4, v5}, Lcom/android/server/SystemServer;->startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1952
    invoke-direct/range {p0 .. p1}, Lcom/android/server/SystemServer;->startAmbientContextService(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 1955
    const-string v0, "StartSpeechRecognitionManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1956
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.speech.SpeechRecognitionManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1957
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1960
    const v0, 0x1040246

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_62d

    .line 1961
    const-string v0, "StartAppPredictionService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1962
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.appprediction.AppPredictionManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1963
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_634

    .line 1965
    :cond_62d
    const-string v0, "SystemServer"

    const-string v3, "AppPredictionService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1969
    :goto_634
    const v0, 0x104024e

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_64d

    .line 1970
    const-string v0, "StartContentSuggestionsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1971
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.contentsuggestions.ContentSuggestionsManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1972
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_654

    .line 1974
    :cond_64d
    const-string v0, "SystemServer"

    const-string v3, "ContentSuggestionsService not defined by OEM"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1979
    :goto_654
    const-string v0, "StartSearchUiService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1980
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.searchui.SearchUiManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1981
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1985
    const-string v0, "StartSmartspaceService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1986
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.smartspace.SmartspaceManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1987
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1991
    const-string v0, "StartCloudSearchService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1992
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v3, "com.android.server.cloudsearch.CloudSearchManagerService"

    invoke-virtual {v0, v3}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 1993
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 1995
    const-string v0, "InitConnectivityModuleConnector"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 1997
    :try_start_686
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/net/ConnectivityModuleConnector;->init(Landroid/content/Context;)V
    :try_end_68d
    .catchall {:try_start_686 .. :try_end_68d} :catchall_68e

    .line 2000
    goto :goto_695

    .line 1998
    :catchall_68e
    move-exception v0

    .line 1999
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing ConnectivityModuleConnector"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2001
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_695
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2003
    const-string v0, "InitNetworkStackClient"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2005
    :try_start_69d
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->init()V
    :try_end_6a4
    .catchall {:try_start_69d .. :try_end_6a4} :catchall_6a5

    .line 2008
    goto :goto_6ac

    .line 2006
    :catchall_6a5
    move-exception v0

    .line 2007
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v3, "initializing NetworkStackClient"

    invoke-direct {v6, v3, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2009
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6ac
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2011
    const-string v0, "StartNetworkManagementService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2013
    :try_start_6b4
    invoke-static {v4}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v0
    :try_end_6b8
    .catchall {:try_start_6b4 .. :try_end_6b8} :catchall_6c2

    move-object v3, v0

    .line 2014
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_6b9
    const-string/jumbo v0, "network_management"

    invoke-static {v0, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_6bf
    .catchall {:try_start_6b9 .. :try_end_6bf} :catchall_6c0

    .line 2017
    goto :goto_6cb

    .line 2015
    :catchall_6c0
    move-exception v0

    goto :goto_6c5

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_6c2
    move-exception v0

    move-object/from16 v3, v40

    .line 2016
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_6c5
    const-string/jumbo v8, "starting NetworkManagement Service"

    invoke-direct {v6, v8, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2018
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_6cb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2020
    const-string v0, "StartFontManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2021
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v8, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;

    invoke-direct {v8, v4, v12}, Lcom/android/server/graphics/fonts/FontManagerService$Lifecycle;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Lcom/android/server/SystemService;)V

    .line 2022
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2024
    const-string v0, "StartTextServicesManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2025
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textservices/TextServicesManagerService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2026
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2028
    if-nez v24, :cond_700

    .line 2029
    const-string v0, "StartTextClassificationManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2030
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/textclassifier/TextClassificationManagerService$Lifecycle;

    .line 2031
    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2032
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2035
    :cond_700
    const-string v0, "StartNetworkScoreService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2036
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v8, Lcom/android/server/NetworkScoreService$Lifecycle;

    invoke-virtual {v0, v8}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2037
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2039
    const-string v0, "StartNetworkStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2042
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v8, "com.android.server.NetworkStatsServiceInitializer"

    move/from16 v42, v1

    .end local v1    # "hasPdb":Z
    .local v42, "hasPdb":Z
    const-string v1, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v8, v1}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2044
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2046
    const-string v0, "StartNetworkPolicyManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2048
    :try_start_727
    new-instance v0, Lcom/android/server/net/NetworkPolicyManagerService;

    iget-object v1, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v0, v4, v1, v3}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/INetworkManagementService;)V

    move-object v15, v0

    .line 2050
    const-string/jumbo v0, "netpolicy"

    invoke-static {v0, v15}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_735
    .catchall {:try_start_727 .. :try_end_735} :catchall_736

    .line 2053
    goto :goto_73d

    .line 2051
    :catchall_736
    move-exception v0

    .line 2052
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting NetworkPolicy Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2054
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_73d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2057
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "/apex/com.android.wifi/javalib/service-wifi.jar"

    .line 2058
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/SystemServerStub;->getMiuilibpath()Ljava/lang/String;

    move-result-object v8

    .line 2057
    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2059
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_77d

    .line 2062
    const-string v0, "StartWifi"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2063
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.WifiService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2065
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2066
    const-string v0, "StartWifiScanning"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2067
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.scanner.WifiScanningService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2069
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2072
    :cond_77d
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.rtt"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_79a

    .line 2074
    const-string v0, "StartRttService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2075
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.rtt.RttService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2077
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2080
    :cond_79a
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.aware"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7b7

    .line 2082
    const-string v0, "StartWifiAware"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2083
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.aware.WifiAwareService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2085
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2088
    :cond_7b7
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7d4

    .line 2090
    const-string v0, "StartWifiP2P"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2091
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wifi.p2p.WifiP2pService"

    const-string v8, "/apex/com.android.wifi/javalib/service-wifi.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2093
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2096
    :cond_7d4
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.lowpan"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7ef

    .line 2098
    const-string v0, "StartLowpan"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2099
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.lowpan.LowpanService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2100
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2103
    :cond_7ef
    const-string v0, "StartPacProxyService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2105
    :try_start_7f4
    new-instance v0, Lcom/android/server/connectivity/PacProxyService;

    invoke-direct {v0, v4}, Lcom/android/server/connectivity/PacProxyService;-><init>(Landroid/content/Context;)V
    :try_end_7f9
    .catchall {:try_start_7f4 .. :try_end_7f9} :catchall_807

    move-object v1, v0

    .line 2106
    .end local v21    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v1, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :try_start_7fa
    const-string/jumbo v0, "pac_proxy"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_800
    .catchall {:try_start_7fa .. :try_end_800} :catchall_803

    .line 2109
    move-object/from16 v21, v1

    goto :goto_80e

    .line 2107
    :catchall_803
    move-exception v0

    move-object/from16 v21, v1

    goto :goto_808

    .end local v1    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v21    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    :catchall_807
    move-exception v0

    .line 2108
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_808
    const-string/jumbo v1, "starting PacProxyService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2110
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_80e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2113
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    .line 2114
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/server/SystemServerStub;->getConnectivitylibpath()Ljava/lang/String;

    move-result-object v8

    .line 2113
    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->addDexToClassLoader(Ljava/lang/String;Ljava/lang/String;)V

    .line 2115
    const-string v0, "StartConnectivityService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2119
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.ConnectivityServiceInitializer"

    const-string v8, "/apex/com.android.tethering/javalib/service-connectivity.jar"

    invoke-virtual {v0, v1, v8}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2121
    invoke-virtual {v15}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager()V

    .line 2122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2124
    const-string v0, "StartVpnManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2126
    :try_start_839
    invoke-static {v4}, Lcom/android/server/VpnManagerService;->create(Landroid/content/Context;)Lcom/android/server/VpnManagerService;

    move-result-object v0

    move-object v13, v0

    .line 2127
    const-string/jumbo v0, "vpn_management"

    invoke-static {v0, v13}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_844
    .catchall {:try_start_839 .. :try_end_844} :catchall_845

    .line 2130
    goto :goto_84c

    .line 2128
    :catchall_845
    move-exception v0

    .line 2129
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting VPN Manager Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2131
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_84c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2133
    const-string v0, "StartVcnManagementService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2135
    :try_start_854
    invoke-static {v4}, Lcom/android/server/VcnManagementService;->create(Landroid/content/Context;)Lcom/android/server/VcnManagementService;

    move-result-object v0

    move-object v14, v0

    .line 2136
    const-string/jumbo v0, "vcn_management"

    invoke-static {v0, v14}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_85f
    .catchall {:try_start_854 .. :try_end_85f} :catchall_860

    .line 2139
    goto :goto_867

    .line 2137
    :catchall_860
    move-exception v0

    .line 2138
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting VCN Management Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2140
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_867
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2142
    if-eqz v29, :cond_8fd

    .line 2144
    :try_start_86c
    const-string v0, "SystemServer"

    const-string v1, "Wigig Service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2145
    const-string v0, "/system/system_ext/framework/wigig-service.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.supptunnel-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.wigig.netperftuner-V1.0-java.jar:/system/system_ext/framework/vendor.qti.hardware.capabilityconfigstore-V1.0-java.jar"

    .line 2150
    .local v0, "wigigClassPath":Ljava/lang/String;
    new-instance v1, Ldalvik/system/PathClassLoader;

    .line 2151
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v8

    invoke-direct {v1, v0, v8}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 2152
    .local v1, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    const-string v8, "com.qualcomm.qti.server.wigig.p2p.WigigP2pServiceImpl"

    invoke-virtual {v1, v8}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8
    :try_end_888
    .catchall {:try_start_86c .. :try_end_888} :catchall_8f1

    .line 2154
    .local v8, "wigigP2pClass":Ljava/lang/Class;
    move-object/from16 v40, v0

    move-object/from16 v43, v2

    const/4 v2, 0x1

    .end local v0    # "wigigClassPath":Ljava/lang/String;
    .end local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .local v40, "wigigClassPath":Ljava/lang/String;
    .local v43, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    :try_start_88d
    new-array v0, v2, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/16 v36, 0x0

    aput-object v2, v0, v36

    invoke-virtual {v8, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0
    :try_end_899
    .catchall {:try_start_88d .. :try_end_899} :catchall_8ed

    .line 2155
    .local v0, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v44, v3

    const/4 v2, 0x1

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v44, "networkManagement":Lcom/android/server/NetworkManagementService;
    :try_start_89c
    new-array v3, v2, [Ljava/lang/Object;

    aput-object v4, v3, v36

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v22, v2

    .line 2156
    const-string v2, "SystemServer"

    const-string v3, "Successfully loaded WigigP2pServiceImpl class"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2157
    const-string/jumbo v2, "wigigp2p"

    move-object/from16 v3, v22

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2159
    const-string v2, "com.qualcomm.qti.server.wigig.WigigService"

    invoke-virtual {v1, v2}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 2161
    .local v2, "wigigClass":Ljava/lang/Class;
    move-object/from16 v45, v0

    const/4 v3, 0x1

    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .local v45, "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    new-array v0, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/16 v36, 0x0

    aput-object v3, v0, v36

    invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 2162
    .end local v45    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .restart local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    move-object/from16 v45, v1

    const/4 v3, 0x1

    .end local v1    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    .local v45, "wigigClassLoader":Ldalvik/system/PathClassLoader;
    new-array v1, v3, [Ljava/lang/Object;

    aput-object v4, v1, v36

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v23, v1

    .line 2163
    const-string v1, "SystemServer"

    const-string v3, "Successfully loaded WigigService class"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2164
    const-string/jumbo v1, "wigig"

    move-object/from16 v3, v23

    check-cast v3, Landroid/os/IBinder;

    invoke-static {v1, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_8ea
    .catchall {:try_start_89c .. :try_end_8ea} :catchall_8eb

    .line 2167
    .end local v0    # "ctor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<Ljava/lang/Class;>;"
    .end local v2    # "wigigClass":Ljava/lang/Class;
    .end local v8    # "wigigP2pClass":Ljava/lang/Class;
    .end local v40    # "wigigClassPath":Ljava/lang/String;
    .end local v45    # "wigigClassLoader":Ldalvik/system/PathClassLoader;
    goto :goto_901

    .line 2165
    :catchall_8eb
    move-exception v0

    goto :goto_8f6

    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_8ed
    move-exception v0

    move-object/from16 v44, v3

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_8f6

    .end local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v2, "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :catchall_8f1
    move-exception v0

    move-object/from16 v43, v2

    move-object/from16 v44, v3

    .line 2166
    .end local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_8f6
    const-string/jumbo v1, "starting WigigService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_901

    .line 2142
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_8fd
    move-object/from16 v43, v2

    move-object/from16 v44, v3

    .line 2170
    .end local v2    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .restart local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_901
    const-string v0, "StartSystemUpdateManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2172
    :try_start_906
    const-string/jumbo v0, "system_update"

    new-instance v1, Lcom/android/server/SystemUpdateManagerService;

    invoke-direct {v1, v4}, Lcom/android/server/SystemUpdateManagerService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_911
    .catchall {:try_start_906 .. :try_end_911} :catchall_912

    .line 2176
    goto :goto_919

    .line 2174
    :catchall_912
    move-exception v0

    .line 2175
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting SystemUpdateManagerService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2177
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_919
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2179
    const-string v0, "StartUpdateLockService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2181
    :try_start_921
    const-string/jumbo v0, "updatelock"

    new-instance v1, Lcom/android/server/UpdateLockService;

    invoke-direct {v1, v4}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_92c
    .catchall {:try_start_921 .. :try_end_92c} :catchall_92d

    .line 2185
    goto :goto_934

    .line 2183
    :catchall_92d
    move-exception v0

    .line 2184
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting UpdateLockService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2186
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_934
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2188
    const-string v0, "StartNotificationManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2189
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2190
    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->removeDeprecated(Landroid/content/Context;)V

    .line 2191
    invoke-static {v4}, Lcom/android/internal/notification/SystemNotificationChannels;->createAll(Landroid/content/Context;)V

    .line 2192
    const-string/jumbo v0, "notification"

    .line 2193
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 2192
    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v8

    .line 2194
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .local v8, "notification":Landroid/app/INotificationManager;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2196
    const-string v0, "StartDeviceMonitor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2197
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2198
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2200
    const-string v0, "StartLocationManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2201
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/location/LocationManagerService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2202
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2204
    const-string v0, "StartCountryDetectorService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2206
    :try_start_97a
    new-instance v0, Lcom/android/server/CountryDetectorService;

    invoke-direct {v0, v4}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V

    move-object v11, v0

    .line 2207
    const-string v0, "country_detector"

    invoke-static {v0, v11}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_985
    .catchall {:try_start_97a .. :try_end_985} :catchall_986

    .line 2210
    goto :goto_98d

    .line 2208
    :catchall_986
    move-exception v0

    .line 2209
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting Country Detector"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2211
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_98d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2213
    const-string v0, "StartTimeDetectorService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2215
    :try_start_995
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timedetector.TimeDetectorService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_99c
    .catchall {:try_start_995 .. :try_end_99c} :catchall_99d

    .line 2218
    goto :goto_9a4

    .line 2216
    :catchall_99d
    move-exception v0

    .line 2217
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting TimeDetectorService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2219
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9a4
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2221
    const-string v0, "StartTimeZoneDetectorService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2223
    :try_start_9ac
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timezonedetector.TimeZoneDetectorService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9b3
    .catchall {:try_start_9ac .. :try_end_9b3} :catchall_9b4

    .line 2226
    goto :goto_9bb

    .line 2224
    :catchall_9b4
    move-exception v0

    .line 2225
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting TimeZoneDetectorService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2227
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9bb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2229
    const-string v0, "StartLocationTimeZoneManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2231
    :try_start_9c3
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timezonedetector.location.LocationTimeZoneManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9ca
    .catchall {:try_start_9c3 .. :try_end_9ca} :catchall_9cb

    .line 2234
    goto :goto_9d2

    .line 2232
    :catchall_9cb
    move-exception v0

    .line 2233
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting LocationTimeZoneManagerService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2235
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9d2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2237
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110134

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_9f9

    .line 2238
    const-string v0, "StartGnssTimeUpdateService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2240
    :try_start_9e7
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.timedetector.GnssTimeUpdateService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_9ee
    .catchall {:try_start_9e7 .. :try_end_9ee} :catchall_9ef

    .line 2243
    goto :goto_9f6

    .line 2241
    :catchall_9ef
    move-exception v0

    .line 2242
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting GnssTimeUpdateService service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2244
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_9f6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2247
    :cond_9f9
    if-nez v30, :cond_a12

    .line 2248
    const-string v0, "StartSearchManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2250
    :try_start_a00
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.search.SearchManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a07
    .catchall {:try_start_a00 .. :try_end_a07} :catchall_a08

    .line 2253
    goto :goto_a0f

    .line 2251
    :catchall_a08
    move-exception v0

    .line 2252
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting Search Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2254
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_a0f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2257
    :cond_a12
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110145

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_a2f

    .line 2258
    const-string v0, "StartWallpaperManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2259
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wallpaper.WallpaperManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_a36

    .line 2262
    :cond_a2f
    const-string v0, "SystemServer"

    const-string v1, "Wallpaper service disabled by config"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2268
    :goto_a36
    const-string v0, "StartWallpaperEffectsGenerationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2269
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.wallpapereffectsgeneration.WallpaperEffectsGenerationManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2271
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2273
    const-string v0, "StartAudioService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2274
    if-nez v31, :cond_a54

    .line 2275
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/audio/AudioService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    goto :goto_a90

    .line 2277
    :cond_a54
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x104026b

    .line 2278
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 2280
    .local v1, "className":Ljava/lang/String;
    :try_start_a5f
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$Lifecycle"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_a77
    .catchall {:try_start_a5f .. :try_end_a77} :catchall_a78

    .line 2283
    goto :goto_a90

    .line 2281
    :catchall_a78
    move-exception v0

    .line 2282
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "starting "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2285
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v1    # "className":Ljava/lang/String;
    :goto_a90
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2287
    const-string v0, "StartSoundTriggerMiddlewareService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2288
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/soundtrigger_middleware/SoundTriggerMiddlewareService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2291
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.broadcastradio"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_abb

    .line 2292
    const-string v0, "StartBroadcastRadioService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2293
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/broadcastradio/BroadcastRadioService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2294
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2297
    :cond_abb
    const-string v0, "StartDockObserver"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2298
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/DockObserver;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2299
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2301
    if-eqz v30, :cond_adb

    .line 2302
    const-string v0, "StartThermalObserver"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2303
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.ThermalObserver"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2304
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2307
    :cond_adb
    if-nez v30, :cond_af5

    .line 2308
    const-string v0, "StartWiredAccessoryManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2311
    :try_start_ae2
    new-instance v0, Lcom/android/server/WiredAccessoryManager;

    invoke-direct {v0, v4, v9}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    invoke-virtual {v9, v0}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_aea
    .catchall {:try_start_ae2 .. :try_end_aea} :catchall_aeb

    .line 2315
    goto :goto_af2

    .line 2313
    :catchall_aeb
    move-exception v0

    .line 2314
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting WiredAccessoryManager"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2316
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_af2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2319
    :cond_af5
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.midi"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b0e

    .line 2321
    const-string v0, "StartMidiManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2322
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2323
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2327
    :cond_b0e
    const-string v0, "StartAdbService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2329
    :try_start_b13
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.adb.AdbService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_b1a
    .catchall {:try_start_b13 .. :try_end_b1a} :catchall_b1b

    .line 2332
    goto :goto_b23

    .line 2330
    :catchall_b1b
    move-exception v0

    .line 2331
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v1, "SystemServer"

    const-string v2, "Failure starting AdbService"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2333
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b23
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2335
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.host"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3c

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.usb.accessory"

    .line 2336
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_b3c

    if-eqz v28, :cond_b4b

    .line 2340
    :cond_b3c
    const-string v0, "StartUsbService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2341
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2342
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2345
    :cond_b4b
    if-nez v30, :cond_b72

    .line 2346
    const-string v0, "StartSerialService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2349
    :try_start_b52
    new-instance v0, Lcom/android/server/SerialService;

    invoke-direct {v0, v4}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_b57
    .catchall {:try_start_b52 .. :try_end_b57} :catchall_b63

    move-object v1, v0

    .line 2350
    .end local v17    # "serial":Lcom/android/server/SerialService;
    .local v1, "serial":Lcom/android/server/SerialService;
    :try_start_b58
    const-string/jumbo v0, "serial"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b5e
    .catchall {:try_start_b58 .. :try_end_b5e} :catchall_b5f

    .line 2353
    goto :goto_b6d

    .line 2351
    :catchall_b5f
    move-exception v0

    move-object/from16 v17, v1

    goto :goto_b64

    .end local v1    # "serial":Lcom/android/server/SerialService;
    .restart local v17    # "serial":Lcom/android/server/SerialService;
    :catchall_b63
    move-exception v0

    .line 2352
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_b64
    const-string v1, "SystemServer"

    const-string v2, "Failure starting SerialService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object/from16 v1, v17

    .line 2354
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v17    # "serial":Lcom/android/server/SerialService;
    .restart local v1    # "serial":Lcom/android/server/SerialService;
    :goto_b6d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v17, v1

    .line 2357
    .end local v1    # "serial":Lcom/android/server/SerialService;
    .restart local v17    # "serial":Lcom/android/server/SerialService;
    :cond_b72
    const-string v0, "StartHardwarePropertiesManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2359
    :try_start_b77
    new-instance v0, Lcom/android/server/HardwarePropertiesManagerService;

    invoke-direct {v0, v4}, Lcom/android/server/HardwarePropertiesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_b7c
    .catchall {:try_start_b77 .. :try_end_b7c} :catchall_b8a

    move-object v1, v0

    .line 2360
    .end local v20    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v1, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :try_start_b7d
    const-string/jumbo v0, "hardware_properties"

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b83
    .catchall {:try_start_b7d .. :try_end_b83} :catchall_b86

    .line 2364
    move-object/from16 v20, v1

    goto :goto_b92

    .line 2362
    :catchall_b86
    move-exception v0

    move-object/from16 v20, v1

    goto :goto_b8b

    .end local v1    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .restart local v20    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    :catchall_b8a
    move-exception v0

    .line 2363
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_b8b
    const-string v1, "SystemServer"

    const-string v2, "Failure starting HardwarePropertiesManagerService"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2365
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b92
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2367
    if-nez v30, :cond_ba6

    .line 2368
    const-string v0, "StartTwilightService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2369
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2370
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2373
    :cond_ba6
    const-string v0, "StartColorDisplay"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2374
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/display/color/ColorDisplayService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2375
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2378
    const-string v0, "StartJobScheduler"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2379
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.job.JobSchedulerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2380
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2382
    const-string v0, "StartSoundTrigger"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2383
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/soundtrigger/SoundTriggerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2384
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2386
    const-string v0, "StartTrustManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2387
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2388
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2391
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-boolean v1, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v4, v1}, Lcom/android/server/SystemServerStub;->addExtraServices(Landroid/content/Context;Z)V

    .line 2393
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.backup"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c04

    .line 2394
    const-string v0, "StartBackupManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2395
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2396
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2399
    :cond_c04
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.app_widgets"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_c1b

    .line 2400
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x111012a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_c2a

    .line 2401
    :cond_c1b
    const-string v0, "StartAppWidgetService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2402
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2403
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2410
    :cond_c2a
    const-string v0, "StartVoiceRecognitionManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2411
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2412
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2414
    const-string v0, "StartAppHibernationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2415
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.apphibernation.AppHibernationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2416
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2418
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_c61

    .line 2419
    const-string v0, "StartGestureLauncher"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2420
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2421
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2423
    :cond_c61
    const-string v0, "StartSensorNotification"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2424
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/SensorNotificationService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2425
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2427
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.context_hub"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c89

    .line 2428
    const-string v0, "StartContextHubSystemService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2429
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/ContextHubSystemService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2430
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2433
    :cond_c89
    const-string v0, "StartDiskStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2435
    :try_start_c8e
    const-string v0, "diskstats"

    new-instance v1, Lcom/android/server/DiskStatsService;

    invoke-direct {v1, v4}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_c98
    .catchall {:try_start_c8e .. :try_end_c98} :catchall_c99

    .line 2438
    goto :goto_ca0

    .line 2436
    :catchall_c99
    move-exception v0

    .line 2437
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting DiskStats Service"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2439
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_ca0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2441
    const-string v0, "RuntimeService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2443
    :try_start_ca8
    const-string/jumbo v0, "runtime"

    new-instance v1, Lcom/android/server/RuntimeService;

    invoke-direct {v1, v4}, Lcom/android/server/RuntimeService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cb3
    .catchall {:try_start_ca8 .. :try_end_cb3} :catchall_cb4

    .line 2446
    goto :goto_cbb

    .line 2444
    :catchall_cb4
    move-exception v0

    .line 2445
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "starting RuntimeService"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2447
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_cbb
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2453
    iget-boolean v0, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-nez v0, :cond_cd1

    .line 2454
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110144

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_cd1

    const/4 v0, 0x1

    goto :goto_cd2

    :cond_cd1
    const/4 v0, 0x0

    :goto_cd2
    move v1, v0

    .line 2456
    .local v1, "startRulesManagerService":Z
    if-eqz v1, :cond_ce4

    .line 2457
    const-string v0, "StartTimeZoneRulesManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2458
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.timezone.RulesManagerService$Lifecycle"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2459
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2462
    :cond_ce4
    if-nez v30, :cond_d0c

    if-nez v25, :cond_d0c

    .line 2463
    const-string v0, "StartNetworkTimeUpdateService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2465
    :try_start_ced
    new-instance v0, Lcom/android/server/NetworkTimeUpdateService;

    invoke-direct {v0, v4}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_cf2
    .catchall {:try_start_ced .. :try_end_cf2} :catchall_cfe

    move-object v2, v0

    .line 2466
    .end local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v2, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :try_start_cf3
    const-string/jumbo v0, "network_time_update_service"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_cf9
    .catchall {:try_start_cf3 .. :try_end_cf9} :catchall_cfa

    .line 2469
    goto :goto_d07

    .line 2467
    :catchall_cfa
    move-exception v0

    move-object/from16 v18, v2

    goto :goto_cff

    .end local v2    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catchall_cfe
    move-exception v0

    .line 2468
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_cff
    const-string/jumbo v2, "starting NetworkTimeUpdate service"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object/from16 v2, v18

    .line 2470
    .end local v0    # "e":Ljava/lang/Throwable;
    .end local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v2    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :goto_d07
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v18, v2

    .line 2473
    .end local v2    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_d0c
    const-string v0, "CertBlacklister"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2475
    :try_start_d11
    new-instance v0, Lcom/android/server/CertBlacklister;

    invoke-direct {v0, v4}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_d16
    .catchall {:try_start_d11 .. :try_end_d16} :catchall_d17

    .line 2478
    goto :goto_d1e

    .line 2476
    :catchall_d17
    move-exception v0

    .line 2477
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting CertBlacklister"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2479
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_d1e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2483
    const-string v0, "StartEmergencyAffordanceService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2484
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/emergency/EmergencyAffordanceService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2485
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2488
    const-string/jumbo v0, "startBlobStoreManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2489
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.blob.BlobStoreManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2490
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2493
    const-string v0, "StartDreamManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2494
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2495
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2497
    const-string v0, "AddGraphicsStatsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2498
    const-string/jumbo v0, "graphicsstats"

    new-instance v2, Landroid/graphics/GraphicsStatsService;

    invoke-direct {v2, v4}, Landroid/graphics/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2500
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2502
    sget-boolean v0, Lcom/android/server/coverage/CoverageService;->ENABLED:Z

    if-eqz v0, :cond_d78

    .line 2503
    const-string v0, "AddCoverageService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2504
    const-string v0, "coverage"

    new-instance v2, Lcom/android/server/coverage/CoverageService;

    invoke-direct {v2}, Lcom/android/server/coverage/CoverageService;-><init>()V

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2505
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2508
    :cond_d78
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.print"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d91

    .line 2509
    const-string v0, "StartPrintManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2510
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.print.PrintManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2511
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2514
    :cond_d91
    const-string v0, "StartAttestationVerificationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2515
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/security/AttestationVerificationManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2516
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2518
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.companion_device_setup"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dc8

    .line 2519
    const-string v0, "StartCompanionDeviceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2520
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.companion.CompanionDeviceManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2521
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2524
    const-string v0, "StartVirtualDeviceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2525
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.companion.virtual.VirtualDeviceManagerService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2526
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2529
    :cond_dc8
    const-string v0, "StartRestrictionManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2530
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2531
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2533
    const-string v0, "StartMediaSessionService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2534
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.media.MediaSessionService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2535
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2537
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.hdmi.cec"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_dff

    .line 2538
    const-string v0, "StartHdmiControlService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2539
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2540
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2543
    :cond_dff
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.live_tv"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e13

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    .line 2544
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e22

    .line 2545
    :cond_e13
    const-string v0, "StartTvInteractiveAppManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2546
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/interactive/TvInteractiveAppManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2547
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2550
    :cond_e22
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.live_tv"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_e36

    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    .line 2551
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e45

    .line 2552
    :cond_e36
    const-string v0, "StartTvInputManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2553
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2554
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2557
    :cond_e45
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.tv.tuner"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e5e

    .line 2558
    const-string v0, "StartTunerResourceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2559
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/tunerresourcemanager/TunerResourceManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2560
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2563
    :cond_e5e
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.picture_in_picture"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e77

    .line 2564
    const-string v0, "StartMediaResourceMonitor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2565
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v2, "com.android.server.media.MediaResourceMonitorService"

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2566
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2569
    :cond_e77
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.software.leanback"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e90

    .line 2570
    const-string v0, "StartTvRemoteService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2571
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/tv/TvRemoteService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2572
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2575
    :cond_e90
    const-string v0, "StartMediaRouterService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2577
    :try_start_e95
    new-instance v0, Lcom/android/server/media/MediaRouterService;

    invoke-direct {v0, v4}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_e9a
    .catchall {:try_start_e95 .. :try_end_e9a} :catchall_ea8

    move-object v2, v0

    .line 2578
    .end local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v2, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_e9b
    const-string/jumbo v0, "media_router"

    invoke-static {v0, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_ea1
    .catchall {:try_start_e9b .. :try_end_ea1} :catchall_ea4

    .line 2581
    move-object/from16 v33, v2

    goto :goto_eaf

    .line 2579
    :catchall_ea4
    move-exception v0

    move-object/from16 v33, v2

    goto :goto_ea9

    .end local v2    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v33    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catchall_ea8
    move-exception v0

    .line 2580
    .restart local v0    # "e":Ljava/lang/Throwable;
    :goto_ea9
    const-string/jumbo v2, "starting MediaRouterService"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2582
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_eaf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2584
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "android.hardware.biometrics.face"

    .line 2585
    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    .line 2586
    .local v2, "hasFeatureFace":Z
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v3, "android.hardware.biometrics.iris"

    .line 2587
    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    .line 2588
    .local v3, "hasFeatureIris":Z
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    move/from16 v40, v1

    .end local v1    # "startRulesManagerService":Z
    .local v40, "startRulesManagerService":Z
    const-string v1, "android.hardware.fingerprint"

    .line 2589
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    .line 2591
    .local v1, "hasFeatureFingerprint":Z
    if-eqz v2, :cond_ee3

    .line 2592
    const-string v0, "StartFaceSensor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2593
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    move/from16 v41, v2

    .end local v2    # "hasFeatureFace":Z
    .local v41, "hasFeatureFace":Z
    const-class v2, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2594
    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/face/FaceService;

    .line 2595
    .local v0, "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_ee5

    .line 2591
    .end local v0    # "faceService":Lcom/android/server/biometrics/sensors/face/FaceService;
    .end local v41    # "hasFeatureFace":Z
    .restart local v2    # "hasFeatureFace":Z
    :cond_ee3
    move/from16 v41, v2

    .line 2598
    .end local v2    # "hasFeatureFace":Z
    .restart local v41    # "hasFeatureFace":Z
    :goto_ee5
    if-eqz v3, :cond_ef6

    .line 2599
    const-string v0, "StartIrisSensor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2600
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/sensors/iris/IrisService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2601
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2604
    :cond_ef6
    if-eqz v1, :cond_f0a

    .line 2605
    const-string v0, "StartFingerprintSensor"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2606
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2607
    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    check-cast v0, Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;

    .line 2608
    .local v0, "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2612
    .end local v0    # "fingerprintService":Lcom/android/server/biometrics/sensors/fingerprint/FingerprintService;
    :cond_f0a
    const-string v0, "StartBiometricService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2613
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2614
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2616
    const-string v0, "StartAuthService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2617
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/biometrics/AuthService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2618
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2620
    if-nez v30, :cond_f3f

    .line 2623
    const-string v0, "StartDynamicCodeLoggingService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2625
    :try_start_f2f
    invoke-static {v4}, Lcom/android/server/pm/DynamicCodeLoggingService;->schedule(Landroid/content/Context;)V
    :try_end_f32
    .catchall {:try_start_f2f .. :try_end_f32} :catchall_f33

    .line 2628
    goto :goto_f3c

    .line 2626
    :catchall_f33
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2627
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting DynamicCodeLoggingService"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2629
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f3c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2632
    :cond_f3f
    if-nez v30, :cond_f55

    .line 2633
    const-string v0, "StartPruneInstantAppsJobService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2635
    :try_start_f46
    invoke-static {v4}, Lcom/android/server/PruneInstantAppsJobService;->schedule(Landroid/content/Context;)V
    :try_end_f49
    .catchall {:try_start_f46 .. :try_end_f49} :catchall_f4a

    .line 2638
    goto :goto_f52

    .line 2636
    :catchall_f4a
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 2637
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v2, "StartPruneInstantAppsJobService"

    invoke-direct {v6, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2639
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_f52
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2643
    :cond_f55
    const-string v0, "StartShortcutServiceLifecycle"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2644
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/ShortcutService$Lifecycle;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2645
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2647
    const-string v0, "StartLauncherAppsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2648
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2649
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2651
    const-string v0, "StartCrossProfileAppsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2652
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/pm/CrossProfileAppsService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2653
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2655
    const-string v0, "StartPeopleService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2656
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/people/PeopleService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2657
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2659
    const-string v0, "StartMediaMetricsManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2660
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v2, Lcom/android/server/media/metrics/MediaMetricsManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2661
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v41, v8

    move-object/from16 v42, v11

    move-object/from16 v45, v13

    move-object/from16 v46, v14

    move-object/from16 v47, v15

    move-object/from16 v48, v16

    move-object/from16 v49, v17

    move-object/from16 v50, v18

    move-object/from16 v51, v20

    move-object/from16 v52, v21

    move-object/from16 v3, v22

    move-object/from16 v2, v23

    move-object/from16 v53, v33

    move-object/from16 v33, v7

    .line 2664
    .end local v1    # "hasFeatureFingerprint":Z
    .end local v7    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v8    # "notification":Landroid/app/INotificationManager;
    .end local v11    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v13    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v14    # "vcnManagement":Lcom/android/server/VcnManagementService;
    .end local v15    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v16    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v17    # "serial":Lcom/android/server/SerialService;
    .end local v18    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v20    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v21    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v22    # "wigigP2pService":Ljava/lang/Object;
    .end local v23    # "wigigService":Ljava/lang/Object;
    .end local v40    # "startRulesManagerService":Z
    .local v2, "wigigService":Ljava/lang/Object;
    .local v3, "wigigP2pService":Ljava/lang/Object;
    .local v33, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v41, "notification":Landroid/app/INotificationManager;
    .local v42, "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v45, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v46, "vcnManagement":Lcom/android/server/VcnManagementService;
    .local v47, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v48, "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .local v49, "serial":Lcom/android/server/SerialService;
    .local v50, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v51, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v52, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .local v53, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_fbc
    const-string v0, "StartMediaProjectionManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2665
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2666
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2668
    if-eqz v30, :cond_1038

    .line 2670
    const-string v0, "StartWearPowerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2671
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.power.WearPowerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2672
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2674
    const-string v0, "StartHealthService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2675
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.healthservices.HealthService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2676
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2678
    const-string v0, "StartWearConnectivityService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2679
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.connectivity.WearConnectivityService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2680
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2682
    const-string v0, "StartWearDisplayService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2683
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.display.WearDisplayService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2684
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2686
    const-string v0, "StartWearTimeService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2687
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.time.WearTimeService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2688
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2690
    if-eqz v27, :cond_1029

    .line 2691
    const-string v0, "StartWearLeftyService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2692
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.google.android.clockwork.lefty.WearLeftyService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2693
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2696
    :cond_1029
    const-string v0, "StartWearGlobalActionsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2697
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.clockwork.globalactions.GlobalActionsService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2698
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2701
    :cond_1038
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.slices_disabled"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1051

    .line 2702
    const-string v0, "StartSliceManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2703
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.slice.SliceManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2704
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2707
    :cond_1051
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.type.embedded"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_106c

    .line 2708
    const-string v0, "StartIoTSystemService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2709
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.things.server.IoTSystemService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2714
    :cond_106c
    const-string v0, "StartStatsCompanion"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2715
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.StatsCompanion$Lifecycle"

    const-string v7, "/apex/com.android.os.statsd/javalib/service-statsd.jar"

    invoke-virtual {v0, v1, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2717
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2720
    const-string v0, "StartRebootReadinessManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2721
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.scheduling.RebootReadinessManagerService$Lifecycle"

    const-string v7, "/apex/com.android.scheduling/javalib/service-scheduling.jar"

    invoke-virtual {v0, v1, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2723
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2726
    const-string v0, "StartStatsPullAtomService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2727
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.pull.StatsPullAtomService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2728
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2731
    const-string v0, "StatsBootstrapAtomService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2732
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.stats.bootstrap.StatsBootstrapAtomService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2733
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2736
    const-string v0, "StartIncidentCompanionService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2737
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/incident/IncidentCompanionService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2741
    const-string v0, "StarSdkSandboxManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2742
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.sdksandbox.SdkSandboxManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2743
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2746
    const-string v0, "StartAdServicesManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2747
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.adservices.AdServicesManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2748
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2750
    if-eqz v12, :cond_10e0

    .line 2751
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 2754
    :cond_10e0
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.telephony"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1101

    .line 2756
    const-string v0, "StartMmsService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2757
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v0

    move-object/from16 v19, v0

    check-cast v19, Lcom/android/server/MmsServiceBroker;

    .line 2758
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    move-object/from16 v54, v19

    goto :goto_1103

    .line 2754
    :cond_1101
    move-object/from16 v54, v19

    .line 2761
    .end local v19    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v54, "mmsService":Lcom/android/server/MmsServiceBroker;
    :goto_1103
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.software.autofill"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_111c

    .line 2762
    const-string v0, "StartAutoFillService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2763
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.autofill.AutofillManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2764
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2768
    :cond_111c
    const v0, 0x1040263

    invoke-direct {v6, v4, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_1135

    .line 2769
    const-string v0, "StartTranslationManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2770
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.translation.TranslationManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2771
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_113c

    .line 2773
    :cond_1135
    const-string v0, "SystemServer"

    const-string v1, "TranslationService not defined by OEM"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2777
    :goto_113c
    const-string v0, "StartClipboardService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2778
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/clipboard/ClipboardService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2779
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2781
    const-string v0, "AppServiceManager"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2782
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/appbinding/AppBindingService$Lifecycle;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2783
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2786
    const-string/jumbo v0, "startTracingServiceProxy"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2787
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/tracing/TracingServiceProxy;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2788
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2792
    const-string v0, "MakeLockSettingsServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2793
    if-eqz v48, :cond_117e

    .line 2795
    :try_start_1171
    invoke-interface/range {v48 .. v48}, Lcom/android/internal/widget/ILockSettings;->systemReady()V
    :try_end_1174
    .catchall {:try_start_1171 .. :try_end_1174} :catchall_1175

    .line 2798
    goto :goto_117e

    .line 2796
    :catchall_1175
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2797
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Lock Settings Service ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2800
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_117e
    :goto_117e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2803
    const-string v0, "StartBootPhaseLockSettingsReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2804
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x1e0

    invoke-virtual {v0, v5, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2805
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2807
    const-string v0, "StartBootPhaseSystemServicesReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2808
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v5, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2809
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2813
    if-eqz v29, :cond_11f3

    .line 2815
    :try_start_11a1
    const-string v0, "SystemServer"

    const-string v7, "calling onBootPhase for Wigig Services"

    invoke-static {v0, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2816
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 2817
    .local v0, "wigigP2pClass":Ljava/lang/Class;
    const-string/jumbo v7, "onBootPhase"

    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Class;

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-virtual {v0, v7, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    .line 2818
    .local v7, "m":Ljava/lang/reflect/Method;
    const/4 v8, 0x1

    new-array v11, v8, [Ljava/lang/Object;

    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-virtual {v7, v3, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 2821
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    .line 2822
    .local v8, "wigigClass":Ljava/lang/Class;
    const-string/jumbo v11, "onBootPhase"

    const/4 v13, 0x1

    new-array v14, v13, [Ljava/lang/Class;

    sget-object v13, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v15, 0x0

    aput-object v13, v14, v15

    invoke-virtual {v8, v11, v14}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v11

    move-object v7, v11

    .line 2823
    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    new-instance v13, Ljava/lang/Integer;

    invoke-direct {v13, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v1, 0x0

    aput-object v13, v11, v1

    invoke-virtual {v7, v2, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11eb
    .catchall {:try_start_11a1 .. :try_end_11eb} :catchall_11ed

    .line 2827
    nop

    .end local v0    # "wigigP2pClass":Ljava/lang/Class;
    .end local v7    # "m":Ljava/lang/reflect/Method;
    .end local v8    # "wigigClass":Ljava/lang/Class;
    goto :goto_11f3

    .line 2825
    :catchall_11ed
    move-exception v0

    .line 2826
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "Wigig services ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2830
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_11f3
    :goto_11f3
    const-string v0, "MakeWindowManagerServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2832
    :try_start_11f8
    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_11fb
    .catchall {:try_start_11f8 .. :try_end_11fb} :catchall_11fc

    .line 2835
    goto :goto_1205

    .line 2833
    :catchall_11fc
    move-exception v0

    move-object v1, v0

    move-object v0, v1

    .line 2834
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v1, "making Window Manager Service ready"

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2836
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1205
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2839
    const-class v1, Lcom/android/server/SystemService;

    monitor-enter v1

    .line 2840
    :try_start_120b
    sget-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_120d
    .catchall {:try_start_120b .. :try_end_120d} :catchall_1400

    if-eqz v0, :cond_1227

    .line 2841
    :try_start_120f
    iget-object v7, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v7, v0}, Lcom/android/server/am/ActivityManagerService;->schedulePendingSystemServerWtfs(Ljava/util/LinkedList;)V

    .line 2842
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/SystemServer;->sPendingWtfs:Ljava/util/LinkedList;
    :try_end_1217
    .catchall {:try_start_120f .. :try_end_1217} :catchall_1218

    goto :goto_1227

    .line 2844
    :catchall_1218
    move-exception v0

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v9

    move-object/from16 v55, v10

    move/from16 v35, v12

    goto/16 :goto_140d

    :cond_1227
    :goto_1227
    :try_start_1227
    monitor-exit v1
    :try_end_1228
    .catchall {:try_start_1227 .. :try_end_1228} :catchall_1400

    .line 2846
    if-eqz v12, :cond_122f

    .line 2847
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 2853
    :cond_122f
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v15

    .line 2854
    .local v15, "config":Landroid/content/res/Configuration;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    move-object v1, v0

    .line 2855
    .local v1, "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual {v4}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 2856
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v15, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 2859
    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v17

    .line 2860
    .local v17, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v0

    if-eqz v0, :cond_1255

    .line 2861
    invoke-virtual/range {v17 .. v17}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 2865
    :cond_1255
    const-string v0, "StartPermissionPolicyService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2866
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v7, Lcom/android/server/policy/PermissionPolicyService;

    invoke-virtual {v0, v7}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 2867
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2869
    const-string v0, "MakePackageManagerServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2870
    iget-object v0, v6, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->systemReady()V

    .line 2871
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2873
    const-string v0, "MakeDisplayManagerServiceReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2876
    :try_start_1276
    iget-object v0, v6, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    iget-boolean v7, v6, Lcom/android/server/SystemServer;->mOnlyCore:Z

    invoke-virtual {v0, v12, v7}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_127d
    .catchall {:try_start_1276 .. :try_end_127d} :catchall_127e

    .line 2879
    goto :goto_1285

    .line 2877
    :catchall_127e
    move-exception v0

    .line 2878
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "making Display Manager Service ready"

    invoke-direct {v6, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2880
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1285
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2882
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v12}, Lcom/android/server/SystemServiceManager;->setSafeMode(Z)V

    .line 2885
    const-string v0, "StartDeviceSpecificServices"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2886
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v7, 0x107003b

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v14

    .line 2888
    .local v14, "classes":[Ljava/lang/String;
    array-length v7, v14

    const/4 v8, 0x0

    :goto_12a1
    if-ge v8, v7, :cond_12e5

    aget-object v11, v14, v8

    .line 2889
    .local v11, "className":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "StartDeviceSpecificServices "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2891
    :try_start_12bb
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v0, v11}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;
    :try_end_12c0
    .catchall {:try_start_12bb .. :try_end_12c0} :catchall_12c3

    .line 2894
    move-object/from16 v18, v1

    goto :goto_12dd

    .line 2892
    :catchall_12c3
    move-exception v0

    .line 2893
    .restart local v0    # "e":Ljava/lang/Throwable;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v1

    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .local v18, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v1, "starting "

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v6, v1, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2895
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_12dd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2888
    .end local v11    # "className":Ljava/lang/String;
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v1, v18

    goto :goto_12a1

    .line 2897
    .end local v18    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v1    # "metrics":Landroid/util/DisplayMetrics;
    :cond_12e5
    move-object/from16 v18, v1

    .end local v1    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v18    # "metrics":Landroid/util/DisplayMetrics;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2899
    const-string v0, "GameManagerService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2900
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.app.GameManagerService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2901
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2903
    const-string v0, "ArtManagerLocal"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2904
    const-class v0, Lcom/android/server/art/ArtManagerLocal;

    new-instance v1, Lcom/android/server/art/ArtManagerLocal;

    invoke-direct {v1}, Lcom/android/server/art/ArtManagerLocal;-><init>()V

    invoke-static {v0, v1}, Lcom/android/server/LocalManagerRegistry;->addManager(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 2905
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2907
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.uwb"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1328

    .line 2908
    const-string v0, "UwbService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2909
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.uwb.UwbService"

    const-string v7, "/apex/com.android.uwb/javalib/service-uwb.jar"

    invoke-virtual {v0, v1, v7}, Lcom/android/server/SystemServiceManager;->startServiceFromJar(Ljava/lang/String;Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2910
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2913
    :cond_1328
    const-string v0, "StartBootPhaseDeviceSpecificServicesReady"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2914
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v1, 0x208

    invoke-virtual {v0, v5, v1}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2915
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2917
    const-string v0, "StartSafetyCenterService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2918
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.safetycenter.SafetyCenterService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2919
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2921
    const-string v0, "AppSearchModule"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2922
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.appsearch.AppSearchModule$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2923
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2925
    const-string/jumbo v0, "ro.config.isolated_compilation_enabled"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_136e

    .line 2926
    const-string v0, "IsolatedCompilationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2927
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.compos.IsolatedCompilationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2928
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2931
    :cond_136e
    const-string v0, "StartMediaCommunicationService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2932
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.media.MediaCommunicationService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2933
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2935
    const-string v0, "AppCompatOverridesService"

    invoke-virtual {v5, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2936
    iget-object v0, v6, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.compat.overrides.AppCompatOverridesService$Lifecycle"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 2937
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2940
    move-object/from16 v7, v44

    .line 2941
    .local v7, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object/from16 v8, v47

    .line 2942
    .local v8, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v11, v42

    .line 2943
    .local v11, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move/from16 v35, v12

    .end local v12    # "safeMode":Z
    .local v35, "safeMode":Z
    move-object/from16 v12, v50

    .line 2944
    .local v12, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object v13, v9

    .line 2945
    .local v13, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v19, v14

    .end local v14    # "classes":[Ljava/lang/String;
    .local v19, "classes":[Ljava/lang/String;
    move-object/from16 v14, v37

    .line 2946
    .local v14, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v20, v15

    .end local v15    # "config":Landroid/content/res/Configuration;
    .local v20, "config":Landroid/content/res/Configuration;
    move-object/from16 v15, v53

    .line 2947
    .local v15, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v54

    .line 2948
    .local v16, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v36, v9

    .end local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v36, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v9, v45

    .line 2949
    .local v9, "vpnManagerF":Lcom/android/server/VpnManagerService;
    move-object/from16 v55, v10

    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v55, "wm":Lcom/android/server/wm/WindowManagerService;
    move-object/from16 v10, v46

    .line 2950
    .local v10, "vcnManagementF":Lcom/android/server/VcnManagementService;
    move-object/from16 v1, v55

    .line 2951
    .local v1, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    const-string v0, "connectivity"

    .line 2952
    invoke-virtual {v4, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v0

    check-cast v21, Landroid/net/ConnectivityManager;

    .line 2959
    .local v21, "connectivityF":Landroid/net/ConnectivityManager;
    iget-object v0, v6, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v22, v0

    new-instance v0, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;

    move-object/from16 v56, v1

    .end local v1    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .local v56, "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    move-object v1, v0

    move-object/from16 v57, v2

    .end local v2    # "wigigService":Ljava/lang/Object;
    .local v57, "wigigService":Ljava/lang/Object;
    move-object/from16 v2, p0

    move-object/from16 v58, v3

    .end local v3    # "wigigP2pService":Ljava/lang/Object;
    .local v58, "wigigP2pService":Ljava/lang/Object;
    move-object/from16 v3, p1

    move-object/from16 v59, v4

    .end local v4    # "context":Landroid/content/Context;
    .local v59, "context":Landroid/content/Context;
    move-object/from16 v4, v43

    move/from16 v5, v35

    move-object/from16 v6, v21

    invoke-direct/range {v1 .. v16}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/SystemServer;Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    move-object/from16 v1, v22

    invoke-virtual {v1, v0, v3}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3209
    const-string v0, "StartSystemUI"

    invoke-virtual {v3, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3211
    move-object/from16 v1, v56

    move-object/from16 v4, v59

    .end local v56    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v59    # "context":Landroid/content/Context;
    .restart local v1    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .restart local v4    # "context":Landroid/content/Context;
    :try_start_13df
    invoke-static {v4, v1}, Lcom/android/server/SystemServer;->startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_13e2
    .catchall {:try_start_13df .. :try_end_13e2} :catchall_13e5

    .line 3214
    move-object/from16 v5, p0

    goto :goto_13f0

    .line 3212
    :catchall_13e5
    move-exception v0

    move-object v2, v0

    move-object v0, v2

    .line 3213
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v2, "starting System UI"

    move-object/from16 v5, p0

    invoke-direct {v5, v2, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3215
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_13f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3218
    invoke-static {}, Lcom/android/server/SystemServerStub;->get()Lcom/android/server/SystemServerStub;

    move-result-object v0

    iget-object v2, v5, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v0, v2}, Lcom/android/server/SystemServerStub;->addCameraCoveredManagerService(Landroid/content/Context;)V

    .line 3220
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3221
    return-void

    .line 2844
    .end local v1    # "windowManagerF":Lcom/android/server/wm/WindowManagerService;
    .end local v7    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v8    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v13    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v14    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v15    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v16    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v17    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v18    # "metrics":Landroid/util/DisplayMetrics;
    .end local v19    # "classes":[Ljava/lang/String;
    .end local v20    # "config":Landroid/content/res/Configuration;
    .end local v21    # "connectivityF":Landroid/net/ConnectivityManager;
    .end local v35    # "safeMode":Z
    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v57    # "wigigService":Ljava/lang/Object;
    .end local v58    # "wigigP2pService":Ljava/lang/Object;
    .restart local v2    # "wigigService":Ljava/lang/Object;
    .restart local v3    # "wigigP2pService":Ljava/lang/Object;
    .local v9, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v10, "wm":Lcom/android/server/wm/WindowManagerService;
    .local v12, "safeMode":Z
    :catchall_1400
    move-exception v0

    move-object/from16 v57, v2

    move-object/from16 v58, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v9

    move-object/from16 v55, v10

    move/from16 v35, v12

    .end local v2    # "wigigService":Ljava/lang/Object;
    .end local v3    # "wigigP2pService":Ljava/lang/Object;
    .end local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v12    # "safeMode":Z
    .restart local v35    # "safeMode":Z
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v57    # "wigigService":Ljava/lang/Object;
    .restart local v58    # "wigigP2pService":Ljava/lang/Object;
    :goto_140d
    :try_start_140d
    monitor-exit v1
    :try_end_140e
    .catchall {:try_start_140d .. :try_end_140e} :catchall_140f

    throw v0

    :catchall_140f
    move-exception v0

    goto :goto_140d

    .line 1760
    .end local v33    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v35    # "safeMode":Z
    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v39    # "storageManager":Landroid/os/storage/IStorageManager;
    .end local v41    # "notification":Landroid/app/INotificationManager;
    .end local v42    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v43    # "dpms":Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .end local v44    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v45    # "vpnManager":Lcom/android/server/VpnManagerService;
    .end local v46    # "vcnManagement":Lcom/android/server/VcnManagementService;
    .end local v47    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v48    # "lockSettings":Lcom/android/internal/widget/ILockSettings;
    .end local v49    # "serial":Lcom/android/server/SerialService;
    .end local v50    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .end local v51    # "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .end local v52    # "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .end local v53    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v54    # "mmsService":Lcom/android/server/MmsServiceBroker;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v57    # "wigigService":Ljava/lang/Object;
    .end local v58    # "wigigP2pService":Ljava/lang/Object;
    .local v2, "storageManager":Landroid/os/storage/IStorageManager;
    .local v3, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v13, "vpnManager":Lcom/android/server/VpnManagerService;
    .local v14, "vcnManagement":Lcom/android/server/VcnManagementService;
    .local v15, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v17, "serial":Lcom/android/server/SerialService;
    .local v18, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v19, "mmsService":Lcom/android/server/MmsServiceBroker;
    .local v20, "hardwarePropertiesService":Lcom/android/server/HardwarePropertiesManagerService;
    .local v21, "pacProxyService":Lcom/android/server/connectivity/PacProxyService;
    .restart local v22    # "wigigP2pService":Ljava/lang/Object;
    .restart local v23    # "wigigService":Ljava/lang/Object;
    :catchall_1411
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v9

    move-object/from16 v55, v10

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    move-object/from16 v16, v55

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v9    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v40, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    goto/16 :goto_1486

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .local v39, "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_1426
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v55, v10

    move-object/from16 v36, v39

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    move-object/from16 v16, v55

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v10    # "wm":Lcom/android/server/wm/WindowManagerService;
    .end local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    goto/16 :goto_1486

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v55    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v16, "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_143b
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v36, v39

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    move-object/from16 v1, v38

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v39    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_1486

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v1, "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v11, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v12, "inputManager":Lcom/android/server/input/InputManagerService;
    :catchall_144b
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v36, v12

    move-object/from16 v9, v34

    move-object/from16 v7, v36

    move-object/from16 v8, v37

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v12    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_1486

    .end local v36    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v7, "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_145d
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v9, v34

    move-object/from16 v8, v37

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_1486

    .end local v34    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v9, "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_146b
    move-exception v0

    move-object/from16 v38, v1

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v8, v37

    .end local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_1486

    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v38    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v1    # "dynamicSystem":Lcom/android/server/DynamicSystemService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_1477
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    move-object/from16 v37, v11

    move-object/from16 v8, v37

    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v11    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    goto :goto_1486

    .end local v37    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .local v8, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catchall_1481
    move-exception v0

    move-object/from16 v40, v3

    move-object v3, v5

    move-object v5, v6

    .line 1761
    .end local v3    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v0    # "e":Ljava/lang/Throwable;
    .restart local v40    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :goto_1486
    const-string v6, "System"

    const-string v10, "******************************************"

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1762
    const-string v6, "System"

    const-string v10, "************ Failure starting core service"

    invoke-static {v6, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    throw v0
.end method

.method private startRotationResolverService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3326
    invoke-static {p1}, Lcom/android/server/rotationresolver/RotationResolverManagerService;->isServiceConfigured(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 3327
    const-string v0, "SystemServer"

    const-string v1, "RotationResolverService is not configured on this device"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3328
    return-void

    .line 3331
    :cond_e
    const-string v0, "StartRotationResolverService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3332
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/rotationresolver/RotationResolverManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 3333
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3335
    return-void
.end method

.method private startSystemCaptionsManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3260
    const v0, 0x1040261

    invoke-direct {p0, p1, v0}, Lcom/android/server/SystemServer;->deviceHasConfigString(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_11

    .line 3261
    const-string v0, "SystemServer"

    const-string v1, "SystemCaptionsManagerService disabled because resource is not overlaid"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3262
    return-void

    .line 3265
    :cond_11
    const-string v0, "StartSystemCaptionsManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3266
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.systemcaptions.SystemCaptionsManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3267
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3268
    return-void
.end method

.method private static startSystemUi(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "windowManager"    # Lcom/android/server/wm/WindowManagerService;

    .line 3344
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    .line 3345
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 3346
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 3347
    const/16 v2, 0x100

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 3349
    sget-object v2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 3350
    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->onSystemUiStarted()V

    .line 3351
    return-void
.end method

.method private startTextToSpeechManagerService(Landroid/content/Context;Lcom/android/server/utils/TimingsTraceAndSlog;)V
    .registers 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;

    .line 3272
    const-string v0, "StartTextToSpeechManagerService"

    invoke-virtual {p2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3273
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string v1, "com.android.server.texttospeech.TextToSpeechManagerService"

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 3274
    invoke-virtual {p2}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3275
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;

    .line 733
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-boolean v2, p0, Lcom/android/server/SystemServer;->mRuntimeRestart:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Runtime restart: %b\n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 734
    new-array v0, v0, [Ljava/lang/Object;

    iget v1, p0, Lcom/android/server/SystemServer;->mStartCount:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Start count: %d\n"

    invoke-virtual {p1, v1, v0}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 735
    const-string v0, "Runtime start-up time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 736
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartUptime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 737
    const-string v0, "Runtime start-elapsed time: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 738
    iget-wide v0, p0, Lcom/android/server/SystemServer;->mRuntimeStartElapsedTime:J

    invoke-static {v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 739
    return-void
.end method

.method public getDumpableName()Ljava/lang/String;
    .registers 2

    .line 728
    const-class v0, Lcom/android/server/SystemServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$startOtherServices$3$com-android-server-SystemServer()V
    .registers 4

    .line 2986
    const-string v0, "SystemServer"

    const-string v1, "WebViewFactoryPreparation"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2987
    invoke-static {}, Lcom/android/server/utils/TimingsTraceAndSlog;->newAsyncLog()Lcom/android/server/utils/TimingsTraceAndSlog;

    move-result-object v0

    .line 2988
    .local v0, "traceLog":Lcom/android/server/utils/TimingsTraceAndSlog;
    invoke-virtual {v0, v1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2989
    iget-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    const-string v2, "Zygote preload"

    invoke-static {v1, v2}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 2990
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/SystemServer;->mZygotePreload:Ljava/util/concurrent/Future;

    .line 2991
    iget-object v1, p0, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v1}, Lcom/android/server/webkit/WebViewUpdateService;->prepareWebViewInSystemServer()V

    .line 2992
    invoke-virtual {v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2993
    return-void
.end method

.method synthetic lambda$startOtherServices$5$com-android-server-SystemServer(Lcom/android/server/utils/TimingsTraceAndSlog;Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;ZLandroid/net/ConnectivityManager;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/VpnManagerService;Lcom/android/server/VcnManagementService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V
    .registers 30
    .param p1, "t"    # Lcom/android/server/utils/TimingsTraceAndSlog;
    .param p2, "dpms"    # Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;
    .param p3, "safeMode"    # Z
    .param p4, "connectivityF"    # Landroid/net/ConnectivityManager;
    .param p5, "networkManagementF"    # Lcom/android/server/NetworkManagementService;
    .param p6, "networkPolicyF"    # Lcom/android/server/net/NetworkPolicyManagerService;
    .param p7, "vpnManagerF"    # Lcom/android/server/VpnManagerService;
    .param p8, "vcnManagementF"    # Lcom/android/server/VcnManagementService;
    .param p9, "countryDetectorF"    # Lcom/android/server/CountryDetectorService;
    .param p10, "networkTimeUpdaterF"    # Lcom/android/server/NetworkTimeUpdateService;
    .param p11, "inputManagerF"    # Lcom/android/server/input/InputManagerService;
    .param p12, "telephonyRegistryF"    # Lcom/android/server/TelephonyRegistry;
    .param p13, "mediaRouterF"    # Lcom/android/server/media/MediaRouterService;
    .param p14, "mmsServiceF"    # Lcom/android/server/MmsServiceBroker;

    .line 2960
    move-object v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    move-object/from16 v4, p6

    const-string v0, "SystemServer"

    const-string v5, "Making services ready"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2961
    const-string v0, "StartActivityManagerReadyPhase"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2962
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x226

    invoke-virtual {v0, v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 2963
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2964
    const-string v0, "StartObservingNativeCrashes"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2966
    :try_start_22
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->startObservingNativeCrashes()V
    :try_end_27
    .catchall {:try_start_22 .. :try_end_27} :catchall_28

    .line 2969
    goto :goto_2f

    .line 2967
    :catchall_28
    move-exception v0

    .line 2968
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "observing native crashes"

    invoke-direct {p0, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2970
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_2f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2972
    const-string v0, "RegisterAppOpsPolicy"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 2974
    :try_start_37
    iget-object v0, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v5, Lcom/android/server/policy/AppOpsPolicy;

    iget-object v6, v1, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v5, v6}, Lcom/android/server/policy/AppOpsPolicy;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Lcom/android/server/am/ActivityManagerService;->setAppOpsPolicy(Landroid/app/AppOpsManagerInternal$CheckOpsDelegate;)V
    :try_end_43
    .catchall {:try_start_37 .. :try_end_43} :catchall_44

    .line 2977
    goto :goto_4b

    .line 2975
    :catchall_44
    move-exception v0

    .line 2976
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v5, "registering app ops policy"

    invoke-direct {p0, v5, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2978
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_4b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 2982
    const-string v5, "WebViewFactoryPreparation"

    .line 2983
    .local v5, "WEBVIEW_PREPARATION":Ljava/lang/String;
    const/4 v0, 0x0

    .line 2984
    .local v0, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    iget-boolean v6, v1, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const-string v7, "WebViewFactoryPreparation"

    if-nez v6, :cond_66

    iget-object v6, v1, Lcom/android/server/SystemServer;->mWebViewUpdateService:Lcom/android/server/webkit/WebViewUpdateService;

    if-eqz v6, :cond_66

    .line 2985
    new-instance v6, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;

    invoke-direct {v6, p0}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/SystemServer;)V

    invoke-static {v6, v7}, Lcom/android/server/SystemServerInitThreadPool;->submit(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/util/concurrent/Future;

    move-result-object v0

    move-object v6, v0

    goto :goto_67

    .line 2996
    :cond_66
    move-object v6, v0

    .end local v0    # "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    .local v6, "webviewPrep":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    :goto_67
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 2997
    const-string v8, "android.hardware.type.automotive"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v8

    .line 2998
    .local v8, "isAutomotive":Z
    if-eqz v8, :cond_9d

    .line 2999
    const-string v0, "StartCarServiceHelperService"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3000
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 3001
    const-string v9, "com.android.internal.car.CarServiceHelperService"

    invoke-virtual {v0, v9}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    move-result-object v0

    .line 3002
    .local v0, "cshs":Lcom/android/server/SystemService;
    instance-of v9, v0, Landroid/util/Dumpable;

    if-eqz v9, :cond_8a

    .line 3003
    iget-object v9, v1, Lcom/android/server/SystemServer;->mDumper:Lcom/android/server/SystemServer$SystemServerDumper;

    move-object v10, v0

    check-cast v10, Landroid/util/Dumpable;

    invoke-static {v9, v10}, Lcom/android/server/SystemServer$SystemServerDumper;->-$$Nest$maddDumpable(Lcom/android/server/SystemServer$SystemServerDumper;Landroid/util/Dumpable;)V

    .line 3005
    :cond_8a
    instance-of v9, v0, Landroid/app/admin/DevicePolicySafetyChecker;

    if-eqz v9, :cond_97

    .line 3006
    move-object v9, v0

    check-cast v9, Landroid/app/admin/DevicePolicySafetyChecker;

    move-object/from16 v10, p2

    invoke-virtual {v10, v9}, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;->setDevicePolicySafetyChecker(Landroid/app/admin/DevicePolicySafetyChecker;)V

    goto :goto_99

    .line 3005
    :cond_97
    move-object/from16 v10, p2

    .line 3008
    :goto_99
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    goto :goto_9f

    .line 2998
    .end local v0    # "cshs":Lcom/android/server/SystemService;
    :cond_9d
    move-object/from16 v10, p2

    .line 3016
    :goto_9f
    if-eqz p3, :cond_b6

    .line 3017
    const-string v0, "EnableAirplaneModeInSafeMode"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3019
    const/4 v0, 0x1

    :try_start_a7
    invoke-virtual {v3, v0}, Landroid/net/ConnectivityManager;->setAirplaneMode(Z)V
    :try_end_aa
    .catchall {:try_start_a7 .. :try_end_aa} :catchall_ab

    .line 3022
    goto :goto_b3

    .line 3020
    :catchall_ab
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 3021
    .local v0, "e":Ljava/lang/Throwable;
    const-string v9, "enabling Airplane Mode during Safe Mode bootup"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3023
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_b3
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3025
    :cond_b6
    const-string v0, "MakeNetworkManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3027
    if-eqz p5, :cond_cb

    .line 3028
    :try_start_bd
    invoke-virtual/range {p5 .. p5}, Lcom/android/server/NetworkManagementService;->systemReady()V
    :try_end_c0
    .catchall {:try_start_bd .. :try_end_c0} :catchall_c1

    goto :goto_cb

    .line 3030
    :catchall_c1
    move-exception v0

    move-object v9, v0

    move-object v0, v9

    .line 3031
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v9, "making Network Managment Service ready"

    invoke-direct {p0, v9, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_cc

    .line 3032
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_cb
    :goto_cb
    nop

    .line 3033
    :goto_cc
    const/4 v0, 0x0

    .line 3034
    .local v0, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    if-eqz v4, :cond_d6

    .line 3035
    nop

    .line 3036
    invoke-virtual/range {p6 .. p6}, Lcom/android/server/net/NetworkPolicyManagerService;->networkScoreAndNetworkManagementServiceReady()Ljava/util/concurrent/CountDownLatch;

    move-result-object v0

    move-object v9, v0

    goto :goto_d7

    .line 3034
    :cond_d6
    move-object v9, v0

    .line 3038
    .end local v0    # "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    .local v9, "networkPolicyInitReadySignal":Ljava/util/concurrent/CountDownLatch;
    :goto_d7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3039
    const-string v0, "MakeConnectivityServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3041
    if-eqz v3, :cond_ef

    .line 3042
    :try_start_e1
    invoke-virtual/range {p4 .. p4}, Landroid/net/ConnectivityManager;->systemReady()V
    :try_end_e4
    .catchall {:try_start_e1 .. :try_end_e4} :catchall_e5

    goto :goto_ef

    .line 3044
    :catchall_e5
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3045
    .local v0, "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Connectivity Service ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_f0

    .line 3046
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_ef
    :goto_ef
    nop

    .line 3047
    :goto_f0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3048
    const-string v0, "MakeVpnManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3050
    if-eqz p7, :cond_108

    .line 3051
    :try_start_fa
    invoke-virtual/range {p7 .. p7}, Lcom/android/server/VpnManagerService;->systemReady()V
    :try_end_fd
    .catchall {:try_start_fa .. :try_end_fd} :catchall_fe

    goto :goto_108

    .line 3053
    :catchall_fe
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3054
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making VpnManagerService ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_109

    .line 3055
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_108
    :goto_108
    nop

    .line 3056
    :goto_109
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3057
    const-string v0, "MakeVcnManagementServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3059
    if-eqz p8, :cond_121

    .line 3060
    :try_start_113
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/VcnManagementService;->systemReady()V
    :try_end_116
    .catchall {:try_start_113 .. :try_end_116} :catchall_117

    goto :goto_121

    .line 3062
    :catchall_117
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3063
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making VcnManagementService ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_122

    .line 3064
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_121
    :goto_121
    nop

    .line 3065
    :goto_122
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3066
    const-string v0, "MakeNetworkPolicyServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3068
    if-eqz v4, :cond_13a

    .line 3069
    :try_start_12c
    invoke-virtual {v4, v9}, Lcom/android/server/net/NetworkPolicyManagerService;->systemReady(Ljava/util/concurrent/CountDownLatch;)V
    :try_end_12f
    .catchall {:try_start_12c .. :try_end_12f} :catchall_130

    goto :goto_13a

    .line 3071
    :catchall_130
    move-exception v0

    move-object v11, v0

    move-object v0, v11

    .line 3072
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v11, "making Network Policy Service ready"

    invoke-direct {p0, v11, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_13b

    .line 3073
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_13a
    :goto_13a
    nop

    .line 3074
    :goto_13b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3077
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->waitForAppDataPrepared()V

    .line 3081
    const-string v0, "PhaseThirdPartyAppsCanStart"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3083
    if-eqz v6, :cond_14d

    .line 3084
    invoke-static {v6, v7}, Lcom/android/internal/util/ConcurrentUtils;->waitForFutureNoInterrupt(Ljava/util/concurrent/Future;Ljava/lang/String;)Ljava/lang/Object;

    .line 3086
    :cond_14d
    iget-object v0, v1, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v7, 0x258

    invoke-virtual {v0, v2, v7}, Lcom/android/server/SystemServiceManager;->startBootPhase(Lcom/android/server/utils/TimingsTraceAndSlog;I)V

    .line 3087
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3089
    invoke-static {}, Landroid/os/UserManager;->isHeadlessSystemUserMode()Z

    move-result v0

    if-eqz v0, :cond_173

    if-nez v8, :cond_173

    .line 3091
    const-string v0, "BootUserInitializer"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3092
    new-instance v0, Lcom/android/server/BootUserInitializer;

    iget-object v7, v1, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v11, v1, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    invoke-direct {v0, v7, v11}, Lcom/android/server/BootUserInitializer;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/ContentResolver;)V

    invoke-virtual {v0, v2}, Lcom/android/server/BootUserInitializer;->init(Lcom/android/server/utils/TimingsTraceAndSlog;)V

    .line 3093
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3096
    :cond_173
    const-string v0, "StartNetworkStack"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3103
    :try_start_178
    invoke-static {}, Landroid/net/NetworkStackClient;->getInstance()Landroid/net/NetworkStackClient;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStackClient;->start()V
    :try_end_17f
    .catchall {:try_start_178 .. :try_end_17f} :catchall_180

    .line 3106
    goto :goto_187

    .line 3104
    :catchall_180
    move-exception v0

    .line 3105
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Network Stack"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3107
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_187
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3109
    const-string v0, "StartTethering"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3112
    :try_start_18f
    invoke-static {}, Landroid/net/ConnectivityModuleConnector;->getInstance()Landroid/net/ConnectivityModuleConnector;

    move-result-object v0

    const-string v7, "android.net.ITetheringConnector"

    const-string v11, "android.permission.MAINLINE_NETWORK_STACK"

    new-instance v12, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;

    invoke-direct {v12}, Lcom/android/server/SystemServer$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v7, v11, v12}, Landroid/net/ConnectivityModuleConnector;->startModuleService(Ljava/lang/String;Ljava/lang/String;Landroid/net/ConnectivityModuleConnector$ModuleServiceCallback;)V
    :try_end_19f
    .catchall {:try_start_18f .. :try_end_19f} :catchall_1a0

    .line 3121
    goto :goto_1a7

    .line 3119
    :catchall_1a0
    move-exception v0

    .line 3120
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string/jumbo v7, "starting Tethering"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3122
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_1a7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3124
    const-string v0, "MakeCountryDetectionServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3126
    if-eqz p9, :cond_1be

    .line 3127
    :try_start_1b1
    invoke-virtual/range {p9 .. p9}, Lcom/android/server/CountryDetectorService;->systemRunning()V
    :try_end_1b4
    .catchall {:try_start_1b1 .. :try_end_1b4} :catchall_1b5

    goto :goto_1be

    .line 3129
    :catchall_1b5
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3130
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying CountryDetectorService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1bf

    .line 3131
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1be
    :goto_1be
    nop

    .line 3132
    :goto_1bf
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3133
    const-string v0, "MakeNetworkTimeUpdateReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3135
    if-eqz p10, :cond_1d6

    .line 3136
    :try_start_1c9
    invoke-virtual/range {p10 .. p10}, Lcom/android/server/NetworkTimeUpdateService;->systemRunning()V
    :try_end_1cc
    .catchall {:try_start_1c9 .. :try_end_1cc} :catchall_1cd

    goto :goto_1d6

    .line 3138
    :catchall_1cd
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3139
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying NetworkTimeService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1d7

    .line 3140
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1d6
    :goto_1d6
    nop

    .line 3141
    :goto_1d7
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3142
    const-string v0, "MakeInputManagerServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3145
    if-eqz p11, :cond_1ee

    .line 3146
    :try_start_1e1
    invoke-virtual/range {p11 .. p11}, Lcom/android/server/input/InputManagerService;->systemRunning()V
    :try_end_1e4
    .catchall {:try_start_1e1 .. :try_end_1e4} :catchall_1e5

    goto :goto_1ee

    .line 3148
    :catchall_1e5
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3149
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying InputManagerService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1ef

    .line 3150
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_1ee
    :goto_1ee
    nop

    .line 3151
    :goto_1ef
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3152
    const-string v0, "MakeTelephonyRegistryReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3154
    if-eqz p12, :cond_206

    .line 3155
    :try_start_1f9
    invoke-virtual/range {p12 .. p12}, Lcom/android/server/TelephonyRegistry;->systemRunning()V
    :try_end_1fc
    .catchall {:try_start_1f9 .. :try_end_1fc} :catchall_1fd

    goto :goto_206

    .line 3157
    :catchall_1fd
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3158
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying TelephonyRegistry running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_207

    .line 3159
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_206
    :goto_206
    nop

    .line 3160
    :goto_207
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3161
    const-string v0, "MakeMediaRouterServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3163
    if-eqz p13, :cond_21e

    .line 3164
    :try_start_211
    invoke-virtual/range {p13 .. p13}, Lcom/android/server/media/MediaRouterService;->systemRunning()V
    :try_end_214
    .catchall {:try_start_211 .. :try_end_214} :catchall_215

    goto :goto_21e

    .line 3166
    :catchall_215
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3167
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MediaRouterService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_21f

    .line 3168
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_21e
    :goto_21e
    nop

    .line 3169
    :goto_21f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3170
    iget-object v0, v1, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v7, "android.hardware.telephony"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_244

    .line 3171
    const-string v0, "MakeMmsServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3173
    if-eqz p14, :cond_240

    :try_start_233
    invoke-virtual/range {p14 .. p14}, Lcom/android/server/MmsServiceBroker;->systemRunning()V
    :try_end_236
    .catchall {:try_start_233 .. :try_end_236} :catchall_237

    goto :goto_240

    .line 3174
    :catchall_237
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3175
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Notifying MmsService running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_241

    .line 3176
    .end local v0    # "e":Ljava/lang/Throwable;
    :cond_240
    :goto_240
    nop

    .line 3177
    :goto_241
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3180
    :cond_244
    const-string v0, "IncidentDaemonReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3184
    :try_start_249
    const-string/jumbo v0, "incident"

    .line 3185
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3184
    invoke-static {v0}, Landroid/os/IIncidentManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IIncidentManager;

    move-result-object v0

    .line 3186
    .local v0, "incident":Landroid/os/IIncidentManager;
    if-eqz v0, :cond_259

    .line 3187
    invoke-interface {v0}, Landroid/os/IIncidentManager;->systemRunning()V
    :try_end_259
    .catchall {:try_start_249 .. :try_end_259} :catchall_25a

    .line 3191
    .end local v0    # "incident":Landroid/os/IIncidentManager;
    :cond_259
    goto :goto_260

    .line 3189
    :catchall_25a
    move-exception v0

    .line 3190
    .local v0, "e":Ljava/lang/Throwable;
    const-string v7, "Notifying incident daemon running"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3192
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_260
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3194
    iget-wide v11, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    const-wide/16 v13, 0x0

    cmp-long v0, v11, v13

    if-eqz v0, :cond_278

    .line 3195
    const-string v0, "MakeIncrementalServiceReady"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3196
    iget-wide v11, v1, Lcom/android/server/SystemServer;->mIncrementalServiceHandle:J

    invoke-static {v11, v12}, Lcom/android/server/SystemServer;->setIncrementalServiceSystemReady(J)V

    .line 3197
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3200
    :cond_278
    const-string v0, "OdsignStatsLogger"

    invoke-virtual {v2, v0}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceBegin(Ljava/lang/String;)V

    .line 3202
    :try_start_27d
    invoke-static {}, Lcom/android/server/pm/dex/OdsignStatsLogger;->triggerStatsWrite()V
    :try_end_280
    .catchall {:try_start_27d .. :try_end_280} :catchall_281

    .line 3205
    goto :goto_289

    .line 3203
    :catchall_281
    move-exception v0

    move-object v7, v0

    move-object v0, v7

    .line 3204
    .restart local v0    # "e":Ljava/lang/Throwable;
    const-string v7, "Triggering OdsignStatsLogger"

    invoke-direct {p0, v7, v0}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3206
    .end local v0    # "e":Ljava/lang/Throwable;
    :goto_289
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/utils/TimingsTraceAndSlog;->traceEnd()V

    .line 3207
    return-void
.end method
