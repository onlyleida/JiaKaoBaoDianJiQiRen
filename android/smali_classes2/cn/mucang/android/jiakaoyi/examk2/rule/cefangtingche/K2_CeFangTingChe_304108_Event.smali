.class public Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304108_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method


# virtual methods
.method protected deductExtraData(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/a;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    const/4 p3, -0x1

    invoke-virtual {p2, p3, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->h(ILcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object p1

    return-object p1
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/a;

    .line 2
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p3, :cond_2

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->R:Z

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->C:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 6
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return p3

    .line 7
    :cond_0
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->s:Z

    if-eqz p2, :cond_1

    .line 8
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return p3

    .line 9
    :cond_1
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->t:Z

    if-eqz p2, :cond_2

    .line 10
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return p3

    :cond_2
    return v1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
