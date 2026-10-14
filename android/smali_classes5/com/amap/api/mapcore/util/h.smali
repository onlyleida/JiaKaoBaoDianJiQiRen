.class public Lcom/amap/api/mapcore/util/h;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/g;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/g;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static b(F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/e;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->zoom:F

    return-object v0
.end method

.method public static c(FF)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/f;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/f;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->scrollBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->xPixel:F

    .line 4
    iput p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->yPixel:F

    return-object v0
.end method

.method public static d(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/g;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/g;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->amount:F

    .line 4
    iput-object p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->focus:Landroid/graphics/Point;

    return-object v0
.end method

.method public static e(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 6

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/e;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    iget v2, p0, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget p0, p0, Landroid/graphics/Point;->y:I

    int-to-double v4, p0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    .line 4
    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->geoPoint:Lcom/autonavi/amap/mapcore/DPoint;

    return-object v0
.end method

.method public static f(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 7

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/e;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    if-eqz p0, :cond_1

    .line 3
    iget-object v1, p0, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    if-nez v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v1, 0x14

    invoke-static {v2, v3, v4, v5, v1}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->latLongToPixelsDouble(DDI)Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    .line 5
    new-instance v2, Lcom/autonavi/amap/mapcore/DPoint;

    iget-wide v3, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    iget-wide v5, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    .line 6
    iput-object v2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->geoPoint:Lcom/autonavi/amap/mapcore/DPoint;

    .line 7
    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->zoom:F

    .line 8
    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bearing:F

    .line 9
    iget v1, p0, Lcom/amap/api/maps/model/CameraPosition;->tilt:F

    iput v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->tilt:F

    .line 10
    iput-object p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->cameraPosition:Lcom/amap/api/maps/model/CameraPosition;

    :cond_1
    :goto_0
    return-object v0
.end method

.method public static g(Lcom/amap/api/maps/model/LatLng;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 2
    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/h;->f(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p0

    return-object p0
.end method

.method public static h(Lcom/amap/api/maps/model/LatLng;F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/api/maps/model/CameraPosition;->builder()Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->target(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->zoom(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    const/high16 p1, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->bearing(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/amap/api/maps/model/CameraPosition$Builder;->tilt(F)Lcom/amap/api/maps/model/CameraPosition$Builder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/amap/api/maps/model/CameraPosition$Builder;->build()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p0

    .line 3
    invoke-static {p0}, Lcom/amap/api/mapcore/util/h;->f(Lcom/amap/api/maps/model/CameraPosition;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p0

    return-object p0
.end method

.method public static i(Lcom/amap/api/maps/model/LatLngBounds;I)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/d;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput-object p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 4
    iput p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingLeft:I

    .line 5
    iput p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingRight:I

    .line 6
    iput p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingTop:I

    .line 7
    iput p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingBottom:I

    return-object v0
.end method

.method public static j(Lcom/amap/api/maps/model/LatLngBounds;III)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/d;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newLatLngBoundsWithSize:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput-object p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 4
    iput p3, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingLeft:I

    .line 5
    iput p3, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingRight:I

    .line 6
    iput p3, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingTop:I

    .line 7
    iput p3, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingBottom:I

    .line 8
    iput p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->width:I

    .line 9
    iput p2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->height:I

    return-object v0
.end method

.method public static k(Lcom/amap/api/maps/model/LatLngBounds;IIII)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/d;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/d;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newLatLngBounds:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput-object p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bounds:Lcom/amap/api/maps/model/LatLngBounds;

    .line 4
    iput p1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingLeft:I

    .line 5
    iput p2, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingRight:I

    .line 6
    iput p3, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingTop:I

    .line 7
    iput p4, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->paddingBottom:I

    return-object v0
.end method

.method public static l()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/g;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/g;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->zoomBy:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    const/high16 v1, -0x40800000    # -1.0f

    .line 3
    iput v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->amount:F

    return-object v0
.end method

.method public static m(F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/amap/api/mapcore/util/h;->d(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p0

    return-object p0
.end method

.method public static n(FLandroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 6

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/e;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    new-instance v1, Lcom/autonavi/amap/mapcore/DPoint;

    iget v2, p1, Landroid/graphics/Point;->x:I

    int-to-double v2, v2

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-double v4, p1

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    .line 4
    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->geoPoint:Lcom/autonavi/amap/mapcore/DPoint;

    .line 5
    iput p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bearing:F

    return-object v0
.end method

.method public static o()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 1

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/e;-><init>()V

    return-object v0
.end method

.method public static p(F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/e;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->tilt:F

    return-object v0
.end method

.method public static q(F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
    .locals 2

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/e;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/e;-><init>()V

    .line 2
    sget-object v1, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;->newCameraPosition:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    iput-object v1, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->nowType:Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage$Type;

    .line 3
    iput p0, v0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->bearing:F

    return-object v0
.end method
