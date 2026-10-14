.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private angleResult:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;

.field private convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;

.field private startAngle:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x39e3c400    # -9999.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->startAngle:F

    return-void
.end method


# virtual methods
.method public bridge synthetic isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->startAngle:F

    const v1, -0x39e3c400    # -9999.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->startAngle:F

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->angleResult:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;

    .line 7
    :cond_1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/AngleVariable;->turn:I

    const/4 v1, 0x3

    if-nez v0, :cond_3

    .line 8
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p3

    .line 9
    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ZhiXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p3, v0, :cond_2

    const/4 v0, 0x3

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    .line 10
    :cond_3
    :goto_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->angleResult:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p3, v2, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;

    move-result-object p3

    const/4 p4, 0x0

    const/4 v2, 0x1

    if-eqz p3, :cond_9

    .line 11
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;->isValid()Z

    move-result p2

    if-eqz p2, :cond_8

    if-ne v0, v1, :cond_5

    .line 12
    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;->angle:D

    invoke-static {p2, p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide p2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_4

    const/4 p4, 0x1

    :cond_4
    return p4

    :cond_5
    if-ne v0, v2, :cond_7

    .line 13
    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;->angle:D

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    cmpg-double p1, p2, v0

    if-gez p1, :cond_6

    const/4 p4, 0x1

    :cond_6
    return p4

    .line 14
    :cond_7
    iget-wide p2, p3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;->angle:D

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_8

    const/4 p4, 0x1

    :cond_8
    return p4

    :cond_9
    if-ne v0, v1, :cond_b

    .line 15
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->startAngle:F

    sub-float/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result p2

    float-to-double p2, p2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_a

    const/4 p4, 0x1

    :cond_a
    return p4

    :cond_b
    if-ne v0, v2, :cond_d

    .line 16
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->startAngle:F

    sub-float/2addr p2, p3

    float-to-double p2, p2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    neg-double v0, v0

    cmpg-double p1, p2, v0

    if-gez p1, :cond_c

    const/4 p4, 0x1

    :cond_c
    return p4

    .line 17
    :cond_d
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/AngleHandler;->startAngle:F

    sub-float/2addr p2, p3

    float-to-double p2, p2

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_e

    const/4 p4, 0x1

    :cond_e
    return p4
.end method
