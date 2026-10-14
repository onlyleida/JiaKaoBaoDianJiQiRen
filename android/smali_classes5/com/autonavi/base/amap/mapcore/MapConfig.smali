.class public Lcom/autonavi/base/amap/mapcore/MapConfig;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/mapcore/interfaces/IMapConfig;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT_RATIO:I = 0x1

.field private static final GEO_POINT_ZOOM:I = 0x14

.field public static final MAX_ZOOM:F = 20.0f

.field public static final MAX_ZOOM_INDOOR:F = 20.0f

.field public static final MIN_ZOOM:F = 3.0f

.field public static final MSG_ACTION_ONBASEPOICLICK:I = 0x14

.field public static final MSG_ACTION_ONMAPCLICK:I = 0x13

.field public static final MSG_AUTH_FAILURE:I = 0x2

.field public static final MSG_CALLBACK_MAPLOADED:I = 0x10

.field public static final MSG_CALLBACK_ONTOUCHEVENT:I = 0xe

.field public static final MSG_CALLBACK_SCREENSHOT:I = 0xf

.field public static final MSG_CAMERAUPDATE_CHANGE:I = 0xa

.field public static final MSG_CAMERAUPDATE_FINISH:I = 0xb

.field public static final MSG_COMPASSVIEW_CHANGESTATE:I = 0xd

.field public static final MSG_INFOWINDOW_UPDATE:I = 0x12

.field public static final MSG_TILEOVERLAY_REFRESH:I = 0x11

.field public static final MSG_ZOOMVIEW_CHANGESTATE:I = 0xc

.field private static final TILE_SIZE_POW:I = 0x8


# instance fields
.field private abroadState:I

.field private anchorX:I

.field private anchorY:I

.field private volatile changeGridRatio:D

.field private volatile changeRatio:D

.field private changedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

.field private customBackgroundColor:I

.field private customTextureResourcePath:Ljava/lang/String;

.field private geoRectangle:Lcom/autonavi/base/amap/mapcore/Rectangle;

.field private gridX:I

.field private gridY:I

.field private isAbroadEnable:Z

.field private isBearingChanged:Z

.field private isBuildingEnable:Z

.field private isCenterChanged:Z

.field private isCustomStyleEnabled:Z

.field private isHideLogoEnable:Z

.field private isIndoorEnable:Z

.field private isMapTextEnable:Z

.field private isNeedUpdateMapRectNextFrame:Z

.field private isNeedUpdateZoomControllerState:Z

.field private isProFunctionAuthEnable:Z

.field private isSetLimitZoomLevel:Z

.field private isTiltChanged:Z

.field private isTouchPoiEnable:Z

.field private isTrafficEnabled:Z

.field private isUseProFunction:Z

.field private isWorldMapEnable:Z

.field private isZoomChanged:Z

.field lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

.field private limitIPoints:[Lcom/autonavi/amap/mapcore/IPoint;

.field private limitLatLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

.field private mCustomStyleID:Ljava/lang/String;

.field private mCustomStylePath:Ljava/lang/String;

.field private mMapLanguage:Ljava/lang/String;

.field private mMapStyleMode:I

.field private mMapStyleState:I

.field private mMapStyleTime:I

.field private mapEnable:Z

.field private mapGeoCenter:Lcom/autonavi/amap/mapcore/DPoint;

.field private mapHeight:I

.field private mapPerPixelUnitLength:F

.field private mapRect:[Lcom/autonavi/base/amap/mapcore/FPoint;

.field private mapWidth:I

.field private mapZoomScale:F

.field public maxZoomLevel:F

.field public minZoomLevel:F

.field mvpMatrix:[F

.field projectionMatrix:[F

.field private sC:F

.field private sR:F

.field private sX:D

.field private sY:D

.field private sZ:F

.field private skyHeight:F

.field tilsIDs:[I

.field viewMatrix:[F


# direct methods
.method public constructor <init>(Z)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    const/high16 v0, 0x40400000    # 3.0f

    .line 3
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->minZoomLevel:F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapRect:[Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 5
    new-instance v1, Lcom/autonavi/base/amap/mapcore/Rectangle;

    invoke-direct {v1}, Lcom/autonavi/base/amap/mapcore/Rectangle;-><init>()V

    iput-object v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->geoRectangle:Lcom/autonavi/base/amap/mapcore/Rectangle;

    const/4 v1, 0x0

    .line 6
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isIndoorEnable:Z

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBuildingEnable:Z

    .line 8
    iput-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isMapTextEnable:Z

    .line 9
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTrafficEnabled:Z

    .line 10
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnabled:Z

    const-wide v3, 0x41aa58b2b6000000L    # 2.21010267E8

    .line 11
    iput-wide v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    const-wide v3, 0x41983f241c000000L    # 1.01697799E8

    iput-wide v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    .line 12
    new-instance v3, Lcom/autonavi/amap/mapcore/DPoint;

    iget-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    iget-wide v6, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/autonavi/amap/mapcore/DPoint;-><init>(DD)V

    iput-object v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapGeoCenter:Lcom/autonavi/amap/mapcore/DPoint;

    const/high16 v3, 0x41200000    # 10.0f

    .line 13
    iput v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sZ:F

    const/4 v3, 0x0

    iput v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    iput v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sR:F

    .line 14
    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 15
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCenterChanged:Z

    .line 16
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isZoomChanged:Z

    .line 17
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTiltChanged:Z

    .line 18
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBearingChanged:Z

    .line 19
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    .line 20
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    .line 21
    iput v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleMode:I

    .line 22
    iput v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleTime:I

    .line 23
    iput v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleState:I

    .line 24
    iput v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->anchorX:I

    const-string v0, "zh_cn"

    .line 25
    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapLanguage:Ljava/lang/String;

    .line 26
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isHideLogoEnable:Z

    .line 27
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isWorldMapEnable:Z

    .line 28
    iput-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTouchPoiEnable:Z

    .line 29
    iput v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->abroadState:I

    .line 30
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isAbroadEnable:Z

    const/16 v0, 0x10

    new-array v4, v0, [F

    .line 31
    iput-object v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->viewMatrix:[F

    new-array v4, v0, [F

    .line 32
    iput-object v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->projectionMatrix:[F

    new-array v0, v0, [F

    .line 33
    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mvpMatrix:[F

    const/16 v0, 0x64

    new-array v0, v0, [I

    .line 34
    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->tilsIDs:[I

    .line 35
    iput-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapEnable:Z

    .line 36
    iput v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->anchorY:I

    .line 37
    iput-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable:Z

    .line 38
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isUseProFunction:Z

    const/4 v0, -0x1

    .line 39
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->customBackgroundColor:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 40
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapZoomScale:F

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 42
    iput-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    .line 43
    iput-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    .line 44
    iput v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridX:I

    .line 45
    iput v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridY:I

    if-eqz p1, :cond_0

    .line 46
    new-instance p1, Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-direct {p1, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;-><init>(Z)V

    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    .line 47
    invoke-virtual {p1, v1, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setGridXY(II)V

    .line 48
    iget-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSX(D)V

    .line 49
    iget-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSY(D)V

    .line 50
    iget-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSZ(F)V

    .line 51
    iget-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSC(F)V

    .line 52
    iget-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSR(F)V

    :cond_0
    return-void
.end method

.method private changeRatio()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    .line 3
    iget-object v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v4

    .line 4
    iget-object v5, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v5

    .line 5
    iget-object v6, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v6}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v6

    .line 6
    iget-wide v7, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    sub-double/2addr v7, v0

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-wide v7, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    sub-double/2addr v7, v2

    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    .line 7
    iget-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    const-wide/16 v7, 0x0

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v11, v0, v7

    if-nez v11, :cond_0

    move-wide v0, v9

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    mul-double v0, v0, v2

    :goto_0
    iput-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    .line 8
    iget-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    iget v11, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sZ:F

    cmpl-float v12, v4, v11

    if-nez v12, :cond_1

    move-wide v11, v9

    goto :goto_1

    :cond_1
    sub-float/2addr v4, v11

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v11, v4

    :goto_1
    mul-double v0, v0, v11

    iput-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    .line 9
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v4, v5, v0

    if-nez v4, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_2
    sub-float/2addr v5, v0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 10
    :goto_2
    iget v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sR:F

    cmpl-float v5, v6, v4

    if-nez v5, :cond_3

    goto :goto_3

    :cond_3
    sub-float/2addr v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 11
    :goto_3
    iget-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    float-to-double v11, v0

    mul-double v4, v4, v11

    iput-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    .line 12
    iget-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    float-to-double v0, v1

    mul-double v4, v4, v0

    iput-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    .line 13
    iget-object v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGridX()I

    move-result v4

    iget v5, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridX:I

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    iget-object v5, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getGridY()I

    move-result v5

    iget v6, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridY:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    int-to-double v4, v4

    iput-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    .line 14
    iget-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    cmpl-double v6, v4, v7

    if-nez v6, :cond_4

    goto :goto_4

    :cond_4
    iget-wide v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    mul-double v9, v4, v2

    :goto_4
    iput-wide v9, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    .line 15
    iget-wide v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    mul-double v2, v2, v11

    iput-wide v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    .line 16
    iget-wide v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    mul-double v2, v2, v0

    iput-wide v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    return-void
.end method


# virtual methods
.method public addChangedCounter()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    return-void
.end method

.method public getAbroadState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->abroadState:I

    return v0
.end method

.method public getAnchorX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->anchorX:I

    return v0
.end method

.method public getAnchorY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->anchorY:I

    return v0
.end method

.method public getChangeGridRatio()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeGridRatio:D

    return-wide v0
.end method

.method public getChangeRatio()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio:D

    return-wide v0
.end method

.method public getChangedCounter()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public getCurTileIds()[I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->tilsIDs:[I

    return-object v0
.end method

.method public getCustomBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->customBackgroundColor:I

    return v0
.end method

.method public getCustomStyleID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mCustomStyleID:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomStylePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mCustomStylePath:Ljava/lang/String;

    return-object v0
.end method

.method public getCustomTextureResourcePath()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->customTextureResourcePath:Ljava/lang/String;

    return-object v0
.end method

.method public getGeoRectangle()Lcom/autonavi/base/amap/mapcore/Rectangle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->geoRectangle:Lcom/autonavi/base/amap/mapcore/Rectangle;

    return-object v0
.end method

.method protected getGridX()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridX:I

    return v0
.end method

.method protected getGridY()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridY:I

    return v0
.end method

.method public getLimitIPoints()[Lcom/autonavi/amap/mapcore/IPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->limitIPoints:[Lcom/autonavi/amap/mapcore/IPoint;

    return-object v0
.end method

.method public getLimitLatLngBounds()Lcom/amap/api/maps/model/LatLngBounds;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->limitLatLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    return-object v0
.end method

.method public getMapGeoCenter()Lcom/autonavi/amap/mapcore/DPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapGeoCenter:Lcom/autonavi/amap/mapcore/DPoint;

    return-object v0
.end method

.method public getMapHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapHeight:I

    return v0
.end method

.method public getMapLanguage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getMapPerPixelUnitLength()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapPerPixelUnitLength:F

    return v0
.end method

.method public getMapRect()[Lcom/autonavi/base/amap/mapcore/FPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapRect:[Lcom/autonavi/base/amap/mapcore/FPoint;

    return-object v0
.end method

.method public getMapStyleMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleMode:I

    return v0
.end method

.method public getMapStyleState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleState:I

    return v0
.end method

.method public getMapStyleTime()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleTime:I

    return v0
.end method

.method public getMapWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapWidth:I

    return v0
.end method

.method public getMapZoomScale()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapZoomScale:F

    return v0
.end method

.method public getMaxZoomLevel()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    return v0
.end method

.method public getMinZoomLevel()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->minZoomLevel:F

    return v0
.end method

.method public getMvpMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mvpMatrix:[F

    return-object v0
.end method

.method public getProjectionMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->projectionMatrix:[F

    return-object v0
.end method

.method public getSC()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    return v0
.end method

.method public getSR()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sR:F

    return v0
.end method

.method public getSX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    return-wide v0
.end method

.method public getSY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    return-wide v0
.end method

.method public getSZ()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sZ:F

    return v0
.end method

.method public getSkyHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->skyHeight:F

    return v0
.end method

.method public getViewMatrix()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->viewMatrix:[F

    return-object v0
.end method

.method public isAbroadEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isAbroadEnable:Z

    return v0
.end method

.method public isBearingChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBearingChanged:Z

    return v0
.end method

.method public isBuildingEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBuildingEnable:Z

    return v0
.end method

.method public isCustomStyleEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnabled:Z

    return v0
.end method

.method public isHideLogoEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isHideLogoEnable:Z

    return v0
.end method

.method public isIndoorEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isIndoorEnable:Z

    return v0
.end method

.method public isMapEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapEnable:Z

    return v0
.end method

.method public isMapStateChange()Z
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_b

    .line 2
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v3

    .line 3
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v5

    .line 4
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v0

    .line 5
    iget-object v7, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v7}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSC()F

    move-result v7

    .line 6
    iget-object v8, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v8}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSR()F

    move-result v8

    .line 7
    iget-wide v9, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    cmpl-double v11, v3, v9

    if-eqz v11, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCenterChanged:Z

    .line 8
    iget-wide v11, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    cmpl-double v4, v5, v11

    if-eqz v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    iput-boolean v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCenterChanged:Z

    .line 9
    iget v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sZ:F

    cmpl-float v5, v0, v4

    if-eqz v5, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    iput-boolean v5, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isZoomChanged:Z

    if-eqz v5, :cond_5

    .line 10
    iget v6, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->minZoomLevel:F

    cmpg-float v13, v0, v6

    if-lez v13, :cond_4

    cmpg-float v6, v4, v6

    if-lez v6, :cond_4

    iget v6, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    cmpl-float v0, v0, v6

    if-gez v0, :cond_4

    cmpl-float v0, v4, v6

    if-ltz v0, :cond_3

    goto :goto_2

    .line 11
    :cond_3
    iput-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    goto :goto_3

    .line 12
    :cond_4
    :goto_2
    iput-boolean v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    .line 13
    :cond_5
    :goto_3
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    cmpl-float v0, v7, v0

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_4

    :cond_6
    const/4 v0, 0x0

    :goto_4
    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTiltChanged:Z

    .line 14
    iget v6, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sR:F

    cmpl-float v6, v8, v6

    if-eqz v6, :cond_7

    const/4 v6, 0x1

    goto :goto_5

    :cond_7
    const/4 v6, 0x0

    :goto_5
    iput-boolean v6, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBearingChanged:Z

    if-nez v3, :cond_9

    if-nez v5, :cond_9

    if-nez v0, :cond_9

    if-nez v6, :cond_9

    .line 15
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    if-eqz v0, :cond_8

    goto :goto_6

    :cond_8
    const/4 v0, 0x0

    goto :goto_7

    :cond_9
    :goto_6
    const/4 v0, 0x1

    :goto_7
    if-eqz v0, :cond_a

    .line 16
    iput-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    float-to-int v2, v4

    double-to-int v3, v9

    rsub-int/lit8 v2, v2, 0x14

    add-int/lit8 v2, v2, 0x8

    shr-int/2addr v3, v2

    double-to-int v4, v11

    shr-int v2, v4, v2

    .line 17
    invoke-virtual {p0, v3, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setGridXY(II)V

    .line 18
    invoke-direct {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->changeRatio()V

    :cond_a
    move v2, v0

    :cond_b
    const/16 v0, 0x2d

    .line 19
    iget v3, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    int-to-float v0, v0

    cmpl-float v0, v3, v0

    if-ltz v0, :cond_c

    iget v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->skyHeight:F

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_c

    return v1

    :cond_c
    return v2
.end method

.method public isMapTextEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isMapTextEnable:Z

    return v0
.end method

.method public isNeedUpdateZoomControllerState()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateZoomControllerState:Z

    return v0
.end method

.method public isProFunctionAuthEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable:Z

    return v0
.end method

.method public isSetLimitZoomLevel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    return v0
.end method

.method public isTiltChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTiltChanged:Z

    return v0
.end method

.method public isTouchPoiEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTouchPoiEnable:Z

    return v0
.end method

.method public isTrafficEnabled()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTrafficEnabled:Z

    return v0
.end method

.method public isUseProFunction()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isUseProFunction:Z

    return v0
.end method

.method public isWorldMapEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isWorldMapEnable:Z

    return v0
.end method

.method public isZoomChanged()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isZoomChanged:Z

    return v0
.end method

.method public resetChangedCounter()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->changedCounter:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    return-void
.end method

.method public resetMinMaxZoomPreference()V
    .locals 1

    const/high16 v0, 0x40400000    # 3.0f

    .line 1
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->minZoomLevel:F

    const/high16 v0, 0x41a00000    # 20.0f

    .line 2
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    return-void
.end method

.method public setAbroadEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isAbroadEnable:Z

    return-void
.end method

.method public setAbroadState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->abroadState:I

    return-void
.end method

.method public setAnchorX(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->anchorX:I

    return-void
.end method

.method public setAnchorY(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->anchorY:I

    return-void
.end method

.method public setBuildingEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isBuildingEnable:Z

    return-void
.end method

.method public setCustomBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->customBackgroundColor:I

    return-void
.end method

.method public setCustomStyleEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnabled:Z

    return-void
.end method

.method public setCustomStyleID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mCustomStyleID:Ljava/lang/String;

    return-void
.end method

.method public setCustomStylePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mCustomStylePath:Ljava/lang/String;

    return-void
.end method

.method public setCustomTextureResourcePath(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->customTextureResourcePath:Ljava/lang/String;

    return-void
.end method

.method protected setGridXY(II)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridX:I

    iget v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridY:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setGridXY(II)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridX:I

    .line 4
    iput p2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->gridY:I

    return-void
.end method

.method public setHideLogoEnble(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isHideLogoEnable:Z

    return-void
.end method

.method public setIndoorEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isIndoorEnable:Z

    return-void
.end method

.method public setLimitIPoints([Lcom/autonavi/amap/mapcore/IPoint;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->limitIPoints:[Lcom/autonavi/amap/mapcore/IPoint;

    return-void
.end method

.method public setLimitLatLngBounds(Lcom/amap/api/maps/model/LatLngBounds;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->limitLatLngBounds:Lcom/amap/api/maps/model/LatLngBounds;

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->resetMinMaxZoomPreference()V

    :cond_0
    return-void
.end method

.method public setMapEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapEnable:Z

    return-void
.end method

.method public setMapHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapHeight:I

    return-void
.end method

.method public setMapLanguage(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapLanguage:Ljava/lang/String;

    return-void
.end method

.method public setMapPerPixelUnitLength(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapPerPixelUnitLength:F

    return-void
.end method

.method public setMapRect([Lcom/autonavi/base/amap/mapcore/FPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setMapRect([Lcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapRect:[Lcom/autonavi/base/amap/mapcore/FPoint;

    return-void
.end method

.method public setMapStyleMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleMode:I

    return-void
.end method

.method public setMapStyleState(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleState:I

    return-void
.end method

.method public setMapStyleTime(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mMapStyleTime:I

    return-void
.end method

.method public setMapTextEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isMapTextEnable:Z

    return-void
.end method

.method public setMapWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapWidth:I

    return-void
.end method

.method public setMapZoomScale(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapZoomScale:F

    return-void
.end method

.method public setMaxZoomLevel(F)V
    .locals 2

    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    const/high16 p1, 0x41a00000    # 20.0f

    :cond_0
    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    const/high16 p1, 0x40400000    # 3.0f

    .line 1
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result v0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMinZoomLevel()F

    move-result p1

    :cond_2
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    .line 4
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    return-void
.end method

.method public setMinZoomLevel(F)V
    .locals 2

    const/high16 v0, 0x40400000    # 3.0f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const/high16 p1, 0x40400000    # 3.0f

    :cond_0
    const/high16 v0, 0x41a00000    # 20.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41a00000    # 20.0f

    .line 1
    :cond_1
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result p1

    :cond_2
    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel:Z

    .line 4
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->minZoomLevel:F

    return-void
.end method

.method public setProFunctionAuthEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable:Z

    return-void
.end method

.method public setSC(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSC(F)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    return-void
.end method

.method public setSR(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sR:F

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSR(F)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sR:F

    return-void
.end method

.method public setSX(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSX(D)V

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    .line 4
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapGeoCenter:Lcom/autonavi/amap/mapcore/DPoint;

    iput-wide p1, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    return-void
.end method

.method public setSY(D)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    iget-wide v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSY(D)V

    .line 3
    :cond_0
    iput-wide p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    .line 4
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mapGeoCenter:Lcom/autonavi/amap/mapcore/DPoint;

    iput-wide p1, v0, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    return-void
.end method

.method public setSZ(F)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->lastMapconfig:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_0

    .line 2
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sZ:F

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setSZ(F)V

    .line 3
    :cond_0
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sZ:F

    return-void
.end method

.method public setSkyHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->skyHeight:F

    return-void
.end method

.method public setTouchPoiEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTouchPoiEnable:Z

    return-void
.end method

.method public setTrafficEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTrafficEnabled:Z

    return-void
.end method

.method public setUseProFunction(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isUseProFunction:Z

    return-void
.end method

.method public setWorldMapEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isWorldMapEnable:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sX: "

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-wide v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sX:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sY: "

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    iget-wide v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sY:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, " sZ: "

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sZ:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " sC: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sC:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " sR: "

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->sR:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " skyHeight: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->skyHeight:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateFinalMatrix()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->mvpMatrix:[F

    iget-object v2, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->projectionMatrix:[F

    iget-object v4, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->viewMatrix:[F

    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    return-void
.end method

.method public updateMapRectNextFrame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/autonavi/base/amap/mapcore/MapConfig;->isNeedUpdateMapRectNextFrame:Z

    return-void
.end method
