.class public Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;
.super Lcn/mucang/android/ui/widget/pulltorefresh/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;,
        Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/ui/widget/pulltorefresh/h<",
        "Landroid/widget/ListView;",
        ">;"
    }
.end annotation


# instance fields
.field private H:Ljava/lang/String;

.field private I:Ljava/lang/String;

.field private K:Lcn/mucang/android/ui/widget/pulltorefresh/e;

.field private M:Lcn/mucang/android/ui/widget/pulltorefresh/e;

.field private N:Landroid/widget/FrameLayout;

.field private Q:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/h;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->getViewAndLayoutIdForDebug()V

    return-void
.end method

.method static synthetic P(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->H:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic Q(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->H:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic R(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->I:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic S(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->I:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic T(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->N:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method private getViewAndLayoutIdForDebug()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getId()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->H:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 3
    :cond_0
    :goto_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getSourceLayoutResId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->I:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :cond_1
    return-void
.end method


# virtual methods
.method protected U(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$c;-><init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$b;-><init>(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    return-object v0
.end method

.method protected V(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->U(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object p1

    const p2, 0x102000a

    .line 2
    invoke-virtual {p1, p2}, Landroid/widget/ListView;->setId(I)V

    return-object p1
.end method

.method public getHeaderViewsCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v0

    return v0
.end method

.method public final getPullToRefreshScrollDirection()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;->VERTICAL:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Orientation;

    return-object v0
.end method

.method protected h(ZZ)Lcn/mucang/android/ui/widget/pulltorefresh/f;
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->h(ZZ)Lcn/mucang/android/ui/widget/pulltorefresh/f;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->Q:Z

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->K:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/f;->a(Lcn/mucang/android/ui/widget/pulltorefresh/e;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->M:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/f;->a(Lcn/mucang/android/ui/widget/pulltorefresh/e;)V

    :cond_1
    return-object v0
.end method

.method protected bridge synthetic i(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->V(Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/widget/ListView;

    move-result-object p1

    return-object p1
.end method

.method protected l(Landroid/content/res/TypedArray;)V
    .locals 7

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->l(Landroid/content/res/TypedArray;)V

    .line 2
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrListViewExtrasEnabled:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->Q:Z

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v2, v3, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 4
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    sget-object v4, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, v3, v4, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->K:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    const/16 v4, 0x8

    .line 6
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->K:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 8
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v3, Landroid/widget/ListView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v2, v5, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 9
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->N:Landroid/widget/FrameLayout;

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-virtual {p0, v2, v3, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->g(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;Landroid/content/res/TypedArray;)Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object v2

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->M:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 11
    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 12
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->N:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->M:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    invoke-virtual {v2, v3, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrScrollingWhileRefreshingEnabled:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 14
    invoke-virtual {p0, v1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setScrollingWhileRefreshingEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected w(Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->Q:Z

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getShowViewWhileRefreshing()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-super {p0, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->w(Z)V

    .line 4
    sget-object v1, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$a;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getCurrentMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getHeaderLayout()Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->K:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 7
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->M:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v4

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getFooterLayout()Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object v1

    .line 10
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->M:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 11
    iget-object v4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->K:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 12
    iget-object v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getCount()I

    move-result v5

    sub-int/2addr v5, v2

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getScrollY()I

    move-result v2

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v6

    sub-int/2addr v2, v6

    move-object v7, v4

    move v4, v2

    move-object v2, v3

    move-object v3, v7

    .line 14
    :goto_0
    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->l()V

    .line 15
    invoke-virtual {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->a()V

    const/16 v1, 0x8

    .line 16
    invoke-virtual {v3, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 17
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 18
    invoke-virtual {v2}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->h()V

    if-eqz p1, :cond_2

    .line 19
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j()V

    .line 20
    invoke-virtual {p0, v4}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/ListView;

    invoke-virtual {p1, v5}, Landroid/widget/ListView;->setSelection(I)V

    .line 22
    invoke-virtual {p0, v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->E(I)V

    :cond_2
    return-void

    .line 23
    :cond_3
    :goto_1
    invoke-super {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->w(Z)V

    return-void
.end method

.method protected y()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->Q:Z

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->y()V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView$a;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getCurrentMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getHeaderLayout()Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->K:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getHeaderSize()I

    move-result v4

    neg-int v4, v4

    .line 7
    iget-object v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v5, Landroid/widget/ListView;

    invoke-virtual {v5}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v5

    sub-int/2addr v5, v1

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    if-gt v5, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getFooterLayout()Lcn/mucang/android/ui/widget/pulltorefresh/e;

    move-result-object v0

    .line 9
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshListView;->M:Lcn/mucang/android/ui/widget/pulltorefresh/e;

    .line 10
    iget-object v4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v4, Landroid/widget/ListView;

    invoke-virtual {v4}, Landroid/widget/ListView;->getCount()I

    move-result v4

    sub-int/2addr v4, v2

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getFooterSize()I

    move-result v5

    .line 12
    iget-object v6, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v6, Landroid/widget/ListView;

    invoke-virtual {v6}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v6

    sub-int/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    if-gt v6, v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    move v2, v1

    move v1, v4

    move v4, v5

    .line 13
    :goto_0
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 14
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/e;->n()V

    const/16 v0, 0x8

    .line 15
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getState()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;->MANUAL_REFRESHING:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$State;

    if-eq v0, v2, :cond_4

    .line 17
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    .line 18
    invoke-virtual {p0, v4}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->setHeaderScroll(I)V

    .line 19
    :cond_4
    invoke-super {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->y()V

    return-void
.end method
