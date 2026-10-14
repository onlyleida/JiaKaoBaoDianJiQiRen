.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private lightOffDistance:F

.field private lightOffTime:J

.field private final rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

.field private runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

.field private runOverBanMaLineDistance:F

.field private runOverBanMaLineTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffTime:J

    const/4 p2, 0x0

    .line 4
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffDistance:F

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineTime:J

    .line 6
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineDistance:F

    .line 7
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/a/d;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-direct {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/a/d;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->f:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 3
    :cond_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_9

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffTime:J

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffDistance:F

    .line 8
    :cond_1
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineTime:J

    const/4 v0, 0x0

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_7

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineDistance:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-nez v2, :cond_7

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {v2, p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v2

    if-nez v2, :cond_2

    return v0

    .line 10
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    if-nez v0, :cond_3

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    .line 12
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/RunOverBanMaLineChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 13
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineTime:J

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineDistance:F

    if-eqz p3, :cond_4

    .line 15
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 16
    :cond_4
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffTime:J

    cmp-long v0, p2, v4

    if-lez v0, :cond_5

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->runOverBanMaLineTime:J

    sub-long/2addr v4, p2

    const-wide/16 p2, 0x1f4

    cmp-long v0, v4, p2

    if-ltz v0, :cond_6

    :cond_5
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffDistance:F

    cmpl-float p3, p2, v3

    if-lez p3, :cond_b

    sub-float/2addr p1, p2

    float-to-double p1, p1

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    cmpg-double p3, p1, v2

    if-gez p3, :cond_b

    .line 17
    :cond_6
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    :cond_7
    if-eqz p3, :cond_8

    .line 18
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 19
    :cond_8
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffTime:J

    cmp-long v2, p2, v4

    if-lez v2, :cond_b

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->lightOffTime:J

    sub-long/2addr p1, v2

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouYouZhuanStepConfig;->p209107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v2, p3

    cmp-long p3, p1, v2

    if-lez p3, :cond_b

    .line 20
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v0

    .line 21
    :cond_9
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne p2, p3, :cond_a

    .line 22
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    .line 23
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouyouzhuan/K3_LuKouYouZhuan_109116_Event;->rightLightBuDaHelper:Lcn/mucang/android/jiakaoyi/exam/a/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/a/d;->b()V

    :cond_b
    return v1
.end method
