.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;
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
.field private check:Z

.field private lastDeductTime:J

.field private lastState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->lastState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->v()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne p3, v2, :cond_0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    return v1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p3

    .line 4
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    .line 6
    :cond_1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    if-nez v2, :cond_2

    return v1

    .line 7
    :cond_2
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->lastDeductTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x7d0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    return v1

    .line 8
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p3, :cond_4

    .line 9
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->lastDeductTime:J

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    return v0

    .line 11
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-eq v2, v3, :cond_6

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->lastState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-nez p3, :cond_5

    .line 13
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    :cond_5
    return v1

    :cond_6
    if-eqz p3, :cond_7

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->lastState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    goto :goto_0

    .line 15
    :cond_7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->check:Z

    .line 16
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->lastState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ACC:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne p1, v2, :cond_8

    return v1

    .line 17
    :cond_8
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p1

    if-eqz p1, :cond_9

    return v1

    :cond_9
    if-nez p3, :cond_a

    .line 18
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300108_Event;->lastDeductTime:J

    return v0

    :cond_a
    return v1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
