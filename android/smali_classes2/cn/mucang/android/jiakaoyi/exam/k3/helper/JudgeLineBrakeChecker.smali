.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

.field private isBrakeDown:Z

.field private isJudgeFrame:Z

.field private isOverSpeed:Z

.field private isValidBrakeOn:Z

.field private judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

.field private final judgeSpeed:F


# direct methods
.method public constructor <init>(F)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isBrakeDown:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isJudgeFrame:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isValidBrakeOn:Z

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeSpeed:F

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->reset()V

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 3

    .line 1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isOverSpeed:Z

    const/4 v0, 0x1

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeSpeed:F

    cmpl-float p3, p3, v1

    if-lez p3, :cond_0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isOverSpeed:Z

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_5

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressJudgeLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->checkPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p3

    .line 5
    instance-of v1, p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz v1, :cond_1

    .line 6
    check-cast p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 7
    iget v1, p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->f:I

    const/16 v2, 0xb

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-nez v1, :cond_1

    .line 9
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->reset()V

    .line 11
    :cond_1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isJudgeFrame:Z

    const/4 v1, 0x0

    if-eqz p3, :cond_2

    const/4 p3, 0x0

    .line 12
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isJudgeFrame:Z

    .line 13
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->reset()V

    .line 15
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz p3, :cond_5

    .line 16
    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    invoke-virtual {p3, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 17
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isJudgeFrame:Z

    .line 18
    :cond_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    if-nez p3, :cond_4

    .line 19
    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    invoke-direct {p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    .line 20
    :cond_4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isValidBrakeOn:Z

    .line 21
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isBrakeDown:Z

    if-nez p2, :cond_5

    if-eqz p1, :cond_5

    .line 22
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isBrakeDown:Z

    .line 23
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    :cond_5
    return-void
.end method

.method public isPressStartLine()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public judgeDeduct(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isOverSpeed:Z

    if-eqz p1, :cond_1

    .line 2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isJudgeFrame:Z

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isPressStartLine()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isBrakeDown:Z

    return p1

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isBrakeDown:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineBrakeChecker;->isOverSpeed:Z

    return-void
.end method
