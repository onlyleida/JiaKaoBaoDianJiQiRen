.class public Lcom/mobile/auth/ab/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mobile/auth/ab/a$a;,
        Lcom/mobile/auth/ab/a$b;
    }
.end annotation


# static fields
.field private static volatile a:Lcom/mobile/auth/ab/a;


# instance fields
.field private b:Landroid/net/ConnectivityManager$NetworkCallback;

.field private c:Landroid/net/ConnectivityManager;

.field private volatile d:Lcom/mobile/auth/ab/a$a;

.field private e:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mobile/auth/ab/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    iput-object v0, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    iput-object v0, p0, Lcom/mobile/auth/ab/a;->e:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic a(Lcom/mobile/auth/ab/a;)Lcom/mobile/auth/ab/a$a;
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;
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

.method static synthetic a(Lcom/mobile/auth/ab/a;Lcom/mobile/auth/ab/a$a;)Lcom/mobile/auth/ab/a$a;
    .locals 0

    :try_start_0
    iput-object p1, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object p1
.end method

.method public static a()Lcom/mobile/auth/ab/a;
    .locals 2

    :try_start_0
    sget-object v0, Lcom/mobile/auth/ab/a;->a:Lcom/mobile/auth/ab/a;

    if-nez v0, :cond_1

    const-class v0, Lcom/mobile/auth/ab/a;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-object v1, Lcom/mobile/auth/ab/a;->a:Lcom/mobile/auth/ab/a;

    if-nez v1, :cond_0

    new-instance v1, Lcom/mobile/auth/ab/a;

    invoke-direct {v1}, Lcom/mobile/auth/ab/a;-><init>()V

    sput-object v1, Lcom/mobile/auth/ab/a;->a:Lcom/mobile/auth/ab/a;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/mobile/auth/ab/a;->a:Lcom/mobile/auth/ab/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    :catchall_1
    move-exception v0

    const/4 v1, 0x0

    :try_start_3
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    return-object v1

    :catchall_2
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method private a(Landroid/content/Context;Lcom/mobile/auth/ab/a$b;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "connectivity"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    new-instance p1, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p1}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {p1, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    const/16 v2, 0xc

    invoke-virtual {p1, v2}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    invoke-virtual {p1}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p1

    new-instance v2, Lcom/mobile/auth/ab/a$2;

    invoke-direct {v2, p0, p2}, Lcom/mobile/auth/ab/a$2;-><init>(Lcom/mobile/auth/ab/a;Lcom/mobile/auth/ab/a$b;)V

    iput-object v2, p0, Lcom/mobile/auth/ab/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v2, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v0, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    :cond_0
    new-instance v2, Lcom/mobile/auth/ab/a$a;

    invoke-direct {v2, p0, p2}, Lcom/mobile/auth/ab/a$a;-><init>(Lcom/mobile/auth/ab/a;Lcom/mobile/auth/ab/a$b;)V

    iput-object v2, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    iget-object v2, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    invoke-virtual {v2}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    iget-object v2, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    iget-object v3, p0, Lcom/mobile/auth/ab/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v2, p1, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p2, :cond_1

    invoke-interface {p2, v1, v0}, Lcom/mobile/auth/ab/a$b;->a(ZLandroid/net/Network;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :goto_0
    :try_start_2
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    const-string v1, "connectivity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_0

    const-string p1, "ConnectivityManager is null, cannot try to force a mobile connection"

    invoke-static {p1}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v1, 0x5

    invoke-virtual {p1, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "TYPE_MOBILE_HIPRI network state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1, v2}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_9

    sget-object v2, Landroid/net/NetworkInfo$State;->CONNECTING:Landroid/net/NetworkInfo$State;

    invoke-virtual {p1, v2}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    :cond_1
    iget-object p1, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    const-string v2, "enableHIPRI"

    invoke-virtual {p1, v0, v2}, Landroid/net/ConnectivityManager;->startUsingNetworkFeature(ILjava/lang/String;)I

    move-result p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startUsingNetworkFeature for enableHIPRI result: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    const/4 v2, -0x1

    if-ne v2, p1, :cond_2

    const-string p1, "Wrong result of startUsingNetworkFeature, maybe problems"

    invoke-static {p1}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    return v0

    :cond_2
    if-nez p1, :cond_3

    const-string p1, "No need to perform additional network settings"

    invoke-static {p1}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    return v3

    :cond_3
    invoke-static {p2}, Lcom/mobile/auth/ab/f;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Source address: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Destination host address to route: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_0

    :cond_4
    move-object p2, p1

    :goto_0
    invoke-static {p2}, Lcom/mobile/auth/ab/f;->c(Ljava/lang/String;)I

    move-result p1

    if-ne v2, p1, :cond_5

    const-string p1, "Wrong host address transformation, result was -1"

    invoke-static {p1}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return v0

    :cond_5
    const/4 p2, 0x0

    :goto_1
    const/4 v2, 0x3

    if-ge p2, v2, :cond_7

    :try_start_1
    iget-object v2, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {v2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v2

    sget-object v3, Landroid/net/NetworkInfo$State;->CONNECTED:Landroid/net/NetworkInfo$State;

    invoke-virtual {v2, v3}, Landroid/net/NetworkInfo$State;->compareTo(Ljava/lang/Enum;)I

    move-result v2

    if-nez v2, :cond_6

    goto :goto_2

    :cond_6
    const-wide/16 v2, 0x3e8

    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    :catch_0
    :cond_7
    :goto_2
    :try_start_2
    iget-object p2, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v1, p1}, Landroid/net/ConnectivityManager;->requestRouteToHost(II)Z

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestRouteToHost result: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    if-nez p1, :cond_8

    const-string p2, "Wrong requestRouteToHost result: expected true, but was false"

    invoke-static {p2}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V

    :cond_8
    iget-object p2, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    invoke-virtual {p2, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object p2

    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object p2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TYPE_MOBILE_HIPRI network state after routing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return p1

    :cond_9
    :goto_3
    return v3

    :catchall_0
    move-exception p1

    :try_start_3
    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    return v0

    :catchall_1
    move-exception p1

    invoke-static {p1}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :catch_1
    return v0
.end method

.method static synthetic a(Lcom/mobile/auth/ab/a;Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/mobile/auth/ab/a;->a(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return p0

    :catchall_0
    move-exception p0

    const/4 p1, 0x0

    :try_start_1
    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return p1

    :catchall_1
    move-exception p0

    invoke-static {p0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    return p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/ab/a$b;)V
    .locals 2

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/mobile/auth/ab/a;->a(Landroid/content/Context;Lcom/mobile/auth/ab/a$b;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/mobile/auth/ab/a;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    :cond_1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/mobile/auth/ab/a;->e:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/mobile/auth/ab/a$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mobile/auth/ab/a$1;-><init>(Lcom/mobile/auth/ab/a;Landroid/content/Context;Ljava/lang/String;Lcom/mobile/auth/ab/a$b;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
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

.method public b()V
    .locals 3

    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/mobile/auth/ab/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    iput-object v2, p0, Lcom/mobile/auth/ab/a;->b:Landroid/net/ConnectivityManager$NetworkCallback;

    :cond_0
    :goto_0
    iput-object v2, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mobile/auth/ab/a;->c:Landroid/net/ConnectivityManager;

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v2, p0, Lcom/mobile/auth/ab/a;->d:Lcom/mobile/auth/ab/a$a;

    :cond_3
    iget-object v0, p0, Lcom/mobile/auth/ab/a;->e:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    iput-object v2, p0, Lcom/mobile/auth/ab/a;->e:Ljava/util/concurrent/ExecutorService;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-static {v0}, Lcom/mobile/auth/ab/d;->a(Ljava/lang/Exception;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_2
    :try_start_2
    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception v0

    invoke-static {v0}, Lcom/mobile/auth/gatewayauth/a;->a(Ljava/lang/Throwable;)V

    :cond_4
    :goto_3
    return-void
.end method
