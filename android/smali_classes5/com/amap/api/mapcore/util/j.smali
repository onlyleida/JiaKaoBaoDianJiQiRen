.class public abstract Lcom/amap/api/mapcore/util/j;
.super Lcom/amap/api/mapcore/util/k;
.source "SourceFile"


# instance fields
.field private final j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/k;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/j;->m:F

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/j;->n:F

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/j;->o:F

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/j;->p:F

    .line 6
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amap/api/mapcore/util/j;->j:F

    return-void
.end method

.method protected static j(Landroid/view/MotionEvent;II)F
    .locals 1

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    sub-float/2addr p2, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method protected static l(Landroid/view/MotionEvent;II)F
    .locals 1

    int-to-float p2, p2

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    add-float/2addr p2, v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    sub-float/2addr p2, v0

    .line 2
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    add-float/2addr p0, p2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method protected e(Landroid/view/MotionEvent;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/util/k;->e(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    .line 3
    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    if-eq v2, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    const/4 v4, 0x1

    .line 7
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 8
    invoke-virtual {v0, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    .line 10
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    .line 11
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 12
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v6, v2

    .line 13
    iput v6, p0, Lcom/amap/api/mapcore/util/j;->m:F

    sub-float/2addr v1, v3

    .line 14
    iput v1, p0, Lcom/amap/api/mapcore/util/j;->n:F

    sub-float/2addr v7, v5

    .line 15
    iput v7, p0, Lcom/amap/api/mapcore/util/j;->o:F

    sub-float/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/amap/api/mapcore/util/j;->p:F

    :cond_1
    :goto_0
    return-void
.end method

.method public k(I)Landroid/graphics/PointF;
    .locals 2

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/amap/api/mapcore/util/j;->m:F

    iget v1, p0, Lcom/amap/api/mapcore/util/j;->n:F

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1

    .line 2
    :cond_0
    new-instance p1, Landroid/graphics/PointF;

    iget v0, p0, Lcom/amap/api/mapcore/util/j;->o:F

    iget v1, p0, Lcom/amap/api/mapcore/util/j;->p:F

    invoke-direct {p1, v0, v1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object p1
.end method

.method protected m(Landroid/view/MotionEvent;II)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/k;->h:I

    if-eqz v0, :cond_1

    iget v1, p0, Lcom/amap/api/mapcore/util/k;->i:I

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 2
    iget v2, p0, Lcom/amap/api/mapcore/util/j;->j:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->k:F

    int-to-float v0, v1

    sub-float/2addr v0, v2

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/j;->l:F

    goto :goto_1

    .line 4
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 5
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    iget v2, p0, Lcom/amap/api/mapcore/util/j;->j:F

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/amap/api/mapcore/util/j;->k:F

    .line 6
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/amap/api/mapcore/util/j;->l:F

    .line 7
    :goto_1
    iget v0, p0, Lcom/amap/api/mapcore/util/j;->j:F

    .line 8
    iget v1, p0, Lcom/amap/api/mapcore/util/j;->k:F

    .line 9
    iget v2, p0, Lcom/amap/api/mapcore/util/j;->l:F

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    .line 11
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    const/4 v5, 0x1

    .line 12
    invoke-static {p1, v5, p2}, Lcom/amap/api/mapcore/util/j;->j(Landroid/view/MotionEvent;II)F

    move-result p2

    .line 13
    invoke-static {p1, v5, p3}, Lcom/amap/api/mapcore/util/j;->l(Landroid/view/MotionEvent;II)F

    move-result p1

    const/4 p3, 0x0

    cmpg-float v6, v3, v0

    if-ltz v6, :cond_3

    cmpg-float v6, v4, v0

    if-ltz v6, :cond_3

    cmpl-float v3, v3, v1

    if-gtz v3, :cond_3

    cmpl-float v3, v4, v2

    if-lez v3, :cond_2

    goto :goto_2

    :cond_2
    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v3, 0x1

    :goto_3
    cmpg-float v4, p2, v0

    if-ltz v4, :cond_5

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_5

    cmpl-float p2, p2, v1

    if-gtz p2, :cond_5

    cmpl-float p1, p1, v2

    if-lez p1, :cond_4

    goto :goto_4

    :cond_4
    const/4 p1, 0x0

    goto :goto_5

    :cond_5
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    return v5

    :cond_6
    if-eqz v3, :cond_7

    return v5

    :cond_7
    if-eqz p1, :cond_8

    return v5

    :cond_8
    return p3
.end method
