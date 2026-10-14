.class public final Lcom/amap/api/mapcore/util/x8;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static f:Lcom/amap/api/mapcore/util/x8;


# instance fields
.field a:Lcom/amap/api/mapcore/util/f7;

.field private b:Landroid/content/Context;

.field private c:I

.field private d:Z

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x8;->a:Lcom/amap/api/mapcore/util/f7;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x8;->b:Landroid/content/Context;

    sget v0, Lcom/amap/api/mapcore/util/b9;->f:I

    iput v0, p0, Lcom/amap/api/mapcore/util/x8;->c:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/x8;->d:Z

    iput v0, p0, Lcom/amap/api/mapcore/util/x8;->e:I

    :try_start_0
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i5;->c(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/x8;->b:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/f7;->a()Lcom/amap/api/mapcore/util/f7;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/x8;->a:Lcom/amap/api/mapcore/util/f7;

    return-void
.end method

.method public static b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/x8;
    .locals 1

    sget-object v0, Lcom/amap/api/mapcore/util/x8;->f:Lcom/amap/api/mapcore/util/x8;

    if-nez v0, :cond_0

    new-instance v0, Lcom/amap/api/mapcore/util/x8;

    invoke-direct {v0, p0}, Lcom/amap/api/mapcore/util/x8;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/amap/api/mapcore/util/x8;->f:Lcom/amap/api/mapcore/util/x8;

    :cond_0
    sget-object p0, Lcom/amap/api/mapcore/util/x8;->f:Lcom/amap/api/mapcore/util/x8;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/amap/api/mapcore/util/y8;)Lcom/amap/api/mapcore/util/m7;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x8;->d:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x8;->b:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/g9;->E(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/x8;->a:Lcom/amap/api/mapcore/util/f7;

    invoke-virtual {v1, p1, v0}, Lcom/amap/api/mapcore/util/f7;->b(Lcom/amap/api/mapcore/util/k7;Z)Lcom/amap/api/mapcore/util/m7;

    move-result-object p1

    return-object p1
.end method

.method public final c(Landroid/content/Context;[BLjava/lang/String;Ljava/lang/String;)Lcom/amap/api/mapcore/util/y8;
    .locals 10

    const-string v0, "https:"

    const-string v1, "1"

    :try_start_0
    new-instance v2, Ljava/util/HashMap;

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    new-instance v4, Lcom/amap/api/mapcore/util/y8;

    invoke-static {}, Lcom/amap/api/mapcore/util/b9;->e()Lcom/amap/api/mapcore/util/m5;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/amap/api/mapcore/util/y8;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v5, "Content-Type"

    const-string v6, "application/octet-stream"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Accept-Encoding"

    const-string v6, "gzip"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "gzipped"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "Connection"

    const-string v6, "Keep-Alive"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "User-Agent"

    const-string v6, "AMAP_Location_SDK_Android 4.9.0"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "KEY"

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "enginever"

    const-string v6, "5.1"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/amap/api/mapcore/util/f5;->a()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "key="

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p1, v5, v6}, Lcom/amap/api/mapcore/util/f5;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ts"

    invoke-interface {v2, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "scode"

    invoke-interface {v2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "encr"

    invoke-interface {v2, v5, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore/util/y8;->u(Ljava/util/Map;)V

    const-string v1, "loc"

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/y8;->x()V

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "platform=Android&sdkversion=%s&product=%s&loc_channel=%s"

    const/4 v6, 0x3

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v8, 0x0

    const-string v9, "4.9.0"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    aput-object v1, v7, v8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    aput-object v1, v7, v6

    invoke-static {v2, v5, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Lcom/amap/api/mapcore/util/y8;->r(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/y8;->q()V

    invoke-virtual {v4, p3}, Lcom/amap/api/mapcore/util/y8;->t(Ljava/lang/String;)V

    invoke-virtual {v4, p4}, Lcom/amap/api/mapcore/util/y8;->w(Ljava/lang/String;)V

    invoke-static {p2}, Lcom/amap/api/mapcore/util/g9;->m([B)[B

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/amap/api/mapcore/util/y8;->v([B)V

    invoke-static {p1}, Lcom/amap/api/mapcore/util/l5;->c(Landroid/content/Context;)Ljava/net/Proxy;

    move-result-object p2

    invoke-virtual {v4, p2}, Lcom/amap/api/mapcore/util/k7;->setProxy(Ljava/net/Proxy;)V

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2, v3}, Ljava/util/HashMap;-><init>(I)V

    const-string p4, "output"

    const-string v1, "bin"

    invoke-interface {p2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "policy"

    const-string v1, "3103"

    invoke-interface {p2, p4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget p4, p0, Lcom/amap/api/mapcore/util/x8;->e:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const-string v1, "custom"

    if-eqz p4, :cond_0

    if-eq p4, v8, :cond_2

    if-eq p4, v6, :cond_1

    :cond_0
    :try_start_2
    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    const-string p4, "language:en"

    :goto_0
    invoke-interface {p2, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    const-string p4, "language:cn"

    goto :goto_0

    :goto_1
    invoke-virtual {v4, p2}, Lcom/amap/api/mapcore/util/y8;->s(Ljava/util/Map;)V

    iget p2, p0, Lcom/amap/api/mapcore/util/x8;->c:I

    invoke-virtual {v4, p2}, Lcom/amap/api/mapcore/util/k7;->setConnectionTimeout(I)V

    iget p2, p0, Lcom/amap/api/mapcore/util/x8;->c:I

    invoke-virtual {v4, p2}, Lcom/amap/api/mapcore/util/k7;->setSoTimeout(I)V

    iget-boolean p2, p0, Lcom/amap/api/mapcore/util/x8;->d:Z

    if-nez p2, :cond_3

    invoke-static {p1}, Lcom/amap/api/mapcore/util/g9;->E(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    :cond_3
    const-string p1, "http:"

    invoke-virtual {p3, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/y8;->getURL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lcom/amap/api/mapcore/util/y8;->t(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    :catchall_0
    const/4 v4, 0x0

    :catchall_1
    :cond_4
    :goto_2
    return-object v4
.end method

.method public final d(JZ)V
    .locals 1

    :try_start_0
    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/x8;->d:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/amap/api/mapcore/util/i5;->e(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    :try_start_2
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Long;->intValue()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/x8;->c:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/amap/api/mapcore/util/x8;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception p1

    const-string p2, "LocNetManager"

    const-string p3, "setOption"

    invoke-static {p1, p2, p3}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
