.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

.field private brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

.field private footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->checkPlayVoice(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeDeduct(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeDeduct()Z

    move-result p1

    return p1

    :cond_2
    return p2
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;-><init>(F)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    .line 3
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->Companion:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;->isSpecialStep()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    .line 5
    :cond_0
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_1

    .line 8
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->StopLine:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 10
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->Distance:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    goto :goto_0

    .line 11
    :cond_2
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->StopLineOrDistance:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    .line 12
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->BrakePoint:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    goto :goto_0

    .line 14
    :cond_4
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->Distance:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    .line 15
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    .line 16
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BanMaXianStepConfig;->p215118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {v0, p3, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;FLcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;F)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/banmaxian/K3_BanMaXian_115100_Event;->brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    return-void
.end method
