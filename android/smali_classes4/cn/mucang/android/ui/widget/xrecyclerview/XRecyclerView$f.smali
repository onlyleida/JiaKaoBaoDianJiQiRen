.class public Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

.field final synthetic b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;


# direct methods
.method public constructor <init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    return-void
.end method


# virtual methods
.method public c()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public d(I)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->m(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->getItemCount()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public e(I)Z
    .locals 2

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->f(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public f(I)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->m(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x2

    return v0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    return v0

    .line 7
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    if-lt p1, v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p1, v0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int v0, p1, v0

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->f(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 p1, 0x2710

    return p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->e(I)Z

    move-result v1

    if-eqz v1, :cond_1

    add-int/lit8 p1, p1, -0x1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->i(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->d(I)Z

    move-result p1

    if-eqz p1, :cond_2

    const/16 p1, 0x2711

    return p1

    .line 6
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result p1

    if-ge v0, p1, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemViewType(I)I

    move-result p1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Landroidx/recyclerview/widget/GridLayoutManager;

    .line 5
    new-instance v1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;

    invoke-direct {v1, p0, v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;Landroidx/recyclerview/widget/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->s(Landroidx/recyclerview/widget/GridLayoutManager$c;)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V
    .locals 1

    .line 1
    invoke-virtual {p0, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->c()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr p2, v0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;
    .locals 1

    const/16 v0, 0x2710

    if-ne p2, v0, :cond_0

    .line 1
    new-instance p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;

    iget-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->q(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/b;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;Landroid/view/View;)V

    return-object p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->g(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    new-instance p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->h(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;I)Landroid/view/View;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;Landroid/view/View;)V

    return-object p1

    :cond_1
    const/16 v0, 0x2711

    if-ne p2, v0, :cond_2

    .line 4
    new-instance p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;

    iget-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/a;

    move-result-object p2

    invoke-direct {p1, p0, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;Landroid/view/View;)V

    return-object p1

    .line 5
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$c0;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method

.method public onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onFailedToRecycleView(Landroidx/recyclerview/widget/RecyclerView$c0;)Z

    move-result p1

    return p1
.end method

.method public onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    instance-of v1, v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    if-eqz v1, :cond_1

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->e(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->f(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v1

    invoke-virtual {p0, v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->d(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    :cond_0
    check-cast v0, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;

    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager$c;->f(Z)V

    .line 9
    :cond_1
    instance-of v0, p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;

    if-eqz v0, :cond_2

    .line 10
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void

    .line 11
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewAttachedToWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewDetachedFromWindow(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$b;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    return-void
.end method

.method public registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method

.method public unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->a:Landroidx/recyclerview/widget/RecyclerView$Adapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$i;)V

    return-void
.end method
