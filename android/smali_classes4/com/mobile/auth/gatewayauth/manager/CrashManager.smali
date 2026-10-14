.class public Lcom/mobile/auth/gatewayauth/manager/CrashManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/mobile/auth/gatewayauth/manager/d;

.field private d:Lcom/nirvana/tools/crash/OnCrashCallback;

.field private e:Lcom/nirvana/tools/crash/SdkInfo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "auth_number_product-2.12.1.2-log-online-standard-release_alijtca_plus"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->b:Landroid/content/Context;

    new-instance v0, Lcom/mobile/auth/gatewayauth/manager/d;

    invoke-direct {v0, p1}, Lcom/mobile/auth/gatewayauth/manager/d;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->c:Lcom/mobile/auth/gatewayauth/manager/d;

    new-instance p1, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;

    invoke-direct {p1, p0}, Lcom/mobile/auth/gatewayauth/manager/CrashManager$1;-><init>(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)V

    iput-object p1, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->d:Lcom/nirvana/tools/crash/OnCrashCallback;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)Landroid/content/Context;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->b:Landroid/content/Context;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)Lcom/mobile/auth/gatewayauth/manager/CrashManager;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    invoke-direct {v1, p0}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    :cond_1
    :goto_0
    sget-object p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a:Lcom/mobile/auth/gatewayauth/manager/CrashManager;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object p0

    :catchall_1
    move-exception p0

    const/4 v0, 0x0

    :try_start_3
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v0

    :catchall_2
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method static synthetic a(Lcom/mobile/auth/gatewayauth/manager/CrashManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    :try_start_0
    invoke-static {}, Lcom/mobile/auth/gatewayauth/utils/ReflectionUtils;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/o/a;->a(Landroid/content/Context;)Lcom/mobile/auth/o/a;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "Sdk_Crash!["

    aput-object v5, v0, v4

    const/4 v4, 0x1

    aput-object p2, v0, v4

    const/4 p2, 0x2

    const-string v4, "]"

    aput-object v4, v0, p2

    const/4 p2, 0x3

    aput-object p1, v0, p2

    const/4 p1, 0x4

    const-string p2, "deviceId:"

    aput-object p2, v0, p1

    const/4 p1, 0x5

    sget-object p2, Lcom/mobile/auth/gatewayauth/manager/d;->a:Ljava/lang/String;

    aput-object p2, v0, p1

    invoke-virtual {v1, v0}, Lcom/mobile/auth/o/a;->e([Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide/32 v4, 0xf4240

    add-long/2addr v4, p1

    const/4 v6, 0x6

    invoke-virtual/range {v1 .. v6}, Lcom/mobile/auth/o/a;->a(JJI)V

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method static synthetic b(Lcom/mobile/auth/gatewayauth/manager/CrashManager;)Lcom/mobile/auth/gatewayauth/manager/d;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->c:Lcom/mobile/auth/gatewayauth/manager/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v0

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->d:Lcom/nirvana/tools/crash/OnCrashCallback;

    const-string v2, "DYPNS"

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/nirvana/tools/crash/OnCrashCallback;->onCrashOccurred(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public a(Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/lang/String;)V
    .locals 3

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UploadException["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/utils/f;->c(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-static {}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->getInstance()Lcom/mobile/auth/gatewayauth/manager/FeatureManager;

    move-result-object v1

    const-string v2, "CRASH_SDK"

    invoke-virtual {v1, v2}, Lcom/mobile/auth/gatewayauth/manager/FeatureManager;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "uuid"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "deviceID"

    sget-object v2, Lcom/mobile/auth/gatewayauth/manager/d;->a:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/nirvana/tools/crash/CrashSdk;->getInstance()Lcom/nirvana/tools/crash/CrashSdk;

    move-result-object v1

    iget-object v2, p0, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->e:Lcom/nirvana/tools/crash/SdkInfo;

    invoke-virtual {v1, v2, p1, p2, v0}, Lcom/nirvana/tools/crash/CrashSdk;->uploadException(Lcom/nirvana/tools/crash/SdkInfo;Ljava/lang/Thread;Ljava/lang/Throwable;Ljava/util/Map;)Z

    move-result v0

    :cond_0
    if-nez v0, :cond_1

    invoke-static {p2}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p3}, Lcom/mobile/auth/gatewayauth/manager/CrashManager;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_1
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public native loadCrashComponent()Z
    .annotation build Lcom/mobile/auth/gatewayauth/annotations/SafeProtector;
    .end annotation
.end method
