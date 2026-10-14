.class public Lcom/serenegiant/math/RectangleBounds;
.super Lcom/serenegiant/math/BaseBounds;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = 0x39d3b0d7e2fe024L


# instance fields
.field private final boundsRect:Landroid/graphics/Rect;

.field public final box:Lcom/serenegiant/math/Vector;

.field private final w:Lcom/serenegiant/math/Vector;


# direct methods
.method public constructor <init>(FFFF)V
    .locals 7

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/math/RectangleBounds;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(FFFFFF)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/serenegiant/math/BaseBounds;-><init>()V

    .line 2
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    .line 4
    new-instance v1, Lcom/serenegiant/math/Vector;

    invoke-direct {v1}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    .line 5
    iget-object v1, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v1, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    const/high16 p1, 0x40000000    # 2.0f

    div-float/2addr p4, p1

    div-float/2addr p5, p1

    div-float/2addr p6, p1

    .line 6
    invoke-virtual {v0, p4, p5, p6}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    .line 7
    invoke-virtual {v0}, Lcom/serenegiant/math/Vector;->len()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    return-void
.end method

.method public constructor <init>(Landroid/graphics/Rect;)V
    .locals 3

    .line 23
    invoke-virtual {p1}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/serenegiant/math/RectangleBounds;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;FF)V
    .locals 7

    .line 9
    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v3, p1, Lcom/serenegiant/math/Vector;->z:F

    const/4 v6, 0x0

    move-object v0, p0

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/serenegiant/math/RectangleBounds;-><init>(FFFFFF)V

    return-void
.end method

.method public constructor <init>(Lcom/serenegiant/math/Vector;Lcom/serenegiant/math/Vector;)V
    .locals 5

    .line 10
    invoke-direct {p0}, Lcom/serenegiant/math/BaseBounds;-><init>()V

    .line 11
    new-instance v0, Lcom/serenegiant/math/Vector;

    invoke-direct {v0}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    .line 13
    new-instance v1, Lcom/serenegiant/math/Vector;

    invoke-direct {v1}, Lcom/serenegiant/math/Vector;-><init>()V

    iput-object v1, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    .line 14
    iget v1, p1, Lcom/serenegiant/math/Vector;->x:F

    iget v2, p2, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_0

    .line 15
    iput v2, p1, Lcom/serenegiant/math/Vector;->x:F

    iput v1, p2, Lcom/serenegiant/math/Vector;->x:F

    .line 16
    :cond_0
    iget v1, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v2, p2, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_1

    .line 17
    iput v2, p1, Lcom/serenegiant/math/Vector;->y:F

    iput v1, p2, Lcom/serenegiant/math/Vector;->y:F

    .line 18
    :cond_1
    iget v1, p1, Lcom/serenegiant/math/Vector;->z:F

    iget v2, p2, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float v3, v1, v2

    if-lez v3, :cond_2

    .line 19
    iput v2, p1, Lcom/serenegiant/math/Vector;->z:F

    iput v1, p2, Lcom/serenegiant/math/Vector;->z:F

    .line 20
    :cond_2
    iget v1, p2, Lcom/serenegiant/math/Vector;->x:F

    iget v2, p1, Lcom/serenegiant/math/Vector;->x:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iget v3, p2, Lcom/serenegiant/math/Vector;->y:F

    iget v4, p1, Lcom/serenegiant/math/Vector;->y:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    iget p2, p2, Lcom/serenegiant/math/Vector;->z:F

    iget v4, p1, Lcom/serenegiant/math/Vector;->z:F

    sub-float/2addr p2, v4

    div-float/2addr p2, v2

    invoke-virtual {p0, v1, v3, p2}, Lcom/serenegiant/math/BaseBounds;->setPosition(FFF)Lcom/serenegiant/math/BaseBounds;

    .line 21
    iget-object p2, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p2}, Lcom/serenegiant/math/Vector;->set(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    .line 22
    invoke-virtual {v0}, Lcom/serenegiant/math/Vector;->len()F

    move-result p1

    iput p1, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    return-void
.end method


# virtual methods
.method public boundsRect()Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v2, v1, Lcom/serenegiant/math/Vector;->x:F

    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v4, v3, Lcom/serenegiant/math/Vector;->x:F

    sub-float v5, v2, v4

    float-to-int v5, v5

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    iget v3, v3, Lcom/serenegiant/math/Vector;->y:F

    sub-float v6, v1, v3

    float-to-int v6, v6

    add-float/2addr v2, v4

    float-to-int v2, v2

    add-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v0, v5, v6, v2, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public boundsRect(F)Landroid/graphics/Rect;
    .locals 7

    .line 3
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget v2, v1, Lcom/serenegiant/math/Vector;->x:F

    iget-object v3, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v4, v3, Lcom/serenegiant/math/Vector;->x:F

    mul-float v5, v4, p1

    sub-float v5, v2, v5

    float-to-int v5, v5

    iget v1, v1, Lcom/serenegiant/math/Vector;->y:F

    iget v3, v3, Lcom/serenegiant/math/Vector;->y:F

    mul-float v6, v3, p1

    sub-float v6, v1, v6

    float-to-int v6, v6

    mul-float v4, v4, p1

    add-float/2addr v2, v4

    float-to-int v2, v2

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    float-to-int p1, v1

    invoke-virtual {v0, v5, v6, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 4
    iget-object p1, p0, Lcom/serenegiant/math/RectangleBounds;->boundsRect:Landroid/graphics/Rect;

    return-object p1
.end method

.method public ptInBounds(FFF)Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/serenegiant/math/BaseBounds;->radius:F

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/serenegiant/math/BaseBounds;->ptInBoundsSphere(FFFF)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    invoke-virtual {v0, p1, p2, p3}, Lcom/serenegiant/math/Vector;->set(FFF)Lcom/serenegiant/math/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    invoke-virtual {p1, p2}, Lcom/serenegiant/math/Vector;->sub(Lcom/serenegiant/math/Vector;)Lcom/serenegiant/math/Vector;

    move-result-object p1

    iget-object p2, p0, Lcom/serenegiant/math/BaseBounds;->angle:Lcom/serenegiant/math/Vector;

    const/high16 p3, -0x40800000    # -1.0f

    invoke-virtual {p1, p2, p3}, Lcom/serenegiant/math/Vector;->rotate(Lcom/serenegiant/math/Vector;F)Lcom/serenegiant/math/Vector;

    .line 3
    iget-object p1, p0, Lcom/serenegiant/math/BaseBounds;->position:Lcom/serenegiant/math/Vector;

    iget p2, p1, Lcom/serenegiant/math/Vector;->x:F

    iget-object p3, p0, Lcom/serenegiant/math/RectangleBounds;->box:Lcom/serenegiant/math/Vector;

    iget v0, p3, Lcom/serenegiant/math/Vector;->x:F

    sub-float v1, p2, v0

    add-float/2addr p2, v0

    .line 4
    iget v0, p1, Lcom/serenegiant/math/Vector;->y:F

    iget v2, p3, Lcom/serenegiant/math/Vector;->y:F

    sub-float v3, v0, v2

    add-float/2addr v0, v2

    .line 5
    iget p1, p1, Lcom/serenegiant/math/Vector;->z:F

    iget p3, p3, Lcom/serenegiant/math/Vector;->z:F

    sub-float v2, p1, p3

    add-float/2addr p1, p3

    .line 6
    iget-object p3, p0, Lcom/serenegiant/math/RectangleBounds;->w:Lcom/serenegiant/math/Vector;

    iget v4, p3, Lcom/serenegiant/math/Vector;->x:F

    cmpl-float v1, v4, v1

    if-ltz v1, :cond_0

    cmpg-float p2, v4, p2

    if-gtz p2, :cond_0

    iget p2, p3, Lcom/serenegiant/math/Vector;->y:F

    cmpl-float v1, p2, v3

    if-ltz v1, :cond_0

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_0

    iget p2, p3, Lcom/serenegiant/math/Vector;->z:F

    cmpl-float p3, p2, v2

    if-ltz p3, :cond_0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method
