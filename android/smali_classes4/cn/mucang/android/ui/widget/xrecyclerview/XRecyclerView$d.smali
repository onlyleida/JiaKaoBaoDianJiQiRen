.class Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;


# direct methods
.method private constructor <init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;-><init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->b(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    iget-object v1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->d(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v3}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->m(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v1, v1, 0x1

    .line 5
    :cond_1
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    const/16 v3, 0x8

    if-ne v0, v1, :cond_2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->b(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->b(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 10
    :cond_3
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_4
    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .locals 0

    .line 1
    iget-object p3, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {p3}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$d;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->e(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
