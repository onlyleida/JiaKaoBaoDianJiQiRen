.class public Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$c;,
        Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;,
        Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;,
        Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;
    }
.end annotation


# instance fields
.field private STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

.field private baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

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

.field private moveListener:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;

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
.method public constructor <init>(Lcom/amap/api/maps/AMap;Lcom/amap/api/maps/model/BasePointOverlay;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x2710

    .line 2
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->duration:J

    const-wide/16 v0, 0x14

    .line 3
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mStepDuration:J

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->totalDistance:D

    .line 7
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->remainDistance:D

    .line 8
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mLock:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->useDefaultDescriptor:Z

    .line 12
    new-instance v2, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    sget-object v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->a:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    iput-object v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAnimationBeginTime:J

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 15
    :cond_0
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    .line 16
    new-instance p1, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v4, 0x1

    const/4 v5, 0x2

    const-wide/16 v6, 0x5

    sget-object v8, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/SynchronousQueue;

    invoke-direct {v9}, Ljava/util/concurrent/SynchronousQueue;-><init>()V

    new-instance v10, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;

    invoke-direct {v10, p0, v0}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$b;-><init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$1;)V

    move-object v3, p1

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    .line 17
    iput-object p2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic access$200(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAnimationBeginTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAnimationBeginTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    return-object p0
.end method

.method static synthetic access$302(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;)Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    return-object p1
.end method

.method static synthetic access$400(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    return p0
.end method

.method static synthetic access$500(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)Ljava/util/LinkedList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic access$600(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$700(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;J)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->getCurPosition(J)Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)Lcom/amap/api/maps/model/BasePointOverlay;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    return-object p0
.end method

.method static synthetic access$900(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mStepDuration:J

    return-wide v0
.end method

.method private getCurPosition(J)Lcom/autonavi/amap/mapcore/IPoint;
    .locals 10

    .line 1
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->duration:J

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    cmp-long v6, p1, v0

    if-lez v6, :cond_1

    .line 2
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    new-instance p1, Lcom/autonavi/amap/mapcore/IPoint;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/IPoint;-><init>()V

    .line 4
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result p2

    sub-int/2addr p2, v5

    iput p2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    .line 5
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v0, p2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/amap/api/maps/model/LatLng;

    .line 6
    iget v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    sub-int/2addr v0, v5

    iput v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    .line 7
    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    .line 8
    iput-wide v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->remainDistance:D

    .line 9
    iget-wide v0, p2, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v2, p2, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v0, v1, v2, v3, p1}, Lcom/autonavi/amap/mapcore/MapProjection;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 10
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->moveListener:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;

    if-eqz p2, :cond_0

    .line 11
    iget-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->remainDistance:D

    invoke-interface {p2, v0, v1}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;->move(D)V

    :cond_0
    return-object p1

    :cond_1
    long-to-double p1, p1

    .line 12
    iget-wide v6, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->totalDistance:D

    mul-double p1, p1, v6

    long-to-double v0, v0

    div-double/2addr p1, v0

    sub-double/2addr v6, p1

    .line 13
    iput-wide v6, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->remainDistance:D

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x0

    .line 14
    :goto_0
    iget-object v7, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v7}, Ljava/util/LinkedList;->size()I

    move-result v7

    if-ge v6, v7, :cond_4

    .line 15
    iget-object v7, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

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
    iget p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    if-eq v4, p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->moveListener:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;

    if-eqz p1, :cond_5

    .line 18
    iget-wide v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->remainDistance:D

    invoke-interface {p1, v2, v3}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;->move(D)V

    .line 19
    :cond_5
    iput v4, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    .line 20
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {p1, v4}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;

    .line 21
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

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

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_6

    .line 29
    invoke-direct {p0, v2, v3}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->getRotate(Lcom/autonavi/amap/mapcore/IPoint;Lcom/autonavi/amap/mapcore/IPoint;)F

    move-result p1

    .line 30
    iget-object p2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    if-eqz p2, :cond_6

    .line 31
    invoke-virtual {p2}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 32
    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    const/high16 v6, 0x43b40000    # 360.0f

    sub-float/2addr v6, p1

    iget p1, p2, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v6, p1

    invoke-virtual {v3, v6}, Lcom/amap/api/maps/model/BasePointOverlay;->setRotateAngle(F)V

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
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->c:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->d:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    if-ne v0, v1, :cond_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->exitFlag:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    iget-wide v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mStepDuration:J

    const-wide/16 v3, 0x14

    add-long/2addr v1, v3

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3}, Ljava/util/concurrent/ExecutorService;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    .line 4
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/BasePointOverlay;->setAnimation(Lcom/amap/api/maps/model/animation/Animation;)V

    .line 5
    sget-object v0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->a:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 6
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->removeMarker()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 4
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 6
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

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    return v0
.end method

.method public getObject()Lcom/amap/api/maps/model/BasePointOverlay;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    return-object v0
.end method

.method public getPosition()Lcom/amap/api/maps/model/LatLng;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BasePointOverlay;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeMarker()V
    .locals 1

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->reset()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BasePointOverlay;->remove()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 6
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public resetIndex()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    return-void
.end method

.method public setMoveListener(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->moveListener:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$MoveListener;

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
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mLock:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p1, :cond_4

    .line 2
    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    goto/16 :goto_3

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->stopMove()V

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

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
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->clear()V

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->totalDistance:D

    const/4 p1, 0x0

    const/4 v1, 0x0

    .line 9
    :goto_1
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_3

    .line 10
    iget-object v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v2, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/model/LatLng;

    iget-object v3, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/model/LatLng;

    invoke-static {v2, v3}, Lcom/amap/api/maps/AMapUtils;->calculateLineDistance(Lcom/amap/api/maps/model/LatLng;Lcom/amap/api/maps/model/LatLng;)F

    move-result v2

    float-to-double v2, v2

    .line 11
    iget-object v4, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->eachDistance:Ljava/util/LinkedList;

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 12
    iget-wide v4, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->totalDistance:D

    add-double/2addr v4, v2

    iput-wide v4, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->totalDistance:D

    goto :goto_1

    .line 13
    :cond_3
    iget-wide v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->totalDistance:D

    iput-wide v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->remainDistance:D

    .line 14
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v1, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/model/LatLng;

    .line 15
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    invoke-virtual {v1, p1}, Lcom/amap/api/maps/model/BasePointOverlay;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 16
    invoke-direct {p0}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 18
    :goto_2
    monitor-exit v0

    return-void

    .line 19
    :cond_4
    :goto_3
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    .line 20
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public setPosition(Lcom/amap/api/maps/model/LatLng;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/BasePointOverlay;->setPosition(Lcom/amap/api/maps/model/LatLng;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setRotate(F)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAMap:Lcom/amap/api/maps/AMap;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/maps/AMap;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    const/high16 v2, 0x43b40000    # 360.0f

    sub-float/2addr v2, p1

    iget p1, v0, Lcom/amap/api/maps/model/CameraPosition;->bearing:F

    add-float/2addr v2, p1

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/BasePointOverlay;->setRotateAngle(F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public setTotalDuration(I)V
    .locals 2

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    .line 1
    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->duration:J

    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->baseOverlay:Lcom/amap/api/maps/model/BasePointOverlay;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/BasePointOverlay;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public startSmoothMove()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->d:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->c:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->pauseMillis:J

    sub-long/2addr v0, v2

    .line 4
    iget-wide v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAnimationBeginTime:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mAnimationBeginTime:J

    return-void

    .line 5
    :cond_0
    sget-object v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->a:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->e:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    if-ne v0, v1, :cond_3

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->points:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->index:I

    .line 8
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->mThreadPools:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$c;-><init>(Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$1;)V

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
    iget-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    sget-object v1, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->c:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;->d:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    iput-object v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->STATUS:Lcom/amap/api/maps/utils/overlay/MovingPointOverlay$a;

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/amap/api/maps/utils/overlay/MovingPointOverlay;->pauseMillis:J

    :cond_0
    return-void
.end method
