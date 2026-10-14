.class public final Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J \u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u00072\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a8\u0006\t"
    }
    d2 = {
        "cn/mucang/jiakaoyi/uilib/debug/DebugActivity$init$3",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
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
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 1

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-static {p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->j(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)Lcom/drakeet/multitype/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-le p1, p2, :cond_0

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;->j(Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;)Lcom/drakeet/multitype/f;

    move-result-object p1

    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->lock:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->lock:Landroid/widget/CheckBox;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->lock:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity$c;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugActivity;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;

    iget-object p1, p1, Lcom/mucang/android/jiakaoyi/uilib/databinding/ActivityDebugBinding;->lock:Landroid/widget/CheckBox;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/CheckBox;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
