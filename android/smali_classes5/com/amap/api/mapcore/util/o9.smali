.class public final Lcom/amap/api/mapcore/util/o9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/o9$a;
    }
.end annotation


# instance fields
.field a:Landroid/content/Context;

.field private b:Lcom/amap/api/mapcore/util/v8;

.field private c:Lcom/amap/api/mapcore/util/w9;

.field private d:Lcom/amap/api/mapcore/util/o9$a;

.field private e:Lcom/amap/api/mapcore/util/x8;

.field private f:Landroid/net/ConnectivityManager;

.field private g:Lcom/amap/api/mapcore/util/z8;

.field h:Z

.field private i:Ljava/lang/StringBuilder;

.field private j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field k:Ljava/lang/String;

.field private l:Lcom/amap/api/mapcore/util/kj;

.field m:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->c:Lcom/amap/api/mapcore/util/w9;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->d:Lcom/amap/api/mapcore/util/o9$a;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->e:Lcom/amap/api/mapcore/util/x8;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->f:Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->g:Lcom/amap/api/mapcore/util/z8;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/o9;->h:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->k:Ljava/lang/String;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/o9;->m:J

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/g9;->r(Landroid/content/Context;)Ljava/lang/String;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/o9;->d(Landroid/content/Context;)V

    new-instance p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    const-string v0, "wifi"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/g9;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    new-instance v0, Lcom/amap/api/mapcore/util/v8;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Lcom/amap/api/mapcore/util/v8;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/o9;->h:Z

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/v8;->b(Z)V

    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->c:Lcom/amap/api/mapcore/util/w9;

    if-nez p1, :cond_1

    new-instance p1, Lcom/amap/api/mapcore/util/w9;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/w9;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->c:Lcom/amap/api/mapcore/util/w9;

    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->e:Lcom/amap/api/mapcore/util/x8;

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/d5;->h(Landroid/content/Context;)V

    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/x8;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/x8;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->e:Lcom/amap/api/mapcore/util/x8;

    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->f:Landroid/net/ConnectivityManager;

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    const-string v0, "connectivity"

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/g9;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->f:Landroid/net/ConnectivityManager;

    :cond_3
    new-instance p1, Lcom/amap/api/mapcore/util/z8;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/z8;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->g:Lcom/amap/api/mapcore/util/z8;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/o9;->h()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "MapNetLocation"

    const-string v1, "<init>"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/o9;)Lcom/amap/api/mapcore/util/v8;
    .locals 0

    iget-object p0, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    return-object p0
.end method

.method private static varargs b(Lcom/amap/api/mapcore/util/kj;)Lcom/amap/api/mapcore/util/kj;
    .locals 1

    invoke-static {}, Lcom/amap/api/mapcore/util/j9;->a()Lcom/amap/api/mapcore/util/j9;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/j9;->b(Lcom/amap/api/mapcore/util/kj;)Lcom/amap/api/mapcore/util/kj;

    move-result-object p0

    return-object p0
.end method

.method private d(Landroid/content/Context;)V
    .locals 1

    :try_start_0
    const-string v0, "EYW5kcm9pZC5wZXJtaXNzaW9uLldSSVRFX1NFQ1VSRV9TRVRUSU5HUw=="

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/o9;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private f(J)Z
    .locals 3

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide/16 p1, 0x320

    cmp-long v2, v0, p1

    if-gez v2, :cond_1

    const-wide/16 p1, 0x0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/q9;->b(Lcom/amap/api/mapcore/util/kj;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->f()J

    move-result-wide p1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;

    invoke-virtual {v0}, Landroid/location/Location;->getTime()J

    move-result-wide v0

    sub-long/2addr p1, v0

    :cond_0
    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private h()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->d:Lcom/amap/api/mapcore/util/o9$a;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/o9$a;

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/o9$a;-><init>(Lcom/amap/api/mapcore/util/o9;B)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->d:Lcom/amap/api/mapcore/util/o9$a;

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/o9;->d:Lcom/amap/api/mapcore/util/o9$a;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/v8;->g(Z)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->c:Lcom/amap/api/mapcore/util/w9;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/w9;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "MapNetLocation"

    const-string v2, "initBroadcastListener"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()Lcom/amap/api/mapcore/util/kj;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "please check the network"

    const-string v1, "MapNetLocation"

    new-instance v2, Lcom/amap/api/mapcore/util/kj;

    const-string v3, ""

    invoke-direct {v2, v3}, Lcom/amap/api/mapcore/util/kj;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/v8;->o()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v0, 0xf

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    return-object v2

    :cond_0
    const/4 v4, 0x3

    :try_start_0
    iget-object v5, p0, Lcom/amap/api/mapcore/util/o9;->g:Lcom/amap/api/mapcore/util/z8;

    if-nez v5, :cond_1

    new-instance v5, Lcom/amap/api/mapcore/util/z8;

    invoke-direct {v5}, Lcom/amap/api/mapcore/util/z8;-><init>()V

    iput-object v5, p0, Lcom/amap/api/mapcore/util/o9;->g:Lcom/amap/api/mapcore/util/z8;

    :cond_1
    iget-object v5, p0, Lcom/amap/api/mapcore/util/o9;->g:Lcom/amap/api/mapcore/util/z8;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    iget-object v7, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v7}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isNeedAddress()Z

    move-result v7

    iget-object v8, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v8}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isOffset()Z

    move-result v8

    iget-object v9, p0, Lcom/amap/api/mapcore/util/o9;->c:Lcom/amap/api/mapcore/util/w9;

    iget-object v10, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    iget-object v11, p0, Lcom/amap/api/mapcore/util/o9;->f:Landroid/net/ConnectivityManager;

    iget-object v12, p0, Lcom/amap/api/mapcore/util/o9;->k:Ljava/lang/String;

    invoke-virtual/range {v5 .. v12}, Lcom/amap/api/mapcore/util/z8;->c(Landroid/content/Context;ZZLcom/amap/api/mapcore/util/w9;Lcom/amap/api/mapcore/util/v8;Landroid/net/ConnectivityManager;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    new-instance v5, Lcom/amap/api/mapcore/util/p9;

    invoke-direct {v5}, Lcom/amap/api/mapcore/util/p9;-><init>()V

    const/4 v6, 0x0

    :try_start_1
    iget-object v7, p0, Lcom/amap/api/mapcore/util/o9;->g:Lcom/amap/api/mapcore/util/z8;

    invoke-virtual {v7}, Lcom/amap/api/mapcore/util/z8;->d()[B

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v7, 0x4

    :try_start_2
    iget-object v8, p0, Lcom/amap/api/mapcore/util/o9;->e:Lcom/amap/api/mapcore/util/x8;

    iget-object v9, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/b9;->a()Ljava/lang/String;

    move-result-object v10

    invoke-static {}, Lcom/amap/api/mapcore/util/b9;->d()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v9, v4, v10, v11}, Lcom/amap/api/mapcore/util/x8;->c(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Lcom/amap/api/mapcore/util/y8;

    move-result-object v4

    iget-object v8, p0, Lcom/amap/api/mapcore/util/o9;->e:Lcom/amap/api/mapcore/util/x8;

    invoke-virtual {v8, v4}, Lcom/amap/api/mapcore/util/x8;->a(Lcom/amap/api/mapcore/util/y8;)Lcom/amap/api/mapcore/util/m7;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v6, v4, Lcom/amap/api/mapcore/util/m7;->a:[B

    iget-object v3, v4, Lcom/amap/api/mapcore/util/m7;->c:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    const-string v1, " #csid:"

    if-eqz v6, :cond_13

    array-length v8, v6

    if-nez v8, :cond_3

    goto/16 :goto_4

    :cond_3
    new-instance v0, Ljava/lang/String;

    const-string v7, "UTF-8"

    invoke-direct {v0, v6, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    const-string v7, "\"status\":\"0\""

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    invoke-virtual {v5, v0, v1, v4}, Lcom/amap/api/mapcore/util/p9;->a(Ljava/lang/String;Landroid/content/Context;Lcom/amap/api/mapcore/util/m7;)Lcom/amap/api/mapcore/util/kj;

    move-result-object v0

    return-object v0

    :cond_4
    const-string v4, "</body></html>"

    invoke-virtual {v0, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v4, 0x5

    if-eqz v0, :cond_7

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    if-eqz v0, :cond_5

    iget-object v4, p0, Lcom/amap/api/mapcore/util/o9;->f:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v4}, Lcom/amap/api/mapcore/util/v8;->d(Landroid/net/ConnectivityManager;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    const-string v4, "make sure you are logged in to the network"

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    const-string v4, "request may be intercepted"

    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v2

    :cond_7
    invoke-static {v6}, Lcom/amap/api/mapcore/util/w8;->a([B)[B

    move-result-object v0

    if-nez v0, :cond_9

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    const-string v4, "decrypt response data error"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v2

    :cond_9
    invoke-virtual {v5, v0}, Lcom/amap/api/mapcore/util/p9;->b([B)Lcom/amap/api/mapcore/util/kj;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->b()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/o9;->k:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLocationDetail()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    :cond_a
    return-object v0

    :cond_b
    invoke-static {v0}, Lcom/amap/api/mapcore/util/q9;->b(Lcom/amap/api/mapcore/util/kj;)Z

    move-result v2

    const/4 v5, 0x6

    if-eqz v2, :cond_10

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->j()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLocationType()I

    move-result v2

    if-nez v2, :cond_f

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v2

    const-string v6, "-5"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v2

    const-string v6, "1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v2

    const-string v6, "2"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v2

    const-string v6, "14"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v2

    const-string v6, "24"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v2

    const-string v6, "-1"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    goto :goto_1

    :cond_c
    invoke-virtual {v0, v5}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationType(I)V

    goto :goto_2

    :cond_d
    :goto_1
    invoke-virtual {v0, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationType(I)V

    :goto_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    :cond_f
    return-object v0

    :cond_10
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v5}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "location faile retype:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/kj;->h()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " rdesc:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v2, :cond_11

    goto :goto_3

    :cond_11
    const-string v2, "null"

    :goto_3
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_12

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :cond_13
    :goto_4
    invoke-virtual {v2, v7}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v4, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v2

    :catchall_0
    move-exception v3

    const-string v4, "getApsLoc req"

    invoke-static {v3, v1, v4}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v2

    :catchall_1
    move-exception v0

    const-string v3, "getApsLoc buildV4Dot2"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "buildV4Dot2 error "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v2

    :catchall_2
    move-exception v0

    const-string v3, "getApsLoc"

    invoke-static {v0, v1, v3}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v5, "get parames error:"

    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v2
.end method


# virtual methods
.method public final c()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;
    .locals 5

    const-string v0, "getLocation getScanResultsParam"

    const-string v1, "MapNetLocation"

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    :cond_0
    iget-wide v2, p0, Lcom/amap/api/mapcore/util/o9;->m:J

    invoke-direct {p0, v2, v3}, Lcom/amap/api/mapcore/util/o9;->f(J)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/q9;->b(Lcom/amap/api/mapcore/util/kj;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;

    return-object v0

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/amap/api/mapcore/util/o9;->m:J

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    const-string v1, "context is null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    const-string v1, ""

    invoke-direct {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setErrorCode(I)V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->i:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->setLocationDetail(Ljava/lang/String;)V

    return-object v0

    :cond_2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->c:Lcom/amap/api/mapcore/util/w9;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/w9;->s()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    const-string v4, "getLocation getCgiListParam"

    invoke-static {v2, v1, v4}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/v8;->g(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-static {v2, v1, v0}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    :try_start_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/o9;->i()Lcom/amap/api/mapcore/util/kj;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/o9;->b(Lcom/amap/api/mapcore/util/kj;)Lcom/amap/api/mapcore/util/kj;

    move-result-object v2

    iput-object v2, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v2

    invoke-static {v2, v1, v0}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->l:Lcom/amap/api/mapcore/util/kj;

    return-object v0
.end method

.method public final e(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 4

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez p1, :cond_0

    new-instance p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiActiveScan()Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->isWifiScan()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/v8;->i(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/o9;->e:Lcom/amap/api/mapcore/util/x8;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getHttpTimeOut()J

    move-result-wide v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->j:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationProtocol()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    move-result-object v2

    sget-object v3, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;->HTTPS:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationProtocol;

    invoke-virtual {v2, v3}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/x8;->d(JZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public final g()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/o9;->h:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->k:Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->a:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/o9;->d:Lcom/amap/api/mapcore/util/o9$a;

    if-eqz v2, :cond_0

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->c:Lcom/amap/api/mapcore/util/w9;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/w9;->J()V

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/o9;->b:Lcom/amap/api/mapcore/util/v8;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/v8;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->d:Lcom/amap/api/mapcore/util/o9$a;

    return-void

    :catchall_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/o9;->d:Lcom/amap/api/mapcore/util/o9$a;

    return-void
.end method
