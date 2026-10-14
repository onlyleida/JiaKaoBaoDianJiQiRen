.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public startDistance:F

.field public sumDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->sumDistance:F

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200214:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-gtz p3, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    cmpl-float p3, p3, v1

    if-lez p3, :cond_2

    .line 4
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    cmpl-float p3, p3, v2

    if-nez p3, :cond_1

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    .line 6
    :cond_1
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->sumDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    sub-float/2addr p1, v1

    add-float/2addr p3, p1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200214:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4

    .line 7
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 8
    :cond_2
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    cmpl-float p3, p3, v2

    if-lez p3, :cond_3

    .line 9
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->sumDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    sub-float/2addr p1, v1

    add-float/2addr p3, p1

    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->sumDistance:F

    .line 10
    :cond_3
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    .line 11
    :cond_4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->sumDistance:F

    cmpl-float p1, p1, v2

    if-gtz p1, :cond_5

    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100212_Event;->startDistance:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_6

    :cond_5
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p1

    if-eqz p1, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    return v0
.end method
