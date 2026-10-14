.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/huandao/K3_HuanDao_124102_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasLightOn:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huandao/K3_HuanDao_124102_Event;->hasLightOn:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;->p224104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_5

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;->p224116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;

    .line 4
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-boolean v2, p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    if-eqz v2, :cond_1

    .line 5
    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-lez p3, :cond_1

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    sub-long/2addr v2, p1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;->p224105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    cmp-long p3, v2, p1

    if-lez p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0

    .line 7
    :cond_2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huandao/K3_HuanDao_124102_Event;->hasLightOn:Z

    if-eqz p2, :cond_3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_3

    return v1

    .line 8
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huandao/K3_HuanDao_124102_Event;->hasLightOn:Z

    .line 10
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 11
    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;->p224105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v1, p3

    cmp-long p3, p1, v1

    if-ltz p3, :cond_5

    .line 12
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    :cond_5
    return v0
.end method
