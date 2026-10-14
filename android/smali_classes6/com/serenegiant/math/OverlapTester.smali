.class public Lcom/serenegiant/math/OverlapTester;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final r1L:Lcom/serenegiant/math/Vector;

.field private static final r2L:Lcom/serenegiant/math/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    sput-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    .line 2
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    sput-object v0, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static check(Lcom/serenegiant/math/BaseBounds;Lcom/serenegiant/math/BaseBounds;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result v0

    .line 2
    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    iget p1, p1, Lcom/serenegiant/math/BaseBounds;->radius:F

    add-float/2addr p0, p1

    mul-float p0, p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;FF)Z
    .locals 1

    .line 27
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2}, Lcom/serenegiant/math/Vector;->distSquared(FF)F

    move-result p1

    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    mul-float p0, p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;FFF)Z
    .locals 1

    .line 26
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    mul-float p0, p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;Lcom/serenegiant/math/CircleBounds;)Z
    .locals 2

    .line 3
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result v0

    .line 4
    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    iget p1, p1, Lcom/serenegiant/math/BaseBounds;->radius:F

    add-float/2addr p0, p1

    mul-float p0, p0, p0

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;Lcom/serenegiant/math/RectangleBounds;)Z
    .locals 10

    .line 14
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v1, v0, Lcom/serenegiant/math/Vector;->x:F

    .line 15
    iget v2, v0, Lcom/serenegiant/math/Vector;->y:F

    .line 16
    iget v0, v0, Lcom/serenegiant/math/Vector;->z:F

    .line 17
    sget-object v3, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget-object v4, p1, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v3, v4}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v4

    iget-object v5, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v4, v5}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 18
    iget-object p1, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v4, p1, Lcom/serenegiant/math/Vector;->x:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v4, v4, v5

    .line 19
    iget v6, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v6, v6, v5

    .line 20
    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, v5

    .line 21
    iget-object v5, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v7, v5, Lcom/serenegiant/math/Vector;->x:F

    iget v8, v3, Lcom/serenegiant/math/Vector;->x:F

    cmpg-float v9, v7, v8

    if-gez v9, :cond_0

    move v1, v8

    goto :goto_0

    :cond_0
    add-float v9, v8, v4

    cmpl-float v7, v7, v9

    if-lez v7, :cond_1

    add-float v1, v8, v4

    .line 22
    :cond_1
    :goto_0
    iget v4, v5, Lcom/serenegiant/math/Vector;->y:F

    iget v7, v3, Lcom/serenegiant/math/Vector;->y:F

    cmpg-float v8, v4, v7

    if-gez v8, :cond_2

    move v2, v7

    goto :goto_1

    :cond_2
    add-float v8, v7, v6

    cmpl-float v4, v4, v8

    if-lez v4, :cond_3

    add-float v2, v7, v6

    .line 23
    :cond_3
    :goto_1
    iget v4, v5, Lcom/serenegiant/math/Vector;->z:F

    iget v3, v3, Lcom/serenegiant/math/Vector;->z:F

    cmpg-float v6, v4, v3

    if-gez v6, :cond_4

    move v0, v3

    goto :goto_2

    :cond_4
    add-float v6, v3, p1

    cmpl-float v4, v4, v6

    if-lez v4, :cond_5

    add-float v0, v3, p1

    .line 24
    :cond_5
    :goto_2
    invoke-virtual {v5, v1, v2, v0}, Lcom/serenegiant/math/Vector;->distSquared(FFF)F

    move-result p1

    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    mul-float p0, p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_6

    const/4 p0, 0x1

    goto :goto_3

    :cond_6
    const/4 p0, 0x0

    :goto_3
    return p0
.end method

.method public static check(Lcom/serenegiant/math/CircleBounds;Lcom/serenegiant/math/Vector;)Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result p1

    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    mul-float p0, p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;FF)Z
    .locals 1

    const/4 v0, 0x0

    .line 29
    invoke-static {p0, p1, p2, v0}, Lcom/serenegiant/math/OverlapTester;->check(Lcom/serenegiant/math/RectangleBounds;FFF)Z

    move-result p0

    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;FFF)Z
    .locals 4

    .line 30
    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget-object v1, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v1, v2}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 31
    iget v1, v0, Lcom/serenegiant/math/Vector;->x:F

    cmpg-float v2, v1, p1

    if-gtz v2, :cond_0

    iget-object p0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v2, p0, Lcom/serenegiant/math/Vector;->x:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    add-float/2addr v1, v2

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_0

    iget p1, v0, Lcom/serenegiant/math/Vector;->y:F

    cmpg-float v1, p1, p2

    if-gtz v1, :cond_0

    iget v1, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v1, v1, v3

    add-float/2addr p1, v1

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_0

    iget p1, v0, Lcom/serenegiant/math/Vector;->z:F

    cmpg-float p2, p1, p3

    if-gtz p2, :cond_0

    iget p0, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p0, p0, v3

    add-float/2addr p1, p0

    cmpl-float p0, p1, p3

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;Lcom/serenegiant/math/RectangleBounds;)Z
    .locals 8

    .line 5
    sget-object v0, Lcom/serenegiant/math/OverlapTester;->r1L:Lcom/serenegiant/math/Vector;

    iget-object v1, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v1

    iget-object v2, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v1, v2}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 6
    iget-object p0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v1, p0, Lcom/serenegiant/math/Vector;->x:F

    const/high16 v2, 0x40000000    # 2.0f

    mul-float v1, v1, v2

    .line 7
    iget v3, p0, Lcom/serenegiant/math/Vector;->y:F

    mul-float v3, v3, v2

    .line 8
    iget p0, p0, Lcom/serenegiant/math/Vector;->z:F

    mul-float p0, p0, v2

    .line 9
    sget-object v4, Lcom/serenegiant/math/OverlapTester;->r2L:Lcom/serenegiant/math/Vector;

    iget-object v5, p1, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v4, v5}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object v5

    iget-object v6, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    invoke-virtual {v5, v6}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 10
    iget-object p1, p1, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v5, p1, Lcom/serenegiant/math/Vector;->x:F

    mul-float v5, v5, v2

    .line 11
    iget v6, p1, Lcom/serenegiant/math/Vector;->y:F

    mul-float v6, v6, v2

    .line 12
    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    mul-float p1, p1, v2

    .line 13
    iget v2, v0, Lcom/serenegiant/math/Vector;->x:F

    iget v7, v4, Lcom/serenegiant/math/Vector;->x:F

    add-float/2addr v5, v7

    cmpg-float v5, v2, v5

    if-gez v5, :cond_0

    add-float/2addr v2, v1

    cmpl-float v1, v2, v7

    if-lez v1, :cond_0

    iget v1, v0, Lcom/serenegiant/math/Vector;->y:F

    iget v2, v4, Lcom/serenegiant/math/Vector;->y:F

    add-float/2addr v6, v2

    cmpg-float v5, v1, v6

    if-gez v5, :cond_0

    add-float/2addr v1, v3

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget v0, v0, Lcom/serenegiant/math/Vector;->z:F

    iget v1, v4, Lcom/serenegiant/math/Vector;->z:F

    add-float/2addr p1, v1

    cmpg-float p1, v0, p1

    if-gez p1, :cond_0

    add-float/2addr v0, p0

    cmpl-float p0, v0, v1

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/RectangleBounds;Lcom/serenegiant/math/Vector;)Z
    .locals 2

    .line 28
    iget v0, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    invoke-static {p0, v0, v1, p1}, Lcom/serenegiant/math/OverlapTester;->check(Lcom/serenegiant/math/RectangleBounds;FFF)Z

    move-result p0

    return p0
.end method

.method public static check(Lcom/serenegiant/math/SphereBounds;FFF)Z
    .locals 1

    .line 35
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->distance(FFF)F

    move-result p1

    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    mul-float p0, p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/SphereBounds;Lcom/serenegiant/math/SphereBounds;)Z
    .locals 2

    .line 32
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget-object v1, p1, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, v1}, Lcom/serenegiant/math/Vector;->distance(Lcom/serenegiant/math/Vector;)F

    move-result v0

    .line 33
    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    iget p1, p1, Lcom/serenegiant/math/BaseBounds;->radius:F

    add-float/2addr p0, p1

    cmpg-float p0, v0, p0

    if-gtz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static check(Lcom/serenegiant/math/SphereBounds;Lcom/serenegiant/math/Vector;)Z
    .locals 1

    .line 34
    iget-object v0, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1}, Lcom/serenegiant/math/Vector;->distSquared(Lcom/serenegiant/math/Vector;)F

    move-result p1

    iget p0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    mul-float p0, p0, p0

    cmpg-float p0, p1, p0

    if-gez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
