.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final collisionModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private final fullInAreaLock:Ljava/lang/Object;

.field private volatile fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

.field private volatile fullInAreaTime:J

.field private volatile lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;


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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaLock:Ljava/lang/Object;

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaTime:J

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->collisionModels:Ljava/util/List;

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 7
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 9
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public fullInArea(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->collisionModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x7d0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaTime:J

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    return-object p2

    .line 8
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 10
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v1, v2, :cond_3

    if-ne v0, v2, :cond_3

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaTime:J

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    .line 13
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaLock:Ljava/lang/Object;

    monitor-enter v1

    .line 14
    :try_start_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_4

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    monitor-exit v1

    return-object p1

    .line 16
    :cond_4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->collisionModels:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 17
    invoke-virtual {v3, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 18
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 19
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaTime:J

    .line 20
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->lastBodyDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/AreaCollisionChecker;->fullInAreaResult:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    return-object p1

    :catchall_0
    move-exception p1

    .line 23
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
