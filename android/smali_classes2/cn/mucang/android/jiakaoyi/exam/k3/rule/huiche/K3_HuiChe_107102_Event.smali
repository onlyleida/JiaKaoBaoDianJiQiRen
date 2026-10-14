.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;
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


# static fields
.field private static final Factor:F = 0.85f


# instance fields
.field private count:I

.field private speed:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;->count:I

    const/high16 p1, -0x40800000    # -1.0f

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;->speed:F

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;

    .line 2
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;->speed:F

    const/high16 v0, -0x40800000    # -1.0f

    cmpl-float p3, p3, v0

    if-nez p3, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;->speed:F

    .line 4
    :cond_0
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;->speed:F

    const v0, 0x3f59999a    # 0.85f

    mul-float p3, p3, v0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const v1, 0x3e199998    # 0.14999998f

    mul-float v0, v0, v1

    add-float/2addr p3, v0

    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;->speed:F

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startEstimateDistance:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit8 p2, p2, 0x64

    int-to-float p2, p2

    const/4 p3, 0x1

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    return p3

    .line 6
    :cond_1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/huiche/K3_HuiChe_107102_Event;->speed:F

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuiCheStepConfig;->p207114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 p3, 0x0

    :goto_0
    return p3
.end method
