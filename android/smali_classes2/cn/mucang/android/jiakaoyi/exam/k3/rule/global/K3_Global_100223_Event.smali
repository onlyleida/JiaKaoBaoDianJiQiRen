.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;
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
.field private gear1StartDistance:F

.field private gear1SumDistance:F

.field private hasInit:Z

.field private hasQiBu:Z

.field private judgeFirst:Z

.field private lastCarStop:Z

.field private noChangeGear:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->noChangeGear:Z

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->lastCarStop:Z

    .line 4
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->hasInit:Z

    .line 5
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->hasQiBu:Z

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->judgeFirst:Z

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1StartDistance:F

    .line 8
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1SumDistance:F

    .line 9
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200245:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p2, 0x1

    :cond_0
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->judgeFirst:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->judgeFirst:Z

    return v0
.end method

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
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v2, 0x0

    if-eq p3, v1, :cond_2

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, v1, :cond_2

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, v1, :cond_2

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, v1, :cond_2

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear6:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p3, v1, :cond_2

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p3, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p3, 0x1

    .line 9
    :goto_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->hasInit:Z

    if-nez v1, :cond_3

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->hasInit:Z

    .line 11
    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->lastCarStop:Z

    if-nez v1, :cond_3

    .line 12
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 13
    :cond_3
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->lastCarStop:Z

    if-eqz v1, :cond_4

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-nez v1, :cond_4

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->hasQiBu:Z

    .line 15
    :cond_4
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->hasQiBu:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-eqz v1, :cond_5

    .line 16
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 17
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v4, 0x0

    if-ne v1, v3, :cond_7

    .line 18
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1StartDistance:F

    cmpl-float p2, p2, v4

    if-nez p2, :cond_6

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1StartDistance:F

    .line 20
    :cond_6
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1SumDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1StartDistance:F

    sub-float/2addr p1, p3

    add-float/2addr p2, p1

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200245:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_a

    .line 22
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    :cond_7
    if-eqz p3, :cond_8

    .line 23
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-nez p1, :cond_a

    .line 24
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    goto :goto_2

    .line 25
    :cond_8
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1StartDistance:F

    cmpl-float p2, p2, v4

    if-eqz p2, :cond_9

    .line 26
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1SumDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1StartDistance:F

    sub-float/2addr p1, p3

    add-float/2addr p2, p1

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1SumDistance:F

    .line 27
    :cond_9
    iput v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1StartDistance:F

    .line 28
    :cond_a
    :goto_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100223_Event;->gear1SumDistance:F

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200245:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_b

    .line 29
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    :cond_b
    return v0
.end method
