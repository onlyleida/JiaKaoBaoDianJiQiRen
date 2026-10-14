.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private checkQBSC:Z

.field private currentDistance:F

.field private startCheck:Z

.field private final timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->startCheck:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->checkQBSC:Z

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->currentDistance:F

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v0, p2

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->QiBuShaChe:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;

    .line 3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->startCheck:Z

    .line 5
    iput-boolean v0, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->a:Z

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    return v1

    .line 7
    :cond_1
    iget-boolean p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->a:Z

    if-eqz p2, :cond_2

    return v1

    .line 8
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    .line 9
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->startCheck:Z

    if-eqz p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Float;

    invoke-virtual {p3}, Ljava/lang/Float;->floatValue()F

    move-result p3

    cmpl-float p2, p2, p3

    if-lez p2, :cond_7

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_7

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->startCheck:Z

    .line 13
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->checkQBSC:Z

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->currentDistance:F

    goto :goto_0

    .line 15
    :cond_3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->startCheck:Z

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 16
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p2

    if-nez p2, :cond_4

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 18
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz p2, :cond_5

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 20
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->startCheck:Z

    .line 21
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_7

    .line 22
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->startCheck:Z

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 24
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->checkQBSC:Z

    .line 25
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->currentDistance:F

    goto :goto_0

    .line 26
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 27
    :cond_7
    :goto_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->checkQBSC:Z

    if-eqz p2, :cond_9

    .line 28
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    const/4 p3, 0x0

    if-eqz p2, :cond_8

    .line 29
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->checkQBSC:Z

    .line 30
    iput p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->currentDistance:F

    .line 31
    :cond_8
    iget p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->currentDistance:F

    cmpl-float p2, p2, p3

    if-lez p2, :cond_9

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->currentDistance:F

    sub-float/2addr p1, p2

    const/high16 p2, 0x42c80000    # 100.0f

    mul-float p1, p1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401163:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_9

    .line 32
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->checkQBSC:Z

    .line 33
    iput p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300113_Event;->currentDistance:F

    return v0

    :cond_9
    return v1
.end method
