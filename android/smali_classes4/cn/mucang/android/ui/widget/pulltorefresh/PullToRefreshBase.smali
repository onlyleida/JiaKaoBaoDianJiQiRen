.class public abstract Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;
.super Landroid/widget/LinearLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$e;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        ">",
        "Landroid/widget/LinearLayout;",
        "Ljava/lang/Object<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:Z

.field private g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

.field private h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field private i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

.field j:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private k:Landroid/widget/FrameLayout;

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Landroid/view/animation/Interpolator;

.field private r:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

.field private s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

.field private t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

.field private u:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h<",
            "TT;>;"
        }
    .end annotation
.end field

.field private v:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g<",
            "TT;>;"
        }
    .end annotation
.end field

.field private w:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f<",
            "TT;>;"
        }
    .end annotation
.end field

.field private x:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;

.field private y:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase<",
            "TT;>.j;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    .line 3
    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 4
    invoke-static {}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const/4 v1, 0x1

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->l:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m:Z

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->n:Z

    .line 8
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->o:Z

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->p:Z

    .line 10
    invoke-static {}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->getDefault()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->r:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final F(IJ)V
    .locals 7

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move-wide v2, p2

    .line 1
    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->G(IJJLcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V

    return-void
.end method

.method private final G(IJJLcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->y:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;->a()V

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollX()I

    move-result v0

    :goto_0
    move v3, v0

    if-eq v3, p1, :cond_4

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    .line 7
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    .line 8
    :cond_2
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;

    move-object v1, v0

    move-object v2, p0

    move v4, p1

    move-wide v5, p2

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;-><init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;IIJLcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->y:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$j;

    const-wide/16 p1, 0x0

    cmp-long p3, p4, p1

    if-lez p3, :cond_3

    .line 9
    invoke-virtual {p0, v0, p4, p5}, Landroid/widget/LinearLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_1
    return-void
.end method

.method static synthetic a(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f()V

    return-void
.end method

.method static synthetic b(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)Landroid/view/animation/Interpolator;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-object p0
.end method

.method private c(Landroid/content/Context;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    const/4 p1, -0x1

    .line 2
    invoke-virtual {v0, p2, p1, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->e(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private f()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->u:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;->a(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->v:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v2, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v1, v2, :cond_1

    .line 5
    invoke-interface {v0, p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;->a(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)V

    goto :goto_0

    .line 6
    :cond_1
    sget-object v2, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne v1, v2, :cond_2

    .line 7
    invoke-interface {v0, p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;->b(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, -0x1

    const/4 v2, -0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    .line 2
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 3
    :cond_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0
.end method

.method private getMaximumPullScroll()I
    .locals 3

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private m(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    :goto_0
    const/16 v0, 0x11

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 5
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->a:I

    .line 7
    sget-object v0, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh:[I

    invoke-virtual {p1, p2, v0, v2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 8
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrMode:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 10
    :cond_1
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrAnimationStyle:I

    invoke-virtual {p3, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-virtual {p3, v0, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->r:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 12
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    .line 13
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c(Landroid/content/Context;Landroid/view/View;)V

    .line 14
    sget-object p2, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 15
    sget-object p2, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 16
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrRefreshableViewBackground:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 18
    iget-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 19
    :cond_3
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrAdapterViewBackground:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "ptrAdapterViewBackground"

    const-string v0, "ptrRefreshableViewBackground"

    .line 20
    invoke-static {p2, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/j;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 22
    iget-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_4
    :goto_1
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrOverScroll:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 24
    invoke-virtual {p3, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->o:Z

    .line 25
    :cond_5
    sget p1, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {p3, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 26
    invoke-virtual {p3, p1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m:Z

    .line 27
    :cond_6
    invoke-virtual {p0, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->l(Landroid/content/res/TypedArray;)V

    .line 28
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 29
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->I()V

    return-void
.end method

.method private p()Z
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->c:[I

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    return v3

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->q()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_0
    return v1

    .line 3
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->r()Z

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 5
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->o()V

    :cond_4
    return v0

    .line 6
    :cond_5
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->q()Z

    move-result v0

    return v0
.end method

.method private z()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->e:F

    .line 3
    iget v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    goto :goto_0

    .line 4
    :cond_0
    iget v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->d:F

    .line 5
    iget v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    .line 6
    :goto_0
    sget-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->c:[I

    iget-object v4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    aget v4, v3, v4

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v6, 0x0

    if-eq v4, v1, :cond_1

    sub-float/2addr v0, v2

    .line 7
    invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v2

    goto :goto_1

    :cond_1
    sub-float/2addr v0, v2

    .line 9
    invoke-static {v0, v6}, Ljava/lang/Math;->max(FF)F

    move-result v0

    div-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v2

    .line 11
    :goto_1
    invoke-virtual {p0, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    if-eqz v0, :cond_4

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result v4

    if-nez v4, :cond_4

    .line 13
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v4

    int-to-float v4, v4

    int-to-float v5, v2

    div-float/2addr v4, v5

    .line 14
    iget-object v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v3, v3, v5

    if-eq v3, v1, :cond_2

    .line 15
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1, v4}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d(F)V

    goto :goto_2

    .line 16
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1, v4}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->d(F)V

    .line 17
    :goto_2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->PULL_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v4, 0x0

    if-eq v1, v3, :cond_3

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-lt v2, v1, :cond_3

    new-array v0, v4, [Z

    .line 18
    invoke-virtual {p0, v3, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    goto :goto_3

    .line 19
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v1, v3, :cond_4

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 20
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v1, v4, [Z

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_4
    :goto_3
    return-void
.end method


# virtual methods
.method protected final A()V
    .locals 9

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    int-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float v0, v0, v1

    float-to-int v0, v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    move-result v3

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v4

    .line 6
    sget-object v5, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v5, v5, v6

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eq v5, v7, :cond_3

    if-eq v5, v6, :cond_0

    goto :goto_2

    .line 7
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v2, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setHeight(I)V

    neg-int v2, v0

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 9
    :goto_0
    iget-object v4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v4}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 10
    iget-object v4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v4, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setHeight(I)V

    neg-int v4, v0

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 11
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setWidth(I)V

    neg-int v1, v0

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 13
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v3, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->setWidth(I)V

    neg-int v3, v0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    :goto_2
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/Object;

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v7

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v6

    const/4 v5, 0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    const-string v5, "Setting Padding. L: %d, T: %d, R: %d, B: %d"

    invoke-static {v5, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v5, "PullToRefresh"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    return-void
.end method

.method protected final B(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 p1, 0x2

    if-eq v1, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget p1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-eq p1, p2, :cond_2

    .line 4
    iput p2, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    goto :goto_0

    .line 6
    :cond_1
    iget p2, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-eq p2, p1, :cond_2

    .line 7
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 8
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->requestLayout()V

    :cond_2
    :goto_0
    return-void
.end method

.method public C(Ljava/lang/CharSequence;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    invoke-virtual {p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p2

    invoke-virtual {p0, v0, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k(ZZ)Lcn/mucang/android/ui/widget/pulltorefresh/c;

    move-result-object p2

    invoke-interface {p2, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/c;->setReleaseLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method final varargs D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "State: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "PullToRefresh"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->b:[I

    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    aget-boolean p1, p2, p1

    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->w(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->x()V

    goto :goto_0

    .line 6
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->v()V

    goto :goto_0

    .line 7
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->y()V

    .line 8
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->w:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f;

    if-eqz p1, :cond_4

    .line 9
    iget-object p2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-interface {p1, p0, p2, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f;->a(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    :cond_4
    return-void
.end method

.method protected final E(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v0, v0

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->F(IJ)V

    return-void
.end method

.method protected final H(ILcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDuration()I

    move-result v0

    int-to-long v3, v0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v7, p2

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->G(IJJLcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V

    return-void
.end method

.method protected I()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->d(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 6
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-ne p0, v1, :cond_2

    .line 7
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 8
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {p0, v1, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->e(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->A()V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq v0, v1, :cond_4

    goto :goto_0

    :cond_4
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Refreshable View is not a ViewGroup so can\'t addView"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected final d(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final e(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    const/4 v0, -0x1

    .line 1
    invoke-super {p0, p1, v0, p2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected g(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcn/mucang/android/ui/widget/pulltorefresh/e;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->r:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v1

    .line 3
    invoke-virtual {v0, p1, p2, v1, p3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$AnimationStyle;->createLoadingLayout(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;Landroid/content/res/TypedArray;)Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object p1

    const/4 p2, 0x4

    .line 4
    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-object p1
.end method

.method public final getCurrentMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public final getFilterTouchEvents()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->n:Z

    return v0
.end method

.method protected final getFooterLayout()Lcn/mucang/android/ui/widget/pulltorefresh/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    return-object v0
.end method

.method protected final getFooterSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->getContentSize()I

    move-result v0

    return v0
.end method

.method protected final getHeaderLayout()Lcn/mucang/android/ui/widget/pulltorefresh/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    return-object v0
.end method

.method protected final getHeaderSize()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->getContentSize()I

    move-result v0

    return v0
.end method

.method public final getLoadingLayoutProxy()Lcn/mucang/android/ui/widget/pulltorefresh/c;
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k(ZZ)Lcn/mucang/android/ui/widget/pulltorefresh/c;

    move-result-object v0

    return-object v0
.end method

.method public final getMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    return-object v0
.end method

.method public getOnHeaderScrollListener()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->x:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;

    return-object v0
.end method

.method public abstract getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;
.end method

.method protected getPullToRefreshScrollDuration()I
    .locals 1

    const/16 v0, 0xc8

    return v0
.end method

.method protected getPullToRefreshScrollDurationLonger()I
    .locals 1

    const/16 v0, 0x145

    return v0
.end method

.method public final getRefreshableView()Landroid/view/View;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    return-object v0
.end method

.method protected getRefreshableViewWrapper()Landroid/widget/FrameLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->k:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final getShowViewWhileRefreshing()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->l:Z

    return v0
.end method

.method public final getState()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    return-object v0
.end method

.method protected h(ZZ)Lcn/mucang/android/ui/widget/pulltorefresh/f;
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/f;

    invoke-direct {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/f;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/f;->a(Lcn/mucang/android/ui/widget/pulltorefresh/e;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/f;->a(Lcn/mucang/android/ui/widget/pulltorefresh/e;)V

    :cond_1
    return-object v0
.end method

.method protected abstract i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            ")TT;"
        }
    .end annotation
.end method

.method protected final j()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->p:Z

    return-void
.end method

.method public final k(ZZ)Lcn/mucang/android/ui/widget/pulltorefresh/c;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h(ZZ)Lcn/mucang/android/ui/widget/pulltorefresh/f;

    move-result-object p1

    return-object p1
.end method

.method protected l(Landroid/content/res/TypedArray;)V
    .locals 0

    return-void
.end method

.method public final n()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->permitsPullToRefresh()Z

    move-result v0

    return v0
.end method

.method public final o()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->o:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/g;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_a

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    goto/16 :goto_2

    :cond_1
    if-eqz v0, :cond_2

    .line 3
    iget-boolean v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    if-eqz v3, :cond_2

    return v2

    :cond_2
    if-eqz v0, :cond_8

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    goto/16 :goto_1

    .line 4
    :cond_3
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m:Z

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 5
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 7
    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    if-eq v1, v2, :cond_5

    .line 8
    iget v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    sub-float v1, v0, v1

    .line 9
    iget v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    sub-float v3, p1, v3

    goto :goto_0

    .line 10
    :cond_5
    iget v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    sub-float v1, p1, v1

    .line 11
    iget v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    sub-float v3, v0, v3

    .line 12
    :goto_0
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 13
    iget v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->a:I

    int-to-float v5, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_9

    iget-boolean v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->n:Z

    if-eqz v5, :cond_6

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v4, v3

    if-lez v3, :cond_9

    .line 14
    :cond_6
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_7

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v1, v3

    if-ltz v3, :cond_7

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->r()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 15
    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    .line 16
    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    .line 17
    iput-boolean v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    .line 18
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_9

    .line 19
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 20
    :cond_7
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v3

    if-eqz v3, :cond_9

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v1, v1, v3

    if-gtz v1, :cond_9

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->q()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 21
    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    .line 22
    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    .line 23
    iput-boolean v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    .line 24
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-ne p1, v0, :cond_9

    .line 25
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    goto :goto_1

    .line 26
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->e:F

    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    .line 28
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->d:F

    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    .line 29
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    .line 30
    :cond_9
    :goto_1
    iget-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    return p1

    .line 31
    :cond_a
    :goto_2
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    return v1
.end method

.method protected final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_2

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "ptr_mode"

    const/4 v1, 0x0

    .line 3
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    const-string v0, "ptr_current_mode"

    .line 4
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    const-string v0, "ptr_disable_scrolling"

    .line 5
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m:Z

    const-string v0, "ptr_show_refreshing_view"

    const/4 v2, 0x1

    .line 6
    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->l:Z

    const-string v0, "ptr_super"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    const-string v0, "ptr_state"

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->mapIntToValue(I)Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v0

    .line 9
    sget-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v3, :cond_0

    sget-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v3, :cond_1

    :cond_0
    new-array v3, v2, [Z

    aput-boolean v2, v3, v1

    .line 10
    invoke-virtual {p0, v0, v3}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    .line 11
    :cond_1
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t(Landroid/os/Bundle;)V

    return-void

    .line 12
    :cond_2
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->u(Landroid/os/Bundle;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->getIntValue()I

    move-result v1

    const-string v2, "ptr_state"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v1

    const-string v2, "ptr_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->getIntValue()I

    move-result v1

    const-string v2, "ptr_current_mode"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m:Z

    const-string v2, "ptr_disable_scrolling"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 7
    iget-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->l:Z

    const-string v2, "ptr_show_refreshing_view"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 8
    invoke-super {p0}, Landroid/widget/LinearLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "ptr_super"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-object v0
.end method

.method protected final onSizeChanged(IIII)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "onSizeChanged. W: %d, H: %d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->A()V

    .line 4
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->B(II)V

    .line 5
    new-instance p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$b;

    invoke-direct {p1, p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$b;-><init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->n()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m:Z

    const/4 v2, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result v0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEdgeFlags()I

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_8

    if-eq v0, v2, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 p1, 0x3

    if-eq v0, p1, :cond_4

    goto :goto_0

    .line 5
    :cond_3
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    if-eqz v0, :cond_9

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->z()V

    return v2

    .line 9
    :cond_4
    iget-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    if-eqz p1, :cond_9

    .line 10
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    .line 11
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RELEASE_TO_REFRESH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne p1, v0, :cond_6

    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->u:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;

    if-nez p1, :cond_5

    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->v:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;

    if-eqz p1, :cond_6

    .line 12
    :cond_5
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v2, [Z

    aput-boolean v2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    return v2

    .line 13
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 14
    invoke-virtual {p0, v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->E(I)V

    return v2

    .line 15
    :cond_7
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->RESET:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    new-array v0, v1, [Z

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    return v2

    .line 16
    :cond_8
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->p()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->e:F

    iput v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->c:F

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->d:F

    iput p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->b:F

    return v2

    :cond_9
    :goto_0
    return v1
.end method

.method protected abstract q()Z
.end method

.method protected abstract r()Z
.end method

.method public final s()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public setDisableScrollingWhileRefreshing(Z)V
    .locals 0

    xor-int/lit8 p1, p1, 0x1

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    return-void
.end method

.method public final setFilterTouchEvents(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->n:Z

    return-void
.end method

.method protected final setHeaderScroll(I)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setHeaderScroll: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getMaximumPullScroll()I

    move-result v0

    neg-int v1, v0

    .line 3
    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->p:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-gez p1, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9
    :cond_2
    :goto_0
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v0, v0, v2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    goto :goto_1

    .line 10
    :cond_3
    invoke-virtual {p0, v1, p1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->x:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;

    if-eqz v0, :cond_5

    .line 12
    invoke-interface {v0, v1, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;->a(II)V

    goto :goto_1

    .line 13
    :cond_4
    invoke-virtual {p0, p1, v1}, Landroid/widget/LinearLayout;->scrollTo(II)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->x:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;

    if-eqz v0, :cond_5

    .line 15
    invoke-interface {v0, p1, v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;->a(II)V

    :cond_5
    :goto_1
    return-void
.end method

.method public setLastUpdatedLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcn/mucang/android/ui/widget/pulltorefresh/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/c;->setLastUpdatedLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcn/mucang/android/ui/widget/pulltorefresh/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/c;->setLoadingDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLongClickable(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    return-void
.end method

.method public final setMode(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting mode to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->I()V

    :cond_0
    return-void
.end method

.method public setOnHeaderScrollListener(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->x:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$d;

    return-void
.end method

.method public setOnPullEventListener(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->w:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$f;

    return-void
.end method

.method public final setOnRefreshListener(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g<",
            "TT;>;)V"
        }
    .end annotation

    .line 3
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->v:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->u:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;

    return-void
.end method

.method public final setOnRefreshListener(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->u:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$h;

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->v:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$g;

    return-void
.end method

.method public setPullLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcn/mucang/android/ui/widget/pulltorefresh/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/c;->setPullLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final setPullToRefreshEnabled(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    invoke-static {}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->getDefault()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->DISABLED:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    :goto_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setMode(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public final setPullToRefreshOverScrollEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->o:Z

    return-void
.end method

.method public final setRefreshing(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    const/4 v1, 0x1

    new-array v1, v1, [Z

    const/4 v2, 0x0

    aput-boolean p1, v1, v2

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->D(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;[Z)V

    :cond_0
    return-void
.end method

.method public setRefreshingLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getLoadingLayoutProxy()Lcn/mucang/android/ui/widget/pulltorefresh/c;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/c;->setRefreshingLabel(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setReleaseLabel(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->BOTH:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->C(Ljava/lang/CharSequence;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    return-void
.end method

.method public setScrollAnimationInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->q:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public final setScrollingWhileRefreshingEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->m:Z

    return-void
.end method

.method public final setShowViewWhileRefreshing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->l:Z

    return-void
.end method

.method protected t(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected u(Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method protected v()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->c:[I

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->f()V

    :goto_0
    return-void
.end method

.method protected w(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->h()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->h()V

    :cond_1
    if-eqz p1, :cond_4

    .line 5
    iget-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->l:Z

    if-eqz p1, :cond_3

    .line 6
    new-instance p1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$a;

    invoke-direct {p1, p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$a;-><init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;)V

    .line 7
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->c:[I

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v0

    neg-int v0, v0

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->H(ILcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->H(ILcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$i;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->E(I)V

    goto :goto_0

    .line 11
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f()V

    :goto_0
    return-void
.end method

.method protected x()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$c;->c:[I

    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->i:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->j()V

    goto :goto_0

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->j()V

    :goto_0
    return-void
.end method

.method protected y()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->f:Z

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->p:Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l()V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->t:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l()V

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->E(I)V

    return-void
.end method
