.class Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/ui/widget/xrecyclerview/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->v(Landroid/content/Context;Landroid/util/AttributeSet;I)V
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
    iput-object p1, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->c(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;Z)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->k(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcn/mucang/android/ui/widget/xrecyclerview/a;->setState(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$a;->a:Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;

    invoke-static {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;->l(Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView;)Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/ui/widget/xrecyclerview/XRecyclerView$e;->b()V

    return-void
.end method
