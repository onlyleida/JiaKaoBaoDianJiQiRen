.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/b;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016J\u0008\u0010\u000b\u001a\u00020\u000cH\u0002J&\u0010\r\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0014H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082.\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
        "getStatName",
        "",
        "initOrder",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
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
.field private b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;

.field private c:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

.field private final d:Lcom/drakeet/multitype/f;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/b;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->d:Lcom/drakeet/multitype/f;

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;)Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    return-object p0
.end method

.method private final s()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->d:Lcom/drakeet/multitype/f;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$2;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment$initOrder$2;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;)V

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;-><init>(Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;)V

    .line 2
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-virtual {v0, v2, v1}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 5
    invoke-direct {v3, v4, v5, v6}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    return-void

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->u(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->getRouteSpotList()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->getRouteSpotList()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_0
    invoke-virtual {v0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 3
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->d:Lcom/drakeet/multitype/f;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8def\u7ebf\u7f16\u8f91\u6307\u4ee4\u6a21\u5f0f"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p2, "inflater"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;

    move-result-object p1

    const-string p2, "inflate(inflater)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->s()V

    .line 3
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object p2

    invoke-direct {p1, p2}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class p2, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string p2, "ViewModelProvider(requir\u2026ditViewModel::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->c:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->m()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object p3

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c0;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/c0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;)V

    invoke-virtual {p1, p3, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderFragment;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderBinding;->getRoot()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    return-object p1

    :cond_0
    const-string p1, "viewBinding"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    :cond_1
    const-string p1, "viewModel"

    .line 6
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method
