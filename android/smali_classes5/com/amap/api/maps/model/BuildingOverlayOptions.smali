.class public Lcom/amap/api/maps/model/BuildingOverlayOptions;
.super Lcom/amap/api/maps/model/BaseOptions;
.source "SourceFile"


# instance fields
.field private buildingHeight:I

.field private buildingHeightScale:I

.field private buildingLatlngs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private buildingLatlngsPoints:[I

.field private buildingSideColor:I

.field private buildingTopColor:I

.field private isVisible:Z

.field private zindex:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOptions;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingHeight:I

    const/4 v0, 0x1

    .line 3
    iput v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingHeightScale:I

    const v1, -0x777778

    .line 4
    iput v1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingTopColor:I

    .line 5
    iput v1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingSideColor:I

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->isVisible:Z

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngs:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getBuildingHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingHeight:I

    return v0
.end method

.method public getBuildingHeightScale()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingHeightScale:I

    return v0
.end method

.method public getBuildingLatlngs()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngs:Ljava/util/List;

    return-object v0
.end method

.method public getBuildingSideColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingSideColor:I

    return v0
.end method

.method public getBuildingTopColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingTopColor:I

    return v0
.end method

.method public getPoints()[I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngs:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    const/4 v2, 0x0

    .line 3
    :goto_0
    iget-object v3, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 4
    iget-object v3, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngs:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    .line 5
    iget-wide v4, v3, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v6, v3, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v3, 0x14

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v3

    add-int/lit8 v4, v2, 0x1

    .line 6
    iget v5, v3, Landroid/graphics/Point;->x:I

    aput v5, v0, v2

    add-int/lit8 v2, v4, 0x1

    .line 7
    iget v3, v3, Landroid/graphics/Point;->y:I

    aput v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0

    :cond_1
    new-array v0, v1, [I

    return-object v0
.end method

.method public getZIndex()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->zindex:F

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->isVisible:Z

    return v0
.end method

.method public setBuildingHeight(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingHeight:I

    return-object p0
.end method

.method public setBuildingHeightScale(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingHeightScale:I

    return-object p0
.end method

.method public setBuildingLatlngs(Ljava/util/List;)Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)",
            "Lcom/amap/api/maps/model/BuildingOverlayOptions;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngs:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngsPoints:[I

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    .line 6
    iget-wide v3, v2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v5, v2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    const/16 v2, 0x14

    invoke-static {v3, v4, v5, v6, v2}, Lcom/autonavi/amap/mapcore/VirtualEarthProjection;->latLongToPixels(DDI)Landroid/graphics/Point;

    move-result-object v2

    .line 7
    iget-object v3, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingLatlngsPoints:[I

    add-int/lit8 v4, v1, 0x1

    iget v5, v2, Landroid/graphics/Point;->x:I

    aput v5, v3, v1

    add-int/lit8 v1, v4, 0x1

    .line 8
    iget v2, v2, Landroid/graphics/Point;->y:I

    aput v2, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public setBuildingSideColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingSideColor:I

    return-object p0
.end method

.method public setBuildingTopColor(I)Lcom/amap/api/maps/model/BuildingOverlayOptions;
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->buildingTopColor:I

    return-object p0
.end method

.method public setVisible(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->isVisible:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/maps/model/BuildingOverlayOptions;->zindex:F

    return-void
.end method
