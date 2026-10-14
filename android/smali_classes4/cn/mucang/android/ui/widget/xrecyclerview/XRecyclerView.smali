.class public Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;
.super Lcn/mucang/android/ui/widget/xrecyclerview/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;,
        Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;,
        Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Z

.field private e:I

.field private f:F

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;

.field private i:Landroid/view/View;

.field private j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

.field private k:Lcn/mucang/android/ui/widget/xrecyclerview/a;

.field private l:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

.field private n:Landroidx/recyclerview/widget/GridLayoutManager$c;

.field private o:Lcom/google/android/material/appbar/AppBarLayout;

.field private final p:Landroidx/recyclerview/widget/RecyclerView$i;

.field private q:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

.field private r:Landroidx/recyclerview/widget/RecyclerView$t;

.field private s:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/ui/widget/xrecyclerview/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->b:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->c:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->d:Z

    .line 7
    iput v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 8
    iput v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f:F

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->g:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->l:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->o:Lcom/google/android/material/appbar/AppBarLayout;

    .line 12
    new-instance v1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;)V

    iput-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$i;

    .line 13
    sget-object v0, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->q:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    .line 14
    new-instance v0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$c;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->s:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->v(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method static synthetic a(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->c:Z

    return p0
.end method

.method static synthetic b(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->i:Landroid/view/View;

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->c:Z

    return p1
.end method

.method static synthetic d(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a:Z

    return p0
.end method

.method static synthetic e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->m:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    return-object p0
.end method

.method static synthetic f(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->l:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic g(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;I)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->w(I)Z

    move-result p0

    return p0
.end method

.method static synthetic h(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;I)Landroid/view/View;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->t(I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method static synthetic i(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->g:Ljava/util/List;

    return-object p0
.end method

.method static synthetic j(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->u(I)I

    move-result p0

    return p0
.end method

.method static synthetic k(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    return-object p0
.end method

.method static synthetic l(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->h:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;

    return-object p0
.end method

.method static synthetic m(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->b:Z

    return p0
.end method

.method static synthetic n(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;[I)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->s([I)I

    move-result p0

    return p0
.end method

.method static synthetic o(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e:I

    return p0
.end method

.method static synthetic p(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->d:Z

    return p0
.end method

.method static synthetic q(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    return-object p0
.end method

.method static synthetic r(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;)Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->q:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    return-object p1
.end method

.method private s([I)I
    .locals 4

    const/4 v0, 0x0

    .line 1
    aget v1, p1, v0

    .line 2
    array-length v2, p1

    :goto_0
    if-ge v0, v2, :cond_1

    aget v3, p1, v0

    if-le v3, v1, :cond_0

    move v1, v3

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private t(I)Landroid/view/View;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->w(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->l:Ljava/util/ArrayList;

    add-int/lit16 p1, p1, -0x2712

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1
.end method

.method private u(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->n:Landroidx/recyclerview/widget/GridLayoutManager$c;

    if-nez v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/GridLayoutManager$c;->f(I)I

    move-result p1

    return p1
.end method

.method private v(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    sget-object p3, Lcn/mucang/android/framework/core/R$styleable;->XRecyclerView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 2
    sget p3, Lcn/mucang/android/framework/core/R$styleable;->XRecyclerView_core__pull_img_src:I

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 3
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a:Z

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcn/mucang/android/ui/widget/xrecyclerview/b;

    const/4 v0, 0x0

    invoke-direct {p2, p1, v0, p3}, Lcn/mucang/android/ui/widget/xrecyclerview/b;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    .line 6
    :cond_0
    iget-boolean p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->b:Z

    if-eqz p2, :cond_1

    .line 7
    new-instance p2, Lcn/mucang/android/ui/widget/xrecyclerview/a;

    invoke-direct {p2, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/a;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    const/16 p1, 0x8

    .line 8
    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    new-instance p2, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;

    invoke-direct {p2, p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)V

    invoke-virtual {p1, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->setOnReloadListener(Lcn/mucang/android/ui/widget/xrecyclerview/a$b;)V

    :cond_1
    return-void
.end method

.method private w(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->l:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->g:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public getCustomSpanSizeLoopup()Landroidx/recyclerview/widget/GridLayoutManager$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->n:Landroidx/recyclerview/widget/GridLayoutManager$c;

    return-object v0
.end method

.method public getEmptyView()Landroid/view/View;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->i:Landroid/view/View;

    return-object v0
.end method

.method public getFootView()Lcn/mucang/android/ui/widget/xrecyclerview/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    return-object v0
.end method

.method public getRefreshHeader()Lcn/mucang/android/ui/widget/xrecyclerview/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    .line 5
    :cond_1
    :goto_1
    instance-of v1, v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    if-eqz v1, :cond_4

    .line 6
    check-cast v0, Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_2
    if-ltz v1, :cond_3

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 9
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v3, :cond_2

    .line 10
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    iput-object v2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->o:Lcom/google/android/material/appbar/AppBarLayout;

    goto :goto_3

    :cond_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_2

    .line 11
    :cond_3
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->o:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_4

    .line 12
    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->s:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->addOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_4
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/c;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->o:Lcom/google/android/material/appbar/AppBarLayout;

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->s:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener;

    invoke-virtual {v0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->removeOnOffsetChangedListener(Lcom/google/android/material/appbar/AppBarLayout$OnOffsetChangedListener;)V

    :cond_0
    return-void
.end method

.method public onScrollStateChanged(I)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onScrollStateChanged(I)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$t;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;

    invoke-direct {p1, p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)V

    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->r:Landroidx/recyclerview/widget/RecyclerView$t;

    .line 4
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f:F

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 4
    iput v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f:F

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->x()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->q:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v1, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->c()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->h:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;->a()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f:F

    sub-float/2addr v0, v1

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    iput v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f:F

    .line 10
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->x()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->q:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    sget-object v3, Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;->EXPANDED:Lcn/mucang/android/ui/widget/xrecyclerview/AppBarStateChangeListener$State;

    if-ne v1, v3, :cond_3

    .line 11
    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    const v3, 0x3fa66666    # 1.3f

    div-float/2addr v0, v3

    invoke-virtual {v1, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->b(F)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getVisibleHeight()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    .line 13
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getState()I

    move-result v0

    if-ge v0, v2, :cond_3

    const/4 p1, 0x0

    return p1

    .line 14
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f:F

    .line 15
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->m:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    .line 2
    invoke-super {p0, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    return-void
.end method

.method public setCustomSpanSizeLoopup(Landroidx/recyclerview/widget/GridLayoutManager$c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->n:Landroidx/recyclerview/widget/GridLayoutManager$c;

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->i:Landroid/view/View;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->p:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    return-void
.end method

.method public setLoadingListener(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->h:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;

    return-void
.end method

.method public setLoadingMoreEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->b:Z

    return-void
.end method

.method public setNoMore(Z)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->c:Z

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->d:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k:Lcn/mucang/android/ui/widget/xrecyclerview/a;

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    :goto_0
    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->setState(I)V

    return-void
.end method

.method public setPreLoadCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e:I

    return-void
.end method

.method public setPullRefreshEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a:Z

    return-void
.end method

.method public setRefreshImageViewBg(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j:Lcn/mucang/android/ui/widget/xrecyclerview/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->setRefreshImageViewBg(I)V

    :cond_0
    return-void
.end method
