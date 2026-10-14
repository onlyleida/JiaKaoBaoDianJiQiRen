.class public Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;
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

.field private hasHandBrakeClose:Z

.field private hasShowTimeDown:Z

.field private stopTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->hasShowTimeDown:Z

    return-void
.end method

.method private postTimeDown(JLcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-eqz v5, :cond_0

    cmp-long v5, p1, v3

    if-eqz v5, :cond_1

    :cond_0
    cmp-long v5, p1, v3

    if-eqz v5, :cond_4

    const-wide/16 v5, -0x3e8

    cmp-long v7, p1, v5

    if-lez v7, :cond_4

    cmp-long v5, v1, v3

    if-eqz v5, :cond_1

    sub-long/2addr v1, p1

    const-wide/16 v5, 0x384

    cmp-long v7, v1, v5

    if-lez v7, :cond_4

    .line 2
    :cond_1
    iput-wide p1, v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    const-wide/16 v5, 0x3e8

    div-long/2addr v0, v5

    const-wide/16 v5, 0xa

    cmp-long v2, v0, v5

    if-nez v2, :cond_2

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const-string v1, "\u8d77\u6b65\u65f6\u95f4\u4ec5\u526910\u79d2"

    invoke-virtual {p3, v1, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->H(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_2
    cmp-long p3, p1, v3

    if-nez p3, :cond_3

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->hasShowTimeDown:Z

    .line 7
    :cond_3
    const-class p1, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_4
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

    if-gtz v0, :cond_0

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
    const-class v2, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/examk2/b/k;

    .line 2
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v5, 0x1

    const-wide/16 v6, 0x0

    if-eqz v4, :cond_2

    .line 3
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    if-eqz v4, :cond_3

    .line 4
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->hasHandBrakeClose:Z

    if-eqz v4, :cond_0

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-eqz v4, :cond_0

    .line 5
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->hasShowTimeDown:Z

    if-nez v4, :cond_0

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_0

    .line 6
    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    .line 7
    :cond_0
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->hasHandBrakeClose:Z

    if-nez v4, :cond_3

    .line 8
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v4, :cond_1

    .line 9
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->hasHandBrakeClose:Z

    goto :goto_0

    .line 10
    :cond_1
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    goto :goto_0

    .line 11
    :cond_2
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean v4, v4, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    if-eqz v4, :cond_3

    .line 12
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->hasShowTimeDown:Z

    if-nez v4, :cond_3

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    cmp-long v4, v8, v6

    if-nez v4, :cond_3

    .line 13
    iget-wide v8, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    .line 14
    :cond_3
    :goto_0
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    const-wide/16 v10, -0x1

    cmp-long v4, v8, v6

    if-eqz v4, :cond_7

    .line 15
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v8, v4

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    sub-long/2addr v12, v14

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v14, v4

    sub-long/2addr v12, v14

    sub-long/2addr v8, v12

    .line 17
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v12, v4

    cmp-long v4, v8, v12

    if-lez v4, :cond_4

    goto :goto_1

    :cond_4
    move-wide v10, v8

    :goto_1
    invoke-direct {v0, v10, v11, v1}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->postTimeDown(JLcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    const/4 v1, 0x0

    cmp-long v4, v8, v6

    if-gez v4, :cond_5

    const/4 v4, 0x1

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    .line 18
    :goto_2
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v10, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_6

    if-eqz v4, :cond_8

    .line 19
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    iput-wide v8, v3, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    .line 20
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 21
    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 22
    :cond_6
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v10

    invoke-virtual {v10}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v10

    if-eqz v10, :cond_8

    if-eqz v4, :cond_8

    .line 23
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    iput-wide v8, v3, Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;->a:J

    .line 24
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v2

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->event:Lcn/mucang/android/jiakaoyi/examk2/event/ShangPoTimeDownEvent;

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 26
    :cond_7
    invoke-direct {v0, v10, v11, v1}, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->postTimeDown(JLcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 27
    :cond_8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v5, :cond_9

    .line 28
    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->B:Z

    if-eqz v1, :cond_b

    .line 29
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    goto :goto_3

    .line 30
    :cond_9
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShangPoQiBuConfig;->p404139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_a

    .line 31
    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/examk2/collision/ShangPoChecker;->C:Z

    if-eqz v1, :cond_b

    .line 32
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    goto :goto_3

    .line 33
    :cond_a
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result v1

    if-eqz v1, :cond_b

    .line 34
    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/examk2/rule/shangpoqibu/K2_ShangPoQiBu_302113_Event;->stopTime:J

    :cond_b
    :goto_3
    return v5
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
