.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasOn:Z

.field private hasQiang:Z

.field private lightSuccessOnce:Z

.field private runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasOn:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasQiang:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 11

    .line 1
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v2

    .line 5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const-wide/16 v5, 0x0

    if-nez v4, :cond_1

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasQiang:Z

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 6
    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    cmp-long v2, v7, v5

    if-lez v2, :cond_1

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    cmp-long v2, v7, v9

    if-gez v2, :cond_1

    .line 7
    sput-boolean v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/QiangZhiLing;->isQiang:Z

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasQiang:Z

    .line 8
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    if-eqz p3, :cond_4

    .line 10
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->lightSuccessOnce:Z

    if-eqz p3, :cond_3

    .line 11
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightMaxTime:J

    cmp-long p3, p1, v5

    if-lez p3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 12
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    :cond_4
    return v1

    .line 13
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasOn:Z

    .line 15
    :cond_6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-nez v3, :cond_8

    .line 16
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne p1, p2, :cond_b

    .line 17
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 18
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->lightSuccessOnce:Z

    if-eqz p1, :cond_7

    .line 19
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasOn:Z

    return p1

    :cond_7
    return v2

    :cond_8
    if-ne v3, v1, :cond_9

    .line 20
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_b

    .line 21
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 22
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasOn:Z

    return p1

    :cond_9
    const/4 p3, 0x2

    if-ne v3, p3, :cond_b

    .line 23
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    if-nez p3, :cond_a

    .line 24
    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    invoke-direct {p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    .line 25
    :cond_a
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 26
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 27
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->hasOn:Z

    return p1

    :cond_b
    return v1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109100_Event;->lightSuccessOnce:Z

    return-void
.end method
