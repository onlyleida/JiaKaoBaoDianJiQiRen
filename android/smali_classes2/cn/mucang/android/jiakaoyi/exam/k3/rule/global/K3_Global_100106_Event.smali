.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;
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
.field private clutchStepOnStartDistance:F

.field private clutchStepOnSumDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->ClutchDistance:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_1

    .line 3
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    .line 4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnSumDistance:F

    return v0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    sget v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    add-float/2addr v1, v2

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_2

    .line 6
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    .line 7
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnSumDistance:F

    return v0

    .line 8
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200205:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p2, :cond_4

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-nez p2, :cond_3

    .line 11
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_3

    .line 12
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnSumDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    sub-float/2addr p3, v2

    add-float/2addr p2, p3

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnSumDistance:F

    .line 13
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    goto :goto_0

    .line 14
    :cond_4
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    .line 15
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnSumDistance:F

    .line 16
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnSumDistance:F

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 17
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p2, :cond_8

    .line 18
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    cmpl-float p2, p2, p3

    if-nez p2, :cond_7

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    .line 20
    :cond_7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_9

    return v1

    .line 21
    :cond_8
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100106_Event;->clutchStepOnStartDistance:F

    :cond_9
    return v0
.end method
