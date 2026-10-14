.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

.field private brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

.field private footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->checkPlayVoice(Z)V

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeDeduct(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 7
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeDeduct()Z

    move-result p1

    return p1

    :cond_2
    return p2
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    const/4 v0, 0x0

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;-><init>(F)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->brakeChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->Companion:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;->isSpecialStep()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 5
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    .line 6
    :cond_0
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz p2, :cond_1

    .line 7
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 8
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->BrakePoint:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    goto :goto_0

    .line 9
    :cond_1
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->Distance:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    .line 10
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr p1, v2

    invoke-direct {v1, p3, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;-><init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;FLcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;F)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/school/K3_School_114100_Event;->brakeSlowDownChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;

    return-void
.end method
