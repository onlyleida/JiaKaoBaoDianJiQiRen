.class public final Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;
.super Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00122\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0012B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u0006\u001a\u00020\u0007H\u0002J\u0008\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u000bH\u0016J\u001a\u0010\u000c\u001a\u00020\u00072\u0006\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u000e\u0010\u0011\u001a\u00020\u00072\u0006\u0010\u0004\u001a\u00020\u0005R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/exam/PreviewFragment;",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;",
        "()V",
        "route",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "drawLines",
        "",
        "getMap",
        "Lcom/amap/api/maps/AMap;",
        "getTextureMapView",
        "Lcom/amap/api/maps/TextureMapView;",
        "onViewCreated",
        "view",
        "Landroid/view/View;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setRouteInfo",
        "Companion",
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
.field private k:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;-><init>()V

    return-void
.end method

.method private final J()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;->k:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    const/4 v1, 0x0

    const-string v2, "route"

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x1

    .line 2
    invoke-virtual {p0, v0, v3}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->u(Ljava/util/List;Z)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    const-class v3, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    .line 5
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v3

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v6

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;->k:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    const-string v2, "it"

    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->w(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    .line 9
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->s(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    goto :goto_1

    :cond_3
    :goto_2
    return-void

    .line 10
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;->L(Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;Landroid/view/View;)V

    return-void
.end method

.method private static final L(Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/d;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/d;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p1, p0}, Landroidx/fragment/app/u;->p(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    if-nez p1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    :goto_0
    return-void
.end method


# virtual methods
.method public getMap()Lcom/amap/api/maps/AMap;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;->mapView:Lcom/amap/api/maps/TextureMapView;

    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->getMap()Lcom/amap/api/maps/AMap;

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
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const-string p2, "key_route"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type cn.mucang.jiakaoyi.uilib.model.LocalRoute"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;->k:Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;->J()V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;->closeIv:Landroid/widget/ImageView;

    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/exam/x0;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/exam/x0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/exam/j1;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->E(Z)V

    return-void
.end method

.method public y()Lcom/amap/api/maps/TextureMapView;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/ExamPreviewFragmentBinding;->mapView:Lcom/amap/api/maps/TextureMapView;

    const-string v1, "viewBinding.mapView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
