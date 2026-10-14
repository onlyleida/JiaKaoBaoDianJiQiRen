.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public isJudgeFrame:Z

.field public isLaBa:Z

.field public judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isLaBa:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isJudgeFrame:Z

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->reset()V

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_3

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

    const/16 v2, 0xc

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/collision/b;->a(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eq v0, p2, :cond_0

    .line 7
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->reset()V

    .line 9
    :cond_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isJudgeFrame:Z

    if-eqz p2, :cond_1

    const/4 p2, 0x0

    .line 10
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isJudgeFrame:Z

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->reset()V

    .line 13
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz p2, :cond_3

    .line 14
    sget-object p3, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;->BodyPressDottedLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->c(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel$TriggerType;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isJudgeFrame:Z

    .line 16
    :cond_2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isLaBa:Z

    if-nez p2, :cond_3

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isLaBa:Z

    :cond_3
    return-void
.end method

.method public isPressStartLine()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isLaBa:Z

    return-void
.end method
