.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;
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
.field private lastLeftLightOn:Z

.field private lastRightLightOn:Z

.field private lastTurnLeftTime:J

.field private lastTurnRightTime:J

.field private leftLightOnTime:J

.field private rightLightOnTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->leftLightOnTime:J

    .line 3
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->rightLightOnTime:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastLeftLightOn:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastRightLightOn:Z

    .line 6
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnLeftTime:J

    .line 7
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnRightTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->c()Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    .line 3
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastLeftLightOn:Z

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->leftLightOnTime:J

    .line 5
    :cond_0
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastRightLightOn:Z

    if-nez p3, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide v0, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->rightLightOnTime:J

    .line 7
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result p3

    if-eqz p3, :cond_5

    .line 8
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->startTurningLeft:Z

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    if-eqz p3, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 9
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnLeftTime:J

    cmp-long v4, p2, v1

    if-lez v4, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnLeftTime:J

    sub-long/2addr p2, v4

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/lit16 v4, v4, 0x3e8

    int-to-long v4, v4

    cmp-long v6, p2, v4

    if-gtz v6, :cond_2

    .line 10
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->leftLightOnTime:J

    cmp-long v4, p2, v1

    if-lez v4, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->leftLightOnTime:J

    sub-long/2addr p2, v1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnLeftTime:J

    sub-long/2addr v1, v4

    cmp-long v4, p2, v1

    if-lez v4, :cond_2

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastLeftLightOn:Z

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastRightLightOn:Z

    return v0

    .line 13
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnLeftTime:J

    goto :goto_0

    .line 14
    :cond_3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->hpGlobalChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpGlobalChecker;->startTurningRight:Z

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 15
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnRightTime:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnRightTime:J

    sub-long/2addr v3, v5

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200156:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v5, p2

    cmp-long p2, v3, v5

    if-gtz p2, :cond_4

    .line 16
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->rightLightOnTime:J

    cmp-long p2, v3, v1

    if-lez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->rightLightOnTime:J

    sub-long/2addr v1, v3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnRightTime:J

    sub-long/2addr v3, v5

    cmp-long p2, v1, v3

    if-lez p2, :cond_4

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastLeftLightOn:Z

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastRightLightOn:Z

    return v0

    .line 19
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastTurnRightTime:J

    .line 20
    :cond_5
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastLeftLightOn:Z

    .line 21
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100226_Event;->lastRightLightOn:Z

    const/4 p1, 0x1

    return p1
.end method
