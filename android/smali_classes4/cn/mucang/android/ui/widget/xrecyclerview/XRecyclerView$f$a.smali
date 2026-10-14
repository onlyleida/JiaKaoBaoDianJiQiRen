.class Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;
.super Landroidx/recyclerview/widget/GridLayoutManager$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic e:Landroidx/recyclerview/widget/GridLayoutManager;

.field final synthetic f:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;


# direct methods
.method constructor <init>(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;Landroidx/recyclerview/widget/GridLayoutManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;->f:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    iput-object p2, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$c;-><init>()V

    return-void
.end method


# virtual methods
.method public f(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;->f:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->e(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;->f:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->d(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;->f:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    invoke-virtual {v0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->f(I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;->f:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;

    iget-object v0, v0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f;->b:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0, p1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->j(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;I)I

    move-result p1

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$f$a;->e:Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->k()I

    move-result p1

    :goto_1
    return p1
.end method
