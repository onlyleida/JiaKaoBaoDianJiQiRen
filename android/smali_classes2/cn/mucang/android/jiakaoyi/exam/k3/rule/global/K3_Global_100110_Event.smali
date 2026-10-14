.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private firstTime:J

.field private isFlameOut:Z

.field private isInit:Z

.field private lastEngineStart:Z

.field private startTime:J

.field private tingcheLaHandbrake:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->firstTime:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isFlameOut:Z

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isInit:Z

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->tingcheLaHandbrake:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/e;->a()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p3

    if-eqz p3, :cond_1

    return v0

    .line 3
    :cond_1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isInit:Z

    const-wide/16 v1, 0x0

    if-nez p3, :cond_2

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isInit:Z

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    return v0

    .line 7
    :cond_2
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->EngineOff:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p3

    const/4 v3, 0x0

    if-eqz p3, :cond_4

    .line 8
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p2

    if-nez p2, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isFlameOut:Z

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    .line 10
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    return v0

    .line 11
    :cond_4
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result p3

    if-eqz p3, :cond_9

    .line 12
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200220:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_7

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->tingcheLaHandbrake:Z

    if-eqz p3, :cond_5

    goto :goto_0

    .line 13
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p3, :cond_a

    .line 14
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->tingcheLaHandbrake:Z

    .line 15
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    if-eqz p2, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p2

    if-nez p2, :cond_6

    const/4 v3, 0x1

    :cond_6
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isFlameOut:Z

    .line 16
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    .line 17
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    return v0

    .line 18
    :cond_7
    :goto_0
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    if-eqz p2, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p2

    if-nez p2, :cond_8

    const/4 v3, 0x1

    :cond_8
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isFlameOut:Z

    .line 19
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    .line 20
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    return v0

    .line 21
    :cond_9
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->tingcheLaHandbrake:Z

    .line 22
    :cond_a
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p3

    if-eqz p3, :cond_b

    .line 23
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isFlameOut:Z

    goto :goto_2

    .line 24
    :cond_b
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    if-eqz p3, :cond_c

    .line 25
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isFlameOut:Z

    .line 26
    :cond_c
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->isFlameOut:Z

    if-eqz p3, :cond_10

    .line 27
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-gt p3, v4, :cond_f

    .line 28
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    cmp-long p3, v4, v1

    if-gtz p3, :cond_d

    .line 29
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    .line 30
    :cond_d
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    .line 31
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    sub-long/2addr p1, v1

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v1, p3

    cmp-long p3, p1, v1

    if-gtz p3, :cond_e

    goto :goto_1

    :cond_e
    const/4 v0, 0x0

    :goto_1
    return v0

    .line 32
    :cond_f
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->startTime:J

    .line 33
    :cond_10
    :goto_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100110_Event;->lastEngineStart:Z

    return v0
.end method
