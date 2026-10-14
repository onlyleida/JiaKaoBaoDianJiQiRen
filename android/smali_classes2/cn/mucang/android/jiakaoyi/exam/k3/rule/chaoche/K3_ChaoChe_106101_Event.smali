.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106101_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 2
    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 4
    :cond_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, v1, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 6
    :cond_1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p1, p2, :cond_2

    return v0

    .line 8
    :cond_2
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p1, p2, :cond_3

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p1, p2, :cond_4

    :cond_3
    const/4 p1, 0x0

    return p1

    :cond_4
    return v0
.end method
