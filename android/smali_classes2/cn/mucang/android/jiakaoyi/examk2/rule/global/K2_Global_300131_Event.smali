.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;
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

.field private startCheck:Z

.field private final timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->startCheck:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->checkQBSC:Z

    .line 4
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

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

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

    const/high16 v2, 0x42c80000    # 100.0f

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    .line 4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->checkQBSC:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->b:F

    sub-float/2addr p1, p2

    mul-float p1, p1, v2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401163:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_1

    .line 5
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->checkQBSC:Z

    .line 6
    iput v0, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->b:F

    .line 7
    iput-boolean v1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->a:Z

    return v3

    .line 8
    :cond_1
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->startCheck:Z

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 10
    iput-boolean v3, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->a:Z

    return v1

    .line 11
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    .line 12
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->startCheck:Z

    if-eqz p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/FloatValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float p2, p2, v4

    if-lez p2, :cond_7

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_7

    .line 15
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->startCheck:Z

    .line 16
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->checkQBSC:Z

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->b:F

    goto :goto_0

    .line 18
    :cond_3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->startCheck:Z

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->e()Z

    move-result p2

    if-nez p2, :cond_4

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 21
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz p2, :cond_5

    .line 22
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 23
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->startCheck:Z

    .line 24
    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_7

    .line 25
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->startCheck:Z

    .line 26
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 27
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->checkQBSC:Z

    .line 28
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iput p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->b:F

    goto :goto_0

    .line 29
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->timeoutChecker:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 30
    :cond_7
    :goto_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->checkQBSC:Z

    if-eqz p2, :cond_8

    .line 31
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->B:F

    iget p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->b:F

    sub-float/2addr p1, p2

    mul-float p1, p1, v2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401163:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_8

    .line 32
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300131_Event;->checkQBSC:Z

    .line 33
    iput v0, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->b:F

    .line 34
    iput-boolean v1, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->a:Z

    return v3

    :cond_8
    return v1
.end method
