.class public abstract Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/b;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<VB::",
        "Landroidx/viewbinding/a;",
        ">",
        "Lcn/mucang/android/jiakaoyi/framework/base/m/b;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a8\u0001\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010 \n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0010\u0006\n\u0002\u0008\u0002\u0008&\u0018\u0000*\u0008\u0008\u0000\u0010\u0001*\u00020\u00022\u00020\u00032\u00020\u0004B\u0005\u00a2\u0006\u0002\u0010\u0005J\u0008\u0010#\u001a\u00020$H\u0004J\u0012\u0010%\u001a\u00020$2\u0008\u0010&\u001a\u0004\u0018\u00010\rH\u0004J\u0010\u0010\'\u001a\u00020$2\u0006\u0010(\u001a\u00020)H\u0002J \u0010*\u001a\u00020$2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\r0,2\u0008\u0008\u0002\u0010-\u001a\u00020\u0011H\u0004J\u0010\u0010.\u001a\u00020$2\u0006\u0010&\u001a\u00020\rH\u0004J\u0008\u0010/\u001a\u00020\u0007H&J\n\u00100\u001a\u0004\u0018\u000101H\u0016J\u0008\u00102\u001a\u000203H\u0016J\n\u00104\u001a\u0004\u0018\u000105H\u0016J\u0016\u00106\u001a\u0002072\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\r0,H\u0004J\u0008\u00108\u001a\u00020$H\u0016J\u001a\u00109\u001a\u00020:2\u0006\u0010;\u001a\u00020<2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0002J\u0008\u0010?\u001a\u00020$H\u0016J&\u0010@\u001a\u0004\u0018\u00010:2\u0006\u0010;\u001a\u00020<2\u0008\u0010=\u001a\u0004\u0018\u00010>2\u0008\u0010A\u001a\u0004\u0018\u00010BH\u0016J\u0008\u0010C\u001a\u00020$H\u0016J\u0010\u0010D\u001a\u00020$2\u0006\u0010(\u001a\u00020)H\u0016J\u0008\u0010E\u001a\u00020$H\u0016J\u0008\u0010F\u001a\u00020$H\u0016J\u0010\u0010G\u001a\u00020$2\u0006\u0010H\u001a\u000203H\u0004J\u0018\u0010I\u001a\u00020$2\u0006\u0010J\u001a\u00020K2\u0006\u0010L\u001a\u00020KH\u0004R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082.\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\r\u0012\u0004\u0012\u00020\n0\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001a\u0010\u0010\u001a\u00020\u0011X\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\u0010\u0010\u0016\u001a\u0004\u0018\u00010\u0017X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0012\u0010\u001a\u001a\u0004\u0018\u00010\u001bX\u0082\u000e\u00a2\u0006\u0004\n\u0002\u0010\u001cR\u001c\u0010\u001d\u001a\u00028\u0000X\u0084.\u00a2\u0006\u0010\n\u0002\u0010\"\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006M"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteBaseMapFragment;",
        "VB",
        "Landroidx/viewbinding/ViewBinding;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;",
        "Lcn/mucang/android/jiakaoyi/signal/handle/gps/DefaultLocationListener;",
        "()V",
        "map",
        "Lcom/amap/api/maps/AMap;",
        "markerList",
        "",
        "Lcom/amap/api/maps/model/Marker;",
        "markerMap",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
        "myLocationMark",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/mark/MyLocationMark;",
        "needLocate",
        "",
        "getNeedLocate",
        "()Z",
        "setNeedLocate",
        "(Z)V",
        "polyline",
        "Lcom/amap/api/maps/model/Polyline;",
        "signalCallback",
        "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;",
        "speed",
        "",
        "Ljava/lang/Float;",
        "viewBinding",
        "getViewBinding",
        "()Landroidx/viewbinding/ViewBinding;",
        "setViewBinding",
        "(Landroidx/viewbinding/ViewBinding;)V",
        "Landroidx/viewbinding/ViewBinding;",
        "clearMarker",
        "",
        "drawBrakePointMark",
        "node",
        "drawMyLocation",
        "location",
        "Landroid/location/Location;",
        "drawRouteLine",
        "nodeList",
        "",
        "animate",
        "drawStartPointMark",
        "getMap",
        "getMapView",
        "Lcom/amap/api/maps/MapView;",
        "getStatName",
        "",
        "getTextureMapView",
        "Lcom/amap/api/maps/TextureMapView;",
        "getTotalDistance",
        "",
        "initView",
        "initViewBinding",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "initViewModel",
        "onCreateView",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onDestroyView",
        "onLocationChanged",
        "onPause",
        "onResume",
        "speakingToast",
        "toastContent",
        "updateAnimateCamera",
        "lat",
        "",
        "lon",
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
.field protected b:Landroidx/viewbinding/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TVB;"
        }
    .end annotation
.end field

.field private c:Z

.field private d:Lcom/amap/api/maps/AMap;

.field private e:Lcom/amap/api/maps/model/Polyline;

.field private f:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private h:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            "Lcom/amap/api/maps/model/Marker;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/lang/Float;

.field private final j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/b;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->g:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->h:Ljava/util/Map;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/a;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    return-void
.end method

.method private final C(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "null cannot be cast to non-null type java.lang.Class<VB of cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteBaseMapFragment>"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Class;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    .line 3
    const-class v4, Landroid/view/LayoutInflater;

    aput-object v4, v3, v1

    const-class v4, Landroid/view/ViewGroup;

    const/4 v5, 0x1

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x2

    aput-object v4, v3, v6

    const-string v4, "inflate"

    .line 4
    invoke-virtual {v0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v3, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    aput-object p2, v2, v5

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object p1, v2, v6

    invoke-virtual {v0, v3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    const-string p2, "null cannot be cast to non-null type VB of cn.mucang.android.jiakaoyi.k3setting.route.detail.RouteBaseMapFragment"

    invoke-static {p1, p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Landroidx/viewbinding/a;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->F(Landroidx/viewbinding/a;)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->A()Landroidx/viewbinding/a;

    move-result-object p1

    invoke-interface {p1}, Landroidx/viewbinding/a;->getRoot()Landroid/view/View;

    move-result-object p1

    const-string p2, "viewBinding.root"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public static synthetic D(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->G(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method private static final G(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->i:Ljava/lang/Float;

    return-void
.end method

.method private final t(Landroid/location/Location;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->c:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->i:Ljava/lang/Float;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->f:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->c(Landroid/location/Location;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic v(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;Ljava/util/List;ZILjava/lang/Object;)V
    .locals 0

    if-nez p4, :cond_1

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->u(Ljava/util/List;Z)V

    return-void

    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Super calls with default arguments not supported in this target, function: drawRouteLine"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method protected final A()Landroidx/viewbinding/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TVB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->b:Landroidx/viewbinding/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "viewBinding"

    invoke-static {v0}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public B()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->x()Lcom/amap/api/maps/MapView;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->y()Lcom/amap/api/maps/TextureMapView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/TextureMapView;->onCreate(Landroid/os/Bundle;)V

    .line 3
    :goto_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->getMap()Lcom/amap/api/maps/AMap;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    const-string v2, "map"

    if-eqz v0, :cond_6

    const/4 v3, 0x0

    .line 4
    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->showBuildings(Z)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_5

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->showIndoorMap(Z)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_4

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/AMap;->showMapText(Z)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getUiSettings()Lcom/amap/api/maps/UiSettings;

    move-result-object v0

    .line 8
    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setTiltGesturesEnabled(Z)V

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v0, v4}, Lcom/amap/api/maps/UiSettings;->setScaleControlsEnabled(Z)V

    .line 10
    invoke-virtual {v0, v4}, Lcom/amap/api/maps/UiSettings;->setGestureScaleByMapCenter(Z)V

    .line 11
    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setZoomControlsEnabled(Z)V

    .line 12
    invoke-virtual {v0, v3}, Lcom/amap/api/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_2

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/amap/api/maps/CameraUpdateFactory;->zoomTo(F)Lcom/amap/api/maps/CameraUpdate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    return-void

    :cond_2
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_3
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 15
    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_5
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected final E(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->c:Z

    return-void
.end method

.method protected final F(Landroidx/viewbinding/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TVB;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->b:Landroidx/viewbinding/a;

    return-void
.end method

.method protected final H(Ljava/lang/String;)V
    .locals 1

    const-string v0, "toastContent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method protected final I(DD)V
    .locals 3

    const-wide v0, 0x3e7ad7f29abcaf48L    # 1.0E-7

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    cmpl-double v2, p3, v0

    if-lez v2, :cond_1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/a;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_0

    :cond_0
    const-string p1, "map"

    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method

.method public abstract getMap()Lcom/amap/api/maps/AMap;
.end method

.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u8def\u7ebf\u5730\u56fe"

    return-object v0
.end method

.method public initViewModel()V
    .locals 0

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->C(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->initViewModel()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->B()V

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz p3, :cond_0

    invoke-direct {p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;-><init>(Lcom/amap/api/maps/AMap;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->f:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-object p1

    :cond_0
    const-string p1, "map"

    .line 6
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onDestroyView()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->x()Lcom/amap/api/maps/MapView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onDestroy()V

    .line 3
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->y()Lcom/amap/api/maps/TextureMapView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onDestroy()V

    .line 4
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->f:Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->b()V

    .line 5
    :goto_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->j:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->n(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method

.method public onLocationChanged(Landroid/location/Location;)V
    .locals 1

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->t(Landroid/location/Location;)V

    return-void
.end method

.method public onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onPause()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->k(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->x()Lcom/amap/api/maps/MapView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onPause()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->y()Lcom/amap/api/maps/TextureMapView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onPause()V

    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/q;->onResume()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->a:Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;

    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/j;->d(Lcn/mucang/android/jiakaoyi/signal/handle/gps/c;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->x()Lcom/amap/api/maps/MapView;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/MapView;->onResume()V

    .line 4
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->y()Lcom/amap/api/maps/TextureMapView;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/TextureMapView;->onResume()V

    :goto_1
    return-void
.end method

.method protected final r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->g:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/Marker;

    .line 3
    invoke-virtual {v1}, Lcom/amap/api/maps/model/Marker;->remove()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method protected final s(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V
    .locals 8

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->h:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->h:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/Marker;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->g:Ljava/util/List;

    const-string v2, "null cannot be cast to non-null type kotlin.collections.MutableCollection<T>"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {v1}, Lkotlin/jvm/internal/z;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->h:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    .line 6
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLat()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLon()D

    move-result-wide v0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_3

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/a;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 8
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/a;->setData(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    .line 9
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3e4ccccd    # 0.2f

    .line 10
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    .line 11
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLat()D

    move-result-wide v4

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLon()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3setting/a;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 12
    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_2

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->g:Ljava/util/List;

    const-string v2, "addMarker"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->h:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "map"

    .line 16
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2

    :cond_3
    :goto_0
    return-void
.end method

.method protected final u(Ljava/util/List;Z)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "nodeList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->e:Lcom/amap/api/maps/model/Polyline;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Polyline;->remove()V

    .line 2
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 4
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v3

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/a;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLat()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLon()D

    move-result-wide v2

    cmpl-double v6, v2, v4

    if-lez v6, :cond_1

    .line 6
    new-instance v2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLat()D

    move-result-wide v3

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBrakeLon()D

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/k3setting/a;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    const/4 v1, 0x0

    const-string v2, "map"

    if-eqz p1, :cond_6

    .line 8
    new-instance v3, Lcom/amap/api/maps/model/PolylineOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/PolylineOptions;-><init>()V

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/model/PolylineOptions;->addAll(Ljava/lang/Iterable;)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    const/high16 v4, 0x41200000    # 10.0f

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/PolylineOptions;->width(F)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    const-string v4, "#FF7D3C"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/amap/api/maps/model/PolylineOptions;->color(I)Lcom/amap/api/maps/model/PolylineOptions;

    move-result-object v3

    .line 9
    invoke-virtual {p1, v3}, Lcom/amap/api/maps/AMap;->addPolyline(Lcom/amap/api/maps/model/PolylineOptions;)Lcom/amap/api/maps/model/Polyline;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->e:Lcom/amap/api/maps/model/Polyline;

    if-eqz p2, :cond_5

    .line 10
    new-instance p1, Lcom/amap/api/maps/model/LatLngBounds$Builder;

    invoke-direct {p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/LatLng;

    .line 12
    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->include(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLngBounds$Builder;

    goto :goto_2

    .line 13
    :cond_3
    invoke-virtual {p1}, Lcom/amap/api/maps/model/LatLngBounds$Builder;->build()Lcom/amap/api/maps/model/LatLngBounds;

    move-result-object p1

    const/16 p2, 0x64

    const/16 v0, 0x32

    .line 14
    invoke-static {p1, v0, v0, v0, p2}, Lcom/amap/api/maps/CameraUpdateFactory;->newLatLngBoundsRect(Lcom/amap/api/maps/model/LatLngBounds;IIII)Lcom/amap/api/maps/CameraUpdate;

    move-result-object p1

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    goto :goto_3

    :cond_4
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_5
    :goto_3
    return-void

    .line 16
    :cond_6
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1
.end method

.method protected final w(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V
    .locals 8

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/c;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/c;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/c;->setData(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    .line 3
    new-instance v1, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    const/high16 v3, 0x3f000000    # 0.5f

    const v4, 0x3f4ccccd    # 0.8f

    .line 4
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    .line 5
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v4

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3setting/a;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 6
    invoke-static {v0}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromView(Landroid/view/View;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->d:Lcom/amap/api/maps/AMap;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/r;->g:Ljava/util/List;

    const-string v1, "addMarker"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    :cond_0
    const-string p1, "map"

    .line 9
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v2
.end method

.method public x()Lcom/amap/api/maps/MapView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public y()Lcom/amap/api/maps/TextureMapView;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final z(Ljava/util/List;)I
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;)I"
        }
    .end annotation

    move-object/from16 v0, p1

    const-string v1, "nodeList"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface/range {p1 .. p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    add-int/lit8 v6, v4, 0x1

    if-ltz v4, :cond_1

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    if-lez v4, :cond_0

    add-int/lit8 v4, v4, -0x1

    .line 2
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    const/4 v7, 0x1

    new-array v7, v7, [F

    .line 3
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v8

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v10

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v12

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v14

    move-object/from16 v16, v7

    invoke-static/range {v8 .. v16}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 4
    aget v4, v7, v2

    float-to-int v4, v4

    add-int/2addr v3, v4

    :cond_0
    move v4, v6

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 v0, 0x0

    throw v0

    :cond_2
    return v3
.end method
