.class public Lcom/serenegiant/widget/RecycleViewWithEmptyView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "SourceFile"


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

.field private mEmptyView:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "WrongConstant"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;

    invoke-direct {v0, p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;-><init>(Lcom/serenegiant/widget/RecycleViewWithEmptyView;)V

    iput-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    const/4 v1, 0x0

    .line 5
    sget-object v2, Lcom/serenegiant/common/R$styleable;->RecycleViewWithEmptyView:[I

    invoke-virtual {p1, p2, v2, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 6
    :try_start_0
    sget p3, Lcom/serenegiant/common/R$styleable;->RecycleViewWithEmptyView_listDivider:I

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    :catch_0
    :cond_0
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    const/4 p2, 0x1

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p3

    instance-of p3, p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p3, :cond_2

    .line 10
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->getOrientation()I

    move-result p2

    .line 11
    :cond_2
    new-instance p3, Lcom/serenegiant/widget/DividerItemDecoration;

    invoke-direct {p3, p1, v0}, Lcom/serenegiant/widget/DividerItemDecoration;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V

    .line 12
    invoke-virtual {p3, p2}, Lcom/serenegiant/widget/DividerItemDecoration;->setOrientation(I)V

    .line 13
    invoke-virtual {p0, p3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    return-void
.end method

.method static synthetic access$000(Lcom/serenegiant/widget/RecycleViewWithEmptyView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    return-object p0
.end method


# virtual methods
.method public setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eq v0, p1, :cond_1

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    iget-object v1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 4
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    if-eqz p1, :cond_1

    .line 5
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mAdapterDataObserver:Landroidx/recyclerview/widget/RecyclerView$i;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    .line 6
    :cond_1
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V

    return-void
.end method

.method public setEmptyView(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    if-eq v0, p1, :cond_0

    .line 2
    iput-object p1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    .line 3
    invoke-virtual {p0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V

    :cond_0
    return-void
.end method

.method protected updateEmptyView()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->mEmptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    .line 3
    new-instance v1, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;

    invoke-direct {v1, p0, v0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView$1;-><init>(Lcom/serenegiant/widget/RecycleViewWithEmptyView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
