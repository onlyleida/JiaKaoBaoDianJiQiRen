.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I

.field private stopPosition:Lcn/mucang/android/jiakaoyi/exam/k3/collision/StopPosition;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->count:I

    return-void
.end method

.method private handleFail(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 2
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasDetectSide:Z

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-eqz v0, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-byte v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    if-ne v0, v3, :cond_7

    .line 4
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 5
    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-eqz p3, :cond_1

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p3, p1, p2, v1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p2

    if-nez p2, :cond_7

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getTwoSideOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object p1

    if-eqz p1, :cond_7

    .line 8
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    instance-of p3, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz p3, :cond_7

    check-cast p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    if-nez p2, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-nez p1, :cond_7

    .line 9
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/StopPosition;->Road_Right:Lcn/mucang/android/jiakaoyi/exam/k3/collision/StopPosition;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->stopPosition:Lcn/mucang/android/jiakaoyi/exam/k3/collision/StopPosition;

    .line 10
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    .line 11
    :cond_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/StopPosition;->Road_None:Lcn/mucang/android/jiakaoyi/exam/k3/collision/StopPosition;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->stopPosition:Lcn/mucang/android/jiakaoyi/exam/k3/collision/StopPosition;

    goto :goto_1

    .line 12
    :cond_2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 13
    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasDetectSide:Z

    if-eqz p2, :cond_3

    return v1

    .line 14
    :cond_3
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne p2, p3, :cond_7

    .line 15
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->b()F

    move-result p2

    const/high16 p3, -0x3b860000    # -1000.0f

    cmpl-float p3, p2, p3

    if-nez p3, :cond_4

    return v1

    :cond_4
    const/high16 p3, -0x3de00000    # -40.0f

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_5

    .line 16
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->count:I

    add-int/2addr p2, v1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->count:I

    goto :goto_0

    .line 17
    :cond_5
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->count:I

    .line 18
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v3, :cond_6

    .line 19
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->count:I

    if-lt p2, v1, :cond_7

    .line 20
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->handleFail(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;)Z

    move-result p1

    return p1

    .line 21
    :cond_6
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->count:I

    const/4 p3, 0x2

    if-lt p2, p3, :cond_7

    .line 22
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116111_Event;->handleFail(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;)Z

    move-result p1

    return p1

    :cond_7
    :goto_1
    return v1
.end method
