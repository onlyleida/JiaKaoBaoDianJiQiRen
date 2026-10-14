.class public Lcom/amap/api/mapcore/util/f7;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/f7$a;
    }
.end annotation


# static fields
.field public static a:I = 0x0

.field public static b:Ljava/lang/String; = ""

.field private static c:Lcom/amap/api/mapcore/util/f7;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/amap/api/mapcore/util/f7;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/f7;->c:Lcom/amap/api/mapcore/util/f7;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/f7;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/f7;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/f7;->c:Lcom/amap/api/mapcore/util/f7;

    .line 3
    :cond_0
    sget-object v0, Lcom/amap/api/mapcore/util/f7;->c:Lcom/amap/api/mapcore/util/f7;

    return-object v0
.end method


# virtual methods
.method public b(Lcom/amap/api/mapcore/util/k7;Z)Lcom/amap/api/mapcore/util/m7;
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
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/f7;->c(Lcom/amap/api/mapcore/util/k7;ZI)Lcom/amap/api/mapcore/util/m7;

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
    invoke-virtual {p0, p1, p2, v0}, Lcom/amap/api/mapcore/util/f7;->c(Lcom/amap/api/mapcore/util/k7;ZI)Lcom/amap/api/mapcore/util/m7;

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

.method public c(Lcom/amap/api/mapcore/util/k7;ZI)Lcom/amap/api/mapcore/util/m7;
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
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->b()Ljava/lang/String;

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
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->d()[B

    move-result-object v7

    .line 10
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->isIgnoreGZip()Z

    move-result v8

    move v9, p3

    .line 11
    invoke-virtual/range {v1 .. v9}, Lcom/amap/api/mapcore/util/i7;->d(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/util/Map;[BZI)Lcom/amap/api/mapcore/util/m7;

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

.method public d(Lcom/amap/api/mapcore/util/k7;)[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    const/4 v0, 0x1

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

.method public e(Lcom/amap/api/mapcore/util/k7;)[B
    .locals 2
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

    const-string v0, "bm"

    const-string v1, "msp"

    .line 3
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b6;->e(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string v0, "\u672a\u77e5\u7684\u9519\u8bef"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception p1

    .line 5
    throw p1
.end method

.method protected f(Lcom/amap/api/mapcore/util/k7;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/gb;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getURL()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k7;->getURL()Ljava/lang/String;

    move-result-object p1

    const-string v0, ""

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string v0, "request url is empty"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    new-instance p1, Lcom/amap/api/mapcore/util/gb;

    const-string v0, "requeust is null"

    invoke-direct {p1, v0}, Lcom/amap/api/mapcore/util/gb;-><init>(Ljava/lang/String;)V

    throw p1
.end method
