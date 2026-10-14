.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;
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
.field private allDistanceDoNotExecute:Z

.field private distanceLimit:I

.field private gearSpeedTimeCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;

.field private isPass:Z

.field private setupTime:I

.field private startDistance:F

.field private startTime:J

.field private targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private targetSpeed:I

.field private valueValid:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startTime:J

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->valueValid:Z

    .line 4
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->isPass:Z

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200189:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string v0, "*"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "\\*"

    .line 7
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 8
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    aget-object v0, p1, p2

    invoke-static {v0}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    aget-object v1, p1, v0

    invoke-static {v1}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    aget-object v2, p1, v1

    .line 9
    invoke-static {v2}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    aget-object v3, p1, v2

    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    .line 10
    :cond_0
    aget-object v3, p1, v0

    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result v3

    .line 11
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt v3, v4, :cond_2

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-le v3, v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v3

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 13
    aget-object v3, p1, p2

    invoke-static {v3}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->distanceLimit:I

    .line 14
    aget-object v1, p1, v1

    invoke-static {v1}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->targetSpeed:I

    .line 15
    aget-object p1, p1, v2

    invoke-static {p1}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->setupTime:I

    .line 16
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->targetSpeed:I

    invoke-direct {p1, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;IZ)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->gearSpeedTimeCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;

    .line 17
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->valueValid:Z

    goto :goto_2

    .line 18
    :cond_2
    :goto_0
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->valueValid:Z

    return-void

    .line 19
    :cond_3
    :goto_1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->valueValid:Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/e;->a()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p3

    if-nez p3, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    .line 4
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->valueValid:Z

    if-eqz v1, :cond_5

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startDistance:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_2

    .line 6
    iget v1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startDistance:F

    .line 7
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->gearSpeedTimeCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startCalculate(Lcn/mucang/android/jiakaoyi/signal/c/e;)J

    move-result-wide v3

    .line 8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->setupTime:I

    int-to-long v5, p1

    cmp-long p1, v3, v5

    if-lez p1, :cond_3

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->isPass:Z

    .line 10
    :cond_3
    iget p1, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startDistance:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->distanceLimit:I

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 11
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startDistance:F

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->gearSpeedTimeCalculator:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->reset()V

    .line 13
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->isPass:Z

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    .line 14
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->isPass:Z

    goto :goto_0

    :cond_4
    return v1

    .line 15
    :cond_5
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->allDistanceDoNotExecute:Z

    if-nez p1, :cond_9

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200159:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 17
    move-object v2, p1

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 18
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    .line 19
    iget-object v3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-lt v3, v2, :cond_7

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p3, p1

    if-ltz p1, :cond_7

    .line 20
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startTime:J

    const-wide/16 v4, 0x0

    cmp-long p1, v2, v4

    if-gtz p1, :cond_6

    .line 21
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startTime:J

    .line 22
    :cond_6
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startTime:J

    sub-long/2addr v2, v4

    iget-object p1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-ltz p1, :cond_8

    .line 23
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->allDistanceDoNotExecute:Z

    return v0

    :cond_7
    const-wide/16 v1, -0x1

    .line 24
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100170_Event;->startTime:J

    .line 25
    :cond_8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p1

    xor-int/2addr p1, v0

    return p1

    :cond_9
    return v0
.end method
