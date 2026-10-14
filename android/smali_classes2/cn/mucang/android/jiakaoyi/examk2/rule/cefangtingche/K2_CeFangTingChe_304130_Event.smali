.class public Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;
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


# instance fields
.field private final timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field private wheel:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->wheel:I

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

    iget p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->wheel:I

    invoke-virtual {p2, p3, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->h(ILcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;

    move-result-object p1

    return-object p1
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/a;

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v1, 0x1

    if-ne p3, v0, :cond_7

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz p3, :cond_7

    .line 3
    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->G:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->None:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p3, v0, :cond_1

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->H:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p3, v0, :cond_1

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p3, v0, :cond_1

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->E:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-ne p3, v0, :cond_1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    goto/16 :goto_2

    .line 5
    :cond_1
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p2

    if-nez p2, :cond_2

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 7
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 9
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 10
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->G:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, v0, :cond_3

    .line 11
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->G:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->wheel:I

    .line 12
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_1

    .line 13
    :cond_3
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->H:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, v0, :cond_4

    .line 14
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->H:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->wheel:I

    .line 15
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_1

    .line 16
    :cond_4
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, v0, :cond_5

    .line 17
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->I:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->wheel:I

    .line 18
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_1

    .line 19
    :cond_5
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->E:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    if-eq p2, v0, :cond_6

    .line 20
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->E:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->wheel:I

    .line 21
    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_1

    .line 22
    :cond_6
    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->J:Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/car/Wheel;->wheel:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->wheel:I

    :goto_1
    const/4 p1, 0x0

    return p1

    .line 23
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304130_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_8
    :goto_2
    return v1
.end method
