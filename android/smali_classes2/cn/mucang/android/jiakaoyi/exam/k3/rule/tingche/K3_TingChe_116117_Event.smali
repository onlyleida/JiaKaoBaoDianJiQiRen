.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;
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

.field private isPressArea:Z

.field private isPressFullLine:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;->count:I

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 2
    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isCheckPressLine:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p3, p1, p2, v1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;->isPressFullLine:Z

    .line 6
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;->isPressFullLine:Z

    xor-int/2addr p1, v1

    return p1

    .line 7
    :cond_1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 8
    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasDetectSide:Z

    if-eqz p2, :cond_2

    return v1

    .line 9
    :cond_2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne p2, p3, :cond_5

    .line 10
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->b()F

    move-result p2

    const/high16 p3, -0x3b860000    # -1000.0f

    cmpl-float p3, p2, p3

    if-nez p3, :cond_3

    return v1

    :cond_3
    const/high16 p3, -0x3fc00000    # -3.0f

    const/4 v0, 0x0

    cmpg-float p3, p2, p3

    if-gez p3, :cond_4

    const/high16 p3, -0x3de00000    # -40.0f

    cmpl-float p2, p2, p3

    if-lez p2, :cond_4

    .line 11
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;->count:I

    add-int/2addr p2, v1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;->count:I

    goto :goto_0

    .line 12
    :cond_4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;->count:I

    .line 13
    :goto_0
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/tingche/K3_TingChe_116117_Event;->count:I

    const/4 p3, 0x2

    if-lt p2, p3, :cond_5

    .line 14
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 15
    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasDetectSide:Z

    return v0

    :cond_5
    return v1
.end method
