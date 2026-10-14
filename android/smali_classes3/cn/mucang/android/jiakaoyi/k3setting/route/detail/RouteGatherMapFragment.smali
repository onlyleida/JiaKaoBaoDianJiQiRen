.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;
.super Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r<",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/signal/c/f/a;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u00012\u00020\u0003B\u0005\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u000b\u001a\u00020\u000cH\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u0010H\u0016J\u0010\u0010\u0012\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0014H\u0016J\u001a\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0017R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "estimator",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsEstimator;",
        "location",
        "Landroid/location/Location;",
        "newNode",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
        "getMap",
        "Lcom/amap/api/maps/AMap;",
        "getMapView",
        "Lcom/amap/api/maps/MapView;",
        "onPause",
        "",
        "onResume",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "onViewCreated",
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


# instance fields
.field private k:Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

.field private final l:Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

.field private final m:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->l:Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

    .line 3
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->m:Landroid/location/Location;

    return-void
.end method

.method public static synthetic J(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lkotlin/Pair;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->T(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lkotlin/Pair;)V

    return-void
.end method

.method public static synthetic K(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->S(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic L(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->Q(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    return-void
.end method

.method public static synthetic M(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->U(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic N(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->P(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic O(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->R(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    return-void
.end method

.method private static final P(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Ljava/util/List;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$mapViewModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p0, p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->v(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;Ljava/util/List;ZILjava/lang/Object;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->z(Ljava/util/List;)I

    move-result p2

    .line 3
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->p(I)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->distanceTv:Landroid/widget/TextView;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->b(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "km"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final Q(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->k:Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStepId()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u91c7\u96c6"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    const-string v0, "it"

    .line 4
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->w(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->bearTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBearing()F

    move-result p1

    float-to-int p1, p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final R(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->k:Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->s(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    return-void
.end method

.method private static final S(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Landroid/view/View;)V
    .locals 1

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapViewModel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/t;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/t;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment$onViewCreated$4$1;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment$onViewCreated$4$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/t;->B(Lkotlin/jvm/b/p;)V

    .line 3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string p1, ""

    invoke-virtual {p2, p0, p1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private static final T(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lkotlin/Pair;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    if-nez v1, :cond_1

    const-string v1, ""

    :cond_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    instance-of v0, p1, Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    move-object v3, p1

    check-cast v3, Ljava/lang/Boolean;

    :cond_2
    if-nez v3, :cond_3

    const/4 p1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;->openTv:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;->openTv:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    const-string p1, "\u516c\u5f00"

    goto :goto_2

    :cond_4
    const-string p1, "\u672a\u516c\u5f00"

    :goto_2
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private static final U(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Landroid/view/View;)V
    .locals 3

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$mapViewModel"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->k:Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    if-nez p2, :cond_0

    const/4 p1, 0x0

    goto :goto_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->m:Landroid/location/Location;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->etDistance:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.CharSequence"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v0}, Lkotlin/text/l;->J0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "\u8bf7\u8f93\u5165\u6b63\u786e\u7684\u5b57\u7b26"

    if-eqz v1, :cond_1

    .line 5
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/core/utils/y;->f(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 7
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gtz v1, :cond_2

    goto :goto_0

    .line 8
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v2, "\u5df2\u91c7\u96c6\u5239\u8f66\u70b9"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->m:Landroid/location/Location;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->c(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;Landroid/location/Location;I)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_0
    invoke-static {v2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void

    :cond_4
    const-string p1, "GPS\u5b9a\u4f4d\u5931\u8d25"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 12
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    :goto_2
    if-nez p1, :cond_5

    const-string p1, "\u8bf7\u5148\u91c7\u96c6\u9879\u76ee"

    .line 13
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->H(Ljava/lang/String;)V

    :cond_5
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

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->m:Landroid/location/Location;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;->l:Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/config/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->E(Z)V

    .line 3
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

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->j()Landroidx/lifecycle/z;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/j;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/j;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->i()Landroidx/lifecycle/z;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/h;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/h;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->h()Landroidx/lifecycle/z;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/k;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/k;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;)V

    invoke-virtual {p2, v0, v1}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;->getRoot()Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->header:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapHeaderBinding;->editTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/g;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/g;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-class p2, Lkotlin/Pair;

    .line 10
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    const-string v2, "viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/f;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/f;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;)V

    invoke-virtual {p2, v1, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->tvAdd:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->tvDelete:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->tvMove:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapFragmentBinding;->distance:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteMapDistanceBinding;->tvAdd:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/i;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/i;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

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
