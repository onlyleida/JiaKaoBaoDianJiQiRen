.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private canCheck:Z

.field private firstCheck:Z

.field private lastEngineStart:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->canCheck:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    if-eqz v0, :cond_0

    .line 3
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne p2, v0, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p2

    .line 7
    :goto_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->firstCheck:Z

    if-nez v0, :cond_3

    .line 8
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->firstCheck:Z

    if-eqz p2, :cond_3

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 10
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->lastEngineStart:Z

    return v2

    .line 11
    :cond_3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;

    .line 12
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->lastEngineStart:Z

    if-nez v0, :cond_6

    if-eqz p2, :cond_6

    .line 13
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->canCheck:Z

    if-eqz p2, :cond_9

    .line 14
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->canCheck:Z

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p3, :cond_5

    .line 16
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p3, :cond_5

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    return v1

    :cond_5
    :goto_1
    return v2

    .line 18
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->c:I

    if-le p1, p2, :cond_7

    const/4 v1, 0x1

    :cond_7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->lastEngineStart:Z

    if-eqz v1, :cond_9

    .line 20
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->canCheck:Z

    goto :goto_2

    .line 21
    :cond_8
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->lastEngineStart:Z

    .line 22
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300119_Event;->canCheck:Z

    :cond_9
    :goto_2
    return v2
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
