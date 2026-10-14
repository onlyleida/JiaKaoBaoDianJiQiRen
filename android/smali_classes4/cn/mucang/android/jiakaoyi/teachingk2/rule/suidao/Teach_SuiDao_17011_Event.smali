.class public Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/Teach_SuiDao_17011_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;

    .line 2
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x4

    if-ne v1, v4, :cond_1

    .line 4
    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->v:D

    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;->b:I

    mul-int/lit8 p2, p2, 0x64

    int-to-double v4, p2

    cmpg-double p2, v0, v4

    if-gtz p2, :cond_0

    :goto_0
    const/4 p2, 0x1

    goto :goto_1

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    .line 5
    :cond_1
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    const/4 v4, 0x0

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->x:D

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    sub-float/2addr v1, v0

    float-to-double v0, v1

    sub-double/2addr v4, v0

    iget p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;->b:I

    int-to-double v0, p2

    cmpg-double p2, v4, v0

    if-gtz p2, :cond_0

    goto :goto_0

    :goto_1
    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz p1, :cond_2

    .line 8
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    goto :goto_2

    .line 9
    :cond_2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 10
    invoke-virtual {p0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v2

    :cond_3
    :goto_2
    return v3
.end method
