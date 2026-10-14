.class public Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;,
        Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$b;,
        Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;,
        Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;
    }
.end annotation


# static fields
.field public static final MIN_OFFSET_DISTANCE:F = 5.0f


# instance fields
.field private descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private duration:J

.field private eachDistance:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private index:I

.field private mAMap:Lcom/amap/api/maps/AMap;

.field private mAnimationBeginTime:J

.field private mLock:Ljava/lang/Object;

.field private mStepDuration:J

.field private mThreadPools:Ljava/util/concurrent/ExecutorService;

.field private marker:Lcom/amap/api/maps/model/Marker;

.field private moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

.field private moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

.field private pauseMillis:J

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private remainDistance:D

.field private totalDistance:D

.field private useDefaultDescriptor:Z


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/AMap;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 2
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    const-wide/16 v0, 0x14

    .line 3
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mStepDuration:J

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    .line 7
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    .line 12
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    iput-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAnimationBeginTime:J

    .line 15
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    .line 16
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$b;

    invoke-direct {v10, v0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$b;-><init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/16 v6, 0x5

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method static synthetic access$200(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAnimationBeginTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAnimationBeginTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;)Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return p0
.end method

.method static synthetic access$500(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;J)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->getCurPosition(J)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)Lcom/amap/api/maps/model/Marker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mStepDuration:J

    return-wide v0
.end method

.method private checkMarkerIcon()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    :cond_1
    :goto_0
    return-void
.end method

.method private getCurPosition(J)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, p1, v0

    if-lez v6, :cond_1

    .line 2
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    new-instance p1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    sub-int/2addr p2, v5

    iput p2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 5
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/model/LatLng;

    .line 6
    iget v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 7
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 8
    iput-wide v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    .line 9
    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3, p1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    if-eqz p2, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    invoke-interface {p2, v0, v1}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;->move(D)V

    :cond_0
    return-object p1

    :cond_1
    long-to-double p1, p1

    .line 12
    iget-wide v6, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    mul-double p1, p1, v6

    long-to-double v0, v0

    div-double/2addr p1, v0

    sub-double/2addr v6, p1

    .line 13
    iput-wide v6, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    .line 14
    :goto_0
    iget-object v7, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 15
    iget-object v7, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v7, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    cmpl-double v9, p1, v7

    if-lez v9, :cond_2

    sub-double/2addr p1, v7

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    cmpl-double v4, v7, v2

    if-lez v4, :cond_3

    div-double v0, p1, v7

    :cond_3
    move v4, v6

    .line 16
    :cond_4
    iget p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    if-eq v4, p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    if-eqz p1, :cond_5

    .line 18
    iget-wide v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    invoke-interface {p1, v2, v3}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;->move(D)V

    .line 19
    :cond_5
    iput v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 20
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;

    .line 21
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    add-int/2addr v4, v5

    invoke-virtual {p2, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/model/LatLng;

    .line 22
    new-instance v2, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v2}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 23
    iget-wide v3, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v5, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v3, v4, v5, v6, v2}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 24
    new-instance v3, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {v3}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 25
    iget-wide v4, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v6, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v4, v5, v6, v7, v3}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 26
    iget v4, v3, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    .line 27
    iget v5, v3, Landroid/graphics/Point;->y:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v6

    .line 28
    invoke-static {p1, p2}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result p1

    const/high16 p2, 0x40a00000    # 5.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 29
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->getRotate(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)F

    move-result p1

    .line 30
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    if-eqz p2, :cond_6

    .line 31
    invoke-virtual {p2}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 32
    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v6, p1

    iget p1, p2, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v6, p1

    invoke-virtual {v3, v6}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    .line 33
    :cond_6
    new-instance p1, Lcom/autonavi/amap/mapcore/IPoint;

    iget p2, v2, Landroid/graphics/Point;->x:I

    int-to-double v6, p2

    int-to-double v3, v4

    mul-double v3, v3, v0

    add-double/2addr v6, v3

    double-to-int p2, v6

    iget v2, v2, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    int-to-double v4, v5

    mul-double v4, v4, v0

    add-double/2addr v2, v4

    double-to-int v0, v2

    invoke-direct {p1, p2, v0}, Lcom/autonavi/amap/mapcore/IPoint;-><init>(II)V

    return-object p1
.end method

.method private getRotate(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)F
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget v0, p2, Landroid/graphics/Point;->y:I

    int-to-double v0, v0

    .line 2
    iget v2, p1, Landroid/graphics/Point;->y:I

    int-to-double v2, v2

    .line 3
    iget p1, p1, Landroid/graphics/Point;->x:I

    int-to-double v4, p1

    .line 4
    iget p1, p2, Landroid/graphics/Point;->x:I

    int-to-double p1, p1

    sub-double/2addr p1, v4

    sub-double/2addr v2, v0

    .line 5
    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    div-double/2addr p1, v0

    const-wide v0, 0x4066800000000000L    # 180.0

    mul-double p1, p1, v0

    double-to-float p1, p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private reset()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->c:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->d:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    if-ne v0, v1, :cond_2

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mStepDuration:J

    const-wide/16 v3, 0x14

    add-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 4
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 6
    :cond_1
    sget-object v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->reset()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->destroy()V

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 9
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 10
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 11
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return v0
.end method

.method public getMarker()Lcom/amap/api/maps/model/Marker;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    return-object v0
.end method

.method public removeMarker()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method

.method public resetIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    return-void
.end method

.method public setDescriptor(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->recycle()V

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 4
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    :cond_1
    return-void
.end method

.method public setMoveListener(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveListener:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$MoveListener;

    return-void
.end method

.method public setPoints(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/LatLng;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_6

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_4

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->stopMove()V

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/model/LatLng;

    if-eqz v1, :cond_1

    .line 6
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    .line 11
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->eachDistance:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    goto :goto_1

    .line 13
    :cond_3
    iget-wide v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->totalDistance:D

    iput-wide v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->remainDistance:D

    .line 14
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;

    .line 15
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 17
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->checkMarkerIcon()V

    goto :goto_2

    .line 18
    :cond_4
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-nez v1, :cond_5

    .line 19
    iput-boolean v3, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    .line 20
    :cond_5
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/MarkerOptions;->belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    const-string v2, ""

    invoke-virtual {p1, v2}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {p1, v2, v2}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    .line 21
    :goto_2
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :goto_3
    monitor-exit v0

    return-void

    .line 24
    :cond_6
    :goto_4
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 25
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 3
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->checkMarkerIcon()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->useDefaultDescriptor:Z

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    new-instance v2, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v2, v1}, Lcom/amap/api/maps/model/MarkerOptions;->belowMaskLayer(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/MarkerOptions;->position(Lcom/amap/api/maps/model/LatLng;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->descriptor:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/MarkerOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    const-string v1, ""

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/MarkerOptions;->title(Ljava/lang/String;)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {p1, v1, v1}, Lcom/amap/api/maps/model/MarkerOptions;->anchor(FF)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/AMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    :goto_0
    return-void
.end method

.method public setRotate(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAMap:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, p1

    iget p1, v0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public setTotalDuration(I)V
    .locals 2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->duration:J

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->marker:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public startSmoothMove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->d:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->c:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->pauseMillis:J

    sub-long/2addr v0, v2

    .line 4
    iget-wide v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAnimationBeginTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mAnimationBeginTime:J

    return-void

    .line 5
    :cond_0
    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->a:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->e:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    if-ne v0, v1, :cond_3

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->index:I

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$c;-><init>(Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_0
    return-void
.end method

.method public stopMove()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->c:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;->d:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->moveStatus:Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker$a;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/SmoothMoveMarker;->pauseMillis:J

    :cond_0
    return-void
.end method
