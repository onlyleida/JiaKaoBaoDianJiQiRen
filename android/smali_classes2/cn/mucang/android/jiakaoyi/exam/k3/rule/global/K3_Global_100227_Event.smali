.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasDeduct:Z

.field private hasLightOn:Z

.field private isCrossLine:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasLightOn:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasDeduct:Z

    return-void
.end method

.method private checkCrossLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isStraightLine(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p5, p6, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    goto/16 :goto_4

    .line 4
    :cond_0
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz p1, :cond_2

    .line 5
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 7
    :goto_0
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_6

    .line 8
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-static {p5, p6, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    goto :goto_4

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 12
    :cond_2
    instance-of p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz p1, :cond_6

    .line 13
    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 14
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    if-eqz p1, :cond_4

    const/4 p1, 0x1

    .line 15
    :goto_1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_4

    .line 16
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    invoke-static {p5, p6, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 19
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    goto :goto_2

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 20
    :cond_4
    :goto_2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    if-nez p1, :cond_6

    .line 21
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    if-eqz p1, :cond_6

    const/4 p1, 0x1

    .line 22
    :goto_3
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ge p1, p3, :cond_6

    .line 23
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    add-int/lit8 v1, p1, -0x1

    invoke-interface {p4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    invoke-static {p5, p6, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 26
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    goto :goto_4

    :cond_5
    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 11

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object p3

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningLeft:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasLightOn:Z

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasLightOn:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasDeduct:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    if-nez v0, :cond_8

    .line 8
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    if-eqz p2, :cond_2

    .line 9
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200251:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_1

    .line 11
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 13
    :cond_1
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelRightFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_0
    move-object v10, p3

    move-object v9, v0

    .line 15
    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->leftEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->checkCrossLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 16
    :cond_2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    if-nez p2, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 17
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasDeduct:Z

    return v3

    .line 18
    :cond_3
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->turningRight:Z

    if-eqz v0, :cond_7

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasLightOn:Z

    .line 21
    :cond_4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasLightOn:Z

    if-eqz v0, :cond_8

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasDeduct:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    if-nez v0, :cond_8

    .line 22
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->bianDaoResult:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;

    if-eqz p2, :cond_6

    .line 23
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz v0, :cond_6

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200251:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    .line 25
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->lastCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 27
    :cond_5
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFront:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 28
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->wheelLeftFrontLast:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_1
    move-object v10, p3

    move-object v9, v0

    .line 29
    iget-object v6, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightStart:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/BianDaoResult;->rightEnd:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->checkCrossLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 30
    :cond_6
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    if-nez p2, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 31
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasDeduct:Z

    return v3

    .line 32
    :cond_7
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasDeduct:Z

    .line 33
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->hasLightOn:Z

    .line 34
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100227_Event;->isCrossLine:Z

    :cond_8
    return v1
.end method

.method public isStraightLine(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 3
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    .line 4
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 6
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    xor-int/lit8 p1, p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
