.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field public isBrakeDown:Z

.field public isJudgeFrame:Z

.field public isLaBa:Z

.field public judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

.field public leftLightMaxTime:J

.field public leftLightStartTime:J

.field public leftLightSumTime:J

.field public rightLightMaxTime:J

.field public rightLightStartTime:J

.field public rightLightSumTime:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isBrakeDown:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isLaBa:Z

    const-wide/16 v1, 0x0

    .line 4
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightMaxTime:J

    .line 5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightMaxTime:J

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightSumTime:J

    .line 7
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightSumTime:J

    .line 8
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightStartTime:J

    .line 9
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightStartTime:J

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isJudgeFrame:Z

    .line 11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->reset()V

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_b

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressJudgeLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    const/4 v1, 0x1

    invoke-virtual {p3, p1, p2, v1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->checkPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    move-result-object p3

    .line 3
    instance-of v0, p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eq v0, p3, :cond_0

    .line 5
    check-cast p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->reset()V

    .line 7
    :cond_0
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isJudgeFrame:Z

    if-eqz p3, :cond_1

    const/4 p3, 0x0

    .line 8
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isJudgeFrame:Z

    const/4 p3, 0x0

    .line 9
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->reset()V

    .line 11
    :cond_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz p3, :cond_b

    .line 12
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    invoke-virtual {p3, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 13
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isJudgeFrame:Z

    .line 14
    :cond_2
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isBrakeDown:Z

    if-nez p3, :cond_3

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isBrakeDown:Z

    .line 16
    :cond_3
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isLaBa:Z

    if-nez p3, :cond_4

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isLaBa:Z

    .line 18
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    const-wide/16 v0, 0x0

    if-eqz p3, :cond_6

    .line 19
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightStartTime:J

    cmp-long p3, v2, v0

    if-nez p3, :cond_5

    .line 20
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightStartTime:J

    .line 21
    :cond_5
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightMaxTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightMaxTime:J

    goto :goto_0

    .line 22
    :cond_6
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightStartTime:J

    cmp-long p3, v2, v0

    if-eqz p3, :cond_7

    .line 23
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightSumTime:J

    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr v6, v2

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightSumTime:J

    .line 24
    :cond_7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightStartTime:J

    .line 25
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 26
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightStartTime:J

    cmp-long p1, v2, v0

    if-nez p1, :cond_8

    .line 27
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightStartTime:J

    .line 28
    :cond_8
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightStartTime:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightMaxTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightMaxTime:J

    goto :goto_1

    .line 29
    :cond_9
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightStartTime:J

    cmp-long p1, v2, v0

    if-eqz p1, :cond_a

    .line 30
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightSumTime:J

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    sub-long/2addr p1, v2

    add-long/2addr v4, p1

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightSumTime:J

    .line 31
    :cond_a
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightStartTime:J

    :cond_b
    :goto_1
    return-void
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isBrakeDown:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->isLaBa:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightMaxTime:J

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightMaxTime:J

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->leftLightStartTime:J

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineChecker;->rightLightStartTime:J

    return-void
.end method
