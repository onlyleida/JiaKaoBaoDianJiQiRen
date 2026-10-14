.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/b;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000c\u001a\u00020\rH\u0016J&\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00132\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0016J\u0008\u0010\u0016\u001a\u00020\u0017H\u0016J\u0008\u0010\u0018\u001a\u00020\u0017H\u0016J\u0010\u0010\u0019\u001a\u00020\u00172\u0006\u0010\u001a\u001a\u00020\u001bH\u0016R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082.\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "()V",
        "estimator",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/GpsEstimator;",
        "location",
        "Landroid/location/Location;",
        "speakTime",
        "",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;",
        "getStatName",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onPause",
        "",
        "onResume",
        "onSignalChanged",
        "signalGetter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
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
.field private b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;

.field private c:J

.field private final d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

.field private final e:Landroid/location/Location;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/b;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

    .line 3
    new-instance v0, Landroid/location/Location;

    const-string v1, "gps"

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->e:Landroid/location/Location;

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;)Landroid/location/Location;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->e:Landroid/location/Location;

    return-object p0
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->t(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1;Ljava/util/List;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1;Ljava/util/List;)V
    .locals 1

    const-string v0, "$adapter"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8def\u7ebf\u91c7\u96c6-\u5730\u56fe\u6a21\u5f0f"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x0

    .line 1
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;->inflate(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Z)Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;

    move-result-object p1

    const-string p2, "inflate(inflater, container, false)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;

    const/4 p2, 0x0

    const-string p3, "viewBinding"

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 3
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v0

    invoke-direct {p1, v0}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v0, "ViewModelProvider(requir\u2026MapViewModel::class.java)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    .line 5
    new-instance p1, Landroidx/lifecycle/m0;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v1

    invoke-direct {p1, v1}, Landroidx/lifecycle/m0;-><init>(Landroidx/lifecycle/o0;)V

    const-class v1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    invoke-virtual {p1, v1}, Landroidx/lifecycle/m0;->a(Ljava/lang/Class;)Landroidx/lifecycle/j0;

    move-result-object p1

    const-string v1, "ViewModelProvider(requir\u2026tepViewModel::class.java)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->k()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/d;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/e;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/e;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment$onCreateView$adapter$1;)V

    invoke-virtual {p1, v1, v2}, Landroidx/lifecycle/LiveData;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;

    if-eqz p1, :cond_1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 8
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->m()Landroidx/fragment/app/u;

    move-result-object p1

    sget v0, Lcn/mucang/android/jiakaoyi/k3setting/R$id;->mapLayout:I

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteGatherMapFragment;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroidx/fragment/app/u;->b(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/u;

    .line 9
    invoke-virtual {p1}, Landroidx/fragment/app/u;->j()I

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteDetailFragmentBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 11
    :cond_1
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2

    .line 12
    :cond_2
    invoke-static {p3}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw p2
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    const-string v0, "signalGetter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x41c80000    # 25.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u8bf7\u5c06\u901f\u5ea6\u7ef4\u6301\u572825\u7801\u4ee5\u5185"

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->c:J

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->e:Landroid/location/Location;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteDetailFragment;->d:Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/e;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Landroid/location/Location;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/location/Location;->set(Landroid/location/Location;)V

    return-void
.end method
