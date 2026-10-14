.class public Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;
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

.field private isDelay:Z

.field private isPass:Z

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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->None:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->hasMoveCar:Z

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isDelay:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isPass:Z

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
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->y:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_16

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->H:Z

    if-nez v0, :cond_16

    .line 3
    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->f:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_7

    .line 4
    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->u:Z

    if-eqz p1, :cond_0

    return v1

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p3, v0, :cond_1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-eq p1, p3, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    if-eqz p1, :cond_2

    .line 8
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isPass:Z

    if-eqz p1, :cond_2

    return v1

    .line 9
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p3, v0, :cond_3

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p3, v0, :cond_4

    :cond_3
    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->i0:I

    if-lez p3, :cond_4

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->h0:Z

    if-nez p1, :cond_4

    return v1

    .line 11
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p3, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p3, v0, :cond_5

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p3, v0, :cond_6

    :cond_5
    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->d0:Z

    if-eqz p1, :cond_6

    .line 12
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isDelay:Z

    .line 13
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p1

    if-nez p1, :cond_c

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->hasMoveCar:Z

    if-eqz p1, :cond_c

    .line 14
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->hasMoveCar:Z

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    goto :goto_0

    .line 16
    :cond_7
    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->B:Z

    if-eqz v0, :cond_9

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq v0, v3, :cond_8

    move-object v0, p3

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v3, :cond_9

    .line 17
    :cond_8
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isPass:Z

    .line 18
    :cond_9
    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p3, v0, :cond_a

    .line 19
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isPass:Z

    .line 20
    :cond_a
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->hasMoveCar:Z

    .line 21
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p3, v0, :cond_b

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p3, v0, :cond_b

    .line 22
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 23
    :cond_b
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isDelay:Z

    if-nez p1, :cond_c

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 25
    :cond_c
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p1

    if-eqz p1, :cond_14

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Back:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p1, p3, :cond_12

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p3, :cond_d

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->X:Z

    if-nez p1, :cond_d

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p1, v0, :cond_12

    :cond_d
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->Y:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->Step3:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne v0, v3, :cond_f

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq v0, v3, :cond_e

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, v0, :cond_f

    :cond_e
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 27
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_12

    :cond_f
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v3, :cond_10

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->b0:Z

    if-nez v0, :cond_11

    :cond_10
    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step5:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v3, :cond_14

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->c0:Z

    if-eqz v0, :cond_14

    :cond_11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, p3, :cond_14

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->a0:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    sget-object p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;->None:Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker$ToucheLineState;

    if-ne p1, p3, :cond_14

    :cond_12
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p3, v0, :cond_14

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p1, p3, :cond_14

    .line 28
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->isDelay:Z

    if-eqz p1, :cond_13

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->hasMoveCar:Z

    if-nez p1, :cond_13

    return v1

    .line 29
    :cond_13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 30
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->hasMoveCar:Z

    return v2

    .line 31
    :cond_14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_17

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p1

    if-eqz p1, :cond_17

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, p3, :cond_17

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p2, p3, :cond_15

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p2, p3, :cond_15

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step6:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p2, p3, :cond_15

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p2, :cond_17

    :cond_15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 32
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p1

    if-eqz p1, :cond_17

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 34
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->hasMoveCar:Z

    return v2

    .line 35
    :cond_16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301107_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_17
    return v1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
