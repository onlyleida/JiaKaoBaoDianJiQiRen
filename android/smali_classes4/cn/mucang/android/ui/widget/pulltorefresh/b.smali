.class public Lcn/mucang/android/ui/widget/pulltorefresh/b;
.super Lcn/mucang/android/ui/widget/pulltorefresh/e;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final w:Landroid/view/animation/Animation;

.field private final x:Landroid/view/animation/Animation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V
    .locals 9

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/ui/widget/pulltorefresh/e;-><init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)V

    .line 2
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p2, p1, :cond_0

    const/16 p1, -0xb4

    goto :goto_0

    :cond_0
    const/16 p1, 0xb4

    .line 3
    :goto_0
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v1, 0x0

    int-to-float p1, p1

    const/4 v3, 0x1

    const/high16 v4, 0x3f000000    # 0.5f

    const/4 v5, 0x1

    const/high16 v6, 0x3f000000    # 0.5f

    move-object v0, p2

    move v2, p1

    invoke-direct/range {v0 .. v6}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/b;->w:Landroid/view/animation/Animation;

    .line 4
    sget-object p3, Lcn/mucang/android/ui/widget/pulltorefresh/e;->v:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    const-wide/16 v0, 0x96

    .line 5
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    const/4 p4, 0x1

    .line 6
    invoke-virtual {p2, p4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 7
    new-instance p2, Landroid/view/animation/RotateAnimation;

    const/4 v4, 0x0

    const/4 v7, 0x1

    const/high16 v8, 0x3f000000    # 0.5f

    move-object v2, p2

    move v3, p1

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    iput-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/b;->x:Landroid/view/animation/Animation;

    .line 8
    invoke-virtual {p2, p3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 9
    invoke-virtual {p2, v0, v1}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 10
    invoke-virtual {p2, p4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    return-void
.end method

.method private getDrawableRotationAngle()F
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/b$a;->a:[I

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->j:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v0, v1, :cond_1

    const/high16 v0, 0x43870000    # 270.0f

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    .line 3
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->j:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;->HORIZONTAL:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    if-ne v0, v1, :cond_3

    const/high16 v0, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_3
    const/high16 v0, 0x43340000    # 180.0f

    :goto_1
    return v0
.end method


# virtual methods
.method protected c(Landroid/graphics/drawable/Drawable;)V
    .locals 5

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 4
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 5
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->requestLayout()V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    sget-object v3, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 7
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    .line 8
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    sub-int/2addr v3, p1

    int-to-float p1, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr p1, v3

    iget v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    sub-int/2addr v4, v0

    int-to-float v0, v4

    div-float/2addr v0, v3

    invoke-virtual {v2, p1, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 9
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/b;->getDrawableRotationAngle()F

    move-result p1

    iget v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    int-to-float v0, v0

    div-float/2addr v0, v3

    iget v1, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    int-to-float v1, v1

    div-float/2addr v1, v3

    invoke-virtual {v2, p1, v0, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z

    .line 10
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method

.method protected e(F)V
    .locals 0

    return-void
.end method

.method protected g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/b;->w:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v1

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/b;->x:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_0
    return-void
.end method

.method protected getDefaultDrawableResId()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$drawable;->default_ptr_flip:I

    return v0
.end method

.method protected i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method protected k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/b;->w:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method protected m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method
