.class public Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;
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
.field private hasMoveCar:Z

.field private lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private final timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->hasMoveCar:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/b;

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p3, v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p3, v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 4
    :cond_0
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->z:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    if-nez p3, :cond_5

    .line 5
    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    if-eqz p3, :cond_2

    .line 6
    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p3, v1, :cond_1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-eq p1, p3, :cond_1

    return v0

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p1

    if-nez p1, :cond_3

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->hasMoveCar:Z

    if-eqz p1, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->hasMoveCar:Z

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 11
    :cond_3
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p3, :cond_6

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p2, p3, :cond_4

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p2, p3, :cond_4

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p2, p3, :cond_4

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p2, :cond_6

    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    const/4 p1, 0x0

    .line 14
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->hasMoveCar:Z

    return p1

    .line 15
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301108_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_6
    return v0
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
