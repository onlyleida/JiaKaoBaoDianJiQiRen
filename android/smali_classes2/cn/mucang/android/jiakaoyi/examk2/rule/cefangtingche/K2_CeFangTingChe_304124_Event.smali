.class public Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;
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
.field private canDeduct:Z

.field private final timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->canDeduct:Z

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

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/a;

    .line 2
    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/a;->e:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    return p3

    .line 3
    :cond_0
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_3

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->z:Z

    if-nez v0, :cond_1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->B:Z

    if-eqz p2, :cond_3

    .line 4
    :cond_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->canDeduct:Z

    if-eqz p2, :cond_4

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p2, 0x0

    .line 7
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->canDeduct:Z

    .line 8
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 9
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->z:Z

    if-eqz p3, :cond_2

    .line 10
    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 11
    :cond_2
    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->o:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p1, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    :goto_0
    return p2

    .line 12
    :cond_3
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->canDeduct:Z

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304124_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_4
    return p3
.end method
