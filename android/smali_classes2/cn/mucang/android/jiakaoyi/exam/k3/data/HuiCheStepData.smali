.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

.field private footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

.field public hadFootBrakeOn:Z

.field public haveThanSpeed:Z

.field private initDis:D

.field public leftDis:D

.field public needCheckBrake:Z

.field private reachOffsetStartTime:J

.field public reachRightOffset:Z

.field public rightDis:D

.field public zhiXianOffset:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    .line 2
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, p1

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->initDis:D

    int-to-double v0, p1

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    int-to-double v0, p1

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->leftDis:D

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachRightOffset:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->hadFootBrakeOn:Z

    const-wide/16 v0, 0x0

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachOffsetStartTime:J

    return-void
.end method

.method private checkCarOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachRightOffset:Z

    if-nez v0, :cond_4

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    .line 3
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachRightOffset:Z

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 5
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v3, v3

    sub-double/2addr v0, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v3, 0x3f50624dd2f1a9fcL    # 0.001

    cmpl-double v5, v0, v3

    if-lez v5, :cond_4

    .line 6
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->initDis:D

    sget v5, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v5, v5

    sub-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpg-double v5, v0, v3

    if-gez v5, :cond_1

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v5

    if-lez v7, :cond_1

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->initDis:D

    .line 8
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->initDis:D

    sget v5, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v5, v5

    sub-double/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    cmpl-double v5, v0, v3

    if-lez v5, :cond_4

    .line 9
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->initDis:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    sub-double/2addr v0, v3

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-double v3, v3

    const-wide/16 v5, 0x0

    cmpl-double v7, v0, v3

    if-lez v7, :cond_3

    .line 10
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachOffsetStartTime:J

    cmp-long v3, v0, v5

    if-nez v3, :cond_2

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachOffsetStartTime:J

    .line 12
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachOffsetStartTime:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3e8

    cmp-long p1, v0, v3

    if-lez p1, :cond_4

    .line 13
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachRightOffset:Z

    goto :goto_0

    .line 14
    :cond_3
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->reachOffsetStartTime:J

    :cond_4
    :goto_0
    return-void
.end method


# virtual methods
.method public checkJudgeBrake(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->needCheckBrake:Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->Companion:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper$Companion;->isSpecialStep()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    if-nez v0, :cond_0

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->footBrakeVoiceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeVoiceHelper;->checkPlayVoice(Z)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    if-nez v0, :cond_2

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    .line 10
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startEstimateDistance:F

    sub-float/2addr p2, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_4

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_4

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_3

    .line 13
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->hadFootBrakeOn:Z

    .line 14
    :cond_3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->haveThanSpeed:Z

    .line 15
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->needCheckBrake:Z

    :cond_4
    return-void
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getTwoSideOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->zhiXianOffset:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    .line 4
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    if-eqz p2, :cond_1

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {p2, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Z)D

    move-result-wide v2

    .line 6
    sget p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v4, p2

    cmpl-double p2, v2, v4

    if-eqz p2, :cond_1

    cmpl-double p2, v2, v0

    if-lez p2, :cond_0

    sub-double/2addr v2, v0

    .line 7
    :cond_0
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    .line 8
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->zhiXianOffset:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz p2, :cond_3

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {p2, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Z)D

    move-result-wide v2

    .line 10
    sget p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v4, p2

    cmpl-double p2, v2, v4

    if-eqz p2, :cond_3

    cmpl-double p2, v2, v0

    if-lez p2, :cond_2

    sub-double/2addr v2, v0

    .line 11
    :cond_2
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->leftDis:D

    .line 12
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5de6\u8fb9\u8ddd\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->leftDis:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "cm\n\u53f3\u8fb9\u8ddd\uff1a"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    invoke-virtual {p2, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, "cm"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "dsh"

    invoke-static {v2, p2}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->leftDis:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "cm\uff0c\u53f3\u8fb9\u8ddd\uff1a"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 14
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/SideDistanceState;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/SideDistanceState;-><init>()V

    .line 15
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuiChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iput v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/SideDistanceState;->stepType:I

    .line 16
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    iput-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/SideDistanceState;->rightDis:D

    .line 17
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->leftDis:D

    iput-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/SideDistanceState;->leftDis:D

    .line 18
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/busmodel/SideDistanceState;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 19
    :cond_4
    invoke-virtual {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->checkJudgeBrake(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 20
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->checkCarOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
