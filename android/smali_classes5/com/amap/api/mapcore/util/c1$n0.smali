.class Lcom/amap/api/mapcore/util/c1$n0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "n0"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/q;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isIndoorEnable()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_7

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/e4;->H()Lcom/amap/api/mapcore/util/c4;

    move-result-object v0

    const/high16 v1, 0x41a00000    # 20.0f

    const/4 v2, 0x0

    if-nez p1, :cond_6

    .line 4
    :try_start_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    .line 5
    :goto_0
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 6
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-interface {v4, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception v3

    .line 7
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    if-eqz v3, :cond_2

    const/4 v4, 0x0

    .line 9
    iput-object v4, v3, Lcom/amap/api/mapcore/util/q;->e:Landroid/graphics/Point;

    .line 10
    :cond_2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c4;->s()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    new-instance v4, Lcom/amap/api/mapcore/util/c1$n0$a;

    invoke-direct {v4, p0, v0}, Lcom/amap/api/mapcore/util/c1$n0$a;-><init>(Lcom/amap/api/mapcore/util/c1$n0;Lcom/amap/api/mapcore/util/c4;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 12
    :cond_3
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v4

    goto :goto_1

    :cond_4
    const/high16 v4, 0x41a00000    # 20.0f

    :goto_1
    iput v4, v3, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    .line 13
    :try_start_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c1;->P0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/c;->isZoomControlsEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 14
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_5

    const/4 v3, 0x0

    .line 15
    :goto_2
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 16
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v5, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v5, v5, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v5}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v5

    invoke-interface {v4, v5}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_5
    return-void

    :catchall_1
    move-exception v3

    .line 17
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_6
    if-eqz p1, :cond_8

    .line 18
    iget-object v3, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    if-eqz v3, :cond_8

    iget-object v4, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    if-eqz v4, :cond_8

    .line 19
    array-length v3, v3

    array-length v4, v4

    if-ne v3, v4, :cond_8

    const/4 v3, 0x0

    .line 20
    :goto_3
    iget-object v4, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    array-length v5, v4

    if-ge v3, v5, :cond_8

    .line 21
    iget v5, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    aget v4, v4, v3

    if-ne v5, v4, :cond_7

    .line 22
    iget-object v4, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    aget-object v3, v4, v3

    iput-object v3, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    goto :goto_4

    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-eqz p1, :cond_9

    .line 23
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    if-eqz v3, :cond_9

    iget v3, v3, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    iget v4, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    if-eq v3, v4, :cond_9

    .line 24
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c4;->s()Z

    move-result v3

    if-eqz v3, :cond_9

    return-void

    :cond_9
    if-eqz p1, :cond_c

    .line 25
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    if-eqz v3, :cond_a

    iget-object v3, v3, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    iget-object v4, p1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->poiid:Ljava/lang/String;

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/q;->e:Landroid/graphics/Point;

    if-nez v3, :cond_c

    .line 27
    :cond_a
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iput-object p1, v3, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    .line 28
    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v3, :cond_c

    .line 29
    iget-object v3, p1, Lcom/amap/api/mapcore/util/q;->e:Landroid/graphics/Point;

    if-nez v3, :cond_b

    .line 30
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    iput-object v3, p1, Lcom/amap/api/mapcore/util/q;->e:Landroid/graphics/Point;

    .line 31
    :cond_b
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapGeoCenter()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v3

    if-eqz v3, :cond_c

    .line 32
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/c1;->Z:Lcom/amap/api/mapcore/util/q;

    iget-object v4, v4, Lcom/amap/api/mapcore/util/q;->e:Landroid/graphics/Point;

    iget-wide v5, v3, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    double-to-int v5, v5

    iput v5, v4, Landroid/graphics/Point;->x:I

    .line 33
    iget-wide v5, v3, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    double-to-int v3, v5

    iput v3, v4, Landroid/graphics/Point;->y:I

    .line 34
    :cond_c
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    const/4 v3, 0x0

    .line 35
    :goto_5
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_d

    .line 36
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->O0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;

    invoke-interface {v4, p1}, Lcom/amap/api/maps/AMap$OnIndoorBuildingActiveListener;->OnIndoorBuilding(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 37
    :cond_d
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isSetLimitZoomLevel()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMaxZoomLevel()F

    move-result v1

    :cond_e
    iput v1, p1, Lcom/autonavi/base/amap/mapcore/MapConfig;->maxZoomLevel:F

    .line 38
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->P0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c;->isZoomControlsEnabled()Z

    move-result p1

    if-eqz p1, :cond_f

    .line 39
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_f

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_f

    const/4 p1, 0x0

    .line 40
    :goto_6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_f

    .line 41
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->Q0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v3, v3, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v3

    invoke-interface {v1, v3}, Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;->invalidateZoomController(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_6

    .line 42
    :cond_f
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->P0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c;->isIndoorSwitchEnabled()Z

    move-result p1

    if-eqz p1, :cond_11

    .line 43
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c4;->s()Z

    move-result p1

    if-nez p1, :cond_10

    .line 44
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->P0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/c;->setIndoorSwitchEnabled(Z)V

    .line 45
    :cond_10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    new-instance v1, Lcom/amap/api/mapcore/util/c1$n0$b;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/c1$n0$b;-><init>(Lcom/amap/api/mapcore/util/c1$n0;Lcom/amap/api/mapcore/util/c4;)V

    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_7

    .line 46
    :cond_11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->P0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c;->isIndoorSwitchEnabled()Z

    move-result p1

    if-nez p1, :cond_12

    .line 47
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c4;->s()Z

    move-result p1

    if-eqz p1, :cond_12

    .line 48
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$n0;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->P0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/c;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore/util/c;->setIndoorSwitchEnabled(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    return-void

    :catchall_2
    move-exception p1

    .line 49
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    :goto_7
    return-void
.end method
