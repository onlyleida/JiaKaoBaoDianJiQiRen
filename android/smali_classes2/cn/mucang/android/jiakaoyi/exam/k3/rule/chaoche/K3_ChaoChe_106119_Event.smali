.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private leftTime:J

.field private rightBackTime:J

.field private rightTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightBackTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 9

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 2
    iget-boolean v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_6

    .line 5
    iget-boolean v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningRight:Z

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_1

    .line 7
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    .line 8
    :cond_1
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_3

    .line 9
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 10
    :cond_2
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    .line 11
    :cond_3
    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningLeft:Z

    if-eqz p3, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    cmp-long p1, v5, v3

    if-gtz p1, :cond_4

    .line 13
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    .line 14
    :cond_4
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    sub-long/2addr p1, v3

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v3, p3

    cmp-long p3, p1, v3

    if-ltz p3, :cond_f

    .line 15
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 16
    :cond_5
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    goto/16 :goto_0

    .line 17
    :cond_6
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v0, v5, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 18
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_7

    .line 19
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    .line 20
    :cond_7
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_9

    .line 21
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 22
    :cond_8
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightTime:J

    .line 23
    :cond_9
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v0, v5, :cond_b

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 24
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    cmp-long v0, v5, v3

    if-gtz v0, :cond_a

    .line 25
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    .line 26
    :cond_a
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    sub-long/2addr v5, v7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v7, v0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_c

    .line 27
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 28
    :cond_b
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->leftTime:J

    .line 29
    :cond_c
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p3, v0, :cond_e

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_e

    .line 30
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightBackTime:J

    cmp-long p1, v5, v3

    if-gtz p1, :cond_d

    .line 31
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightBackTime:J

    .line 32
    :cond_d
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightBackTime:J

    sub-long/2addr p1, v3

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v3, p3

    cmp-long p3, p1, v3

    if-ltz p3, :cond_f

    .line 33
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 34
    :cond_e
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/chaoche/K3_ChaoChe_106119_Event;->rightBackTime:J

    :cond_f
    :goto_0
    return v1
.end method
