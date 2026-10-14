.class public Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11006_Event;
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
.field private hasLeaveLine:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/config/SimpleTeachingConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11006_Event;->hasLeaveLine:Z

    return-void
.end method


# virtual methods
.method protected deductExtraData(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/b;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    invoke-virtual {p2, p3, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->h(ILcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object p1

    return-object p1
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/b/b;

    .line 2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11006_Event;->hasLeaveLine:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->I:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 3
    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->H:Z

    if-eqz p1, :cond_0

    .line 4
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/rule/daocheruku/Teach_DaoCheRuKu_11006_Event;->hasLeaveLine:Z

    :cond_0
    return p3

    .line 5
    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/y0/a;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->F:Z

    if-nez p2, :cond_2

    return p3

    .line 6
    :cond_2
    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/s0/c;->y:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->LeftFront:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p1, p2, :cond_3

    goto :goto_0

    :cond_3
    const/4 p3, 0x0

    :goto_0
    return p3
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
