.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private startTime1:J

.field private startTime2:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime1:J

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime2:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p2

    const/4 v0, 0x1

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, v1, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, v1, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;

    .line 4
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->hasStop:Z

    if-eqz p3, :cond_7

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p3, p3, v1

    if-lez p3, :cond_7

    .line 6
    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;->p223106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    add-int/2addr v1, v0

    if-gt p3, v1, :cond_3

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v2

    iget v3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    :cond_2
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;->p223106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    add-int/2addr p3, v0

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p3

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {p1, p3, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p1

    const-wide/16 p2, 0x3e8

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_5

    .line 10
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime2:J

    .line 11
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime1:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_4

    .line 12
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime1:J

    .line 13
    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime1:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, p2

    if-lez p1, :cond_7

    .line 14
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 15
    :cond_5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime1:J

    .line 16
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime2:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_6

    .line 17
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime2:J

    .line 18
    :cond_6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/rangxing/K3_RangXing_123102_Event;->startTime2:J

    sub-long/2addr v1, v3

    cmp-long p1, v1, p2

    if-lez p1, :cond_7

    .line 19
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    :cond_7
    :goto_1
    return v0
.end method
