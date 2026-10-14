.class public Lcn/mucang/android/core/ui/page/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/core/ui/page/PageHistory;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/widget/FrameLayout;

.field private d:I

.field private volatile e:Z

.field private volatile f:Z

.field private volatile g:Ljava/lang/Runnable;

.field private h:Lcn/mucang/android/core/ui/page/PageHistory;

.field private i:Lcn/mucang/android/core/ui/page/a;

.field private final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcn/mucang/android/core/webview/core/page/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcn/mucang/android/core/ui/page/PageAppConfig;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/core/ui/page/d;->e:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/core/ui/page/d;->f:Z

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/d;->j:Ljava/util/Map;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d;->a:Landroid/content/Context;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0x14

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    .line 7
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-direct {v1, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    .line 8
    invoke-virtual {p2}, Lcn/mucang/android/core/ui/page/PageAppConfig;->getMaxPageCount()I

    move-result p2

    iput p2, p0, Lcn/mucang/android/core/ui/page/d;->d:I

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    .line 10
    new-instance p2, Landroid/animation/LayoutTransition;

    invoke-direct {p2}, Landroid/animation/LayoutTransition;-><init>()V

    .line 11
    new-instance v1, Lcn/mucang/android/core/ui/page/d$a;

    invoke-direct {v1, p0}, Lcn/mucang/android/core/ui/page/d$a;-><init>(Lcn/mucang/android/core/ui/page/d;)V

    invoke-virtual {p2, v1}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    .line 12
    iget v1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, v1}, Lcn/mucang/android/core/ui/page/d;->n(I)Landroid/animation/Animator;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {p2, v2, v1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    .line 13
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->s(I)Landroid/animation/Animator;

    move-result-object p1

    const/4 v1, 0x3

    invoke-virtual {p2, v1, p1}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    const-wide/16 v3, 0x0

    .line 14
    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 15
    invoke-virtual {p2, v1, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const/4 p1, 0x0

    .line 16
    invoke-virtual {p2, p1, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    .line 17
    invoke-virtual {p2, v0, v3, v4}, Landroid/animation/LayoutTransition;->setStartDelay(IJ)V

    const-wide/16 v3, 0x12c

    .line 18
    invoke-virtual {p2, v2, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 19
    invoke-virtual {p2, v1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 20
    invoke-virtual {p2, p1, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 21
    invoke-virtual {p2, v0, v3, v4}, Landroid/animation/LayoutTransition;->setDuration(IJ)V

    .line 22
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    return-void
.end method

.method private A()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/ui/page/PageHistory;

    .line 3
    iget-object v1, v0, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-nez v1, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    new-instance v2, Lcn/mucang/android/core/ui/page/d$c;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/core/ui/page/d$c;-><init>(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static synthetic a(Lcn/mucang/android/core/ui/page/d;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/ui/page/d;->f:Z

    return p1
.end method

.method static synthetic b(Lcn/mucang/android/core/ui/page/d;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/ui/page/d;->g:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/core/ui/page/d;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d;->g:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic d(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->h(Lcn/mucang/android/core/ui/page/PageHistory;)V

    return-void
.end method

.method static synthetic e(Lcn/mucang/android/core/ui/page/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->k()V

    return-void
.end method

.method static synthetic f(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/PageView;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->j(Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/PageView;

    move-result-object p0

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/core/ui/page/d;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private h(Lcn/mucang/android/core/ui/page/PageHistory;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->k()V

    const/4 v0, 0x0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->m()V

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/ui/page/PageHistory;

    .line 5
    iget-object v0, v0, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/PageView;->doPause()V

    .line 6
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->j(Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/PageView;

    move-result-object v0

    .line 7
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    .line 8
    iget-object v2, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v2, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v2, v0, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageHistory;->getPageArgument()Lcn/mucang/android/core/ui/page/PageArgument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/ui/page/PageView;->doResume(Lcn/mucang/android/core/ui/page/PageArgument;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    iget-object p1, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->u(Lcn/mucang/android/core/ui/page/PageView;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget v0, p0, Lcn/mucang/android/core/ui/page/d;->d:I

    if-le p1, v0, :cond_2

    .line 13
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    iget v2, p0, Lcn/mucang/android/core/ui/page/d;->d:I

    sub-int/2addr v0, v2

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/ui/page/PageHistory;

    .line 14
    iget-object v0, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-eqz v0, :cond_2

    .line 15
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    new-instance v2, Lcn/mucang/android/core/ui/page/d$d;

    invoke-direct {v2, p0, p1, v0}, Lcn/mucang/android/core/ui/page/d$d;-><init>(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;Lcn/mucang/android/core/ui/page/PageView;)V

    const-wide/16 v3, 0xc8

    invoke-virtual {v1, v2, v3, v4}, Landroid/widget/FrameLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method private j(Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/PageView;
    .locals 2

    .line 1
    new-instance v0, Lcn/mucang/android/core/ui/page/PageView;

    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d;->a:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1}, Lcn/mucang/android/core/ui/page/PageView;-><init>(Landroid/content/Context;Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V

    .line 2
    iput-object v0, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    return-object v0
.end method

.method private k()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    :cond_0
    return-void
.end method

.method private m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x2

    .line 2
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x3

    .line 3
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    const/4 v1, 0x4

    .line 6
    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    :cond_0
    return-void
.end method

.method private n(I)Landroid/animation/Animator;
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v3, v1, [F

    .line 2
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const-string v5, "Alpha"

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-array v1, v1, [F

    int-to-float p1, p1

    aput p1, v1, v5

    const/4 p1, 0x0

    const/4 v3, 0x1

    aput p1, v1, v3

    const-string p1, "translationX"

    .line 3
    invoke-static {v4, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private s(I)Landroid/animation/Animator;
    .locals 6

    .line 1
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/animation/Animator;

    new-array v3, v1, [F

    .line 2
    fill-array-data v3, :array_0

    const/4 v4, 0x0

    const-string v5, "Alpha"

    invoke-static {v4, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    new-array v1, v1, [F

    const/4 v3, 0x0

    aput v3, v1, v5

    int-to-float p1, p1

    const/4 v3, 0x1

    aput p1, v1, v3

    const-string p1, "translationX"

    .line 3
    invoke-static {v4, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    aput-object p1, v2, v3

    .line 4
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private u(Lcn/mucang/android/core/ui/page/PageView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->i:Lcn/mucang/android/core/ui/page/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcn/mucang/android/core/ui/page/a;->a(Lcn/mucang/android/core/ui/page/PageView;)V

    :cond_0
    return-void
.end method

.method private y(Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->z(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 3
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->k()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->m()V

    const/4 v1, 0x1

    .line 6
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/ui/page/PageHistory;

    .line 7
    iget-object v2, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    .line 8
    invoke-virtual {v2}, Lcn/mucang/android/core/ui/page/PageView;->doPause()V

    .line 9
    invoke-virtual {v2}, Lcn/mucang/android/core/ui/page/PageView;->doDestroy()V

    if-eqz v1, :cond_3

    .line 10
    iget-object v3, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v3, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    :cond_3
    const/4 v2, 0x0

    .line 11
    iput-object v2, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-eqz v1, :cond_4

    .line 12
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/core/ui/page/PageHistory;

    if-eqz p1, :cond_4

    .line 13
    iget-object v0, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-eqz v0, :cond_4

    .line 14
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageHistory;->getPageArgument()Lcn/mucang/android/core/ui/page/PageArgument;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/ui/page/PageView;->doResume(Lcn/mucang/android/core/ui/page/PageArgument;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    iget-object p1, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->u(Lcn/mucang/android/core/ui/page/PageView;)V

    .line 17
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->A()V

    return v1
.end method

.method private z(Ljava/lang/String;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    if-ltz v0, :cond_3

    .line 2
    iget-object v3, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/core/ui/page/PageHistory;

    .line 3
    invoke-virtual {v3}, Lcn/mucang/android/core/ui/page/PageHistory;->getPageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    iget-object p1, p1, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageView;->doPause()V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/core/ui/page/PageView;->doDestroy()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 8
    iget-object p1, v3, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-nez p1, :cond_0

    .line 9
    invoke-direct {p0, v3}, Lcn/mucang/android/core/ui/page/d;->j(Lcn/mucang/android/core/ui/page/PageHistory;)Lcn/mucang/android/core/ui/page/PageView;

    move-result-object p1

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v2, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 11
    iget-object v0, v3, Lcn/mucang/android/core/ui/page/PageHistory;->pageState:Lcn/mucang/android/core/ui/page/PageState;

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/ui/page/PageView;->doRestoreInstanceState(Lcn/mucang/android/core/ui/page/PageState;)V

    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v3}, Lcn/mucang/android/core/ui/page/PageHistory;->getPageArgument()Lcn/mucang/android/core/ui/page/PageArgument;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/core/ui/page/PageView;->doResume(Lcn/mucang/android/core/ui/page/PageArgument;)V

    .line 13
    :goto_1
    iput-object v3, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    .line 14
    iget-object p1, v3, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->u(Lcn/mucang/android/core/ui/page/PageView;)V

    const/4 v2, 0x1

    goto :goto_2

    .line 15
    :cond_1
    iget-object v2, v3, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-eqz v2, :cond_2

    .line 16
    invoke-virtual {v2}, Lcn/mucang/android/core/ui/page/PageView;->doSaveInstanceState()Lcn/mucang/android/core/ui/page/PageState;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/core/ui/page/PageHistory;->pageState:Lcn/mucang/android/core/ui/page/PageState;

    .line 17
    invoke-virtual {v2}, Lcn/mucang/android/core/ui/page/PageView;->doDestroy()V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->k()V

    .line 19
    iget-object v4, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    invoke-virtual {v4, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v2, 0x0

    .line 20
    iput-object v2, v3, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 21
    :cond_3
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-interface {p1, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 22
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v1

    :goto_3
    if-le v0, p1, :cond_4

    .line 23
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_3

    .line 24
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->A()V

    return v2
.end method


# virtual methods
.method public B(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/ui/page/PageHistory;->setPageName(Ljava/lang/String;)V

    return-void
.end method

.method C(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/core/ui/page/d;->e:Z

    return-void
.end method

.method public D(Lcn/mucang/android/core/ui/page/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d;->i:Lcn/mucang/android/core/ui/page/a;

    return-void
.end method

.method public E(Lcn/mucang/android/core/ui/page/PageArgument;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    invoke-virtual {v0, p1}, Lcn/mucang/android/core/ui/page/PageHistory;->setPageArgument(Lcn/mucang/android/core/ui/page/PageArgument;)V

    return-void
.end method

.method public i(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/ui/page/d;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->y(Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public l()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/core/ui/page/d;->k()V

    return-void
.end method

.method public o(Ljava/lang/String;)Lcn/mucang/android/core/webview/core/page/d;
    .locals 4

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/webview/core/page/e;->h(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/webview/core/page/d;

    if-nez v0, :cond_1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/core/ui/page/d;->j:Ljava/util/Map;

    monitor-enter v1

    .line 6
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->j:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/webview/core/page/d;

    if-nez v0, :cond_0

    .line 7
    new-instance v0, Lcn/mucang/android/core/webview/core/page/d;

    iget-object v2, p0, Lcn/mucang/android/core/ui/page/d;->a:Landroid/content/Context;

    invoke-static {}, Lcn/mucang/android/core/webview/core/page/AsteroidManager;->d()Lcn/mucang/android/core/webview/core/page/AsteroidManager;

    move-result-object v3

    invoke-direct {v0, p1, v2, v3}, Lcn/mucang/android/core/webview/core/page/d;-><init>(Ljava/lang/String;Landroid/content/Context;Lcn/mucang/android/core/webview/core/page/AsteroidManager;)V

    .line 8
    iget-object v2, p0, Lcn/mucang/android/core/ui/page/d;->j:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public p()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->c:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public q()Lcn/mucang/android/core/ui/page/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/core/ui/page/PageView;->getPage()Lcn/mucang/android/core/ui/page/b;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method r()Lcn/mucang/android/core/ui/page/PageView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->h:Lcn/mucang/android/core/ui/page/PageHistory;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/core/ui/page/PageHistory;->pageView:Lcn/mucang/android/core/ui/page/PageView;

    :goto_0
    return-object v0
.end method

.method public t()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/ui/page/d;->e:Z

    return v0
.end method

.method public v(Landroid/os/Bundle;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const-string v0, "__page_history__"

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    return-void
.end method

.method public w(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/ui/page/d;->b:Ljava/util/List;

    check-cast v0, Ljava/io/Serializable;

    const-string v1, "__page_history__"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    return-void
.end method

.method public x(Lcn/mucang/android/core/ui/page/PageHistory;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/ui/page/d;->f:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/ui/page/d;->h(Lcn/mucang/android/core/ui/page/PageHistory;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/core/ui/page/d$b;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/core/ui/page/d$b;-><init>(Lcn/mucang/android/core/ui/page/d;Lcn/mucang/android/core/ui/page/PageHistory;)V

    iput-object v0, p0, Lcn/mucang/android/core/ui/page/d;->g:Ljava/lang/Runnable;

    :goto_0
    return-void
.end method
