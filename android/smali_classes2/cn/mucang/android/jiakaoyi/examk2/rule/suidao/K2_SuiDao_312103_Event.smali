.class public Lcn/mucang/android/jiakaoyi/examk2/rule/suidao/K2_SuiDao_312103_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/l;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    .line 3
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget p3, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->E:F

    sub-float/2addr p1, p3

    float-to-double v1, p1

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->F:D

    cmpl-double p1, v1, v3

    if-ltz p1, :cond_0

    return v0

    .line 5
    :cond_0
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->v:Z

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    return p3

    .line 6
    :cond_1
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->A:Z

    if-eqz p1, :cond_2

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->B:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return p3

    :cond_3
    return v0
.end method
