.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final intervalTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

.field private isDeduct:Z

.field private isInit:Z

.field private lastTime:J

.field private final range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

.field private startTime:J

.field private final timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->lastTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->startTime:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->isInit:Z

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    .line 7
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    .line 8
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->intervalTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    return-void
.end method


# virtual methods
.method public match(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 3
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->isInit:Z

    if-nez v2, :cond_1

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->isInit:Z

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "small "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " range : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "~"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " timeRange : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " intervalTime : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->intervalTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_2

    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-int v2, v3

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v6, 0x5a

    if-ne v3, v5, :cond_3

    if-ge v2, v6, :cond_3

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->reset()V

    return v1

    .line 9
    :cond_3
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v7, 0x32

    if-ne v3, v5, :cond_5

    if-lt v2, v7, :cond_4

    if-le v2, v6, :cond_5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->reset()V

    return v1

    .line 11
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v5, :cond_7

    const/16 v5, 0x50

    if-gt v2, v5, :cond_6

    const/16 v5, 0x1c

    if-ge v2, v5, :cond_7

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->reset()V

    return v1

    .line 13
    :cond_7
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v5, :cond_9

    if-gt v2, v7, :cond_8

    const/16 v5, 0x16

    if-ge v2, v5, :cond_9

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->reset()V

    return v1

    .line 15
    :cond_9
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v5, :cond_a

    const/16 v5, 0x28

    if-le v2, v5, :cond_a

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->reset()V

    return v1

    .line 17
    :cond_a
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v3, v2, :cond_11

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    move-result-object v2

    if-nez v2, :cond_b

    return v1

    .line 19
    :cond_b
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-ltz v2, :cond_d

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-lez v0, :cond_c

    goto :goto_1

    :cond_c
    const/4 v0, 0x0

    goto :goto_2

    :cond_d
    :goto_1
    const/4 v0, 0x1

    :goto_2
    if-eqz v0, :cond_10

    .line 20
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->isDeduct:Z

    if-eqz v0, :cond_e

    return v1

    .line 21
    :cond_e
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v2, v5

    if-gtz v0, :cond_f

    .line 22
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->startTime:J

    .line 23
    :cond_f
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->startTime:J

    sub-long/2addr v2, v5

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v5, v0

    cmp-long v0, v2, v5

    if-lez v0, :cond_12

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long v0, v2, v5

    if-gez v0, :cond_12

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->lastTime:J

    sub-long/2addr v2, v5

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->intervalTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v5, p2

    cmp-long p2, v2, v5

    if-lez p2, :cond_12

    .line 25
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->lastTime:J

    .line 26
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->isDeduct:Z

    return v4

    .line 27
    :cond_10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->reset()V

    goto :goto_3

    .line 28
    :cond_11
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->reset()V

    :cond_12
    :goto_3
    return v1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->startTime:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherSmall;->isDeduct:Z

    return-void
.end method
