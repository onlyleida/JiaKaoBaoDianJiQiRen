.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;
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


# instance fields
.field private isInit:Z

.field private k3GlobalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private lastEngineStart:Z

.field private lastKeyStarting:Z


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

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->isInit:Z

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->isInit:Z

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastKeyStarting:Z

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastEngineStart:Z

    .line 5
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->k3GlobalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    return v0

    .line 6
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    .line 7
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->k3GlobalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200235:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    .line 8
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastKeyStarting:Z

    if-nez p3, :cond_1

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    if-eqz p2, :cond_1

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-nez p2, :cond_1

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastKeyStarting:Z

    return v1

    .line 11
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastKeyStarting:Z

    return v0

    .line 12
    :cond_2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne p2, p3, :cond_3

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-nez p2, :cond_3

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastEngineStart:Z

    return v1

    .line 15
    :cond_3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastEngineStart:Z

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 16
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-nez p2, :cond_4

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastEngineStart:Z

    return v1

    .line 18
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_101110_Event;->lastEngineStart:Z

    return v0
.end method
