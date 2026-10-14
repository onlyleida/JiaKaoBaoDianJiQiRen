.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106126_Event;
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
    .locals 1

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
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 5
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->startTurningRight:Z

    if-eqz p3, :cond_2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_2

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    return p1

    :cond_2
    return v0
.end method
