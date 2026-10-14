.class public final Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0007\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0006\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u0008\u0010\u0016\u001a\u00020\u0006H\u0007J\u0010\u0010\u0017\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0013H\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;",
        "",
        "stepInfo",
        "Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;",
        "(Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;)V",
        "hasValidBrake",
        "",
        "getHasValidBrake",
        "()Z",
        "setHasValidBrake",
        "(Z)V",
        "mFootBrakeDistance",
        "",
        "mTriggerPositionHelper",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/utils/TriggerPositionHelper;",
        "getStepInfo",
        "()Lcn/mucang/android/jiakaoyi/engine/processor/ExamEventCreator$StepInfo;",
        "checkFootBrake",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "getBrakeDistance",
        "",
        "hasFootBrake",
        "isNearTo",
        "exam_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private hasValidBrake:Z

.field private mFootBrakeDistance:F

.field private mTriggerPositionHelper:Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

.field private final stepInfo:Lcn/mucang/android/jiakaoyi/engine/i/c$b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V
    .locals 1

    const-string v0, "stepInfo"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->stepInfo:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->mTriggerPositionHelper:Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    return-void
.end method

.method private final isNearTo(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->mTriggerPositionHelper:Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/j/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;Z)Z

    move-result p1

    return p1
.end method


# virtual methods
.method public final checkFootBrake(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 7

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->mFootBrakeDistance:F

    .line 3
    :cond_0
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->isNearTo(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->hasValidBrake:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->mFootBrakeDistance:F

    const/4 v3, 0x0

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->mFootBrakeDistance:F

    sub-float/2addr p1, v0

    float-to-double v3, p1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->stepInfo:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->c:D

    cmpg-double p1, v3, v5

    if-gtz p1, :cond_3

    const/4 v1, 0x1

    .line 7
    :cond_3
    :goto_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->hasValidBrake:Z

    :cond_4
    return v2
.end method

.method public final getBrakeDistance()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->stepInfo:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->c:D

    return-wide v0
.end method

.method public final getHasValidBrake()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->hasValidBrake:Z

    return v0
.end method

.method public final getStepInfo()Lcn/mucang/android/jiakaoyi/engine/i/c$b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->stepInfo:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    return-object v0
.end method

.method public final hasFootBrake()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->mFootBrakeDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final setHasValidBrake(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->hasValidBrake:Z

    return-void
.end method
