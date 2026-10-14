.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;
.super Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;
.source "SourceFile"


# instance fields
.field private volatile distance:D

.field private volatile frameTime:J

.field private final lock:Ljava/lang/Object;

.field private final stopLineModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;-><init>()V

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->distance:D

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->lock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->frameTime:J

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->stopLineModels:Ljava/util/List;

    return-void
.end method

.method private distanceToStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)D
    .locals 13

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p1

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->stopLineModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    if-lez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->stopLineModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 5
    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/k;

    .line 6
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/k;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/k;->d:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-static {p1, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->o(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 9
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v5

    .line 10
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 11
    invoke-virtual {p2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v9

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->model()D

    move-result-wide v11

    mul-double v9, v9, v11

    div-double/2addr v7, v9

    .line 12
    invoke-static {v7, v8}, Ljava/lang/Math;->acos(D)D

    move-result-wide v7

    const-wide v9, 0x4066800000000000L    # 180.0

    mul-double v7, v7, v9

    const-wide v9, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v7, v9

    const-wide v9, 0x4052c00000000000L    # 75.0

    cmpl-double v3, v7, v9

    if-lez v3, :cond_0

    const-wide v9, 0x405a400000000000L    # 105.0

    cmpg-double v3, v7, v9

    if-gez v3, :cond_0

    .line 13
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    iget-object v8, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    invoke-static {v1, v2, v7, v8}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    .line 16
    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v7, v4}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(DD)D

    move-result-wide v1

    sub-double/2addr v1, v5

    goto/16 :goto_0

    :cond_1
    return-wide v1
.end method


# virtual methods
.method public calculate(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)D
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->frameTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const-wide v0, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->distance:D

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 4
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->distance:D

    return-wide p1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 6
    :try_start_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->frameTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 7
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->distance:D

    monitor-exit v0

    return-wide p1

    .line 8
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->distanceToStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)D

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->distance:D

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->frameTime:J

    .line 10
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->distance:D

    return-wide p1

    :catchall_0
    move-exception p1

    .line 12
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method protected isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpStopLineDistanceCalculator;->stopLineModels:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
