.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;
.super Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0004\u001a\u00020\u0005H\u0016J\u0008\u0010\u0006\u001a\u00020\u0007H\u0016J\u001a\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0010\u000c\u001a\u0004\u0018\u00010\rH\u0016\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RoutePreviewFragment;",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;",
        "()V",
        "getMap",
        "Lcom/amap/api/maps/AMap;",
        "getMapView",
        "Lcom/amap/api/maps/MapView;",
        "onViewCreated",
        "",
        "view",
        "Landroid/view/View;",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;-><init>()V

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;->K(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;Ljava/util/List;)V

    return-void
.end method

.method private static final K(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;Ljava/util/List;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->u(Ljava/util/List;Z)V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->w(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    .line 4
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->s(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    const-string v1, "viewBinding.mapView.map"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/config/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p2

    invoke-static {p2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p1, p2}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class p2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string p2, "ViewModelProvider(activi\u2026MapViewModel::class.java)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->j()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object p2

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/m;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/m;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/s;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method

.method public x()Lcom/amap/api/maps/MapView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->mapView:Lcom/amap/api/maps/MapView;

    const-string v1, "viewBinding.mapView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
