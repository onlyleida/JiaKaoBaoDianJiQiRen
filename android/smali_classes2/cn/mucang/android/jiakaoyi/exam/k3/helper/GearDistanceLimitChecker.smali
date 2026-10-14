.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private gearStartDistance:F

.field private final isSeriesCheck:Z

.field private final limitDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FZ)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->gearStartDistance:F

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->limitDistance:F

    .line 5
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->isSeriesCheck:Z

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 3

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v0, 0x0

    if-nez p2, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v2, 0x0

    if-ne p2, v1, :cond_3

    .line 3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->gearStartDistance:F

    cmpl-float p2, p2, v2

    if-nez p2, :cond_1

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->gearStartDistance:F

    .line 5
    :cond_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->isSeriesCheck:Z

    const/4 v1, 0x1

    if-eqz p2, :cond_2

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->gearStartDistance:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->limitDistance:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->clear()V

    return v1

    .line 8
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->gearStartDistance:F

    sub-float/2addr p1, p2

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->limitDistance:F

    cmpl-float p1, p1, p2

    if-lez p1, :cond_4

    return v1

    .line 9
    :cond_3
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->gearStartDistance:F

    :cond_4
    return v0
.end method

.method public clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->gearStartDistance:F

    return-void
.end method
