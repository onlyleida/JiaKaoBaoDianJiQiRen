.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101100_Event;
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

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 2
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->threeTouchStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 4
    :cond_0
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->thereTouchStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->startTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return v0

    .line 5
    :cond_1
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    add-int/2addr v2, v0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_2

    .line 6
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 7
    :cond_2
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->thereTouchStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->startTime:J

    sub-long/2addr p2, v2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    cmp-long v4, p2, v2

    if-gtz v4, :cond_4

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->thereTouchStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p2, :cond_3

    goto :goto_0

    :cond_3
    return v0

    .line 8
    :cond_4
    :goto_0
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 9
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->threeTouchStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
