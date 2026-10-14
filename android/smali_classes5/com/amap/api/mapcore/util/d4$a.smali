.class Lcom/amap/api/mapcore/util/d4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/d4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/d4;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/d4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    iget-boolean p1, p1, Lcom/amap/api/mapcore/util/d4;->i:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    iget-object p2, p1, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/d4;->b:Landroid/graphics/Bitmap;

    invoke-virtual {p2, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    .line 5
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    iget-object v1, p1, Lcom/amap/api/mapcore/util/d4;->g:Landroid/widget/ImageView;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/d4;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/d4;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, p2}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setMyLocationEnabled(Z)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/d4;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMyLocation()Landroid/location/Location;

    move-result-object p1

    if-nez p1, :cond_2

    return v0

    .line 8
    :cond_2
    new-instance p2, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 9
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {p2, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/d4;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->showMyLocationOverlay(Landroid/location/Location;)V

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d4$a;->a:Lcom/amap/api/mapcore/util/d4;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/d4;->h:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 12
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v1

    invoke-static {p2, v1}, Lcom/amap/api/mapcore/util/h;->h(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p2

    .line 13
    invoke-interface {p1, p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "LocationView"

    const-string v1, "onTouch"

    .line 14
    invoke-static {p1, p2, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return v0
.end method
