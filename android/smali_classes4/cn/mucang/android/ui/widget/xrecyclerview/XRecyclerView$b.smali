.class Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->onScrollStateChanged(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->l(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->m(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    .line 4
    instance-of p2, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p2, :cond_0

    .line 5
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    goto :goto_0

    .line 6
    :cond_0
    instance-of p2, p1, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    if-eqz p2, :cond_1

    .line 7
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->B()I

    move-result p3

    new-array p3, p3, [I

    .line 8
    invoke-virtual {p2, p3}, Landroidx/recyclerview/widget/StaggeredGridLayoutManager;->r([I)[I

    .line 9
    iget-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p2, p3}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->n(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;[I)I

    move-result p2

    goto :goto_0

    .line 10
    :cond_1
    move-object p2, p1

    check-cast p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 11
    invoke-virtual {p2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p2

    .line 12
    :goto_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result p3

    if-lez p3, :cond_2

    .line 13
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getItemCount()I

    move-result p3

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->o(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    sub-int/2addr p3, v0

    if-lt p2, p3, :cond_2

    .line 14
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getItemCount()I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$o;->getChildCount()I

    move-result p1

    if-lt p2, p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    .line 15
    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->p(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    .line 16
    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->a(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    .line 17
    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->q(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/b;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/b;->getState()I

    move-result p1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    .line 18
    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->getCurrentState()I

    move-result p1

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    .line 19
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p1, v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->c(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Z)Z

    .line 20
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/a;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->setState(I)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$b;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->l(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;->b()V

    :cond_2
    return-void
.end method
