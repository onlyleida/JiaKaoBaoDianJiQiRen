.class public abstract Lcn/mucang/android/ui/widget/pulltorefresh/h;
.super Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/widget/AbsListView;",
        ">",
        "Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase<",
        "TT;>;",
        "Landroid/widget/AbsListView$OnScrollListener;"
    }
.end annotation


# instance fields
.field private A:Landroid/widget/AbsListView$OnScrollListener;

.field private B:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$e;

.field private C:Landroid/view/View;

.field private D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

.field private E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

.field private F:Z

.field private G:Z

.field private z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->G:Z

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast p1, Landroid/widget/AbsListView;

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method private J()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v1

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    if-nez v2, :cond_0

    .line 4
    new-instance v2, Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_START:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v2, v5, v6}, Lcn/mucang/android/ui/widget/pulltorefresh/d;-><init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    .line 5
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcn/mucang/android/framework/core/R$dimen;->indicator_right_padding:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v5, 0x35

    .line 7
    iput v5, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 8
    iget-object v5, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v1, v5, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showHeaderLoadingLayout()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 11
    iput-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    .line 12
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    if-nez v2, :cond_2

    .line 13
    new-instance v0, Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->PULL_FROM_END:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    invoke-direct {v0, v2, v3}, Lcn/mucang/android/ui/widget/pulltorefresh/d;-><init>(Landroid/content/Context;Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;)V

    iput-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    .line 14
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 15
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcn/mucang/android/framework/core/R$dimen;->indicator_right_padding:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    const/16 v2, 0x55

    .line 16
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 17
    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v1, v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 18
    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;->showFooterLoadingLayout()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    if-eqz v0, :cond_3

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 20
    iput-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    :cond_3
    :goto_1
    return-void
.end method

.method private static K(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 2

    if-eqz p0, :cond_1

    .line 1
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    instance-of v1, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v1, :cond_0

    .line 3
    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    iget p0, p0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_0
    const/16 p0, 0x11

    .line 4
    iput p0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private L()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    const/4 v2, 0x0

    if-gt v0, v1, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getTop()I

    move-result v3

    if-lt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_2
    return v2

    :cond_3
    :goto_1
    const-string v0, "PullToRefresh"

    const-string v2, "isFirstItemVisible. Empty View."

    .line 6
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private M()Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    const-string v1, "PullToRefresh"

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Landroid/widget/Adapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCount()I

    move-result v0

    sub-int/2addr v0, v2

    .line 4
    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getLastVisiblePosition()I

    move-result v3

    .line 5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isLastItemVisible. Last Item Position: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " Last Visible Pos: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int/2addr v0, v2

    const/4 v1, 0x0

    if-lt v3, v0, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getFirstVisiblePosition()I

    move-result v0

    sub-int/2addr v3, v0

    .line 7
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v3}, Landroid/widget/AbsListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    iget-object v3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v3, Landroid/widget/AbsListView;

    invoke-virtual {v3}, Landroid/widget/AbsListView;->getBottom()I

    move-result v3

    if-gt v0, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_2
    return v1

    :cond_3
    :goto_1
    const-string v0, "isLastItemVisible. Empty View."

    .line 9
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private N()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3
    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 6
    iput-object v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    :cond_1
    return-void
.end method

.method private O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->e()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->a()V

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->s()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->q()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->b()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->e()V

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->a()V

    :cond_3
    :goto_1
    return-void
.end method

.method private getShowIndicatorInternal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->F:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected I()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->I()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->J()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->N()V

    :goto_0
    return-void
.end method

.method public getAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    return-object v0
.end method

.method public getShowIndicator()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->F:Z

    return v0
.end method

.method protected l(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1
    sget v0, Lcn/mucang/android/framework/core/R$styleable;->PullToRefresh_ptrShowIndicator:I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->o()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->F:Z

    return-void
.end method

.method public final onScroll(Landroid/widget/AbsListView;III)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "First Visible: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Visible Count: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ". Total Items:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PullToRefresh"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->B:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$e;

    if-eqz v0, :cond_1

    if-lez p4, :cond_0

    add-int v0, p2, p3

    add-int/lit8 v1, p4, -0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->z:Z

    .line 4
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->O()V

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->A:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_3

    .line 7
    invoke-interface {v0, p1, p2, p3, p4}, Landroid/widget/AbsListView$OnScrollListener;->onScroll(Landroid/widget/AbsListView;III)V

    :cond_3
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onScrollChanged(IIII)V

    .line 2
    iget-object p3, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->C:Landroid/view/View;

    if-eqz p3, :cond_0

    iget-boolean p4, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->G:Z

    if-nez p4, :cond_0

    neg-int p1, p1

    neg-int p2, p2

    .line 3
    invoke-virtual {p3, p1, p2}, Landroid/view/View;->scrollTo(II)V

    :cond_0
    return-void
.end method

.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 2

    if-nez p2, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->B:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$e;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->z:Z

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$e;->a()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->A:Landroid/widget/AbsListView$OnScrollListener;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1, p2}, Landroid/widget/AbsListView$OnScrollListener;->onScrollStateChanged(Landroid/widget/AbsListView;I)V

    :cond_1
    return-void
.end method

.method protected q()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->M()Z

    move-result v0

    return v0
.end method

.method protected r()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->L()Z

    move-result v0

    return v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AdapterView;

    invoke-virtual {v0, p1}, Landroid/widget/AdapterView;->setAdapter(Landroid/widget/Adapter;)V

    return-void
.end method

.method public final setEmptyView(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getRefreshableViewWrapper()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p1, v1}, Landroid/view/View;->setClickable(Z)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 4
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    .line 5
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->K(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v0, p1, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    instance-of v1, v0, Lcn/mucang/android/ui/widget/pulltorefresh/a;

    if-eqz v1, :cond_3

    .line 10
    check-cast v0, Lcn/mucang/android/ui/widget/pulltorefresh/a;

    invoke-interface {v0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/a;->setEmptyViewInternal(Landroid/view/View;)V

    goto :goto_1

    .line 11
    :cond_3
    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setEmptyView(Landroid/view/View;)V

    .line 12
    :goto_1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->C:Landroid/view/View;

    return-void
.end method

.method public setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    return-void
.end method

.method public final setOnLastItemVisibleListener(Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->B:Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$e;

    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->A:Landroid/widget/AbsListView$OnScrollListener;

    return-void
.end method

.method public final setScrollEmptyView(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->G:Z

    return-void
.end method

.method public setSelection(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->j:Landroid/view/View;

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setSelection(I)V

    return-void
.end method

.method public setShowIndicator(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->F:Z

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->J()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->N()V

    :goto_0
    return-void
.end method

.method protected v()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->v()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/h$a;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getCurrentMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->c()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->c()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected w(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->w(Z)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->getShowIndicatorInternal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->O()V

    :cond_0
    return-void
.end method

.method protected x()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->x()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    sget-object v0, Lcn/mucang/android/ui/widget/pulltorefresh/h$a;->a:[I

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->getCurrentMode()Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase$Mode;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->D:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->d()V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/pulltorefresh/h;->E:Lcn/mucang/android/ui/widget/pulltorefresh/d;

    invoke-virtual {v0}, Lcn/mucang/android/ui/widget/pulltorefresh/d;->d()V

    :cond_2
    :goto_0
    return-void
.end method

.method protected y()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/PullToRefreshBase;->y()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->getShowIndicatorInternal()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/ui/widget/pulltorefresh/h;->O()V

    :cond_0
    return-void
.end method
