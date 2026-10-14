.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;
.super Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;
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

.field private volatile frameTime:J

.field private final lock:Ljava/lang/Object;

.field private final pressMarkLines:Ljava/util/List;
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
    .locals 3
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

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->collisionModels:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->pressMarkLines:Ljava/util/List;

    .line 4
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->lock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->frameTime:J

    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 8
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
    .locals 2

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->collisionModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 4
    invoke-virtual {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method protected isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->collisionModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public pressMarkLines(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;",
            "Z)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->pressMarkLines:Ljava/util/List;

    return-object p1

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->lock:Ljava/lang/Object;

    monitor-enter v0

    .line 5
    :try_start_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->frameTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->pressMarkLines:Ljava/util/List;

    monitor-exit v0

    return-object p1

    .line 7
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->pressMarkLines:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    if-eqz p3, :cond_3

    .line 8
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    goto :goto_0

    .line 9
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    .line 10
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->collisionModels:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 11
    invoke-virtual {v2, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 12
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->pressMarkLines:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->frameTime:J

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressCrossRoadMarkCalculator;->pressMarkLines:Ljava/util/List;

    return-object p1

    :catchall_0
    move-exception p1

    .line 16
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
