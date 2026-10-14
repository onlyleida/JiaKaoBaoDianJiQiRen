.class public Lcom/amap/api/mapcore/util/d;
.super Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;-><init>()V

    return-void
.end method


# virtual methods
.method public mergeCameraUpdateDelegate(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    .locals 0

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/amap/api/mapcore/IGLMapState;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;->mapConfig:Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;

    invoke-static {p0, p1, v0}, Lcom/amap/api/mapcore/util/r3;->r(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;Lcom/autonavi/amap/api/mapcore/IGLMapState;Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;)Landroid/util/Pair;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-interface {p1, v1}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapZoomer(F)V

    .line 3
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/autonavi/amap/mapcore/IPoint;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-double v1, v1

    check-cast v0, Lcom/autonavi/amap/mapcore/IPoint;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-double v3, v0

    invoke-interface {p1, v1, v2, v3, v4}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapGeoCenter(DD)V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1, v0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setCameraDegree(F)V

    .line 5
    invoke-interface {p1, v0}, Lcom/autonavi/amap/api/mapcore/IGLMapState;->setMapAngle(F)V

    return-void
.end method
