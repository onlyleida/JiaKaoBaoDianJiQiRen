.class public Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;
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
.field private dkCount:I

.field private isRKSuccess:Z

.field private final stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->isRKSuccess:Z

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->dkCount:I

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/b;

    .line 2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_3

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v2, 0x2

    if-ne p1, p3, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_0

    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->dkCount:I

    if-lt p1, v2, :cond_0

    return v1

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    if-nez p1, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 6
    :cond_1
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_2

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->F:Z

    if-eqz p1, :cond_2

    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->dkCount:I

    if-ge p1, v2, :cond_9

    .line 7
    :cond_2
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 8
    :cond_3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p3, v2, :cond_4

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->isRKSuccess:Z

    .line 10
    :cond_4
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->isRKSuccess:Z

    if-nez p3, :cond_7

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz p3, :cond_7

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p3, v0, :cond_5

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_7

    .line 11
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    float-to-double p2, p2

    const-wide v2, 0x3fc999999999999aL    # 0.2

    cmpg-double v0, p2, v2

    if-gez v0, :cond_8

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p2

    if-nez p2, :cond_6

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 14
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 16
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->isRKSuccess:Z

    .line 17
    iget p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->dkCount:I

    add-int/2addr p1, v1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->dkCount:I

    return v1

    .line 18
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 19
    :cond_8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-nez p2, :cond_9

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_9

    .line 20
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301110_Event;->stopChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_9
    return v1
.end method
