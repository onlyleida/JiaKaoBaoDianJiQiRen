.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;
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
.field private hasDeducted:Z

.field private hasStopped:Z

.field private lastHandbrake:Ljava/lang/Boolean;

.field private final timeFilter:Lcn/mucang/android/jiakaoyi/signal/utils/i;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->lastHandbrake:Ljava/lang/Boolean;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->hasStopped:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->hasDeducted:Z

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/utils/i;

    const-wide/16 v0, 0x1f4

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/i;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->timeFilter:Lcn/mucang/android/jiakaoyi/signal/utils/i;

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v2, 0x0

    if-gt v1, p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    if-eqz p2, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->lastHandbrake:Ljava/lang/Boolean;

    if-eqz p2, :cond_2

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-boolean p2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_2

    iget-boolean p2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez p2, :cond_2

    .line 5
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->lastHandbrake:Ljava/lang/Boolean;

    return v2

    .line 6
    :cond_2
    iget-boolean p2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->lastHandbrake:Ljava/lang/Boolean;

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x32

    if-le p2, v1, :cond_5

    .line 8
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->hasDeducted:Z

    if-eqz p2, :cond_3

    return v0

    .line 9
    :cond_3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 10
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->timeFilter:Lcn/mucang/android/jiakaoyi/signal/utils/i;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {p3, p2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b(ZJ)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->hasStopped:Z

    .line 12
    :cond_4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->hasStopped:Z

    if-eqz p2, :cond_5

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 p3, 0x3f800000    # 1.0f

    cmpl-float p2, p2, p3

    if-ltz p2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez p1, :cond_5

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116115_Event;->hasDeducted:Z

    return v2

    :cond_5
    return v0
.end method
