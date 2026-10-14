.class public Lcom/amap/api/mapcore/util/j7;
.super Lcom/amap/api/mapcore/util/f7;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/j7$b;
    }
.end annotation


# static fields
.field private static e:Lcom/amap/api/mapcore/util/j7;


# instance fields
.field private d:Lcom/amap/api/mapcore/util/m8;


# direct methods
.method private constructor <init>(ZI)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/f7;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-static {p2}, Lcom/amap/api/mapcore/util/m8;->g(I)Lcom/amap/api/mapcore/util/m8;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/j7;->d:Lcom/amap/api/mapcore/util/m8;

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    if-nez p1, :cond_1

    .line 4
    new-instance p1, Lcom/amap/api/mapcore/util/j7$b;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lcom/amap/api/mapcore/util/j7$b;-><init>(Landroid/os/Looper;Lcom/amap/api/mapcore/util/j7$a;)V

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Lcom/amap/api/mapcore/util/j7$b;

    invoke-direct {p1}, Lcom/amap/api/mapcore/util/j7$b;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "NetManger"

    const-string v0, "NetManger1"

    .line 6
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static g(Z)Lcom/amap/api/mapcore/util/j7;
    .locals 1

    const/4 v0, 0x5

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/j7;->h(ZI)Lcom/amap/api/mapcore/util/j7;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized h(ZI)Lcom/amap/api/mapcore/util/j7;
    .locals 2

    const-class v0, Lcom/amap/api/mapcore/util/j7;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/j7;->e:Lcom/amap/api/mapcore/util/j7;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/amap/api/mapcore/util/j7;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/j7;-><init>(ZI)V

    sput-object v1, Lcom/amap/api/mapcore/util/j7;->e:Lcom/amap/api/mapcore/util/j7;

    goto :goto_0

    :cond_0
    if-eqz p0, :cond_1

    .line 3
    iget-object p0, v1, Lcom/amap/api/mapcore/util/j7;->d:Lcom/amap/api/mapcore/util/m8;

    if-nez p0, :cond_1

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/m8;->g(I)Lcom/amap/api/mapcore/util/m8;

    move-result-object p0

    iput-object p0, v1, Lcom/amap/api/mapcore/util/j7;->d:Lcom/amap/api/mapcore/util/m8;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    .line 5
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 6
    :cond_1
    :goto_0
    :try_start_2
    invoke-static {}, Lcom/amap/api/mapcore/util/g5;->A()Lcom/amap/api/mapcore/util/g5$c;

    move-result-object p0

    if-nez p0, :cond_2

    .line 7
    invoke-static {}, Lcom/amap/api/mapcore/util/t5;->a()Lcom/amap/api/mapcore/util/g5$c;

    move-result-object p0

    invoke-static {p0}, Lcom/amap/api/mapcore/util/g5;->w(Lcom/amap/api/mapcore/util/g5$c;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    :catchall_1
    :cond_2
    :try_start_3
    sget-object p0, Lcom/amap/api/mapcore/util/j7;->e:Lcom/amap/api/mapcore/util/j7;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit v0

    return-object p0

    :catchall_2
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static i()Lcom/amap/api/mapcore/util/j7;
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x5

    .line 1
    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/j7;->h(ZI)Lcom/amap/api/mapcore/util/j7;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public e(Lcom/amap/api/mapcore/util/k7;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/f7;->b(Lcom/amap/api/mapcore/util/k7;Z)Lcom/amap/api/mapcore/util/m7;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/amap/api/mapcore/util/m7;->a:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 4
    invoke-static {}, Lcom/amap/api/mapcore/util/e6;->t()Lcom/amap/api/mapcore/util/e6;

    move-result-object v0

    const-string v1, "NetManager"

    const-string v2, "makeSyncPostRequest"

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->p(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 6
    throw p1
.end method

.method public j(Lcom/amap/api/mapcore/util/k7;Z)Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/k7;",
            "Z)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/i7;->a(ILcom/amap/api/mapcore/util/k7;)I

    move-result v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/j7;->k(Lcom/amap/api/mapcore/util/k7;ZI)Ljava/util/Map;

    move-result-object v1
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/i7;->q(I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_0

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/i7;->q(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    .line 5
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/j7;->k(Lcom/amap/api/mapcore/util/k7;ZI)Ljava/util/Map;

    move-result-object p1
    :try_end_1
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 6
    throw p1

    :cond_0
    return-object v1

    .line 7
    :cond_1
    throw v1
.end method

.method public k(Lcom/amap/api/mapcore/util/k7;ZI)Ljava/util/Map;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/amap/api/mapcore/util/k7;",
            "ZI)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/f7;->f(Lcom/amap/api/mapcore/util/k7;)V

    .line 2
    iget-object v0, p1, Lcom/amap/api/mapcore/util/k7;->c:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/util/i7;

    iget v2, p1, Lcom/amap/api/mapcore/util/k7;->a:I

    iget v3, p1, Lcom/amap/api/mapcore/util/k7;->b:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore/util/i7;-><init>(IILjava/net/Proxy;Z)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->c()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->isIPRequest()Z

    move-result v4

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getIPDNSName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getRequestHead()Ljava/util/Map;

    move-result-object v6

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getParams()Ljava/util/Map;

    move-result-object v7

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->isIgnoreGZip()Z

    move-result v8

    move v9, p3

    .line 11
    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/mapcore/util/i7;->j(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZI)Ljava/util/Map;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 14
    throw p1
.end method

.method public l(Lcom/amap/api/mapcore/util/k7;Z)Lcom/amap/api/mapcore/util/m7;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    const/4 v0, 0x2

    .line 1
    invoke-static {v0, p1}, Lcom/amap/api/mapcore/util/i7;->a(ILcom/amap/api/mapcore/util/k7;)I

    move-result v0

    .line 2
    :try_start_0
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/j7;->m(Lcom/amap/api/mapcore/util/k7;ZI)Lcom/amap/api/mapcore/util/m7;

    move-result-object v1
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/i7;->q(I)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_0

    .line 4
    iget-object v2, v1, Lcom/amap/api/mapcore/util/m7;->a:[B

    if-eqz v2, :cond_0

    array-length v2, v2

    if-gtz v2, :cond_1

    .line 5
    :cond_0
    invoke-static {v0}, Lcom/amap/api/mapcore/util/i7;->q(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    .line 6
    :try_start_1
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/j7;->m(Lcom/amap/api/mapcore/util/k7;ZI)Lcom/amap/api/mapcore/util/m7;

    move-result-object p1
    :try_end_1
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_1 .. :try_end_1} :catch_1

    return-object p1

    :catch_1
    move-exception p1

    .line 7
    throw p1

    :cond_1
    return-object v1

    .line 8
    :cond_2
    throw v1
.end method

.method public m(Lcom/amap/api/mapcore/util/k7;ZI)Lcom/amap/api/mapcore/util/m7;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/f7;->f(Lcom/amap/api/mapcore/util/k7;)V

    .line 2
    iget-object v0, p1, Lcom/amap/api/mapcore/util/k7;->c:Ljava/net/Proxy;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    :cond_0
    new-instance v1, Lcom/amap/api/mapcore/util/i7;

    iget v2, p1, Lcom/amap/api/mapcore/util/k7;->a:I

    iget v3, p1, Lcom/amap/api/mapcore/util/k7;->b:I

    invoke-direct {v1, v2, v3, v0, p2}, Lcom/amap/api/mapcore/util/i7;-><init>(IILjava/net/Proxy;Z)V

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getURL()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->c()Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->isIPRequest()Z

    move-result v4

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getIPDNSName()Ljava/lang/String;

    move-result-object v5

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getRequestHead()Ljava/util/Map;

    move-result-object v6

    .line 9
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getParams()Ljava/util/Map;

    move-result-object v7

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->isIgnoreGZip()Z

    move-result v8

    move v9, p3

    .line 11
    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/mapcore/util/i7;->s(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;Ljava/util/Map;ZI)Lcom/amap/api/mapcore/util/m7;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p1

    :catchall_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string p2, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, p2}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 14
    throw p1
.end method

.method public n(Lcom/amap/api/mapcore/util/k7;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/j7;->l(Lcom/amap/api/mapcore/util/k7;Z)Lcom/amap/api/mapcore/util/m7;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/amap/api/mapcore/util/m7;->a:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :catchall_0
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 4
    throw p1
.end method

.method public o(Lcom/amap/api/mapcore/util/k7;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/amap/api/mapcore/util/j7;->l(Lcom/amap/api/mapcore/util/k7;Z)Lcom/amap/api/mapcore/util/m7;

    move-result-object p1
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p1, Lcom/amap/api/mapcore/util/m7;->a:[B

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1

    .line 3
    :catchall_0
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 4
    throw p1
.end method
