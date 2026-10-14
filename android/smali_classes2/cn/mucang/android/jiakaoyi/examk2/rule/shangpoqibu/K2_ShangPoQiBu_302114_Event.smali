.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

.field private greenLightStart:J

.field private greenTimeDown:J

.field private hasHandBrakeClose:Z

.field private hasShowTimeDown:Z

.field private redLightStart:J

.field private stopTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->hasShowTimeDown:Z

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    return-void
.end method

.method private postTimeDown(J)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    :cond_0
    cmp-long v5, p1, v3

    if-eqz v5, :cond_3

    const-wide/16 v5, -0x3e8

    cmp-long v7, p1, v5

    if-lez v7, :cond_3

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    sub-long/2addr v1, p1

    const-wide/16 v5, 0x320

    cmp-long v7, v1, v5

    if-lez v7, :cond_3

    .line 2
    :cond_1
    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    cmp-long v0, p1, v3

    if-nez v0, :cond_2

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->hasShowTimeDown:Z

    .line 4
    :cond_2
    const-class p1, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_3
    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    .line 2
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_2

    .line 3
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    if-eqz v3, :cond_3

    .line 4
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->hasHandBrakeClose:Z

    if-eqz v3, :cond_0

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz v3, :cond_0

    .line 5
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->hasShowTimeDown:Z

    if-nez v3, :cond_0

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    cmp-long v3, v7, v4

    if-nez v3, :cond_0

    .line 6
    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    .line 7
    :cond_0
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->hasHandBrakeClose:Z

    if-nez v3, :cond_3

    .line 8
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v3, :cond_1

    .line 9
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->hasHandBrakeClose:Z

    goto :goto_0

    .line 10
    :cond_1
    iput-wide v4, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    goto :goto_0

    .line 11
    :cond_2
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    if-eqz v3, :cond_3

    .line 12
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->hasShowTimeDown:Z

    if-nez v3, :cond_3

    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    cmp-long v3, v7, v4

    if-nez v3, :cond_3

    .line 13
    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    .line 14
    :cond_3
    :goto_0
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    cmp-long v3, v7, v4

    if-eqz v3, :cond_f

    .line 15
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 16
    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    sub-long/2addr v7, v9

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v9, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    mul-int/lit16 v9, v9, 0x3e8

    int-to-long v9, v9

    const-wide/16 v11, -0x1

    cmp-long v13, v7, v9

    if-ltz v13, :cond_8

    .line 17
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-lez v7, :cond_8

    .line 18
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->redLightStart:J

    cmp-long v9, v7, v4

    if-nez v9, :cond_4

    .line 19
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    .line 20
    iput-boolean v6, v7, Lcn/mucang/android/jiakaoyi/examk2/b/k;->g:Z

    .line 21
    iget-wide v7, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->redLightStart:J

    .line 22
    :cond_4
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    mul-int/lit16 v7, v7, 0x3e8

    int-to-long v7, v7

    iget-wide v9, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->redLightStart:J

    sub-long v13, v9, v13

    sub-long/2addr v7, v13

    const-wide/16 v13, 0x1f4

    cmp-long v15, v7, v13

    if-gtz v15, :cond_7

    if-lez v3, :cond_7

    .line 23
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    sget-object v8, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;->Green:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;

    iput-object v8, v7, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->c:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;

    const-string v8, "\u7eff\u706f\u5012\u8ba1\u65f6"

    .line 24
    iput-object v8, v7, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->b:Ljava/lang/String;

    .line 25
    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenLightStart:J

    cmp-long v8, v13, v4

    if-nez v8, :cond_5

    .line 26
    iput-wide v9, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenLightStart:J

    .line 27
    iput-wide v11, v7, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    :cond_5
    int-to-long v7, v3

    const-wide/16 v13, 0x3e8

    mul-long v7, v7, v13

    .line 28
    iget-wide v13, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenLightStart:J

    sub-long/2addr v9, v13

    sub-long/2addr v7, v9

    iput-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenTimeDown:J

    const-wide/16 v9, 0x1f4

    cmp-long v3, v7, v9

    if-gtz v3, :cond_6

    .line 29
    iput-wide v11, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenTimeDown:J

    .line 30
    :cond_6
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenTimeDown:J

    invoke-direct {v0, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->postTimeDown(J)V

    goto :goto_1

    .line 31
    :cond_7
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    sget-object v9, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;->Red:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;

    iput-object v9, v3, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->c:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent$Light;

    const-string v9, "\u7ea2\u706f\u5012\u8ba1\u65f6"

    .line 32
    iput-object v9, v3, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->b:Ljava/lang/String;

    .line 33
    invoke-direct {v0, v7, v8}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->postTimeDown(J)V

    .line 34
    :cond_8
    :goto_1
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenTimeDown:J

    const/4 v3, 0x0

    cmp-long v9, v7, v11

    if-nez v9, :cond_9

    .line 35
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v3

    .line 36
    :cond_9
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v7

    invoke-virtual {v7}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v7

    if-eqz v7, :cond_e

    .line 37
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v6, :cond_a

    .line 38
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->B:Z

    if-eqz v2, :cond_c

    .line 39
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 40
    invoke-direct {v0, v11, v12}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->postTimeDown(J)V

    goto :goto_2

    .line 41
    :cond_a
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    .line 42
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->C:Z

    if-eqz v2, :cond_c

    .line 43
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 44
    invoke-direct {v0, v11, v12}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->postTimeDown(J)V

    goto :goto_2

    .line 45
    :cond_b
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 46
    invoke-direct {v0, v11, v12}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->postTimeDown(J)V

    .line 47
    :cond_c
    :goto_2
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->redLightStart:J

    cmp-long v2, v7, v4

    if-eqz v2, :cond_d

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->stopTime:J

    sub-long/2addr v1, v4

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    sub-long/2addr v1, v4

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v7, v1, v4

    if-gez v7, :cond_d

    const/4 v1, 0x1

    goto :goto_3

    :cond_d
    const/4 v1, 0x0

    :goto_3
    if-eqz v1, :cond_f

    .line 48
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v3

    .line 49
    :cond_e
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->greenLightStart:J

    cmp-long v7, v1, v4

    if-eqz v7, :cond_f

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302114_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    cmp-long v7, v1, v4

    if-gtz v7, :cond_f

    .line 50
    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v3

    :cond_f
    return v6
.end method
