.class public Lcom/iflytek/cloud/msc/util/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:[[Ljava/lang/String;

.field public static b:[[Ljava/lang/String;

.field private static c:[[Ljava/lang/String;

.field private static d:Lcom/iflytek/cloud/b/a;

.field private static e:Z

.field private static f:Ljava/lang/String;

.field private static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "="

    const-string v3, ":"

    .line 1
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, ","

    const-string v4, "_"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sput-object v1, Lcom/iflytek/cloud/msc/util/a;->a:[[Ljava/lang/String;

    const/16 v1, 0xb

    new-array v1, v1, [[Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "os.manufact"

    aput-object v5, v2, v3

    .line 2
    sget-object v5, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v5, v2, v4

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "os.model"

    aput-object v5, v2, v3

    sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v5, v2, v4

    aput-object v2, v1, v4

    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "os.product"

    aput-object v5, v2, v3

    sget-object v5, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    aput-object v5, v2, v4

    aput-object v2, v1, v0

    new-array v2, v0, [Ljava/lang/String;

    const-string v5, "os.display"

    aput-object v5, v2, v3

    sget-object v5, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    aput-object v5, v2, v4

    const/4 v5, 0x3

    aput-object v2, v1, v5

    new-array v2, v0, [Ljava/lang/String;

    const-string v6, "os.host"

    aput-object v6, v2, v3

    sget-object v6, Landroid/os/Build;->HOST:Ljava/lang/String;

    aput-object v6, v2, v4

    const/4 v6, 0x4

    aput-object v2, v1, v6

    new-array v2, v0, [Ljava/lang/String;

    const-string v7, "os.id"

    aput-object v7, v2, v3

    sget-object v7, Landroid/os/Build;->ID:Ljava/lang/String;

    aput-object v7, v2, v4

    const/4 v7, 0x5

    aput-object v2, v1, v7

    new-array v2, v0, [Ljava/lang/String;

    const-string v8, "os.device"

    aput-object v8, v2, v3

    sget-object v8, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    aput-object v8, v2, v4

    const/4 v8, 0x6

    aput-object v2, v1, v8

    new-array v2, v0, [Ljava/lang/String;

    const-string v9, "os.board"

    aput-object v9, v2, v3

    sget-object v9, Landroid/os/Build;->BOARD:Ljava/lang/String;

    aput-object v9, v2, v4

    const/4 v9, 0x7

    aput-object v2, v1, v9

    new-array v2, v0, [Ljava/lang/String;

    const-string v9, "os.brand"

    aput-object v9, v2, v3

    sget-object v9, Landroid/os/Build;->BRAND:Ljava/lang/String;

    aput-object v9, v2, v4

    const/16 v9, 0x8

    aput-object v2, v1, v9

    new-array v2, v0, [Ljava/lang/String;

    const-string v9, "os.user"

    aput-object v9, v2, v3

    sget-object v9, Landroid/os/Build;->USER:Ljava/lang/String;

    aput-object v9, v2, v4

    const/16 v9, 0x9

    aput-object v2, v1, v9

    new-array v2, v0, [Ljava/lang/String;

    const-string v9, "os.type"

    aput-object v9, v2, v3

    sget-object v9, Landroid/os/Build;->TYPE:Ljava/lang/String;

    aput-object v9, v2, v4

    const/16 v9, 0xa

    aput-object v2, v1, v9

    sput-object v1, Lcom/iflytek/cloud/msc/util/a;->b:[[Ljava/lang/String;

    new-array v1, v8, [[Ljava/lang/String;

    const-string v2, "os.cpu"

    const-string v8, "CPU_ABI"

    .line 3
    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const-string v2, "os.cpu2"

    const-string v8, "CPU_ABI2"

    filled-new-array {v2, v8}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "os.serial"

    const-string v4, "SERIAL"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    const-string v0, "os.hardware"

    const-string v2, "HARDWARE"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    const-string v0, "os.bootloader"

    const-string v2, "BOOTLOADER"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v6

    const-string v0, "os.radio"

    const-string v2, "RADIO"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v7

    sput-object v1, Lcom/iflytek/cloud/msc/util/a;->c:[[Ljava/lang/String;

    .line 4
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    .line 5
    sput-boolean v3, Lcom/iflytek/cloud/msc/util/a;->e:Z

    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/iflytek/cloud/msc/util/a;->f:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/iflytek/cloud/msc/util/a;->g:Ljava/lang/String;

    return-void
.end method

.method static synthetic a()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    const-string v0, ""

    const-string v1, "activity"

    .line 10
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager;

    .line 11
    :try_start_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 12
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    const-string v4, "android.permission.GET_TASKS"

    .line 13
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, v4, p0}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/16 v5, 0x17

    if-ge v2, v5, :cond_1

    if-eqz p0, :cond_1

    .line 14
    :try_start_2
    invoke-virtual {v1, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 15
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return-object p0

    :catch_0
    :cond_1
    return-object v0

    :catch_1
    move-exception p0

    .line 16
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method static synthetic a(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 2
    sput-object p0, Lcom/iflytek/cloud/msc/util/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method public static a(Lcom/iflytek/cloud/b/a;Landroid/content/Context;)V
    .locals 5

    .line 3
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "app.ver.name"

    .line 5
    :try_start_1
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v2, "app.ver.code"

    .line 6
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/content/pm/PackageInfo;->versionCode:I

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v2, v0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const-string v0, "app.pkg"

    .line 7
    :try_start_3
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    const-string v0, "app.path"

    .line 8
    :try_start_4
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    const-string v0, "app.name"

    .line 9
    :try_start_5
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    :catch_0
    return-void
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;
    .locals 2

    const-class v0, Lcom/iflytek/cloud/msc/util/a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-boolean v1, Lcom/iflytek/cloud/msc/util/a;->e:Z

    if-eqz v1, :cond_0

    .line 2
    sget-object p0, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 3
    :cond_0
    :try_start_1
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->g(Landroid/content/Context;)V

    .line 4
    sget-object p0, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check and replace src: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    if-eqz p0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 6
    :goto_0
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->a:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 7
    aget-object v3, v2, v1

    aget-object v3, v3, v0

    aget-object v2, v2, v1

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "check and replace result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    return-object p0
.end method

.method public static c(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 3
    sget-object v0, Lcom/iflytek/cloud/msc/util/a;->f:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    new-instance v0, Lcom/iflytek/cloud/msc/util/a$a;

    invoke-direct {v0, p0}, Lcom/iflytek/cloud/msc/util/a$a;-><init>(Landroid/content/Context;)V

    .line 5
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p0

    invoke-direct {v1, p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    const/4 p0, 0x1

    .line 6
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 7
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 8
    :cond_0
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get user agent: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/iflytek/cloud/msc/util/a;->f:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 9
    sget-object p0, Lcom/iflytek/cloud/msc/util/a;->f:Ljava/lang/String;

    return-object p0
.end method

.method private static c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const-string v0, "unknown"

    .line 1
    :try_start_0
    const-class v1, Landroid/os/Build;

    invoke-virtual {v1, p0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 2
    new-instance v1, Landroid/os/Build;

    invoke-direct {v1}, Landroid/os/Build;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    :cond_0
    return-object v0
.end method

.method public static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    :try_start_0
    const-string v0, "phone"

    .line 1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 2
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object p0

    .line 3
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_0

    :catchall_0
    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method public static e(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/msc/util/a;->g:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 p0, p0, 0xf

    const/4 v0, 0x3

    if-lt p0, v0, :cond_0

    const-string p0, "tablet"

    .line 3
    sput-object p0, Lcom/iflytek/cloud/msc/util/a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-lt p0, v0, :cond_1

    const-string p0, "handset"

    .line 4
    sput-object p0, Lcom/iflytek/cloud/msc/util/a;->g:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string p0, "unknow"

    .line 5
    sput-object p0, Lcom/iflytek/cloud/msc/util/a;->g:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 7
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "get device type: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/iflytek/cloud/msc/util/a;->g:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 8
    sget-object p0, Lcom/iflytek/cloud/msc/util/a;->g:Ljava/lang/String;

    return-object p0
.end method

.method public static f(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;
    .locals 4

    .line 1
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->b(Landroid/content/Context;)Lcom/iflytek/cloud/b/a;

    move-result-object p0

    .line 2
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    const-string v1, "app.name"

    .line 3
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "app.path"

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "app.pkg"

    .line 5
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "app.ver.name"

    .line 6
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "app.ver.code"

    .line 7
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.system"

    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.resolution"

    .line 9
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.density"

    .line 10
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "net.mac"

    .line 11
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.imei"

    .line 12
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.imsi"

    .line 13
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.version"

    .line 14
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.release"

    .line 15
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.incremental"

    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "os.android_id"

    .line 17
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    const-string v1, "carrier"

    .line 18
    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->b:[[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    .line 20
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->b:[[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    .line 21
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->b:[[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v1, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    .line 22
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->b:[[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v1, v1, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/iflytek/cloud/b/a;->a(Lcom/iflytek/cloud/b/a;Ljava/lang/String;)V

    return-object v0
.end method

.method private static g(Landroid/content/Context;)V
    .locals 6

    const/4 v0, 0x0

    .line 1
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v1}, Lcom/iflytek/cloud/b/a;->a()V

    .line 2
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    const-string v2, "os.system"

    const-string v3, "Android"

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    invoke-static {v1, p0}, Lcom/iflytek/cloud/msc/util/a;->a(Lcom/iflytek/cloud/b/a;Landroid/content/Context;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 5
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    const-string v3, "os.resolution"

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "*"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v3, "os.density"

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "phone"

    .line 7
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 8
    :try_start_3
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v3, "os.imei"

    :try_start_4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_5
    const-string v2, "Failed to get did Info:other exception"

    .line 9
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    const-string v2, "Failed to get did Info:SecurityException"

    .line 10
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 11
    :goto_0
    :try_start_6
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_6
    .catch Ljava/lang/SecurityException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    const-string v3, "os.imsi"

    :try_start_7
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/SecurityException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_1

    :catchall_1
    :try_start_8
    const-string v1, "Failed to get sbid Info:other exception"

    .line 12
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_1

    :catch_1
    const-string v1, "Failed to get sbid Info:SecurityException"

    .line 13
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 14
    :goto_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "android_id"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 16
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    const-string v3, "os.android_id"

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_0
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    const-string v2, "os.version"

    :try_start_9
    sget-object v3, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    const-string v2, "os.release"

    :try_start_a
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    const-string v2, "os.incremental"

    :try_start_b
    sget-object v3, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 20
    :goto_2
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->b:[[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x1

    if-ge v1, v3, :cond_1

    .line 21
    sget-object v3, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    aget-object v5, v2, v1

    aget-object v5, v5, v0

    aget-object v2, v2, v1

    aget-object v2, v2, v4

    invoke-virtual {v3, v5, v2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    const/4 v1, 0x0

    .line 22
    :goto_3
    sget-object v2, Lcom/iflytek/cloud/msc/util/a;->c:[[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_2

    .line 23
    aget-object v2, v2, v1

    aget-object v2, v2, v4

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 24
    sget-object v3, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    sget-object v5, Lcom/iflytek/cloud/msc/util/a;->c:[[Ljava/lang/String;

    aget-object v5, v5, v1

    aget-object v5, v5, v0

    invoke-virtual {v3, v5, v2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 25
    :cond_2
    sget-object v1, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    const-string v2, "carrier"

    :try_start_c
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/a;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    sget-object p0, Lcom/iflytek/cloud/msc/util/a;->d:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/b/a;->d()V

    .line 27
    sput-boolean v4, Lcom/iflytek/cloud/msc/util/a;->e:Z
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_4

    :catchall_2
    const-string p0, "Failed to get property Info"

    .line 28
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 29
    sput-boolean v0, Lcom/iflytek/cloud/msc/util/a;->e:Z

    goto :goto_4

    :catch_2
    const-string p0, "Failed to get prop Info"

    .line 30
    invoke-static {p0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 31
    sput-boolean v0, Lcom/iflytek/cloud/msc/util/a;->e:Z

    :goto_4
    return-void
.end method
