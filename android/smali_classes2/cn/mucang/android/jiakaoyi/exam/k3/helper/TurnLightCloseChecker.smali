.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;
    }
.end annotation


# instance fields
.field private checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

.field private final checkTime:J

.field private startTime:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkTime:J

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)Z
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkTime:J

    const/4 p3, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return p3

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouYouZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, -0x1

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;

    .line 4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne v0, v4, :cond_1

    .line 5
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->RightLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_0

    .line 7
    :cond_1
    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->TurningEND:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne v0, v4, :cond_2

    .line 8
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_2

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    :cond_2
    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    .line 10
    :goto_1
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LuKouZuoZhuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v4

    if-eqz v4, :cond_6

    .line 11
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;

    .line 12
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-ne v0, v4, :cond_4

    .line 13
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->LeftLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_2

    .line 15
    :cond_4
    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->TurningEND:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-ne v0, v4, :cond_5

    .line 16
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    cmp-long v0, v4, v2

    if-nez v0, :cond_5

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    :cond_5
    :goto_2
    const/4 v0, 0x0

    .line 18
    :cond_6
    sget-object v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_DiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->t(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object v5

    if-eqz v5, :cond_a

    .line 19
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;

    .line 20
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->diaotou:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-ne v0, v5, :cond_8

    .line 21
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    invoke-virtual {p2, v4}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;

    .line 22
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DiaoTouStepConfig;->p210135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_7

    .line 23
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 24
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->LeftLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_3

    .line 25
    :cond_7
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 26
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->RightLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_3

    .line 27
    :cond_8
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-ne v0, p2, :cond_9

    .line 28
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_9

    .line 29
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    :cond_9
    :goto_3
    const/4 v0, 0x0

    :cond_a
    if-eqz v0, :cond_d

    .line 30
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne p4, p2, :cond_b

    .line 31
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 32
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->LeftLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_4

    .line 33
    :cond_b
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne p4, p2, :cond_c

    .line 34
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 35
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->RightLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_4

    .line 36
    :cond_c
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne p4, p2, :cond_d

    .line 37
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    cmp-long p2, v4, v2

    if-nez p2, :cond_d

    .line 38
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 39
    :cond_d
    :goto_4
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    cmp-long p2, v4, v2

    if-eqz p2, :cond_10

    .line 40
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    sget-object p4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->LeftLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    if-ne p2, p4, :cond_e

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_e

    .line 41
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 42
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_5

    .line 43
    :cond_e
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    sget-object p4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->RightLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    if-ne p2, p4, :cond_f

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 44
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 45
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    goto :goto_5

    .line 46
    :cond_f
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    sget-object p4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    if-eq p2, p4, :cond_10

    .line 47
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    sub-long/2addr p1, v4

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkTime:J

    cmp-long v0, p1, v4

    if-lez v0, :cond_10

    .line 48
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->startTime:J

    .line 49
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->checkLight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker$CheckLight;

    return v1

    :cond_10
    :goto_5
    return p3
.end method
