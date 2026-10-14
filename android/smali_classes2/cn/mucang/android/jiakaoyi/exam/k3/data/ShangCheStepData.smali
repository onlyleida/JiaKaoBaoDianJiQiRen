.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;,
        Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public aroundCarStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

.field public aroundStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

.field private canPlayOpenEngineVoice:Z

.field private checkerDeque:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;",
            ">;"
        }
    .end annotation
.end field

.field private currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

.field public fingerPrintStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

.field public fingerPrintStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

.field private globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

.field private final haveLightSimulate:Z

.field public isDialogCloseEngine:Z

.field public isDialogManualEnd:Z

.field public isDialogOpenEngine:Z

.field public isFinishGlobalThreeTouch:Z

.field public isInit:Z

.field public isInitChecker:Z

.field private pauseTime:J

.field public playingLineStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

.field public playingLineStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

.field private playingOpenEngineVoiceEndTime:J

.field private shangCheEventCallBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;

.field public shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

.field public thereTouchStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

.field public threeTouchStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isInit:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isInitChecker:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogCloseEngine:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogManualEnd:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogOpenEngine:Z

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->canPlayOpenEngineVoice:Z

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    sget v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->ShangCheStep:I

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    const-string v3, "\u4e0a\u8f66\u51c6\u5907"

    invoke-direct {v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;-><init>(ILjava/lang/String;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const-string p1, "HaveLightSimulateStep"

    .line 9
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->haveLightSimulate:Z

    .line 10
    const-class p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangCheEventCallBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;

    return-object p0
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->canPlayOpenEngineVoice:Z

    return p1
.end method

.method static synthetic access$202(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->playingOpenEngineVoiceEndTime:J

    return-wide p1
.end method

.method private checkShangCheFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    if-nez v1, :cond_7

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->d:Z

    if-eqz p1, :cond_7

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finishTime:J

    goto/16 :goto_2

    :cond_0
    if-ne v0, v1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    :goto_0
    if-eqz p1, :cond_7

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finishTime:J

    goto/16 :goto_2

    :cond_2
    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finishTime:J

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    if-ne v0, v2, :cond_4

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finishTime:J

    goto :goto_2

    :cond_4
    const/4 v2, 0x4

    if-ne v0, v2, :cond_5

    .line 17
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz p1, :cond_7

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finishTime:J

    goto :goto_2

    :cond_5
    const/4 p1, 0x5

    if-ne v0, p1, :cond_7

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    if-eqz p1, :cond_6

    .line 22
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    goto :goto_1

    :cond_6
    const/4 p1, 0x1

    :goto_1
    if-eqz p1, :cond_7

    .line 23
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogManualEnd:Z

    if-nez p1, :cond_7

    .line 24
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogManualEnd:Z

    .line 25
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->showManualGoExam:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const/4 v1, 0x0

    const-string v2, "\u8bf7\u624b\u52a8\u70b9\u51fb\u7ee7\u7eed\u8003\u8bd5"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private checkStartLightSimulate(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->haveLightSimulate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isFinishLightExam:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->globalStepConfig:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    if-eqz v0, :cond_5

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200181:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201164:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    .line 6
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    goto :goto_0

    .line 8
    :cond_1
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x2

    if-ne v2, v4, :cond_2

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    goto :goto_0

    .line 10
    :cond_2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    goto :goto_0

    .line 12
    :cond_3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_4

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    instance-of v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_5

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPause:Z

    .line 15
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->pauseTime:J

    .line 16
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startLightSimulate:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const-string v1, "\u5f00\u59cb\u706f\u5149\u6a21\u62df\u8003\u8bd5"

    invoke-virtual {p0, p1, v0, v1, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    return v3

    :cond_5
    return v1
.end method

.method private shangCheFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201155:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogOpenEngine:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogOpenEngine:Z

    .line 6
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogManualEnd:Z

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->showOpenEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const-string v3, "\u8bf7\u542f\u52a8\u53d1\u52a8\u673a"

    invoke-virtual {p0, v0, v2, v3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    .line 8
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->canPlayOpenEngineVoice:Z

    if-eqz v0, :cond_2

    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->playingOpenEngineVoiceEndTime:J

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201157:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2

    .line 10
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->canPlayOpenEngineVoice:Z

    .line 11
    sget v0, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_open_engine:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$2;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;)V

    invoke-static {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    .line 13
    :cond_2
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissOpenEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const-string v2, "\u5173\u95ed\u53d1\u52a8\u673a\u5f39\u7a97"

    invoke-virtual {p0, p1, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    :cond_3
    return-void
.end method


# virtual methods
.method public callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V
    .locals 7

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    invoke-static {v6}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 8

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isInitChecker:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_5

    .line 3
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isInitChecker:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201158:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 5
    new-instance v3, Ljava/util/ArrayDeque;

    invoke-direct {v3}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 7
    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    const/4 v3, 0x0

    .line 8
    :goto_0
    array-length v4, v0

    if-ge v3, v4, :cond_4

    .line 9
    aget-char v4, v0, v3

    add-int/lit8 v4, v4, -0x30

    if-ne v4, v2, :cond_0

    .line 10
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->fingerPrintStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    if-nez v4, :cond_3

    .line 11
    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    sget v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->FingerPrintStep:I

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    const-string v7, "\u6307\u7eb9"

    invoke-direct {v4, v5, v7, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;-><init>(ILjava/lang/String;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->fingerPrintStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    .line 12
    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-direct {v5, p0, v6, v4, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->fingerPrintStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    .line 13
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_0
    const/4 v5, 0x2

    if-ne v4, v5, :cond_1

    .line 14
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    if-nez v4, :cond_3

    .line 15
    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    sget v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->AroundCarStep:I

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    const-string v7, "\u7ed5\u8f66"

    invoke-direct {v4, v5, v7, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;-><init>(ILjava/lang/String;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    .line 16
    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-direct {v5, p0, v6, v4, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundCarStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    .line 17
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    const/4 v5, 0x3

    if-ne v4, v5, :cond_2

    .line 18
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->thereTouchStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    if-nez v4, :cond_3

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201167:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_3

    .line 19
    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    sget v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->ThreeTouchStep:I

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    const-string v7, "\u4e09\u6478"

    invoke-direct {v4, v5, v7, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;-><init>(ILjava/lang/String;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->thereTouchStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    .line 20
    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-direct {v5, p0, v6, v4, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->threeTouchStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    .line 21
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    .line 22
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->playingLineStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    if-nez v4, :cond_3

    .line 23
    new-instance v4, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    sget v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->PlayingLinetStep:I

    const/4 v6, 0x0

    const-string v7, "\u62a5\u7ebf\u8def"

    invoke-direct {v4, v5, v7, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;-><init>(ILjava/lang/String;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->playingLineStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    .line 24
    new-instance v5, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v7, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-direct {v5, p0, v6, v4, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->playingLineStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    .line 25
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v4, v5}, Ljava/util/ArrayDeque;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 26
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201167:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 27
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    invoke-direct {v0, v3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Z)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    .line 28
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPause:Z

    if-eqz v0, :cond_6

    return-void

    .line 29
    :cond_6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkShangCheFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 30
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangCheFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 31
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->fingerPrintStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->aroundCarStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->threeTouchStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->playingLineStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    if-nez v0, :cond_7

    return-void

    .line 32
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz v0, :cond_8

    return-void

    .line 33
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    if-nez v0, :cond_9

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    .line 35
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->startTime:J

    .line 36
    :cond_9
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isInit:Z

    if-nez v0, :cond_a

    .line 37
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isInit:Z

    .line 38
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 39
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {v0}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    .line 40
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    if-nez v0, :cond_10

    .line 41
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    if-eqz v0, :cond_b

    .line 42
    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 43
    :cond_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    if-eqz v0, :cond_d

    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isFinishGlobalThreeTouch:Z

    if-nez v3, :cond_d

    .line 44
    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 45
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->globalThreeTouchChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    .line 46
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_c

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 47
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isFinishGlobalThreeTouch:Z

    goto :goto_2

    .line 48
    :cond_c
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isFinishGlobalThreeTouch:Z

    .line 49
    :cond_d
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_f

    .line 50
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-wide p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->nextStepStartTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_10

    .line 51
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-lez v2, :cond_10

    .line 52
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p1, :cond_e

    .line 53
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkStartLightSimulate(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    if-eqz p1, :cond_e

    return-void

    .line 54
    :cond_e
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkerDeque:Ljava/util/ArrayDeque;

    invoke-virtual {p1}, Ljava/util/ArrayDeque;->pop()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    goto :goto_3

    .line 55
    :cond_f
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->currentStepChecker:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p1, :cond_10

    .line 56
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->checkStartLightSimulate(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    if-eqz p1, :cond_10

    :cond_10
    :goto_3
    return-void
.end method

.method public resume()V
    .locals 6

    const-string v0, "\u4e0a\u8f66\u51c6\u5907 resume"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPause:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isFinishLightExam:Z

    .line 4
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->pauseTime:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->nextStepStartTime:J

    cmp-long v5, v0, v3

    if-gez v5, :cond_0

    sub-long/2addr v3, v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v3, v0

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->nextStepStartTime:J

    :cond_0
    return-void
.end method

.method public setShangCheEventCallBack(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangCheEventCallBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;

    return-void
.end method
