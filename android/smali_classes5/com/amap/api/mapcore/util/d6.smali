.class public Lcom/amap/api/mapcore/util/d6;
.super Lcom/amap/api/mapcore/util/j5;
.source "SourceFile"


# instance fields
.field private d:[B

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/j5;-><init>()V

    const-string v0, "1"

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d6;->e:Ljava/lang/String;

    .line 3
    invoke-virtual {p1}, [B->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lcom/amap/api/mapcore/util/d6;->d:[B

    .line 4
    iput-object p2, p0, Lcom/amap/api/mapcore/util/d6;->e:Ljava/lang/String;

    return-void
.end method

.method private e()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/y5;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->o(Ljava/lang/String;)[B

    move-result-object v0

    .line 2
    array-length v1, v0

    const/16 v2, 0x32

    add-int/2addr v1, v2

    new-array v1, v1, [B

    .line 3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/d6;->d:[B

    const/4 v4, 0x0

    invoke-static {v3, v4, v1, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4
    array-length v3, v0

    invoke-static {v0, v4, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5
    invoke-static {v1}, Lcom/amap/api/mapcore/util/k5;->b([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getEntityBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d6;->d:[B

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public getRequestHead()Ljava/util/Map;
    .locals 3
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
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "Content-Type"

    const-string v2, "application/zip"

    .line 2
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d6;->d:[B

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Content-Length"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/y5;->c:Ljava/lang/String;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->t(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "1"

    aput-object v3, v1, v2

    iget-object v2, p0, Lcom/amap/api/mapcore/util/d6;->e:Ljava/lang/String;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const/4 v2, 0x2

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "open"

    aput-object v3, v1, v2

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/d6;->e()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 3
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
