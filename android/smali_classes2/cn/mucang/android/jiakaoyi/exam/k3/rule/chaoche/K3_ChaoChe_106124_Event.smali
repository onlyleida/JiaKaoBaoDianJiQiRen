.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106124_Event;
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
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 2
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 4
    :cond_0
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hadTurnRight:Z

    if-eqz p3, :cond_1

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 6
    :cond_1
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDaoIn:Z

    if-eqz p3, :cond_2

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p3, v1, :cond_2

    .line 7
    iget p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaoCheDaoInDistance:F

    const/4 v1, 0x0

    cmpl-float p3, p3, v1

    if-lez p3, :cond_2

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaoCheDaoInDistance:F

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_2

    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDao:Z

    if-eqz p1, :cond_2

    .line 9
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    :cond_2
    return v0
.end method
