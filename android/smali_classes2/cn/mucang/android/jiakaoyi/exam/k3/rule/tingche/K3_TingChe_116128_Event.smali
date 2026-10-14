.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116128_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

.field public isFinishThreeTouch:Z

.field private lastDoorClose:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne v1, v2, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    if-eqz v1, :cond_0

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116128_Event;->globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Z)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116128_Event;->globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116128_Event;->globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 8
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->OpenDoor:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne p1, p2, :cond_1

    .line 9
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116128_Event;->globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    return v2
.end method
