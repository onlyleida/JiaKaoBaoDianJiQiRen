.class public Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private checked:Z

.field private currentTime:J

.field private handleSuccess:Z

.field private hasJudged:Z

.field private timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/g/b;

    const-wide/16 v0, 0xbb8

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->hasJudged:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->currentTime:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/b/o;

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->E:Z

    if-nez p3, :cond_0

    .line 3
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/o;->b:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    .line 5
    :cond_0
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v2, p3

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->u:Z

    if-eqz v2, :cond_1

    .line 6
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 8
    :goto_0
    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->u:Z

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    if-eqz p3, :cond_2

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    .line 11
    :cond_2
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->u:Z

    if-nez p3, :cond_3

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    if-eqz p3, :cond_3

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 13
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    .line 14
    :cond_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    if-eqz p3, :cond_5

    .line 15
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-eqz p3, :cond_5

    .line 16
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 17
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 18
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    .line 19
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    .line 20
    :cond_4
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->x:Z

    if-nez p3, :cond_5

    const/4 p3, 0x0

    .line 21
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 22
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->currentTime:J

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-nez p3, :cond_5

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->currentTime:J

    .line 24
    :cond_5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->timeoutCheck:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->hasJudged:Z

    if-nez p3, :cond_8

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    if-eqz p3, :cond_8

    .line 25
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p3

    if-eqz p3, :cond_7

    .line 26
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 27
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->currentTime:J

    sub-long/2addr v3, v5

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    cmp-long v7, v3, v5

    if-ltz v7, :cond_6

    .line 28
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->hasJudged:Z

    return v1

    .line 29
    :cond_6
    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-nez p3, :cond_8

    .line 30
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    goto :goto_1

    .line 31
    :cond_7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    .line 32
    :cond_8
    :goto_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_b

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    if-eqz p3, :cond_b

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->w:Z

    if-eqz p3, :cond_b

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->checked:Z

    if-nez p3, :cond_b

    .line 33
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->checked:Z

    .line 34
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p3

    invoke-virtual {p3, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p3

    .line 35
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 36
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    if-eqz p3, :cond_b

    iget-wide v2, p3, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-gez p1, :cond_b

    .line 38
    :cond_a
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    .line 39
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_d

    .line 40
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p1

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->w:Z

    if-eqz p3, :cond_c

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->D:D

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-double v4, p1

    cmpg-double p1, v2, v4

    if-gtz p1, :cond_c

    const/4 p1, 0x1

    goto :goto_2

    :cond_c
    const/4 p1, 0x0

    :goto_2
    if-eqz p1, :cond_f

    .line 41
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 42
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    if-nez p1, :cond_f

    .line 43
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/o;->b:Z

    return v0

    .line 44
    :cond_d
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/zhijiaozhuanwan/K2_ZhiJiaoZhuanWan_305106_Event;->handleSuccess:Z

    if-nez p1, :cond_e

    .line 45
    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/o;->b:Z

    .line 46
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 47
    :cond_e
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_f

    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/j;->w:Z

    if-eqz p1, :cond_f

    .line 48
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    :cond_f
    return v1
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
