.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;
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
.field private checkStartTime:J

.field private lastHasRunningTurnLightStep:Z

.field private lastStepRunning:Z

.field private needCheckTurnLight:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->lastHasRunningTurnLightStep:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->needCheckTurnLight:Z

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->lastStepRunning:Z

    return-void
.end method

.method private hasTurnLightStepRunning(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LinTing:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_HuanDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_BianDaoChaoChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_TingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v2, :cond_1

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    return v1
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->q()Ljava/util/List;

    move-result-object p2

    .line 2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    .line 3
    :goto_0
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->lastStepRunning:Z

    if-nez v2, :cond_1

    if-eqz p3, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 4
    :goto_1
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->lastStepRunning:Z

    .line 5
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->hasTurnLightStepRunning(Ljava/util/List;)Z

    move-result p2

    const-wide/16 v3, 0x0

    if-nez p2, :cond_a

    .line 6
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->lastHasRunningTurnLightStep:Z

    if-eqz p3, :cond_4

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_2

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    goto :goto_3

    :cond_3
    :goto_2
    const/4 p3, 0x1

    :goto_3
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->needCheckTurnLight:Z

    :cond_4
    if-eqz v2, :cond_5

    .line 8
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->needCheckTurnLight:Z

    .line 9
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    .line 10
    :cond_5
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->needCheckTurnLight:Z

    if-eqz p3, :cond_b

    .line 11
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    cmp-long p3, v5, v3

    if-nez p3, :cond_6

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-wide v5, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    .line 13
    :cond_6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_4

    :cond_7
    const/4 p3, 0x0

    goto :goto_5

    :cond_8
    :goto_4
    const/4 p3, 0x1

    :goto_5
    if-eqz p3, :cond_9

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x1388

    cmp-long p1, v5, v7

    if-lez p1, :cond_b

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->needCheckTurnLight:Z

    .line 16
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    .line 17
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->lastHasRunningTurnLightStep:Z

    return v1

    .line 18
    :cond_9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->needCheckTurnLight:Z

    .line 19
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    goto :goto_6

    .line 20
    :cond_a
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->needCheckTurnLight:Z

    .line 21
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->checkStartTime:J

    .line 22
    :cond_b
    :goto_6
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100121_Event;->lastHasRunningTurnLightStep:Z

    return v0
.end method
