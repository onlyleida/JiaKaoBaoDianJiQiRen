.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;",
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
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0xbb8

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->minTime:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->hasOn:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->hasQiang:Z

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 17

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

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;

    .line 4
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 5
    iget-boolean v6, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->isLeftDiaoTou:Z

    if-nez v6, :cond_1

    .line 6
    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    goto :goto_0

    :cond_1
    move-object v6, v5

    .line 7
    :goto_0
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v7

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v7

    const-wide/16 v8, 0x0

    if-eqz v7, :cond_2

    .line 8
    iget-wide v10, v7, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->d:J

    goto :goto_1

    :cond_2
    move-wide v10, v8

    .line 9
    :goto_1
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v12, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    if-nez v12, :cond_3

    iget-boolean v12, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->hasQiang:Z

    if-nez v12, :cond_3

    if-eqz v7, :cond_3

    .line 10
    iget-wide v12, v7, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    cmp-long v14, v12, v8

    if-lez v14, :cond_3

    iget-wide v14, v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    cmp-long v16, v12, v14

    if-gez v16, :cond_3

    .line 11
    sput-boolean v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/QiangZhiLing;->isQiang:Z

    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->hasQiang:Z

    .line 12
    :cond_3
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v12, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Boolean;

    invoke-virtual {v12}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v12

    const/4 v13, 0x0

    const-wide/16 v14, 0xbb8

    if-eqz v12, :cond_c

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v12

    invoke-virtual {v12, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v12

    if-eqz v12, :cond_c

    .line 13
    iget-object v2, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-boolean v7, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->isJudgeFrame:Z

    if-eqz v7, :cond_b

    .line 14
    iget-boolean v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->lightSuccessOnce:Z

    if-eqz v7, :cond_7

    if-ne v6, v5, :cond_5

    .line 15
    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightMaxTime:J

    cmp-long v3, v1, v14

    if-lez v3, :cond_4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    return v4

    .line 16
    :cond_5
    iget-wide v1, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightMaxTime:J

    cmp-long v3, v1, v14

    if-lez v3, :cond_6

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    return v4

    :cond_7
    if-ne v6, v5, :cond_9

    .line 17
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    cmp-long v2, v5, v8

    if-lez v2, :cond_b

    .line 18
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->leftLightStartTime:J

    sub-long/2addr v1, v5

    cmp-long v3, v1, v14

    if-lez v3, :cond_8

    goto :goto_4

    :cond_8
    const/4 v4, 0x0

    :goto_4
    return v4

    .line 19
    :cond_9
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    cmp-long v2, v5, v8

    if-lez v2, :cond_b

    .line 20
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->rightLightStartTime:J

    sub-long/2addr v1, v5

    cmp-long v3, v1, v14

    if-lez v3, :cond_a

    goto :goto_5

    :cond_a
    const/4 v4, 0x0

    :cond_b
    :goto_5
    return v4

    .line 21
    :cond_c
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 22
    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->hasOn:Z

    if-eqz v7, :cond_d

    .line 23
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->lightOnMaxTime:J

    invoke-static {v10, v11, v5, v6}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->lightOnMaxTime:J

    .line 24
    :cond_d
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->hasOn:Z

    if-eqz v5, :cond_16

    .line 25
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-nez v5, :cond_11

    .line 26
    iget-object v1, v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->diaotou:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-ne v1, v2, :cond_16

    .line 27
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 28
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->lightSuccessOnce:Z

    if-eqz v1, :cond_f

    .line 29
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->lightOnMaxTime:J

    cmp-long v3, v1, v14

    if-lez v3, :cond_e

    goto :goto_6

    :cond_e
    const/4 v4, 0x0

    :goto_6
    return v4

    :cond_f
    cmp-long v1, v10, v8

    if-lez v1, :cond_16

    cmp-long v1, v10, v14

    if-lez v1, :cond_10

    goto :goto_7

    :cond_10
    const/4 v4, 0x0

    :goto_7
    return v4

    :cond_11
    if-ne v5, v4, :cond_13

    .line 30
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v1

    if-eqz v1, :cond_16

    .line 31
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    .line 32
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->lightOnMaxTime:J

    cmp-long v3, v1, v14

    if-lez v3, :cond_12

    goto :goto_8

    :cond_12
    const/4 v4, 0x0

    :goto_8
    return v4

    :cond_13
    const/4 v2, 0x2

    if-ne v5, v2, :cond_16

    .line 33
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    if-nez v2, :cond_14

    .line 34
    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;-><init>()V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    .line 35
    :cond_14
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    move-object/from16 v3, p2

    invoke-virtual {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 36
    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    cmp-long v1, v10, v8

    if-lez v1, :cond_16

    cmp-long v1, v10, v14

    if-lez v1, :cond_15

    goto :goto_9

    :cond_15
    const/4 v4, 0x0

    :cond_16
    :goto_9
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

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/diaotou/K3_DiaoTou_110118_Event;->lightSuccessOnce:Z

    return-void
.end method
