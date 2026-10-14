.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101109_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundCarStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 5
    :cond_0
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundCarStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundCountError:Z

    xor-int/2addr p1, v1

    return p1

    .line 8
    :cond_1
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-nez p2, :cond_3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    return v1

    .line 9
    :cond_3
    :goto_0
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 10
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundCarStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    return p1
.end method
