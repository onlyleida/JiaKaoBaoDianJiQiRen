.class public Lcom/serenegiant/graphics/BaseShape;
.super Landroid/graphics/drawable/shapes/Shape;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field protected final TAG:Ljava/lang/String;

.field final debugPaint:Landroid/graphics/Paint;

.field protected final mBoundsRect:Landroid/graphics/RectF;

.field protected mPivotX:F

.field protected mPivotY:F

.field protected mRotation:F

.field protected mScaleX:F

.field protected mScaleY:F

.field protected final mStdHeight:F

.field protected final mStdHeight2:F

.field protected final mStdWidth:F

.field protected final mStdWidth2:F


# direct methods
.method public constructor <init>(FF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/shapes/Shape;-><init>()V

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/serenegiant/graphics/BaseShape;->TAG:Ljava/lang/String;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/graphics/BaseShape;->mBoundsRect:Landroid/graphics/RectF;

    .line 4
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/graphics/BaseShape;->debugPaint:Landroid/graphics/Paint;

    .line 5
    iput p1, p0, Lcom/serenegiant/graphics/BaseShape;->mStdWidth:F

    .line 6
    iput p2, p0, Lcom/serenegiant/graphics/BaseShape;->mStdHeight:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 7
    iput p1, p0, Lcom/serenegiant/graphics/BaseShape;->mStdWidth2:F

    div-float/2addr p2, v0

    .line 8
    iput p2, p0, Lcom/serenegiant/graphics/BaseShape;->mStdHeight2:F

    return-void
.end method


# virtual methods
.method protected final boundsRect()Landroid/graphics/RectF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/graphics/BaseShape;->mBoundsRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method public bridge synthetic clone()Landroid/graphics/drawable/shapes/Shape;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BaseShape;->clone()Lcom/serenegiant/graphics/BaseShape;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/serenegiant/graphics/BaseShape;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 3
    invoke-super {p0}, Landroid/graphics/drawable/shapes/Shape;->clone()Landroid/graphics/drawable/shapes/Shape;

    move-result-object v0

    check-cast v0, Lcom/serenegiant/graphics/BaseShape;

    .line 4
    iget-object v1, v0, Lcom/serenegiant/graphics/BaseShape;->mBoundsRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/serenegiant/graphics/BaseShape;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BaseShape;->clone()Lcom/serenegiant/graphics/BaseShape;

    move-result-object v0

    return-object v0
.end method

.method protected doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/graphics/BaseShape;->mBoundsRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 2
    iget v1, p0, Lcom/serenegiant/graphics/BaseShape;->mPivotX:F

    iget v2, p0, Lcom/serenegiant/graphics/BaseShape;->mPivotY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 3
    iget v1, p0, Lcom/serenegiant/graphics/BaseShape;->mRotation:F

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 4
    iget v1, p0, Lcom/serenegiant/graphics/BaseShape;->mScaleX:F

    iget v2, p0, Lcom/serenegiant/graphics/BaseShape;->mScaleY:F

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 5
    iget v1, p0, Lcom/serenegiant/graphics/BaseShape;->mStdWidth2:F

    neg-float v1, v1

    iget v2, p0, Lcom/serenegiant/graphics/BaseShape;->mStdHeight2:F

    neg-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/serenegiant/graphics/BaseShape;->doDraw(Landroid/graphics/Canvas;Landroid/graphics/Paint;)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getOutline(Landroid/graphics/Outline;)V
    .locals 6
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/serenegiant/graphics/BaseShape;->boundsRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 2
    iget v1, v0, Landroid/graphics/RectF;->left:F

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    iget v2, v0, Landroid/graphics/RectF;->top:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    iget v3, v0, Landroid/graphics/RectF;->right:F

    float-to-double v3, v3

    .line 3
    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v3, v3

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-int v0, v4

    .line 4
    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Outline;->setRect(IIII)V

    return-void
.end method

.method public getRotation()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/graphics/BaseShape;->mRotation:F

    return v0
.end method

.method public getScaleX()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/graphics/BaseShape;->mScaleX:F

    return v0
.end method

.method public getScaleY()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/graphics/BaseShape;->mScaleY:F

    return v0
.end method

.method protected onResize(FF)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/graphics/BaseShape;->mBoundsRect:Landroid/graphics/RectF;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 2
    iget v0, p0, Lcom/serenegiant/graphics/BaseShape;->mStdWidth:F

    div-float v0, p1, v0

    iput v0, p0, Lcom/serenegiant/graphics/BaseShape;->mScaleX:F

    .line 3
    iget v0, p0, Lcom/serenegiant/graphics/BaseShape;->mStdHeight:F

    div-float v0, p2, v0

    iput v0, p0, Lcom/serenegiant/graphics/BaseShape;->mScaleY:F

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/serenegiant/graphics/BaseShape;->mPivotX:F

    div-float/2addr p2, v0

    .line 5
    iput p2, p0, Lcom/serenegiant/graphics/BaseShape;->mPivotY:F

    return-void
.end method

.method public setRotation(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/serenegiant/graphics/BaseShape;->mRotation:F

    return-void
.end method
