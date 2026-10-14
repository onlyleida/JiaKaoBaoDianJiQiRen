.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_Step1;
.super Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected configDistance()F
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method protected doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->isJudgeGlobalSpeed:Z

    if-nez p3, :cond_0

    .line 3
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->Speed:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 4
    :cond_0
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightLongDistance:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 5
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightLongTime:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 6
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_Step1;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-nez p3, :cond_1

    .line 7
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_Step1;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 8
    :cond_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_Step1;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200253:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_2

    .line 9
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLight:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 10
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightError:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 11
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 12
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->LianXuBianDao:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    :cond_3
    return-void
.end method

.method protected finishVoiceTips()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method

.method protected isEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    .line 3
    iget-object p1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->TurningEND:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne p1, p2, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    const/4 v4, 0x2

    if-ne v0, v4, :cond_4

    .line 4
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->TurningEND:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-eq v0, v1, :cond_2

    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->isEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    const/4 v2, 0x1

    :cond_3
    return v2

    .line 5
    :cond_4
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->isEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method protected needVoiceTip()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method
