.class public Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;
.super Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3HpChecker;
.source "SourceFile"


# instance fields
.field private final allModels:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;->allModels:Ljava/util/List;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p2, :cond_1

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1
    return-void
.end method


# virtual methods
.method protected calculateResult(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z
    .locals 5

    if-eqz p3, :cond_0

    .line 1
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    goto :goto_0

    .line 2
    :cond_0
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->WheelPressLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    .line 3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;->allModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    .line 4
    instance-of v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    .line 5
    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    invoke-virtual {v1, p1, p2, p3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->i(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    .line 6
    :cond_2
    invoke-virtual {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v4

    :cond_3
    return v2
.end method

.method protected isEmpty()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/HpPressDashLineCalculator;->allModels:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method
