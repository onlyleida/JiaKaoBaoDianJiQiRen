.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isJudgeFrame:Z

.field public judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

.field public leftLightMaxTime:J

.field public leftLightStartTime:J

.field public leftLightSumTime:J

.field public rightLightMaxTime:J

.field public rightLightStartTime:J

.field public rightLightSumTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightMaxTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightMaxTime:J

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightSumTime:J

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightSumTime:J

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    .line 7
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->reset()V

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

    move-result-object p2

    .line 3
    instance-of p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz p3, :cond_0

    .line 4
    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 5
    iget v0, p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->f:I

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eq v0, p2, :cond_0

    .line 7
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->reset()V

    .line 9
    :cond_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->reset()V

    .line 13
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz p2, :cond_b

    .line 14
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    .line 16
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    const-wide/16 v0, 0x0

    if-eqz p2, :cond_5

    .line 17
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_4

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p2

    if-eqz p2, :cond_3

    .line 19
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    goto :goto_0

    .line 20
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    .line 21
    :cond_4
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    sub-long/2addr v2, v4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightMaxTime:J

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightMaxTime:J

    goto :goto_1

    .line 22
    :cond_5
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    cmp-long p2, v2, v0

    if-eqz p2, :cond_6

    .line 23
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightSumTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    sub-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightSumTime:J

    .line 24
    :cond_6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    .line 25
    :goto_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_9

    .line 26
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    cmp-long p2, v2, v0

    if-nez p2, :cond_8

    .line 27
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p2

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p2

    if-eqz p2, :cond_7

    .line 28
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    goto :goto_2

    .line 29
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    .line 30
    :cond_8
    :goto_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    sub-long/2addr p1, v0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightMaxTime:J

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightMaxTime:J

    goto :goto_3

    .line 31
    :cond_9
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    cmp-long v2, p2, v0

    if-eqz v2, :cond_a

    .line 32
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightSumTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr p2, v2

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightSumTime:J

    .line 33
    :cond_a
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    :cond_b
    :goto_3
    return-void
.end method

.method public getLeftLightSumTime(Lcn/mucang/android/jiakaoyi/signal/c/e;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightSumTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 3
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightSumTime:J

    return-wide v0
.end method

.method public getRightLightSumTime(Lcn/mucang/android/jiakaoyi/signal/c/e;)J
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightSumTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_0
    return-wide v0
.end method

.method public isPressStartLine()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightMaxTime:J

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightMaxTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    return-void
.end method
