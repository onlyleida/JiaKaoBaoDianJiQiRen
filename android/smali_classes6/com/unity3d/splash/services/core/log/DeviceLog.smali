.class public Lcom/unity3d/splash/services/core/log/DeviceLog;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;
    }
.end annotation


# static fields
.field private static a:Z = true

.field private static b:Z = true

.field private static c:Z = true

.field private static d:Z = true

.field private static e:Z = false

.field private static final f:Ljava/util/HashMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->f:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/b;

    const-string v3, "i"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/b;

    const-string v3, "d"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/b;

    const-string v3, "w"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    new-instance v2, Lcom/unity3d/splash/services/core/log/b;

    const-string v3, "e"

    invoke-direct {v2, v3}, Lcom/unity3d/splash/services/core/log/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/local/tmp/UnityAdsForceDebugMode"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->e:Z

    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string p0, "DO NOT USE EMPTY MESSAGES, use DeviceLog.entered() instead"

    :cond_1
    return-object p0
.end method

.method private static b(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/splash/services/core/log/a;
    .locals 8

    const-class v0, Lcom/unity3d/splash/services/core/log/DeviceLog;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->g(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/splash/services/core/log/b;

    move-result-object p0

    const/4 v2, 0x0

    if-eqz p0, :cond_4

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    array-length v5, v1

    if-ge v3, v5, :cond_2

    aget-object v5, v1, v3

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    :cond_0
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    if-nez v4, :cond_2

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    array-length v0, v1

    if-ge v3, v0, :cond_3

    aget-object v0, v1, v3

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    new-instance v2, Lcom/unity3d/splash/services/core/log/a;

    invoke-direct {v2, p0, p1, v0}, Lcom/unity3d/splash/services/core/log/a;-><init>(Lcom/unity3d/splash/services/core/log/b;Ljava/lang/String;Ljava/lang/StackTraceElement;)V

    :cond_4
    return-object v2
.end method

.method public static c(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->d:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc00

    if-le v0, v1, :cond_2

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x7800

    if-ge v0, v2, :cond_1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->DEBUG:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->k(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static d()V
    .locals 1

    const-string v0, "ENTERED METHOD"

    invoke-static {v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->k(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static f(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string p0, ": "

    if-eqz p1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    sget-object p0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->ERROR:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0, v0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->k(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private static g(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;)Lcom/unity3d/splash/services/core/log/b;
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->f:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/unity3d/splash/services/core/log/b;

    return-object p0
.end method

.method public static h(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->INFO:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->k(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method public static i(I)V
    .locals 3

    const/4 v0, 0x1

    const/16 v1, 0x8

    if-lt p0, v1, :cond_0

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->a:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->b:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->c:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->d:Z

    return-void

    :cond_0
    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt p0, v1, :cond_1

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->a:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->b:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->c:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->d:Z

    return-void

    :cond_1
    const/4 v1, 0x2

    if-lt p0, v1, :cond_2

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->a:Z

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->b:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->c:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->d:Z

    return-void

    :cond_2
    if-lez p0, :cond_3

    sput-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->a:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->b:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->c:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->d:Z

    return-void

    :cond_3
    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->a:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->b:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->c:Z

    sput-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->d:Z

    return-void
.end method

.method public static j(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;->WARNING:Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->k(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V

    return-void
.end method

.method private static k(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/unity3d/splash/services/core/log/DeviceLog$a;->a:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_2

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->a:Z

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->b:Z

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->d:Z

    goto :goto_0

    :cond_3
    sget-boolean v0, Lcom/unity3d/splash/services/core/log/DeviceLog;->c:Z

    :goto_0
    sget-boolean v2, Lcom/unity3d/splash/services/core/log/DeviceLog;->e:Z

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    move v1, v0

    :goto_1
    if-eqz v1, :cond_5

    invoke-static {p0, p1}, Lcom/unity3d/splash/services/core/log/DeviceLog;->b(Lcom/unity3d/splash/services/core/log/DeviceLog$UnityAdsLogLevel;Ljava/lang/String;)Lcom/unity3d/splash/services/core/log/a;

    move-result-object p0

    invoke-static {p0}, Lcom/unity3d/splash/services/core/log/DeviceLog;->l(Lcom/unity3d/splash/services/core/log/a;)V

    :cond_5
    return-void
.end method

.method private static l(Lcom/unity3d/splash/services/core/log/a;)V
    .locals 10

    const-class v0, Ljava/lang/String;

    const-string v1, "Writing to log failed!"

    const-string v2, "UnityAds"

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/a;->a()Lcom/unity3d/splash/services/core/log/b;

    move-result-object v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    :try_start_0
    const-class v7, Landroid/util/Log;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/a;->a()Lcom/unity3d/splash/services/core/log/b;

    move-result-object v8

    invoke-virtual {v8}, Lcom/unity3d/splash/services/core/log/b;->b()Ljava/lang/String;

    move-result-object v8

    new-array v9, v5, [Ljava/lang/Class;

    aput-object v0, v9, v4

    aput-object v0, v9, v3

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v6

    :goto_0
    if-eqz v0, :cond_0

    :try_start_1
    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/a;->a()Lcom/unity3d/splash/services/core/log/b;

    move-result-object v7

    invoke-virtual {v7}, Lcom/unity3d/splash/services/core/log/b;->a()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v4

    invoke-virtual {p0}, Lcom/unity3d/splash/services/core/log/a;->b()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v5, v3

    invoke-virtual {v0, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    return-void
.end method
