.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0008H\u0002J\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u0010\u0010\r\u001a\u00020\u00082\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\u0010\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u0012H\u0002R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/mark/MyLocationMark;",
        "",
        "aMap",
        "Lcom/amap/api/maps/AMap;",
        "(Lcom/amap/api/maps/AMap;)V",
        "mLocMarker",
        "Lcom/amap/api/maps/model/Marker;",
        "initLocIcon",
        "",
        "onDestroy",
        "onLocationChange",
        "location",
        "Landroid/location/Location;",
        "updateLoc",
        "latLng",
        "Lcom/amap/api/maps/model/LatLng;",
        "updateLocAngle",
        "angle",
        "",
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
.field private final a:Lcom/amap/api/maps/AMap;

.field private b:Lcom/amap/api/maps/model/Marker;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/AMap;)V
    .locals 1

    const-string v0, "aMap"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->a:Lcom/amap/api/maps/AMap;

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->a()V

    return-void
.end method

.method private final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->ic_mylocation:I

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromResource(I)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    const/high16 v1, 0x3f000000    # 0.5f

    .line 4
    invoke-virtual {v0, v1, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    const/high16 v1, 0x40000000    # 2.0f

    .line 5
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MarkerOptions;->zIndex(F)Lcom/amap/api/maps/model/MarkerOptions;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->a:Lcom/amap/api/maps/AMap;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setClickable(Z)V

    :goto_0
    return-void
.end method

.method private final d(Lcom/amap/api/maps/model/LatLng;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v1

    if-nez v1, :cond_1

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_0

    .line 4
    :cond_1
    new-instance v1, Lcom/amap/api/maps/model/animation/TranslateAnimation;

    invoke-direct {v1, p1}, Lcom/amap/api/maps/model/animation/TranslateAnimation;-><init>(Lcom/amap/api/maps/model/LatLng;)V

    const-wide/16 v2, 0x320

    .line 5
    invoke-virtual {v1, v2, v3}, Lcom/amap/api/maps/model/animation/TranslateAnimation;->setDuration(J)V

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b$a;

    invoke-direct {v2, v0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b$a;-><init>(Lcom/amap/api/maps/model/Marker;Lcom/amap/api/maps/model/LatLng;)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/animation/Animation;->setAnimationListener(Lcom/amap/api/maps/model/animation/Animation$AnimationListener;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 8
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->startAnimation()Z

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->a:Lcom/amap/api/maps/AMap;

    invoke-static {p1}, Lcom/amap/api/maps/CameraUpdateFactory;->changeLatLng(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/CameraUpdate;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->animateCamera(Lcom/amap/api/maps/CameraUpdate;)V

    :goto_1
    return-void
.end method

.method private final e(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :goto_0
    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    :goto_0
    return-void
.end method

.method public final c(Landroid/location/Location;)V
    .locals 5

    const-string v0, "location"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/a;->a(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    .line 2
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->d(Lcom/amap/api/maps/model/LatLng;)V

    const/16 v0, 0x168

    int-to-float v0, v0

    .line 3
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    sub-float/2addr v0, p1

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/v/b;->e(F)V

    return-void
.end method
