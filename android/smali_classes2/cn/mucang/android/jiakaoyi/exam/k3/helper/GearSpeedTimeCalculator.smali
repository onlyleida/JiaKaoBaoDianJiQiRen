.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final isCumulative:Z

.field private final speed:I

.field private startTime:J

.field private totalTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->speed:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->isCumulative:Z

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;IZ)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    .line 10
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 11
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->speed:I

    .line 12
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->isCumulative:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    return-void
.end method

.method public startCalculate(Lcn/mucang/android/jiakaoyi/signal/c/e;)J
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->gear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->m(Lcn/mucang/android/jiakaoyi/signal/c/e;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->speed:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    .line 5
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 7
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    long-to-float v0, v0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    long-to-float v1, v4

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-long v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    :cond_2
    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->startTime:J

    .line 9
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->isCumulative:Z

    if-nez p1, :cond_3

    .line 10
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    .line 11
    :cond_3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedTimeCalculator;->totalTime:J

    return-wide v0
.end method
