.class public Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;
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

.field private delayDeduct:Z

.field private firstChangeStep:Z

.field private hasStop:Z

.field private isFirstStop:Z

.field private startTime:J

.field private final timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    const-wide/16 v0, 0x1388

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->canDeduct:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->isFirstStop:Z

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->hasStop:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->firstChangeStep:Z

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/b/a;

    .line 2
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->T:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_f

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406155:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne v0, v2, :cond_0

    return v1

    .line 4
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_8

    .line 5
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->isFirstStop:Z

    if-eqz p1, :cond_1

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p2, :cond_1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 6
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->hasStop:Z

    return v1

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->D:Z

    if-eqz p2, :cond_3

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-eq p2, v0, :cond_2

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p2, :cond_3

    :cond_2
    return v1

    .line 8
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p1

    if-nez p1, :cond_4

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->canDeduct:Z

    if-eqz p1, :cond_4

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 10
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 11
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, v0, :cond_5

    .line 12
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    return v1

    .line 13
    :cond_5
    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->W:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p2, :cond_6

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    return v1

    .line 15
    :cond_6
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_7

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;->v:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_7

    .line 16
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    return v1

    .line 17
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 18
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->canDeduct:Z

    return v2

    .line 19
    :cond_8
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step1:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const-wide/16 v4, 0x0

    if-ne v0, v3, :cond_a

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 20
    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->startTime:J

    cmp-long p1, v6, v4

    if-nez p1, :cond_9

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    if-eqz p1, :cond_9

    .line 21
    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->startTime:J

    .line 22
    :cond_9
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    if-eqz p1, :cond_d

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->startTime:J

    sub-long/2addr p1, v6

    const-wide/16 v6, 0x3e8

    cmp-long p3, p1, v6

    if-ltz p3, :cond_d

    .line 23
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    .line 24
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->startTime:J

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    return v2

    .line 26
    :cond_a
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step3:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, v0, :cond_b

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2CeFangTingCheConfig;->p406156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_b

    .line 27
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    if-eqz p2, :cond_d

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isBack()Z

    move-result p2

    if-eqz p2, :cond_d

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->isBack()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 28
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    return v2

    .line 30
    :cond_b
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p3, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step4:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p2, p3, :cond_c

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->firstChangeStep:Z

    if-eqz p2, :cond_c

    .line 31
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    .line 32
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 33
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->firstChangeStep:Z

    goto :goto_0

    .line 34
    :cond_c
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->firstChangeStep:Z

    if-nez p2, :cond_d

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/b;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step2:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    if-ne p1, p2, :cond_d

    .line 35
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->firstChangeStep:Z

    .line 36
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->delayDeduct:Z

    .line 37
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->startTime:J

    .line 38
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 39
    :cond_d
    :goto_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->hasStop:Z

    if-eqz p1, :cond_e

    .line 40
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->isFirstStop:Z

    .line 41
    :cond_e
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->canDeduct:Z

    goto :goto_1

    .line 42
    :cond_f
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/cefangtingche/K2_CeFangTingChe_304112_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    :cond_10
    :goto_1
    return v1
.end method
