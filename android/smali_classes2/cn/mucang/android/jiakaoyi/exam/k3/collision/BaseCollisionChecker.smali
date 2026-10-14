.class public abstract Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile bodyFrameTime:J

.field private volatile bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field private volatile lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private volatile lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private final lockBody:Ljava/lang/Object;

.field private final lockWheel:Ljava/lang/Object;

.field private volatile wheelFrameTime:J

.field private volatile wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lockBody:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lockWheel:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyFrameTime:J

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelFrameTime:J

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    return-void
.end method


# virtual methods
.method protected abstract calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
.end method

.method public checkBody(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyFrameTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyFrameTime:J

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    return-object p2

    .line 8
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 10
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_3

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyFrameTime:J

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 13
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lockBody:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyFrameTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    monitor-exit v1

    return-object p1

    :cond_4
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyFrameTime:J

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->checkBody(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p1

    return-object p1
.end method

.method public checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelFrameTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelFrameTime:J

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 9
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 11
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_3

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelFrameTime:J

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->bodyPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 14
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lockWheel:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelFrameTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    monitor-exit v1

    return-object p1

    :cond_4
    const/4 v2, 0x0

    .line 17
    invoke-virtual {p0, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelFrameTime:J

    .line 19
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BaseCollisionChecker;->wheelPressResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract isEmpty()Z
.end method
