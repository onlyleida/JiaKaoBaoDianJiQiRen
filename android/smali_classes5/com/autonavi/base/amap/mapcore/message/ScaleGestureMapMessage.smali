.class public Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;
.super Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;
.source "SourceFile"


# static fields
.field private static final M_POOL:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool<",
            "Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public pivotX:I

.field public pivotY:I

.field public scaleDelta:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->M_POOL:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    return-void
.end method

.method public constructor <init>(IFII)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;-><init>(I)V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->scaleDelta:F

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->pivotX:I

    .line 4
    iput v0, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->pivotY:I

    .line 5
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->setParams(IFII)V

    return-void
.end method

.method public static destory()V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->M_POOL:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SimplePool;->destory()V

    return-void
.end method

.method public static obtain(IFII)Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->M_POOL:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;-><init>(IFII)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->reset()V

    .line 4
    invoke-direct {v0, p0, p1, p2, p3}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->setParams(IFII)V

    :goto_0
    return-object v0
.end method

.method private setMapZoomer(Lcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->scaleDelta:F

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->getMapZoomer()F

    move-result v1

    add-float/2addr v1, v0

    .line 3
    invoke-virtual {p1, v1}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapZoomer(F)V

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    return-void
.end method

.method private setParams(IFII)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->setState(I)V

    .line 2
    iput p2, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->scaleDelta:F

    .line 3
    iput p3, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->pivotX:I

    .line 4
    iput p4, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->pivotY:I

    return-void
.end method


# virtual methods
.method public getType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public recycle()V
    .locals 1

    .line 1
    sget-object v0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->M_POOL:Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;

    invoke-virtual {v0, p0}, Lcom/autonavi/ae/gmap/maploader/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    return-void
.end method

.method public runCameraUpdate(Lcom/autonavi/base/ae/gmap/GLMapState;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isUseAnchor:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->setMapZoomer(Lcom/autonavi/base/ae/gmap/GLMapState;)V

    return-void

    .line 3
    :cond_0
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->pivotX:I

    .line 4
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->pivotY:I

    .line 5
    iget-boolean v2, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->isGestureScaleByMapCenter:Z

    if-eqz v2, :cond_1

    .line 6
    iget v0, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->width:I

    shr-int/lit8 v0, v0, 0x1

    .line 7
    iget v1, p0, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->height:I

    shr-int/lit8 v1, v1, 0x1

    :cond_1
    const/4 v2, 0x0

    if-gtz v0, :cond_3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    move-object v3, v2

    goto :goto_1

    .line 8
    :cond_3
    :goto_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v2

    .line 9
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v3

    .line 10
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->win2geo(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    .line 11
    iget v4, v2, Landroid/graphics/Point;->x:I

    int-to-double v4, v4

    iget v6, v2, Landroid/graphics/Point;->y:I

    int-to-double v6, v6

    invoke-virtual {p1, v4, v5, v6, v7}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    .line 12
    :goto_1
    invoke-direct {p0, p1}, Lcom/autonavi/base/amap/mapcore/message/ScaleGestureMapMessage;->setMapZoomer(Lcom/autonavi/base/ae/gmap/GLMapState;)V

    if-gtz v0, :cond_4

    if-lez v1, :cond_6

    .line 13
    :cond_4
    invoke-virtual {p0, p1, v0, v1, v3}, Lcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;->win2geo(Lcom/autonavi/base/ae/gmap/GLMapState;IILcom/autonavi/amap/mapcore/IPoint;)V

    if-eqz v2, :cond_5

    .line 14
    iget v0, v2, Landroid/graphics/Point;->x:I

    mul-int/lit8 v0, v0, 0x2

    iget v1, v3, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, v1

    int-to-double v0, v0

    iget v4, v2, Landroid/graphics/Point;->y:I

    mul-int/lit8 v4, v4, 0x2

    iget v5, v3, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    int-to-double v4, v4

    invoke-virtual {p1, v0, v1, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapState;->setMapGeoCenter(DD)V

    .line 15
    :cond_5
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/GLMapState;->recalculate()V

    :cond_6
    if-eqz v2, :cond_7

    .line 16
    invoke-virtual {v2}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_7
    if-eqz v3, :cond_8

    .line 17
    invoke-virtual {v3}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_8
    return-void
.end method
