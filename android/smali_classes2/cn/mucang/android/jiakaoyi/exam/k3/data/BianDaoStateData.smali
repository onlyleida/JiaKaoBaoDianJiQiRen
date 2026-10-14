.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

.field public isFinishTurnLight:Z

.field public isOnlyCheckTurnLight:Z

.field private leftLightStartTime:J

.field private rightLightStartTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isOnlyCheckTurnLight:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-direct {v0, p1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    return-void
.end method


# virtual methods
.method public beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isOnlyCheckTurnLight:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isOnlyCheckTurnLight:Z

    if-eqz p2, :cond_7

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_0

    .line 6
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->leftLightStartTime:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_1

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->leftLightStartTime:J

    goto :goto_0

    .line 8
    :cond_0
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->leftLightStartTime:J

    .line 9
    :cond_1
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->rightLightStartTime:J

    cmp-long v2, p2, v0

    if-nez v2, :cond_3

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->rightLightStartTime:J

    goto :goto_1

    .line 12
    :cond_2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->rightLightStartTime:J

    .line 13
    :cond_3
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_5

    .line 14
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    if-nez p2, :cond_4

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->leftLightStartTime:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->leftLightStartTime:J

    sub-long/2addr v2, v4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v4, p2

    cmp-long p2, v2, v4

    if-lez p2, :cond_4

    .line 15
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    .line 16
    :cond_4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    if-nez p2, :cond_7

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->rightLightStartTime:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->rightLightStartTime:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    .line 17
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    goto :goto_2

    :cond_5
    if-ne p2, p3, :cond_6

    .line 18
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    if-nez p2, :cond_7

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->rightLightStartTime:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->rightLightStartTime:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    .line 19
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    goto :goto_2

    :cond_6
    const/4 v2, 0x2

    if-ne p2, v2, :cond_7

    .line 20
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    if-nez p2, :cond_7

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->leftLightStartTime:J

    cmp-long p2, v2, v0

    if-lez p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->leftLightStartTime:J

    sub-long/2addr p1, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BianDaoStepConfig;->p205127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    cmp-long v2, p1, v0

    if-lez v2, :cond_7

    .line 21
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->isFinishTurnLight:Z

    :cond_7
    :goto_2
    return-void
.end method
