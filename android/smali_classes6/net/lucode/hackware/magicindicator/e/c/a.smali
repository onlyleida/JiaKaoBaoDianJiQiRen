.class public Lnet/lucode/hackware/magicindicator/e/c/a;
.super Landroid/widget/FrameLayout;
.source "SourceFile"

# interfaces
.implements Lnet/lucode/hackware/magicindicator/d/a;
.implements Lnet/lucode/hackware/magicindicator/b$a;


# instance fields
.field private mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

.field private mAdjustMode:Z

.field private mEnablePivotScroll:Z

.field private mFollowTouch:Z

.field private mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

.field private mIndicatorContainer:Landroid/widget/LinearLayout;

.field private mIndicatorOnTop:Z

.field private mLeftPadding:I

.field private mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

.field private mObserver:Landroid/database/DataSetObserver;

.field private mPositionDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/e/c/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private mReselectWhenLayout:Z

.field private mRightPadding:I

.field private mScrollPivotX:F

.field private mScrollView:Landroid/widget/HorizontalScrollView;

.field private mSkimOver:Z

.field private mSmoothScroll:Z

.field private mTitleContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f000000    # 0.5f

    .line 2
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollPivotX:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSmoothScroll:Z

    .line 4
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mFollowTouch:Z

    .line 5
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mReselectWhenLayout:Z

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    .line 7
    new-instance p1, Lnet/lucode/hackware/magicindicator/e/c/a$a;

    invoke-direct {p1, p0}, Lnet/lucode/hackware/magicindicator/e/c/a$a;-><init>(Lnet/lucode/hackware/magicindicator/e/c/a;)V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mObserver:Landroid/database/DataSetObserver;

    .line 8
    new-instance p1, Lnet/lucode/hackware/magicindicator/b;

    invoke-direct {p1}, Lnet/lucode/hackware/magicindicator/b;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    .line 9
    invoke-virtual {p1, p0}, Lnet/lucode/hackware/magicindicator/b;->k(Lnet/lucode/hackware/magicindicator/b$a;)V

    return-void
.end method

.method static synthetic access$000(Lnet/lucode/hackware/magicindicator/e/c/a;)Lnet/lucode/hackware/magicindicator/e/c/b/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    return-object p0
.end method

.method static synthetic access$100(Lnet/lucode/hackware/magicindicator/e/c/a;)Lnet/lucode/hackware/magicindicator/b;
    .locals 0

    .line 1
    iget-object p0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    return-object p0
.end method

.method static synthetic access$200(Lnet/lucode/hackware/magicindicator/e/c/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/e/c/a;->init()V

    return-void
.end method

.method private init()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdjustMode:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout_no_scroll:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lnet/lucode/hackware/magicindicator/R$layout;->pager_navigator_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 5
    :goto_0
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->scroll_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/HorizontalScrollView;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    .line 6
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->title_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    .line 7
    iget v2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mLeftPadding:I

    iget v3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mRightPadding:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 8
    sget v1, Lnet/lucode/hackware/magicindicator/R$id;->indicator_container:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicatorContainer:Landroid/widget/LinearLayout;

    .line 9
    iget-boolean v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicatorOnTop:Z

    if-eqz v1, :cond_1

    .line 10
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicatorContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->bringChildToFront(Landroid/view/View;)V

    .line 11
    :cond_1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/e/c/a;->initTitlesAndIndicator()V

    return-void
.end method

.method private initTitlesAndIndicator()V
    .locals 7

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/b;->g()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, -0x1

    if-ge v2, v0, :cond_2

    .line 2
    iget-object v4, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->getTitleView(Landroid/content/Context;I)Lnet/lucode/hackware/magicindicator/e/c/b/d;

    move-result-object v4

    .line 3
    instance-of v5, v4, Landroid/view/View;

    if-eqz v5, :cond_1

    .line 4
    check-cast v4, Landroid/view/View;

    .line 5
    iget-boolean v5, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdjustMode:Z

    if-eqz v5, :cond_0

    .line 6
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v5, v1, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 7
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v3, v6, v2}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->getTitleWeight(Landroid/content/Context;I)F

    move-result v3

    iput v3, v5, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 8
    :cond_0
    new-instance v5, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 9
    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->getIndicator(Landroid/content/Context;)Lnet/lucode/hackware/magicindicator/e/c/b/c;

    move-result-object v0

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

    .line 12
    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_3

    .line 13
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 14
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicatorContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

    check-cast v2, Landroid/view/View;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    return-void
.end method

.method private preparePositionData()V
    .locals 6

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/b;->g()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 3
    new-instance v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    invoke-direct {v2}, Lnet/lucode/hackware/magicindicator/e/c/d/a;-><init>()V

    .line 4
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 5
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    .line 6
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b:I

    .line 7
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->c:I

    .line 8
    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->d:I

    .line 9
    instance-of v5, v3, Lnet/lucode/hackware/magicindicator/e/c/b/b;

    if-eqz v5, :cond_0

    .line 10
    check-cast v3, Lnet/lucode/hackware/magicindicator/e/c/b/b;

    .line 11
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/e/c/b/b;->getContentLeft()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->e:I

    .line 12
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/e/c/b/b;->getContentTop()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->f:I

    .line 13
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/e/c/b/b;->getContentRight()I

    move-result v4

    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->g:I

    .line 14
    invoke-interface {v3}, Lnet/lucode/hackware/magicindicator/e/c/b/b;->getContentBottom()I

    move-result v3

    iput v3, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->h:I

    goto :goto_1

    .line 15
    :cond_0
    iget v3, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->e:I

    .line 16
    iget v3, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->f:I

    .line 17
    iget v3, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->c:I

    iput v3, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->g:I

    .line 18
    iput v4, v2, Lnet/lucode/hackware/magicindicator/e/c/d/a;->h:I

    .line 19
    :cond_1
    :goto_1
    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public getAdapter()Lnet/lucode/hackware/magicindicator/e/c/b/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    return-object v0
.end method

.method public getLeftPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mLeftPadding:I

    return v0
.end method

.method public getPagerIndicator()Lnet/lucode/hackware/magicindicator/e/c/b/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

    return-object v0
.end method

.method public getPagerTitleView(I)Lnet/lucode/hackware/magicindicator/e/c/b/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    return-object p1
.end method

.method public getRightPadding()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mRightPadding:I

    return v0
.end method

.method public getScrollPivotX()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollPivotX:F

    return v0
.end method

.method public getTitleContainer()Landroid/widget/LinearLayout;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public isAdjustMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdjustMode:Z

    return v0
.end method

.method public isEnablePivotScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mEnablePivotScroll:Z

    return v0
.end method

.method public isFollowTouch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mFollowTouch:Z

    return v0
.end method

.method public isIndicatorOnTop()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicatorOnTop:Z

    return v0
.end method

.method public isReselectWhenLayout()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mReselectWhenLayout:Z

    return v0
.end method

.method public isSkimOver()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSkimOver:Z

    return v0
.end method

.method public isSmoothScroll()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSmoothScroll:Z

    return v0
.end method

.method public notifyDataSetChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->notifyDataSetChanged()V

    :cond_0
    return-void
.end method

.method public onAttachToMagicIndicator()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/e/c/a;->init()V

    return-void
.end method

.method public onDeselected(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/e/c/b/d;->onDeselected(II)V

    :cond_1
    return-void
.end method

.method public onDetachFromMagicIndicator()V
    .locals 0

    return-void
.end method

.method public onEnter(IIFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/e/c/b/d;->onEnter(IIFZ)V

    :cond_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-eqz p1, :cond_1

    .line 3
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/e/c/a;->preparePositionData()V

    .line 4
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

    if-eqz p1, :cond_0

    .line 5
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {p1, p2}, Lnet/lucode/hackware/magicindicator/e/c/b/c;->a(Ljava/util/List;)V

    .line 6
    :cond_0
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mReselectWhenLayout:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/b;->f()I

    move-result p1

    if-nez p1, :cond_1

    .line 7
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/b;->e()I

    move-result p1

    invoke-virtual {p0, p1}, Lnet/lucode/hackware/magicindicator/e/c/a;->onPageSelected(I)V

    .line 8
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/b;->e()I

    move-result p1

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/e/c/a;->onPageScrolled(IFI)V

    :cond_1
    return-void
.end method

.method public onLeave(IIFZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    invoke-interface {v0, p1, p2, p3, p4}, Lnet/lucode/hackware/magicindicator/e/c/b/d;->onLeave(IIFZ)V

    :cond_1
    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/b;->h(I)V

    .line 3
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/e/c/b/c;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/b;->i(IFI)V

    .line 3
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1, p2, p3}, Lnet/lucode/hackware/magicindicator/e/c/b/c;->onPageScrolled(IFI)V

    .line 5
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p3, :cond_1

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    if-ltz p1, :cond_1

    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_1

    .line 6
    iget-boolean p3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mFollowTouch:Z

    if-eqz p3, :cond_1

    .line 7
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-static {p3, p1}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 8
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    add-int/lit8 p1, p1, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 9
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    .line 10
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    .line 11
    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a()I

    move-result p3

    int-to-float p3, p3

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollPivotX:F

    mul-float v0, v0, v1

    sub-float/2addr p3, v0

    .line 12
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a()I

    move-result p1

    int-to-float p1, p1

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollPivotX:F

    mul-float v0, v0, v1

    sub-float/2addr p1, v0

    .line 13
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    sub-float/2addr p1, p3

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    float-to-int p1, p3

    const/4 p2, 0x0

    invoke-virtual {v0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_1
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/b;->j(I)V

    .line 3
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicator:Lnet/lucode/hackware/magicindicator/e/c/b/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lnet/lucode/hackware/magicindicator/e/c/b/c;->onPageSelected(I)V

    :cond_0
    return-void
.end method

.method public onSelected(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 3
    instance-of v1, v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    if-eqz v1, :cond_1

    .line 4
    check-cast v0, Lnet/lucode/hackware/magicindicator/e/c/b/d;

    invoke-interface {v0, p1, p2}, Lnet/lucode/hackware/magicindicator/e/c/b/d;->onSelected(II)V

    .line 5
    :cond_1
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdjustMode:Z

    if-nez p2, :cond_7

    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mFollowTouch:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    if-eqz p2, :cond_7

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_7

    .line 6
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 7
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mPositionDataList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;

    .line 8
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mEnablePivotScroll:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollPivotX:F

    mul-float p2, p2, v1

    sub-float/2addr p1, p2

    .line 10
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSmoothScroll:Z

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 12
    :cond_2
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    float-to-int p1, p1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 13
    :cond_3
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    iget v1, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    if-le p2, v1, :cond_5

    .line 14
    iget-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSmoothScroll:Z

    if-eqz p1, :cond_4

    .line 15
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 16
    :cond_4
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p1, v1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    goto :goto_0

    .line 17
    :cond_5
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p2}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    add-int/2addr p2, v1

    iget p1, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->c:I

    if-ge p2, p1, :cond_7

    .line 18
    iget-boolean p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSmoothScroll:Z

    if-eqz p2, :cond_6

    .line 19
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->smoothScrollTo(II)V

    goto :goto_0

    .line 20
    :cond_6
    iget-object p2, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    sub-int/2addr p1, v1

    invoke-virtual {p2, p1, v0}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    :cond_7
    :goto_0
    return-void
.end method

.method public setAdapter(Lnet/lucode/hackware/magicindicator/e/c/b/a;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 3
    :cond_1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    if-eqz p1, :cond_2

    .line 4
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 5
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    invoke-virtual {v0}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->getCount()I

    move-result v0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/b;->m(I)V

    .line 6
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mTitleContainer:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_3

    .line 7
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdapter:Lnet/lucode/hackware/magicindicator/e/c/b/a;

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/e/c/b/a;->notifyDataSetChanged()V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lnet/lucode/hackware/magicindicator/b;->m(I)V

    .line 9
    invoke-direct {p0}, Lnet/lucode/hackware/magicindicator/e/c/a;->init()V

    :cond_3
    :goto_0
    return-void
.end method

.method public setAdjustMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mAdjustMode:Z

    return-void
.end method

.method public setEnablePivotScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mEnablePivotScroll:Z

    return-void
.end method

.method public setFollowTouch(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mFollowTouch:Z

    return-void
.end method

.method public setIndicatorOnTop(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mIndicatorOnTop:Z

    return-void
.end method

.method public setLeftPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mLeftPadding:I

    return-void
.end method

.method public setReselectWhenLayout(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mReselectWhenLayout:Z

    return-void
.end method

.method public setRightPadding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mRightPadding:I

    return-void
.end method

.method public setScrollPivotX(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mScrollPivotX:F

    return-void
.end method

.method public setSkimOver(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSkimOver:Z

    .line 2
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mNavigatorHelper:Lnet/lucode/hackware/magicindicator/b;

    invoke-virtual {v0, p1}, Lnet/lucode/hackware/magicindicator/b;->l(Z)V

    return-void
.end method

.method public setSmoothScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lnet/lucode/hackware/magicindicator/e/c/a;->mSmoothScroll:Z

    return-void
.end method
