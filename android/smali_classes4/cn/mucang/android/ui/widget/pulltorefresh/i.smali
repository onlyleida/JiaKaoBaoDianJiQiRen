.class public Lcn/mucang/android/ui/widget/pulltorefresh/i;
.super Lcn/mucang/android/ui/widget/pulltorefresh/e;
.source "SourceFile"


# instance fields
.field private final A:Z

.field private final w:Landroid/view/animation/Animation;

.field private final x:Landroid/graphics/Matrix;

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 7

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/ui/widget/pulltorefresh/e;-><init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 2
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrRotateDrawableWhilePulling:I

    const/4 p2, 0x1

    invoke-virtual {p4, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->A:Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    sget-object p3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 4
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->x:Landroid/graphics/Matrix;

    .line 5
    iget-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 6
    new-instance p1, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x44340000    # 720.0f

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->w:Landroid/view/animation/Animation;

    .line 7
    sget-object p3, Lcn/mucang/android/ui/widget/pulltorefresh/e;->v:Landroid/view/animation/Interpolator;

    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 p3, 0x4b0

    .line 8
    invoke-virtual {p1, p3, p4}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p3, -0x1

    .line 9
    invoke-virtual {p1, p3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 10
    invoke-virtual {p1, p2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->x:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->x:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->y:F

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->z:F

    :cond_0
    return-void
.end method

.method protected e(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->A:Z

    if-eqz v0, :cond_0

    const/high16 v0, 0x42b40000    # 90.0f

    mul-float p1, p1, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float p1, p1, v1

    const/high16 v1, 0x43340000    # 180.0f

    sub-float/2addr p1, v1

    .line 2
    invoke-static {v1, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->x:Landroid/graphics/Matrix;

    iget v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->y:F

    iget v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->z:F

    invoke-virtual {v0, p1, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->x:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method

.method protected g()V
    .locals 0

    return-void
.end method

.method protected getDefaultDrawableResId()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$drawable;->default_ptr_rotate:I

    return v0
.end method

.method protected i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/i;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected k()V
    .locals 0

    return-void
.end method

.method protected m()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/i;->p()V

    return-void
.end method
