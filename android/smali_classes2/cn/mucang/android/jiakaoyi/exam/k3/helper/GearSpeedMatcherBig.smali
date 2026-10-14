.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;
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
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->lastTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->startTime:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->isInit:Z

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    .line 7
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    .line 8
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->intervalTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    return-void
.end method


# virtual methods
.method public match(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->isInit:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->isInit:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "big "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gearName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " range : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "~"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " timeRange : "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " intervalTime : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->intervalTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v2, v0, v2

    if-lez v2, :cond_2

    iget v2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    int-to-float v2, v2

    div-float/2addr v2, v0

    float-to-int v2, v2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_0
    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v6, 0x5a

    if-ne v4, v5, :cond_3

    if-ge v2, v6, :cond_3

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    return v1

    .line 9
    :cond_3
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/16 v7, 0x32

    if-ne v4, v5, :cond_5

    if-lt v2, v7, :cond_4

    if-le v2, v6, :cond_5

    .line 10
    :cond_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    return v1

    .line 11
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v4, v5, :cond_7

    const/16 v5, 0x50

    if-gt v2, v5, :cond_6

    const/16 v5, 0x1c

    if-ge v2, v5, :cond_7

    .line 12
    :cond_6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    return v1

    .line 13
    :cond_7
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v4, v5, :cond_9

    if-gt v2, v7, :cond_8

    const/16 v5, 0x16

    if-ge v2, v5, :cond_9

    .line 14
    :cond_8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    return v1

    .line 15
    :cond_9
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v4, v5, :cond_a

    const/16 v5, 0x28

    if-le v2, v5, :cond_a

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    return v1

    .line 17
    :cond_a
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v4, v2, :cond_10

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-ltz v0, :cond_c

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->range:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_b

    goto :goto_1

    :cond_b
    const/4 p2, 0x0

    goto :goto_2

    :cond_c
    :goto_1
    const/4 p2, 0x1

    :goto_2
    if-eqz p2, :cond_f

    .line 19
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->isDeduct:Z

    if-eqz p2, :cond_d

    return v1

    .line 20
    :cond_d
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->startTime:J

    const-wide/16 v6, 0x0

    cmp-long p2, v4, v6

    if-gtz p2, :cond_e

    .line 21
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->startTime:J

    .line 22
    :cond_e
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->startTime:J

    sub-long/2addr v4, v6

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->timeRange:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v6, p2

    cmp-long p2, v4, v6

    if-lez p2, :cond_11

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->lastTime:J

    sub-long/2addr v4, v6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->intervalTime:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v6, p2

    cmp-long p2, v4, v6

    if-lez p2, :cond_11

    .line 24
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->lastTime:J

    .line 25
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->isDeduct:Z

    return v3

    .line 26
    :cond_f
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    goto :goto_3

    .line 27
    :cond_10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->reset()V

    :cond_11
    :goto_3
    return v1
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->startTime:J

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedMatcherBig;->isDeduct:Z

    return-void
.end method
