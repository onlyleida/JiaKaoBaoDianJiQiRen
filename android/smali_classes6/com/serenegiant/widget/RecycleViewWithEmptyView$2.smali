.class Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;
.super Landroidx/recyclerview/widget/RecyclerView$i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/serenegiant/widget/RecycleViewWithEmptyView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;


# direct methods
.method constructor <init>(Lcom/serenegiant/widget/RecycleViewWithEmptyView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;->this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$i;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/recyclerview/widget/RecyclerView$i;->onChanged()V

    .line 2
    iget-object v0, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;->this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    invoke-virtual {v0}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V

    return-void
.end method

.method public onItemRangeChanged(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeChanged(II)V

    .line 2
    iget-object p1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;->this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    invoke-virtual {p1}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$i;->onItemRangeRemoved(II)V

    .line 2
    iget-object p1, p0, Lcom/serenegiant/widget/RecycleViewWithEmptyView$2;->this$0:Lcom/serenegiant/widget/RecycleViewWithEmptyView;

    invoke-virtual {p1}, Lcom/serenegiant/widget/RecycleViewWithEmptyView;->updateEmptyView()V

    return-void
.end method
