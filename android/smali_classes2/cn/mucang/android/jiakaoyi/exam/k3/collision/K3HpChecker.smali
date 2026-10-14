.class public abstract Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private volatile bodyFrameTime:J

.field private volatile bodyPressResult:Z

.field private volatile lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private volatile lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private final lockBody:Ljava/lang/Object;

.field private final lockWheel:Ljava/lang/Object;

.field private volatile wheelFrameTime:J

.field private volatile wheelPressResult:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    .line 4
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lockBody:Ljava/lang/Object;

    .line 5
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lockWheel:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyFrameTime:J

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelFrameTime:J

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    return-void
.end method


# virtual methods
.method protected abstract calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
.end method

.method public checkBody(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    return p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyFrameTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 p2, 0x0

    .line 6
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyFrameTime:J

    return p2

    .line 8
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    return p1

    .line 10
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_3

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyFrameTime:J

    .line 12
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    return p1

    .line 13
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lockBody:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyFrameTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 15
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    monitor-exit v1

    return p1

    :cond_4
    const/4 v2, 0x1

    .line 16
    invoke-virtual {p0, p1, p2, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyFrameTime:J

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 20
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->bodyPressResult:Z

    return p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public checkBodyOrWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
    .locals 0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkBody(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    return p1

    .line 2
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    return p1
.end method

.method public checkWheel(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    return p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelFrameTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    const/4 v5, 0x0

    cmp-long v6, v1, v3

    if-lez v6, :cond_1

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 6
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelFrameTime:J

    return v5

    .line 8
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    return p1

    .line 10
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_3

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelFrameTime:J

    .line 12
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    return p1

    .line 13
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lockWheel:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelFrameTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v4, v2, v6

    if-nez v4, :cond_4

    .line 15
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    monitor-exit v1

    return p1

    .line 16
    :cond_4
    invoke-virtual {p0, p1, p2, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelFrameTime:J

    .line 18
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->lastWheelDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 20
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;->wheelPressResult:Z

    return p1

    :catchall_0
    move-exception p1

    .line 21
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected abstract isEmpty()Z
.end method
