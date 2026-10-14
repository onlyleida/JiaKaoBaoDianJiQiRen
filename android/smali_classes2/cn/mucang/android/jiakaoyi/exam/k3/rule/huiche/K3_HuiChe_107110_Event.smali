.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private mLeftDistance:F

.field private mRightDistance:F

.field private onceReachLeftDistance:F

.field private onceReachRightDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_9

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;

    .line 3
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->zhiXianOffset:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz v1, :cond_4

    .line 5
    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    const-wide/16 v6, 0x0

    cmpg-double p2, v4, v6

    if-gez p2, :cond_0

    move-wide v4, v6

    .line 6
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v6, p2

    cmpl-double p2, v4, v6

    if-lez p2, :cond_1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-double v6, p2

    cmpg-double p2, v4, v6

    if-gtz p2, :cond_1

    .line 7
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    cmpl-float p2, p2, v3

    if-nez p2, :cond_6

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    goto :goto_0

    .line 9
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 10
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 11
    :cond_2
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_3

    .line 12
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->mRightDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    sub-float/2addr v1, v4

    add-float/2addr p2, v1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->mRightDistance:F

    .line 13
    :cond_3
    iput v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    goto :goto_0

    .line 14
    :cond_4
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_5

    .line 15
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->mRightDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    sub-float/2addr v1, v4

    add-float/2addr p2, v1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->mRightDistance:F

    .line 16
    :cond_5
    iput v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    .line 17
    :cond_6
    :goto_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 18
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    cmpl-float p2, p2, v3

    if-eqz p2, :cond_7

    .line 19
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->mRightDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->onceReachRightDistance:F

    sub-float/2addr p1, p3

    add-float/2addr p2, p1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->mRightDistance:F

    .line 20
    :cond_7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107110_Event;->mRightDistance:F

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_8

    goto :goto_1

    :cond_8
    const/4 v0, 0x0

    :cond_9
    :goto_1
    return v0
.end method
