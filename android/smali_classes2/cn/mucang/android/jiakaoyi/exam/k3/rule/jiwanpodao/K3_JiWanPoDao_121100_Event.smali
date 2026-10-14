.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiwanpodao/K3_JiWanPoDao_121100_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public isPressEndLine:Z

.field public judgeLineCollisionModel:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/jiwanpodao/K3_JiWanPoDao_121100_Event;->isPressEndLine:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;->p221103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiWanPoDaoStepConfig;->p221115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiWanPoDaoStateData;

    .line 3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiWanPoDaoStateData;->labaChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isJudgeFrame:Z

    if-nez p2, :cond_1

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiWanPoDaoStateData;->labaChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isPressStartLine()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    .line 4
    :cond_1
    :goto_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiWanPoDaoStateData;->labaChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineLabaChecker;->isLaBa:Z

    return p1

    .line 5
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz p1, :cond_3

    .line 6
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 7
    :cond_3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
