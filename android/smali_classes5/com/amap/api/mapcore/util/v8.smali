.class public final Lcom/amap/api/mapcore/util/v8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static o:J

.field static p:J

.field static q:J

.field public static r:J

.field static s:J

.field public static t:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field static u:I


# instance fields
.field a:Landroid/net/wifi/WifiManager;

.field b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore/util/r9;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/content/Context;

.field e:Z

.field f:Z

.field g:Z

.field private volatile h:Landroid/net/wifi/WifiInfo;

.field i:Ljava/util/TreeMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeMap<",
            "Ljava/lang/Integer;",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation
.end field

.field public j:Z

.field public k:Z

.field l:Landroid/net/ConnectivityManager;

.field private m:J

.field volatile n:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x24

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    sput-object v0, Lcom/amap/api/mapcore/util/v8;->t:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput v0, Lcom/amap/api/mapcore/util/v8;->u:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiManager;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v8;->c:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->e:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/v8;->f:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/v8;->g:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/amap/api/mapcore/util/v8;->h:Landroid/net/wifi/WifiInfo;

    iput-object v2, p0, Lcom/amap/api/mapcore/util/v8;->i:Ljava/util/TreeMap;

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/v8;->j:Z

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->k:Z

    iput-object v2, p0, Lcom/amap/api/mapcore/util/v8;->l:Landroid/net/ConnectivityManager;

    const-wide/16 v1, 0x7530

    iput-wide v1, p0, Lcom/amap/api/mapcore/util/v8;->m:J

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->n:Z

    iput-object p2, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/amap/api/mapcore/util/v8;->d:Landroid/content/Context;

    return-void
.end method

.method private A()Z
    .locals 9

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->w()Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->j:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->f:Z

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    sget-wide v3, Lcom/amap/api/mapcore/util/v8;->q:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v3

    sget-wide v5, Lcom/amap/api/mapcore/util/v8;->q:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x1324

    cmp-long v0, v3, v5

    if-gez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v3

    sget-wide v7, Lcom/amap/api/mapcore/util/v8;->r:J

    sub-long/2addr v3, v7

    const-wide/16 v7, 0x5dc

    cmp-long v0, v3, v7

    if-gez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v2

    sget-wide v7, Lcom/amap/api/mapcore/util/v8;->r:J

    sub-long/2addr v2, v7

    cmp-long v0, v2, v5

    :goto_1
    return v1
.end method

.method private static c(I)Z
    .locals 3

    const/16 v0, 0x14

    :try_start_0
    invoke-static {p0, v0}, Landroid/net/wifi/WifiManager;->calculateSignalLevel(II)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/ArithmeticException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v1, "Aps"

    const-string v2, "wifiSigFine"

    invoke-static {p0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    if-lez v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public static e(Landroid/net/wifi/WifiInfo;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiInfo;->getBSSID()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/g9;->i(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0
.end method

.method private k(Z)V
    .locals 11

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    if-eqz v0, :cond_d

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_5

    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/v8;->r:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v8;->f()V

    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->i:Ljava/util/TreeMap;

    if-nez v0, :cond_2

    new-instance v0, Ljava/util/TreeMap;

    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v8;->i:Ljava/util/TreeMap;

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->i:Ljava/util/TreeMap;

    invoke-virtual {v0}, Ljava/util/TreeMap;->clear()V

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->k:Z

    if-eqz v0, :cond_3

    if-eqz p1, :cond_3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_b

    iget-object v3, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    if-eqz v3, :cond_4

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    goto :goto_1

    :cond_4
    const-string v4, ""

    :goto_1
    invoke-static {v4}, Lcom/amap/api/mapcore/util/g9;->i(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/16 v4, 0x14

    if-le v0, v4, :cond_5

    iget v4, v3, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v4}, Lcom/amap/api/mapcore/util/v8;->c(I)Z

    move-result v4

    if-eqz v4, :cond_a

    :cond_5
    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/v8;->k:Z

    if-eqz v4, :cond_7

    if-eqz p1, :cond_7

    :try_start_1
    new-instance v4, Lcom/amap/api/mapcore/util/r9;

    invoke-direct {v4, v1}, Lcom/amap/api/mapcore/util/r9;-><init>(Z)V

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    iput-object v5, v4, Lcom/amap/api/mapcore/util/r9;->b:Ljava/lang/String;

    iget v5, v3, Landroid/net/wifi/ScanResult;->frequency:I

    iput v5, v4, Lcom/amap/api/mapcore/util/r9;->d:I

    iget-wide v5, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    iput-wide v5, v4, Lcom/amap/api/mapcore/util/r9;->e:J

    iget-object v5, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    invoke-static {v5}, Lcom/amap/api/mapcore/util/r9;->a(Ljava/lang/String;)J

    move-result-wide v5

    iput-wide v5, v4, Lcom/amap/api/mapcore/util/r9;->a:J

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    int-to-short v5, v5

    iput v5, v4, Lcom/amap/api/mapcore/util/r9;->c:I

    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x11

    if-lt v5, v6, :cond_6

    iget-wide v5, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    sub-long/2addr v9, v5

    div-long/2addr v9, v7

    long-to-int v5, v9

    int-to-short v5, v5

    iput-short v5, v4, Lcom/amap/api/mapcore/util/r9;->g:S

    if-gez v5, :cond_6

    iput-short v1, v4, Lcom/amap/api/mapcore/util/r9;->g:S

    :cond_6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/amap/api/mapcore/util/r9;->f:J

    iget-object v5, p0, Lcom/amap/api/mapcore/util/v8;->c:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catchall_1
    nop

    :cond_7
    :goto_2
    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    const-string v5, "<unknown ssid>"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_8
    const-string v4, "unkwn"

    :goto_3
    iput-object v4, v3, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    :cond_9
    iget-object v4, p0, Lcom/amap/api/mapcore/util/v8;->i:Ljava/util/TreeMap;

    iget v5, v3, Landroid/net/wifi/ScanResult;->level:I

    mul-int/lit8 v5, v5, 0x19

    add-int/2addr v5, v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/amap/api/mapcore/util/v8;->i:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/ScanResult;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_c
    iget-object p1, p0, Lcom/amap/api/mapcore/util/v8;->i:Ljava/util/TreeMap;

    invoke-virtual {p1}, Ljava/util/TreeMap;->clear()V

    :cond_d
    :goto_5
    return-void
.end method

.method private l(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/v8;->f:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/v8;->g:Z

    const-wide/16 v0, 0x7530

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/v8;->m:J

    return-void
.end method

.method public static q()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/v8;->r:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private r()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_4

    :try_start_0
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getScanResults()Ljava/util/List;

    move-result-object v0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    new-instance v1, Ljava/util/HashMap;

    const/16 v2, 0x24

    invoke-direct {v1, v2}, Ljava/util/HashMap;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/ScanResult;

    iget-object v4, v3, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    iget-wide v5, v3, Landroid/net/wifi/ScanResult;->timestamp:J

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    sget-object v2, Lcom/amap/api/mapcore/util/v8;->t:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/amap/api/mapcore/util/v8;->t:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    sput-object v1, Lcom/amap/api/mapcore/util/v8;->t:Ljava/util/HashMap;

    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "getScanResults"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    :cond_4
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private s()Landroid/net/wifi/WifiInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v0

    :catchall_0
    move-exception v0

    const-string v1, "WifiManagerWrapper"

    const-string v2, "getConnectionInfo"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private t()I
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x4

    return v0
.end method

.method private u()Z
    .locals 11

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/v8;->o:J

    sub-long/2addr v0, v2

    const/4 v2, 0x0

    const-wide/16 v3, 0x1324

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    return v2

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    const-wide/16 v3, 0x26ac

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    return v2

    :cond_1
    sget v3, Lcom/amap/api/mapcore/util/v8;->u:I

    const/4 v4, 0x1

    if-le v3, v4, :cond_4

    iget-wide v5, p0, Lcom/amap/api/mapcore/util/v8;->m:J

    const-wide/16 v7, 0x7530

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/a9;->b()J

    move-result-wide v5

    const-wide/16 v9, -0x1

    cmp-long v3, v5, v9

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/amap/api/mapcore/util/a9;->b()J

    move-result-wide v5

    goto :goto_0

    :cond_3
    move-wide v5, v7

    :goto_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x1c

    if-lt v3, v7, :cond_4

    cmp-long v3, v0, v5

    if-gez v3, :cond_4

    return v2

    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/v8;->o:J

    sget v0, Lcom/amap/api/mapcore/util/v8;->u:I

    const/4 v1, 0x2

    if-ge v0, v1, :cond_5

    add-int/2addr v0, v4

    sput v0, Lcom/amap/api/mapcore/util/v8;->u:I

    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->startScan()Z

    move-result v0

    return v0

    :cond_6
    return v2
.end method

.method private v()Z
    .locals 2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->l:Landroid/net/ConnectivityManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->d:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/g9;->g(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v8;->l:Landroid/net/ConnectivityManager;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->l:Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/v8;->d(Landroid/net/ConnectivityManager;)Z

    move-result v0

    return v0
.end method

.method private w()Z
    .locals 1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->d:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/g9;->y(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private x()V
    .locals 8

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    const/16 v2, 0x14

    sget-wide v3, Lcom/amap/api/mapcore/util/v8;->p:J

    sub-long v3, v0, v3

    const-wide/16 v5, 0x2710

    cmp-long v7, v3, v5

    if-ltz v7, :cond_0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    sget-wide v3, Lcom/amap/api/mapcore/util/v8;->r:J

    sput-wide v3, Lcom/amap/api/mapcore/util/v8;->s:J

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->y()V

    sget-wide v3, Lcom/amap/api/mapcore/util/v8;->p:J

    sub-long/2addr v0, v3

    cmp-long v3, v0, v5

    if-ltz v3, :cond_1

    :goto_0
    if-lez v2, :cond_1

    sget-wide v0, Lcom/amap/api/mapcore/util/v8;->r:J

    sget-wide v3, Lcom/amap/api/mapcore/util/v8;->s:J

    cmp-long v5, v0, v3

    if-nez v5, :cond_1

    const-wide/16 v0, 0x96

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private y()V
    .locals 3

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->A()Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/v8;->q:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "WifiManager"

    const-string v2, "wifiScan"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private z()V
    .locals 5

    sget-wide v0, Lcom/amap/api/mapcore/util/v8;->s:J

    sget-wide v2, Lcom/amap/api/mapcore/util/v8;->r:J

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->r()Ljava/util/List;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "WifiManager"

    const-string v3, "updateScanResult"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    sget-wide v1, Lcom/amap/api/mapcore/util/v8;->r:J

    sput-wide v1, Lcom/amap/api/mapcore/util/v8;->s:J

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public final a()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-object v0
.end method

.method public final b(Z)V
    .locals 9

    const-class v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/v8;->d:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/a9;->a()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/v8;->g:Z

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-eqz v2, :cond_4

    if-eqz v1, :cond_4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->x()I

    move-result p1

    const/16 v2, 0x11

    if-gt p1, v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "android.provider.Settings$Global"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v5, 0x1

    const-string v6, "wifi_scan_always_enabled"

    aput-object v6, v3, v5

    new-array v7, v2, [Ljava/lang/Class;

    const-class v8, Landroid/content/ContentResolver;

    aput-object v8, v7, v4

    aput-object v0, v7, v5

    :try_start_0
    const-string v8, "getInt"

    invoke-static {v1, v8, v3, v7}, Lcom/amap/api/mapcore/util/e9;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_3

    const/4 v3, 0x3

    new-array v7, v3, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object v6, v7, v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v7, v2

    new-array p1, v3, [Ljava/lang/Class;

    const-class v3, Landroid/content/ContentResolver;

    aput-object v3, p1, v4

    aput-object v0, p1, v5

    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v0, p1, v2

    const-string v0, "putInt"

    invoke-static {v1, v0, v7, p1}, Lcom/amap/api/mapcore/util/e9;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "WifiManagerWrapper"

    const-string v1, "enableWifiAlwaysScan"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final d(Landroid/net/ConnectivityManager;)Z
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/g9;->e(Landroid/net/NetworkInfo;)I

    move-result p1

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/v8;->e(Landroid/net/wifi/WifiInfo;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "WifiManagerWrapper"

    const-string v2, "wifiAccess"

    invoke-static {p1, v0, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    return v1
.end method

.method public final f()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v8;->h:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public final g(Z)V
    .locals 5

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->x()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->y()V

    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/v8;->n:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->n:Z

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v8;->f()V

    :cond_1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->z()V

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v1

    sget-wide v3, Lcom/amap/api/mapcore/util/v8;->r:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4e20

    cmp-long p1, v1, v3

    if-lez p1, :cond_2

    iget-object p1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    :cond_2
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/mapcore/util/v8;->p:J

    iget-object p1, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v1

    sput-wide v1, Lcom/amap/api/mapcore/util/v8;->r:J

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->r()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v0, 0x1

    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/v8;->k(Z)V

    return-void
.end method

.method public final h()V
    .locals 5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sget-wide v2, Lcom/amap/api/mapcore/util/v8;->r:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x1324

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->p()J

    move-result-wide v0

    sput-wide v0, Lcom/amap/api/mapcore/util/v8;->r:J

    :cond_1
    return-void
.end method

.method public final i(Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/v8;->l(Z)V

    return-void
.end method

.method public final j()V
    .locals 4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->a:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x4

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->t()I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    const-string v2, "Aps"

    const-string v3, "onReceive part"

    invoke-static {v1, v2, v3}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x4

    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    if-nez v2, :cond_1

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    :cond_1
    const/4 v2, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_2

    if-eq v1, v0, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/v8;->n:Z

    :goto_1
    return-void
.end method

.method public final m()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->j:Z

    return v0
.end method

.method public final n()Landroid/net/wifi/WifiInfo;
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/v8;->s()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/v8;->h:Landroid/net/wifi/WifiInfo;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->h:Landroid/net/wifi/WifiInfo;

    return-object v0
.end method

.method public final o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/v8;->e:Z

    return v0
.end method

.method public final p()V
    .locals 1

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/v8;->f()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/v8;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method
