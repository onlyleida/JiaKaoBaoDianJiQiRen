.class public final Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Ljava/lang/String;",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001J\u001e\u0010\u0004\u001a\u00020\u00052\u000c\u0010\u0006\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00072\u0006\u0010\u0008\u001a\u00020\u0002H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/debug/DebugActivity$itemBinder$1",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "",
        "Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic b:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;->b:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/lang/String;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;->tvContent:Landroid/widget/TextView;

    const-string v1, "\n"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v0, "E/"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    .line 2
    invoke-static {p2, v0, v1, v2, v3}, Lkotlin/text/l;->G(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;->tvContent:Landroid/widget/TextView;

    const/high16 v0, -0x10000

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;

    iget-object p2, p2, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;->tvContent:Landroid/widget/TextView;

    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    :goto_0
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;->b:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->l(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->h()Landroidx/lifecycle/z;

    move-result-object p2

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashSet;

    .line 6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;->b:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->l(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/debug/DebugViewModel;->j()I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x1

    if-nez p2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-ne p2, v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    :goto_1
    if-eqz v1, :cond_4

    .line 8
    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$f;->b:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->k(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)I

    move-result p2

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getLayoutPosition()I

    move-result v0

    if-ne p2, v0, :cond_3

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "#88ff66"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const-string p2, "#aaffaa"

    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    goto :goto_2

    .line 11
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;

    invoke-virtual {p1}, Lcom/mucang/android/jiakaoyi/uilib/databinding/LayoutItemSystemLogBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    :goto_2
    return-void
.end method
