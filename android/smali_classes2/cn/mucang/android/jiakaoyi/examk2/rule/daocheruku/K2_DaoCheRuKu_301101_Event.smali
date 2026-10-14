.class public Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasLeaveLine:Z

.field private leaveSideLine:Z

.field private yaxianChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->hasLeaveLine:Z

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->leaveSideLine:Z

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->yaxianChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-void
.end method


# virtual methods
.method protected deductExtraData(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/trace/model/DeductExtraData;
    .locals 0

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/b;

    .line 2
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

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

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/b;

    .line 2
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->hasLeaveLine:Z

    const/4 p3, 0x1

    if-nez p2, :cond_1

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v1, :cond_1

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    sget-object v1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;->Line18:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$StartByLine;

    if-ne v0, v1, :cond_1

    .line 3
    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->w0:Z

    if-eqz p1, :cond_0

    .line 4
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->hasLeaveLine:Z

    :cond_0
    return p3

    .line 5
    :cond_1
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->t:Z

    if-eqz p2, :cond_2

    return p3

    .line 6
    :cond_2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->s:Z

    if-eqz p1, :cond_4

    .line 7
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->leaveSideLine:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->yaxianChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p1

    if-nez p1, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->yaxianChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 9
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->yaxianChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->yaxianChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    const/4 p1, 0x0

    .line 11
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->leaveSideLine:Z

    return p1

    .line 12
    :cond_4
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->leaveSideLine:Z

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301101_Event;->yaxianChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_5
    return p3
.end method
