.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122115_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private count:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122115_Event;->count:I

    return-void
.end method

.method private handleFail(Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 2
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->hasDetectSide:Z

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;

    .line 3
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->hasDetectSide:Z

    if-eqz p3, :cond_1

    return v0

    .line 4
    :cond_1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    if-ne p3, v1, :cond_5

    .line 5
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->distance:D

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_2
    const-wide/high16 v3, 0x4008000000000000L    # 3.0

    :goto_0
    const-wide v5, -0x3f70c00000000000L    # -1000.0

    cmpl-double p1, v1, v5

    if-eqz p1, :cond_5

    .line 7
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v5, p1

    cmpl-double p1, v1, v5

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const-wide/high16 v5, 0x4049000000000000L    # 50.0

    add-double/2addr v3, v5

    cmpl-double p1, v1, v3

    if-lez p1, :cond_4

    .line 8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122115_Event;->count:I

    add-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122115_Event;->count:I

    goto :goto_1

    :cond_4
    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122115_Event;->count:I

    .line 10
    :goto_1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122115_Event;->count:I

    const/4 p3, 0x2

    if-lt p1, p3, :cond_5

    .line 11
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/linting/K3_LinTing_122115_Event;->handleFail(Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;)Z

    move-result p1

    return p1

    :cond_5
    :goto_2
    return v0
.end method
