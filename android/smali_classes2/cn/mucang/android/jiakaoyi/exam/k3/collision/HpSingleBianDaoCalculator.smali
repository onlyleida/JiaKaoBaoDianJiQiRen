.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;
.super Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;
.source "SourceFile"


# instance fields
.field private final allLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field

.field private volatile bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

.field private volatile frameTime:J

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;",
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

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->allLines:Ljava/util/List;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->lock:Ljava/lang/Object;

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->frameTime:J

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 9
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    if-eqz p3, :cond_2

    .line 10
    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    .line 11
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    return-void
.end method

.method private calculateBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v0, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/a;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBackLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftBack:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 2
    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 3
    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 4
    invoke-static {v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->back:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->front:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->turnValue(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double p1, v0, v2

    if-lez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-virtual {p1, p4, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftBianDao(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object p1

    return-object p1

    :cond_2
    cmpg-double p1, v0, v2

    if-gez p1, :cond_3

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-virtual {p1, p4, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightBianDao(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object p1

    return-object p1

    :cond_3
    const/4 p1, 0x0

    return-object p1
.end method

.method private calculateCurveBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ")",
            "Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    add-int/lit8 v1, v0, -0x1

    .line 2
    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    invoke-direct {p0, p1, v1, v2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getBianDaoDirection(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->allLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 2
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v2, v3, :cond_3

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 5
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    if-eqz v2, :cond_1

    .line 6
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-direct {p0, p2, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateCurveBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p2, v3, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v1

    :cond_2
    :goto_0
    move-object v4, v1

    goto :goto_2

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_7

    .line 8
    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 9
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    if-eqz v2, :cond_5

    .line 10
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-direct {p0, p2, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateCurveBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v2

    if-eqz v2, :cond_4

    return-object v2

    .line 11
    :cond_4
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-direct {p0, p2, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateCurveBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v1

    if-eqz v1, :cond_2

    return-object v1

    .line 12
    :cond_5
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p2, v3, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v2

    if-nez v2, :cond_6

    .line 13
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p0, p2, v2, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v1

    goto :goto_0

    :cond_6
    move-object v4, v2

    goto :goto_2

    :cond_7
    const/16 v3, 0x13

    if-ne v2, v3, :cond_a

    .line 14
    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    .line 15
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    invoke-direct {p0, p2, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->calculateCurveBianDao(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v2

    .line 16
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->getBianDaoDirection(Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    move-result-object v3

    .line 17
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v3, v5, :cond_8

    .line 18
    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    invoke-virtual {v1, p1, v4, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    .line 19
    :cond_8
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-ne v3, v5, :cond_9

    .line 20
    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    invoke-virtual {v1, p1, v4, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result v1

    if-nez v1, :cond_9

    :goto_1
    move-object v4, v2

    :cond_9
    if-nez v4, :cond_a

    .line 21
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v4

    :cond_a
    :goto_2
    if-eqz v4, :cond_0

    return-object v4

    .line 22
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method protected calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public calculateSingleBianDao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->frameTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->emptyResult()Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    return-object p1

    .line 7
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->lock:Ljava/lang/Object;

    monitor-enter v1

    .line 9
    :try_start_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->frameTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    cmp-long v6, v2, v4

    if-nez v6, :cond_3

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    monitor-exit v1

    return-object p1

    .line 11
    :cond_3
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->getBianDaoDirection(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->frameTime:J

    .line 13
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    return-object p1

    :catchall_0
    move-exception p1

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public getBianDaoDirection(Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;
    .locals 2

    .line 23
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    if-eqz p1, :cond_1

    .line 24
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz v1, :cond_0

    .line 25
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->LeftBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    goto :goto_0

    .line 26
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz p1, :cond_1

    .line 27
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;->RightBianDao:Lcn/mucang/android/jiakaoyi/exam/k3/collision/BianDaoDirection;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpSingleBianDaoCalculator;->allLines:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public turnValue(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 2
    invoke-virtual {p3, p4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 3
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p3

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    mul-double p3, p3, p1

    return-wide p3
.end method
