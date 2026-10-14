.class public Lcn/mucang/android/ui/widget/xrecyclerview/b;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# instance fields
.field private a:Landroid/widget/LinearLayout;

.field private b:Landroid/widget/TextView;

.field private c:Landroid/widget/ImageView;

.field private d:Landroid/widget/ProgressBar;

.field private e:I

.field public f:I

.field public g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e:I

    .line 3
    iput p3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->g:I

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->a()V

    return-void
.end method

.method private a()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$layout;->ui__widget_xrecyclerview_refresh_header:I

    const/4 v2, 0x0

    .line 2
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->a:Landroid/widget/LinearLayout;

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 4
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6
    invoke-virtual {p0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->a:Landroid/widget/LinearLayout;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    sget v0, Lcn/mucang/android/framework/core/R$id;->refresh_status_textview:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->b:Landroid/widget/TextView;

    .line 9
    sget v0, Lcn/mucang/android/framework/core/R$id;->refresh_image:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    .line 10
    sget v0, Lcn/mucang/android/framework/core/R$id;->loading_progress:I

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->d:Landroid/widget/ProgressBar;

    .line 11
    iget v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->g:I

    if-lez v0, :cond_0

    .line 12
    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    :cond_0
    invoke-virtual {p0, v3, v3}, Landroid/widget/LinearLayout;->measure(II)V

    .line 14
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->f:I

    return-void
.end method

.method private d(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e(ILandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method private e(ILandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/ui/widget/xrecyclerview/b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b$a;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/b;)V

    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->f(ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private f(ILandroid/animation/Animator$AnimatorListener;Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getVisibleHeight()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    const-wide/16 v0, 0x12c

    .line 2
    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 4
    :cond_0
    invoke-virtual {p1, p3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method public b(F)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getVisibleHeight()I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    :cond_0
    float-to-int p1, p1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getVisibleHeight()I

    move-result v0

    add-int/2addr p1, v0

    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->setVisibleHeight(I)V

    .line 3
    iget p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e:I

    const/4 v0, 0x1

    if-gt p1, v0, :cond_2

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getVisibleHeight()I

    move-result p1

    iget v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->f:I

    if-le p1, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->setState(I)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->setState(I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getVisibleHeight()I

    move-result v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getVisibleHeight()I

    move-result v0

    iget v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->f:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-le v0, v1, :cond_0

    iget v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e:I

    if-ge v0, v3, :cond_0

    .line 3
    invoke-virtual {p0, v3}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->setState(I)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    :goto_0
    iget v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e:I

    if-ne v1, v3, :cond_1

    .line 5
    iget v2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->f:I

    .line 6
    :cond_1
    invoke-direct {p0, v2}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->d(I)V

    return v0
.end method

.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e:I

    return v0
.end method

.method public getVisibleHeight()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iget v0, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    return v0
.end method

.method public setRefreshImageViewBg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    :cond_0
    return-void
.end method

.method public setState(I)V
    .locals 8

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz p1, :cond_6

    if-eq p1, v1, :cond_5

    if-eq p1, v2, :cond_3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 2
    :cond_1
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    .line 3
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_2

    .line 4
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 5
    :cond_2
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->b:Landroid/widget/TextView;

    sget v4, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_pull_refresh_complete:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 6
    :cond_3
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    .line 7
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    instance-of v3, v3, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v3, :cond_4

    .line 8
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 9
    :cond_4
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->b:Landroid/widget/TextView;

    sget v4, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_pull_refresh_ing:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 10
    :cond_5
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->b:Landroid/widget/TextView;

    sget v4, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_pull_refresh_release:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 11
    :cond_6
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->b:Landroid/widget/TextView;

    sget v4, Lcn/mucang/android/framework/core/R$string;->ui_framework__x_recycler_view_pull_refresh_label:I

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 12
    :goto_0
    iget v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->g:I

    if-lez v3, :cond_b

    const-wide/16 v3, 0x12c

    const-string v5, "rotation"

    const/4 v6, 0x0

    const/16 v7, 0x8

    if-eqz p1, :cond_a

    if-eq p1, v1, :cond_9

    if-eq p1, v2, :cond_8

    if-eq p1, v0, :cond_7

    goto :goto_1

    .line 13
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    .line 14
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 16
    :cond_9
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    new-array v1, v2, [F

    fill-array-data v1, :array_0

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_1

    .line 17
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->d:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v7}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 19
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c:Landroid/widget/ImageView;

    new-array v1, v2, [F

    fill-array-data v1, :array_1

    invoke-static {v0, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 20
    :cond_b
    :goto_1
    iput p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->e:I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        -0x3ccc0000    # -180.0f
    .end array-data

    :array_1
    .array-data 4
        -0x3ccc0000    # -180.0f
        0x0
    .end array-data
.end method

.method public setVisibleHeight(I)V
    .locals 1

    if-gez p1, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/b;->a:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
