.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;
.super Landroidx/recyclerview/widget/RecyclerView$t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->x()V
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
        "cn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$initView$5",
        "Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;",
        "onScrolled",
        "",
        "recyclerView",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "dx",
        "",
        "dy",
        "k3setting_release"
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
.field final synthetic a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;

.field final synthetic b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$t;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 2

    const-string v0, "recyclerView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$t;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p1, :cond_1

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;

    invoke-virtual {p2}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p2

    add-int/lit8 p2, p2, -0x2

    if-le p1, p2, :cond_1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$d;

    invoke-virtual {p1}, Lcom/drakeet/multitype/f;->getItemCount()I

    move-result p1

    if-lez p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->t(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->r(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object p3

    iget-wide v0, p3, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment$c;->b:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;->s(Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteListFragment;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, v0, v1, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->r(ZJLjava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "viewModel"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
