.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;
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
.field private hadTurnLeftLight:Z

.field private haveQiBu:Z

.field private isLight3s:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    const/4 v1, 0x1

    if-eq p2, v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->OpenDoor:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne p2, v0, :cond_a

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p2

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->hadTurnLeftLight:Z

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->isLight3s:Z

    const-wide/16 v3, 0xbb8

    const/4 v5, 0x0

    if-nez v2, :cond_3

    if-eqz p2, :cond_2

    .line 7
    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    cmp-long v2, v6, v3

    if-ltz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->isLight3s:Z

    .line 8
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v6

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 10
    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->haveQiBu:Z

    if-nez v6, :cond_4

    .line 11
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->haveQiBu:Z

    :cond_4
    if-nez v2, :cond_5

    .line 12
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 13
    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->hadTurnLeftLight:Z

    if-eqz v6, :cond_7

    .line 14
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->isLight3s:Z

    return p1

    :cond_5
    const/4 v6, 0x2

    if-ne v2, v6, :cond_7

    .line 15
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 16
    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->hadTurnLeftLight:Z

    if-eqz v6, :cond_7

    .line 17
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->isLight3s:Z

    if-eqz p1, :cond_6

    if-eqz p2, :cond_6

    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 18
    :cond_7
    iget-boolean v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->haveQiBu:Z

    if-eqz v6, :cond_a

    if-ne v2, v1, :cond_a

    if-eqz p2, :cond_8

    .line 19
    iget-boolean v2, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz v2, :cond_8

    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    cmp-long p2, v6, v3

    if-ltz p2, :cond_8

    .line 20
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 21
    :cond_8
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116125_Event;->hadTurnLeftLight:Z

    if-eqz p2, :cond_a

    .line 22
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 23
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v5

    .line 24
    :cond_9
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    :cond_a
    return v1
.end method
