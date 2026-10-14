.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private gear:I

.field private isCumulative:Z

.field private speed:I

.field private startDistance:D

.field private totalDistance:D


# direct methods
.method public constructor <init>(II)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->gear:I

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->speed:I

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->isCumulative:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    .line 10
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->gear:I

    .line 11
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->speed:I

    .line 12
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->isCumulative:Z

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    return-void
.end method

.method public startCalculate(Lcn/mucang/android/jiakaoyi/signal/c/e;)D
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->gear:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v2

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->m(Lcn/mucang/android/jiakaoyi/signal/c/e;)I

    move-result v3

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result v1

    const-wide/16 v2, 0x0

    if-eqz v1, :cond_1

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->speed:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    .line 5
    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    float-to-double v2, p1

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    sub-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0

    .line 6
    :cond_1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2

    .line 7
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    float-to-double v4, p1

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    sub-double/2addr v4, v6

    add-double/2addr v0, v4

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->startDistance:D

    .line 9
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->isCumulative:Z

    if-nez p1, :cond_3

    .line 10
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    .line 11
    :cond_3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearSpeedDistanceCalculator;->totalDistance:D

    return-wide v0
.end method
