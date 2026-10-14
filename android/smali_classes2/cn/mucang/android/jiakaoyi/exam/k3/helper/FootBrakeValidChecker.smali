.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private checkResult:Z

.field private currentBrakeDistance:F

.field private currentBrakeStartDistance:F

.field private hasInit:Z

.field private hasValidFootBrake:Z

.field private isStartJudge:Z

.field private final judgeMethod:I

.field private lastFootBrakeOn:Z

.field private totalBrakeDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->hasValidFootBrake:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->isStartJudge:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->lastFootBrakeOn:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->checkResult:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->hasInit:Z

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200261:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->judgeMethod:I

    goto :goto_0

    .line 8
    :cond_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->judgeMethod:I

    :goto_0
    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->hasInit:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 3
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->hasInit:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->lastFootBrakeOn:Z

    return v2

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 5
    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    cmpl-float v4, v4, v1

    if-nez v4, :cond_1

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    .line 7
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    sub-float/2addr p1, v4

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeDistance:F

    goto :goto_0

    .line 8
    :cond_2
    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    cmpl-float v4, v4, v1

    if-eqz v4, :cond_3

    .line 9
    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->totalBrakeDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    sub-float/2addr p1, v5

    add-float/2addr v4, p1

    iput v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->totalBrakeDistance:F

    .line 10
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    .line 11
    :cond_3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeDistance:F

    .line 12
    :goto_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->judgeMethod:I

    if-nez p1, :cond_4

    if-eqz v0, :cond_8

    .line 13
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->hasValidFootBrake:Z

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    .line 14
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->isStartJudge:Z

    .line 15
    :cond_5
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->isStartJudge:Z

    if-eqz p1, :cond_6

    .line 16
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->lastFootBrakeOn:Z

    if-nez p1, :cond_7

    if-eqz v0, :cond_7

    .line 17
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->hasValidFootBrake:Z

    goto :goto_1

    .line 18
    :cond_6
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeDistance:F

    .line 19
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->totalBrakeDistance:F

    .line 20
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    .line 21
    :cond_7
    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->lastFootBrakeOn:Z

    .line 22
    :cond_8
    :goto_2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->hasValidFootBrake:Z

    if-eqz p1, :cond_9

    if-eqz v0, :cond_9

    const/4 v2, 0x1

    :cond_9
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->checkResult:Z

    return v2
.end method

.method public getCurrentBrakeDistance()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeDistance:F

    return v0
.end method

.method public getJudgeBrakeDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;)F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->judgeMethod:I

    if-nez v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->checkResult:Z

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    return p1

    .line 4
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->checkResult:Z

    if-eqz p1, :cond_1

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getTotalBrakeDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;)F
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->totalBrakeDistance:F

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->currentBrakeStartDistance:F

    sub-float/2addr p1, v1

    add-float/2addr v0, p1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->totalBrakeDistance:F

    .line 3
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->totalBrakeDistance:F

    return p1
.end method
