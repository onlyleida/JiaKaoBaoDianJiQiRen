.class public Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ALIVC_CONAN_VERSION:Ljava/lang/String; = "2.0"

.field public static final ALIVC_DATA_FILE:Ljava/io/File;

.field public static final DATA_DIRECTORY:Ljava/lang/String; = "AliLiveData"

.field private static final MAX_WRITE_COUNT:I = 0xa

.field private static final UUID_FILE:Ljava/lang/String; = "alilive_data.txt"

.field private static final UUID_PROP:Ljava/lang/String; = "UUID"

.field private static mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

.field private static sAppContext:Landroid/content/Context;

.field private static sCpuProcessorInfo:Ljava/lang/String;

.field private static sDeviceUUID:Ljava/lang/String;

.field private static sSessionId:Ljava/lang/String;

.field private static sWriteUUIDCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "AliLiveData"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->ALIVC_DATA_FILE:Ljava/io/File;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sWriteUUIDCount:I

    return v0
.end method

.method static synthetic access$008()I
    .locals 2

    sget v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sWriteUUIDCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sWriteUUIDCount:I

    return v0
.end method

.method static synthetic access$100(Ljava/io/File;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->writeUUIDToFile(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method

.method public static checkNetworkPermission()Z
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.ACCESS_NETWORK_STATE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static checkWriteFilePermission()Z
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v2

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static generateNewSessionId()Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sSessionId:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUInfo()Ljava/lang/String;
    .locals 8

    const-class v0, Ljava/lang/String;

    const-string v1, ""

    :try_start_0
    const-string v2, "android.os.SystemProperties"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v3, "get"

    const/4 v4, 0x2

    :try_start_1
    new-array v5, v4, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v0, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x0

    new-array v3, v4, [Ljava/lang/Object;

    const-string v4, "ro.board.platform"

    aput-object v4, v3, v6

    aput-object v1, v3, v7

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    :cond_0
    return-object v0
.end method

.method public static getCPUProcessorInfo()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sCpuProcessorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sCpuProcessorInfo:Ljava/lang/String;

    return-object v0

    :cond_0
    invoke-static {}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->requestCPUInfo()V

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sCpuProcessorInfo:Ljava/lang/String;

    return-object v0
.end method

.method public static getCPUUsageRatio()D
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;-><init>()V

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    :cond_0
    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    invoke-static {}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->getSDKContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->updateCpuUsages(Landroid/content/Context;)V

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->getMyPicCpuPercent()D

    move-result-wide v0

    return-wide v0
.end method

.method public static getCurrentTimestamp()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SimpleDateFormat"
        }
    .end annotation

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd-HH-mm-ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDeviceBrand()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceManufacturer()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    return-object v0
.end method

.method public static getDeviceModel()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    return-object v0
.end method

.method public static declared-synchronized getDeviceUUID()Ljava/lang/String;
    .locals 5

    const-class v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sDeviceUUID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sDeviceUUID:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->ALIVC_DATA_FILE:Ljava/io/File;

    const-string v3, "alilive_data.txt"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v3, 0x0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_3

    new-instance v2, Ljava/util/Properties;

    invoke-direct {v2}, Ljava/util/Properties;-><init>()V

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-virtual {v2, v4}, Ljava/util/Properties;->load(Ljava/io/Reader;)V

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    const-string v4, "UUID"

    invoke-virtual {v2, v4}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sDeviceUUID:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    :cond_3
    :try_start_3
    sget-object v2, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sDeviceUUID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    sput v3, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sWriteUUIDCount:I

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "-"

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sDeviceUUID:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->writeUUIDToFile(Ljava/io/File;Ljava/lang/String;)V

    :cond_4
    sget-object v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sDeviceUUID:Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    monitor-exit v0

    return-object v1

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getElectricUsageRatio()Ljava/lang/String;
    .locals 4

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    :try_start_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_0

    const-string v2, "level"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    if-eqz v0, :cond_1

    const-string v3, "scale"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :cond_1
    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_2
    const-string v0, "0"

    return-object v0
.end method

.method public static getGPUInfo()Ljava/lang/String;
    .locals 1

    const-string v0, ""

    return-object v0
.end method

.method public static getMemoryUsageRatio()Ljava/lang/String;
    .locals 6

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_0

    iget-wide v0, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    long-to-float v0, v0

    const/high16 v1, 0x3f800000    # 1.0f

    mul-float v0, v0, v1

    long-to-float v2, v2

    div-float/2addr v0, v2

    sub-float/2addr v1, v0

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float v1, v1, v0

    float-to-int v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    :cond_0
    const-string v0, "0"

    return-object v0
.end method

.method public static getOSVersion()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    return-object v0
.end method

.method public static getOpenGLVersion()Ljava/lang/String;
    .locals 2

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    :try_start_0
    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v0, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static getSDKContext()Landroid/content/Context;
    .locals 1

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getSDKVersion()Ljava/lang/String;
    .locals 1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getTerminalType()Ljava/lang/String;
    .locals 3

    const-string v0, "phone"

    :try_start_0
    sget-object v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->screenLayout:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit8 v1, v1, 0xf

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    const-string v0, "pad"

    :catchall_0
    :cond_0
    return-object v0
.end method

.method private static requestCPUInfo()V
    .locals 9

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v2, Ljava/io/BufferedReader;

    invoke-direct {v2, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    add-int/2addr v4, v5

    const/16 v6, 0x1e

    if-lt v4, v6, :cond_0

    goto :goto_1

    :cond_0
    const-string v6, ":\\s+"

    const/4 v7, 0x2

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    array-length v6, v0

    if-le v6, v5, :cond_1

    aget-object v6, v0, v3

    const-string v7, "Processor"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    aget-object v0, v0, v5

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sCpuProcessorInfo:Ljava/lang/String;

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sCpuProcessorInfo:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez v0, :cond_2

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catch_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_8

    goto :goto_6

    :cond_2
    :try_start_6
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    goto :goto_2

    :catchall_1
    move-exception v2

    move-object v8, v2

    move-object v2, v0

    move-object v0, v1

    move-object v1, v8

    goto :goto_2

    :catch_2
    move-object v2, v0

    :catch_3
    move-object v0, v1

    goto :goto_4

    :catchall_2
    move-exception v1

    move-object v2, v0

    :goto_2
    if-eqz v0, :cond_3

    :try_start_7
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    nop

    :cond_3
    :goto_3
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    :catch_5
    :cond_4
    throw v1

    :catch_6
    move-object v2, v0

    :goto_4
    if-eqz v0, :cond_5

    :try_start_9
    invoke-virtual {v0}, Ljava/io/FileReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_7

    goto :goto_5

    :catch_7
    nop

    :cond_5
    :goto_5
    if-eqz v2, :cond_6

    :catch_8
    :goto_6
    :try_start_a
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :catch_9
    :cond_6
    return-void
.end method

.method public static setSDKContext(Landroid/content/Context;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    sput-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->sAppContext:Landroid/content/Context;

    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    if-nez v0, :cond_1

    new-instance v0, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    invoke-direct {v0}, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;-><init>()V

    sput-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    :cond_1
    sget-object v0, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils;->mCpuTracker:Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;

    invoke-virtual {v0, p0}, Lcom/alivc/live/pusher/logreport/core/ProcessCpuTracker;->updateCpuUsages(Landroid/content/Context;)V

    return-void
.end method

.method private static writeUUIDToFile(Ljava/io/File;Ljava/lang/String;)V
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    new-instance v1, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/alivc/live/pusher/logreport/core/AliLiveInfoUtils$1;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/16 p0, 0xbb8

    invoke-virtual {v0, v1, p0, p1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :cond_1
    :goto_0
    return-void
.end method
