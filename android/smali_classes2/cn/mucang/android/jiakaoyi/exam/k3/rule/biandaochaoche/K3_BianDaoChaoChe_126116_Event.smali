.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/biandaochaoche/K3_BianDaoChaoChe_126116_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p3

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;->p226106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 4
    iget-wide v3, p3, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;->p226104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v5, v1

    cmp-long v1, v3, v5

    if-ltz v1, :cond_0

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne v1, v3, :cond_0

    .line 5
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;->p226103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v1, v2, :cond_4

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 8
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->startTurnLeft:Z

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_4

    if-eqz p3, :cond_1

    .line 9
    iget-wide p1, p3, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;->p226104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    cmp-long p3, p1, v0

    if-ltz p3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 10
    :cond_2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, v1, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 11
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    if-eqz p3, :cond_3

    .line 12
    iget-wide p1, p3, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoChaoCheStepConfig;->p226104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v0, p3

    cmp-long p3, p1, v0

    if-ltz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :cond_4
    :goto_1
    return v2
.end method
