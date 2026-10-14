.class public abstract Lcom/amap/api/mapcore/util/u4;
.super Lcom/amap/api/mapcore/util/r2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/amap/api/mapcore/util/r2;"
    }
.end annotation


# instance fields
.field protected d:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected e:I

.field protected f:Landroid/content/Context;

.field protected g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/r2;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/u4;->e:I

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/u4;->f(Landroid/content/Context;Ljava/lang/Object;)V

    return-void
.end method

.method private e([B)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ft;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/u4;->h([B)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method private f(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u4;->f:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/amap/api/mapcore/util/u4;->d:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 3
    iput p1, p0, Lcom/amap/api/mapcore/util/u4;->e:I

    const/16 p1, 0x7530

    .line 4
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/k7;->setSoTimeout(I)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/k7;->setConnectionTimeout(I)V

    return-void
.end method

.method private k()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ft;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcom/amap/api/mapcore/util/u4;->e:I

    if-ge v1, v2, :cond_6

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u4;->f:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/l5;->c(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/k7;->setProxy(Ljava/net/Proxy;)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/r2;->makeHttpRequest()[B

    move-result-object v2

    .line 4
    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/u4;->e([B)Ljava/lang/Object;

    move-result-object v0

    .line 5
    iget v1, p0, Lcom/amap/api/mapcore/util/u4;->e:I
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/amap/api/mapcore/util/ft; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 6
    :catchall_0
    new-instance v0, Lcom/amap/api/mapcore/util/ft;

    const-string v1, "\u672a\u77e5\u9519\u8bef"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ft;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_0
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    .line 7
    iget v3, p0, Lcom/amap/api/mapcore/util/u4;->e:I

    if-ge v1, v3, :cond_0

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/ft;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ft;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ft;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_1
    move-exception v2

    add-int/lit8 v1, v1, 0x1

    .line 9
    iget v3, p0, Lcom/amap/api/mapcore/util/u4;->e:I

    const-string v4, "\u670d\u52a1\u5668\u8fde\u63a5\u5931\u8d25 - UnknownServiceException"

    const-string v5, "socket \u8fde\u63a5\u5f02\u5e38 - SocketException"

    const-string v6, "http\u6216socket\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    const-string v7, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    if-ge v1, v3, :cond_3

    const-wide/16 v8, 0x3e8

    .line 10
    :try_start_1
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_0

    .line 11
    :catch_2
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 13
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 14
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 15
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 16
    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/ft;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ft;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_2
    :goto_1
    new-instance v0, Lcom/amap/api/mapcore/util/ft;

    invoke-direct {v0, v6}, Lcom/amap/api/mapcore/util/ft;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/u4;->j()Ljava/lang/Object;

    .line 19
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 21
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 22
    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 23
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gb;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u672a\u77e5\u7684\u9519\u8bef"

    .line 24
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 25
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 27
    :cond_4
    new-instance v0, Lcom/amap/api/mapcore/util/ft;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/gb;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/ft;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_5
    :goto_2
    new-instance v0, Lcom/amap/api/mapcore/util/ft;

    invoke-direct {v0, v6}, Lcom/amap/api/mapcore/util/ft;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    return-object v0
.end method


# virtual methods
.method protected abstract g(Ljava/lang/String;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ft;
        }
    .end annotation
.end method

.method public getRequestHead()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/m5;->e()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    new-instance v1, Ljava/util/Hashtable;

    const/16 v2, 0x10

    invoke-direct {v1, v2}, Ljava/util/Hashtable;-><init>(I)V

    .line 4
    sget-object v2, Lcom/amap/api/mapcore/util/x9;->c:Ljava/lang/String;

    const-string v3, "User-Agent"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "Accept-Encoding"

    const-string v3, "gzip"

    .line 5
    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    const-string v4, "3dmap"

    aput-object v4, v3, v0

    const-string v0, "platform=Android&sdkversion=%s&product=%s"

    invoke-static {v2, v0, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "platinfo"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u4;->f:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/amap/api/mapcore/util/f5;->k(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "X-INFO"

    .line 9
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u4;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "key"

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "logversion"

    const-string v2, "2.1"

    .line 11
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method protected h([B)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ft;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v2, "utf-8"

    invoke-direct {v1, p1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    const-string p1, ""

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/u4;->g:Ljava/lang/String;

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/w4;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, v1}, Lcom/amap/api/mapcore/util/u4;->g(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_1
    return-object v0
.end method

.method public i()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ft;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u4;->d:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/u4;->k()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/ft; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 4
    throw v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected j()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
