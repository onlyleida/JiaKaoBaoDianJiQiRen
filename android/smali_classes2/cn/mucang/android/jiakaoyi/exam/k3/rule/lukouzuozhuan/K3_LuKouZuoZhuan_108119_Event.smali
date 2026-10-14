.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private hasOn:Z

.field private hasQiang:Z

.field private lightOnMaxTime:J

.field private lightSuccessOnce:Z

.field private final minTime:J

.field private runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0xbb8

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->minTime:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->hasOn:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->hasQiang:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    .line 1
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->f:Z

    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 2
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v4

    .line 3
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;

    .line 4
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v5

    const-wide/16 v7, 0x0

    if-eqz v5, :cond_1

    .line 5
    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    goto :goto_0

    :cond_1
    move-wide v9, v7

    .line 6
    :goto_0
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v11, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_2

    iget-boolean v11, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->hasQiang:Z

    if-nez v11, :cond_2

    if-eqz v5, :cond_2

    .line 7
    iget-wide v11, v5, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    cmp-long v13, v11, v7

    if-lez v13, :cond_2

    iget-wide v13, v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    cmp-long v15, v11, v13

    if-gez v15, :cond_2

    .line 8
    sput-boolean v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/QiangZhiLing;->isQiang:Z

    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->hasQiang:Z

    .line 9
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v11

    invoke-virtual {v11, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v11

    const/4 v12, 0x0

    const-wide/16 v13, 0xbb8

    if-eqz v11, :cond_7

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v11, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v11, v11, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_7

    .line 10
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-boolean v5, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    if-eqz v5, :cond_6

    .line 11
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->lightSuccessOnce:Z

    if-eqz v5, :cond_4

    .line 12
    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightMaxTime:J

    cmp-long v3, v1, v13

    if-lez v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    :goto_1
    return v4

    .line 13
    :cond_4
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    cmp-long v2, v5, v7

    if-lez v2, :cond_6

    .line 14
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    sub-long/2addr v1, v5

    cmp-long v3, v1, v13

    if-lez v3, :cond_5

    goto :goto_2

    :cond_5
    const/4 v4, 0x0

    :cond_6
    :goto_2
    return v4

    .line 15
    :cond_7
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v11

    invoke-virtual {v11, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 16
    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->hasOn:Z

    if-eqz v5, :cond_8

    .line 17
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->lightOnMaxTime:J

    invoke-static {v9, v10, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->lightOnMaxTime:J

    .line 18
    :cond_8
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->hasOn:Z

    if-eqz v5, :cond_11

    .line 19
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;->p208107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_c

    .line 20
    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-ne v1, v2, :cond_11

    .line 21
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 22
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->lightSuccessOnce:Z

    if-eqz v1, :cond_a

    .line 23
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->lightOnMaxTime:J

    cmp-long v3, v1, v13

    if-lez v3, :cond_9

    goto :goto_3

    :cond_9
    const/4 v4, 0x0

    :goto_3
    return v4

    :cond_a
    cmp-long v1, v9, v7

    if-lez v1, :cond_11

    cmp-long v1, v9, v13

    if-lez v1, :cond_b

    goto :goto_4

    :cond_b
    const/4 v4, 0x0

    :goto_4
    return v4

    :cond_c
    if-ne v5, v4, :cond_e

    .line 24
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 25
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 26
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->lightOnMaxTime:J

    cmp-long v3, v1, v13

    if-lez v3, :cond_d

    goto :goto_5

    :cond_d
    const/4 v4, 0x0

    :goto_5
    return v4

    :cond_e
    const/4 v2, 0x2

    if-ne v5, v2, :cond_11

    .line 27
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    if-nez v2, :cond_f

    .line 28
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    .line 29
    :cond_f
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 30
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    cmp-long v1, v9, v7

    if-lez v1, :cond_11

    cmp-long v1, v9, v13

    if-lez v1, :cond_10

    goto :goto_6

    :cond_10
    const/4 v4, 0x0

    :cond_11
    :goto_6
    return v4
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 3
    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p1

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    .line 5
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108119_Event;->lightSuccessOnce:Z

    return-void
.end method
