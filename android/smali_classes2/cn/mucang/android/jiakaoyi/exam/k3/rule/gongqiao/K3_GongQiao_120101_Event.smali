.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

.field private footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

.field private startDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;->p220109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->checkPlayVoice(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;->p220116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeDeduct(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->startDistance:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_2

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->startDistance:F

    .line 8
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 9
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 10
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->startDistance:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;->p220110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_5

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    :cond_4
    return v0

    .line 11
    :cond_5
    :goto_0
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;->p220109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->Companion:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;->isSpecialStep()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    .line 4
    :cond_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;-><init>(F)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120101_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    return-void
.end method
