.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;
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
.field private beforePressLineTurnLightOn:Z

.field private chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

.field private isDeduct:Z

.field private isInit:Z

.field private lastPressLine:Z

.field private pressLineStartDistance:F

.field private pressLineStartTime:J

.field private startDistance:F

.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startTime:J

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startDistance:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->beforePressLineTurnLightOn:Z

    .line 5
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartTime:J

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartDistance:F

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->lastPressLine:Z

    .line 8
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isDeduct:Z

    return-void
.end method

.method private reset()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startTime:J

    const/4 v2, 0x0

    .line 2
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startDistance:F

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartTime:J

    .line 4
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartDistance:F

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isDeduct:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p3, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p3, 0x1

    .line 3
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressDashLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {v0, p1, p2, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result v0

    .line 5
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isInit:Z

    if-nez v3, :cond_2

    .line 6
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isInit:Z

    .line 7
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->beforePressLineTurnLightOn:Z

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->lastPressLine:Z

    return v2

    .line 9
    :cond_2
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->lastPressLine:Z

    if-nez v3, :cond_3

    if-nez v0, :cond_3

    .line 10
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->beforePressLineTurnLightOn:Z

    .line 11
    :cond_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    if-nez p3, :cond_4

    .line 12
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    :cond_4
    if-eqz v0, :cond_10

    .line 13
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartTime:J

    const-wide/16 v5, 0x0

    cmp-long p3, v3, v5

    if-nez p3, :cond_5

    .line 14
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartTime:J

    .line 15
    :cond_5
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartDistance:F

    const/4 v3, 0x0

    cmpl-float p3, p3, v3

    if-nez p3, :cond_6

    .line 16
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartDistance:F

    .line 17
    :cond_6
    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Z

    move-result p3

    if-eqz p3, :cond_7

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    if-eqz p3, :cond_7

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    const/4 p3, 0x1

    goto :goto_2

    :cond_7
    const/4 p3, 0x0

    :goto_2
    if-eqz p3, :cond_c

    .line 18
    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startTime:J

    cmp-long p3, v7, v5

    if-nez p3, :cond_8

    .line 19
    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startTime:J

    .line 20
    :cond_8
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startDistance:F

    cmpl-float p3, p3, v3

    if-nez p3, :cond_9

    .line 21
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startDistance:F

    .line 22
    :cond_9
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isDeduct:Z

    if-nez p3, :cond_11

    .line 23
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startTime:J

    sub-long/2addr v3, v5

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-gtz p3, :cond_a

    .line 24
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->startDistance:F

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->chaoCheStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206158:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_b

    :cond_a
    const/4 v1, 0x1

    :cond_b
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isDeduct:Z

    goto :goto_3

    .line 25
    :cond_c
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->beforePressLineTurnLightOn:Z

    if-eqz p3, :cond_f

    .line 26
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isDeduct:Z

    if-nez p3, :cond_11

    .line 27
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide v3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartTime:J

    sub-long/2addr v3, v5

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200170:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    mul-int/lit16 p3, p3, 0x3e8

    int-to-long v5, p3

    cmp-long p3, v3, v5

    if-gtz p3, :cond_d

    .line 28
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->pressLineStartDistance:F

    sub-float/2addr p1, p3

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200227:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_e

    :cond_d
    const/4 v1, 0x1

    :cond_e
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isDeduct:Z

    goto :goto_3

    .line 29
    :cond_f
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->reset()V

    goto :goto_3

    .line 30
    :cond_10
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->reset()V

    .line 31
    :cond_11
    :goto_3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->lastPressLine:Z

    .line 32
    :cond_12
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->PressDashLine:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p1

    if-eqz p1, :cond_13

    .line 33
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->reset()V

    .line 34
    :cond_13
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100128_Event;->isDeduct:Z

    xor-int/2addr p1, v2

    return p1
.end method
