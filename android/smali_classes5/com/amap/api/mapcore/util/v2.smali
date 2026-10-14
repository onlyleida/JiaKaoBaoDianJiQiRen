.class public Lcom/amap/api/mapcore/util/v2;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:D

.field public final b:D

.field public final c:D

.field public final d:D

.field public final e:D

.field public final f:D


# direct methods
.method public constructor <init>(DDDD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/v2;->a:D

    .line 3
    iput-wide p5, p0, Lcom/amap/api/mapcore/util/v2;->b:D

    .line 4
    iput-wide p3, p0, Lcom/amap/api/mapcore/util/v2;->c:D

    .line 5
    iput-wide p7, p0, Lcom/amap/api/mapcore/util/v2;->d:D

    add-double/2addr p1, p3

    const-wide/high16 p3, 0x4000000000000000L    # 2.0

    div-double/2addr p1, p3

    .line 6
    iput-wide p1, p0, Lcom/amap/api/mapcore/util/v2;->e:D

    add-double/2addr p5, p7

    div-double/2addr p5, p3

    .line 7
    iput-wide p5, p0, Lcom/amap/api/mapcore/util/v2;->f:D

    return-void
.end method


# virtual methods
.method public a(DD)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/v2;->a:D

    cmpg-double v2, v0, p1

    if-gtz v2, :cond_0

    iget-wide v0, p0, Lcom/amap/api/mapcore/util/v2;->c:D

    cmpg-double v2, p1, v0

    if-gtz v2, :cond_0

    iget-wide p1, p0, Lcom/amap/api/mapcore/util/v2;->b:D

    cmpg-double v0, p1, p3

    if-gtz v0, :cond_0

    iget-wide p1, p0, Lcom/amap/api/mapcore/util/v2;->d:D

    cmpg-double v0, p3, p1

    if-gtz v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(DDDD)Z
    .locals 3

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/v2;->c:D

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    iget-wide p1, p0, Lcom/amap/api/mapcore/util/v2;->a:D

    cmpg-double v0, p1, p3

    if-gez v0, :cond_0

    iget-wide p1, p0, Lcom/amap/api/mapcore/util/v2;->d:D

    cmpg-double p3, p5, p1

    if-gez p3, :cond_0

    iget-wide p1, p0, Lcom/amap/api/mapcore/util/v2;->b:D

    cmpg-double p3, p1, p7

    if-gez p3, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public c(Lcom/amap/api/mapcore/util/v2;)Z
    .locals 9

    .line 1
    iget-wide v1, p1, Lcom/amap/api/mapcore/util/v2;->a:D

    iget-wide v3, p1, Lcom/amap/api/mapcore/util/v2;->c:D

    iget-wide v5, p1, Lcom/amap/api/mapcore/util/v2;->b:D

    iget-wide v7, p1, Lcom/amap/api/mapcore/util/v2;->d:D

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Lcom/amap/api/mapcore/util/v2;->b(DDDD)Z

    move-result p1

    return p1
.end method

.method public d(Lcom/autonavi/amap/mapcore/DPoint;)Z
    .locals 4

    .line 1
    iget-wide v0, p1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v2, p1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/amap/api/mapcore/util/v2;->a(DD)Z

    move-result p1

    return p1
.end method

.method public e(Lcom/amap/api/mapcore/util/v2;)Z
    .locals 5

    .line 1
    iget-wide v0, p1, Lcom/amap/api/mapcore/util/v2;->a:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/v2;->a:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/amap/api/mapcore/util/v2;->c:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/v2;->c:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    iget-wide v0, p1, Lcom/amap/api/mapcore/util/v2;->b:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/v2;->b:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p1, Lcom/amap/api/mapcore/util/v2;->d:D

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/v2;->d:D

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
