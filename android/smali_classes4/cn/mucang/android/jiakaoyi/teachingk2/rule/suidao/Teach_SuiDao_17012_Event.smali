.class public Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/Teach_SuiDao_17012_Event;
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


# instance fields
.field private passJudge:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/Teach_SuiDao_17012_Event;->passJudge:Z

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
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x4

    if-ne p3, v2, :cond_1

    .line 3
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->v:D

    iget p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;->b:I

    mul-int/lit8 p3, p3, 0x64

    int-to-double v4, p3

    cmpl-double p3, v2, v4

    if-lez p3, :cond_0

    :goto_0
    const/4 p3, 0x1

    goto :goto_2

    .line 4
    :cond_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/Teach_SuiDao_17012_Event;->passJudge:Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v2, p3

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_3

    .line 6
    check-cast p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->x:D

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget-object v4, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/s0/j;->w:F

    sub-float/2addr p3, v4

    float-to-double v4, p3

    sub-double/2addr v2, v4

    iget p3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;->b:I

    int-to-double v4, p3

    cmpl-double p3, v2, v4

    if-lez p3, :cond_2

    goto :goto_0

    .line 7
    :cond_2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/Teach_SuiDao_17012_Event;->passJudge:Z

    :cond_3
    :goto_1
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_4

    .line 8
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/i;->c:Z

    if-eqz p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 9
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 10
    :cond_4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/suidao/Teach_SuiDao_17012_Event;->passJudge:Z

    if-eqz p1, :cond_5

    .line 11
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    :cond_5
    return v1
.end method
