.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final count:I

.field private curvature:I

.field private distanceList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private isInit:Z

.field private last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private lastGyro:F

.field private lastSpeed:F

.field private lastTime:F

.field private points:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private startGyro:F

.field private totalDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x10

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->distanceList:Ljava/util/LinkedList;

    const v0, -0x368bdc00    # -1000000.0f

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastGyro:F

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->totalDistance:F

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->count:I

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->isInit:Z

    return-void
.end method


# virtual methods
.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->isInit:Z

    return-void
.end method

.method public isStraight()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->curvature:I

    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(FFF)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    .line 1
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->isInit:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_0

    .line 2
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->startGyro:F

    .line 3
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->isInit:Z

    const/4 v1, 0x0

    .line 4
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastGyro:F

    .line 5
    iput v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastSpeed:F

    .line 6
    iput v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastTime:F

    .line 7
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->totalDistance:F

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v2, 0x0

    invoke-direct {v1, v2, v3, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return v6

    .line 11
    :cond_0
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->startGyro:F

    sub-float/2addr v1, v4

    const/high16 v4, 0x42c80000    # 100.0f

    .line 12
    iget v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastSpeed:F

    add-float/2addr v7, v2

    mul-float v7, v7, v4

    const v4, 0x40666666    # 3.6f

    div-float/2addr v7, v4

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v7, v7, v4

    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastTime:F

    sub-float v8, v3, v8

    mul-float v7, v7, v8

    const v8, 0x3a83126f    # 0.001f

    mul-float v7, v7, v8

    .line 13
    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastGyro:F

    add-float/2addr v1, v8

    mul-float v1, v1, v4

    float-to-double v8, v1

    .line 14
    invoke-static {v8, v9}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    double-to-float v4, v8

    .line 15
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v11, v7

    float-to-double v13, v4

    invoke-static {v13, v14}, Ljava/lang/Math;->cos(D)D

    move-result-wide v15

    mul-double v15, v15, v11

    add-double/2addr v9, v15

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v13, v14}, Ljava/lang/Math;->sin(D)D

    move-result-wide v13

    mul-double v11, v11, v13

    add-double/2addr v5, v11

    invoke-direct {v8, v9, v10, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 16
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    invoke-virtual {v4, v8}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->distanceList:Ljava/util/LinkedList;

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 18
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->totalDistance:F

    add-float/2addr v4, v7

    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->totalDistance:F

    .line 19
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v5, v6}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 20
    iget v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->totalDistance:F

    float-to-double v9, v9

    div-double/2addr v4, v9

    sub-double/2addr v6, v4

    const-wide v4, 0x40c3880000000000L    # 10000.0

    mul-double v6, v6, v4

    double-to-int v4, v6

    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->curvature:I

    .line 21
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    iget v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->count:I

    if-le v4, v5, :cond_1

    .line 22
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->points:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 23
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->totalDistance:F

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->distanceList:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->totalDistance:F

    .line 24
    :cond_1
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastGyro:F

    .line 26
    iput v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastSpeed:F

    .line 27
    iput v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->lastTime:F

    .line 28
    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroMap;->curvature:I

    return v1
.end method
