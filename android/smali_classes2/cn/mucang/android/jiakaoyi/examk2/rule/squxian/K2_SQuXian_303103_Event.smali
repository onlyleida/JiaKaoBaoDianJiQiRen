.class public Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasLeave:Z

.field private lastCurrentDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SQuXianStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;->lastCurrentDistance:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;->hasLeave:Z

    return-void
.end method


# virtual methods
.method protected deductExtraData(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/j;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/g;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    invoke-virtual {p3, p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->h(ILcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object p1

    return-object p1
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/j;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/g;->t:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    const/4 v0, 0x1

    if-eq p2, p3, :cond_1

    .line 3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;->hasLeave:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;->lastCurrentDistance:F

    sub-float/2addr p2, v1

    float-to-double v1, p2

    const-wide v3, 0x3fb999999999999aL    # 0.1

    cmpl-double p2, v1, v3

    if-lez p2, :cond_0

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;->lastCurrentDistance:F

    return p3

    .line 5
    :cond_0
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;->hasLeave:Z

    return v0

    .line 6
    :cond_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/squxian/K2_SQuXian_303103_Event;->hasLeave:Z

    return v0
.end method
