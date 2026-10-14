.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100175_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private lastHandbrake:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100175_Event;->lastHandbrake:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->LaShouShaNoJiaoSha:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 3
    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100175_Event;->lastHandbrake:Ljava/lang/Boolean;

    return v0

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-eq p1, p2, :cond_1

    .line 5
    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100175_Event;->lastHandbrake:Ljava/lang/Boolean;

    return v0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100175_Event;->lastHandbrake:Ljava/lang/Boolean;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p1, :cond_2

    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez p1, :cond_2

    .line 7
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100175_Event;->lastHandbrake:Ljava/lang/Boolean;

    const/4 p1, 0x0

    return p1

    .line 8
    :cond_2
    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100175_Event;->lastHandbrake:Ljava/lang/Boolean;

    return v0
.end method
