.class public Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;
.super Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public aroundCountError:Z

.field public aroundOrderError:Z

.field public aroundSensorOrders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private aroundSize:I

.field public aroundStartSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

.field public aroundValue:[Z

.field private canPlayAroundStartVoice:Z

.field private canPlayAroundVoice:Z

.field private canPlayOpenDoorVoice:Z

.field public closeDoorCount:I

.field public finishAround:Z

.field private hadOpenDoor:Z

.field private lastAroundCarSensor:I

.field public lastDoorClose:Z

.field public openDoorCount:I

.field private orderArr:[I

.field private playAroundStartVoiceEndTime:J

.field private playingAroundVoiceEndTime:J

.field private playingOpenDoorEndTime:J

.field private playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

.field private shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

.field public startAround:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V
    .locals 1

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    const/4 p3, 0x0

    .line 2
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    .line 3
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundOrderError:Z

    .line 4
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundCountError:Z

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    move-result-object p4

    array-length p4, p4

    iput p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSize:I

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundStartSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    .line 7
    new-array p4, p4, [Z

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundValue:[Z

    .line 8
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    .line 9
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->startAround:Z

    const/4 p4, 0x1

    .line 10
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundVoice:Z

    .line 11
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayOpenDoorVoice:Z

    .line 12
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->lastDoorClose:Z

    .line 13
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->closeDoorCount:I

    .line 14
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->openDoorCount:I

    .line 15
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundStartVoice:Z

    .line 16
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 17
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 18
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 19
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 20
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    new-array p2, p2, [I

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    .line 21
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 22
    :goto_0
    array-length p2, p1

    if-ge p3, p2, :cond_2

    .line 23
    aget-char p2, p1, p3

    add-int/lit8 p2, p2, -0x30

    .line 24
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    aput p2, p4, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 25
    :cond_0
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x2

    new-array p2, p1, [I

    .line 26
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    new-array p1, p1, [I

    .line 27
    fill-array-data p1, :array_0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    goto :goto_1

    .line 28
    :cond_1
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p4, :cond_2

    new-array p1, v0, [I

    .line 29
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    new-array p1, v0, [I

    .line 30
    fill-array-data p1, :array_1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    :cond_2
    :goto_1
    return-void

    :array_0
    .array-data 4
        0x3
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x3
        0x4
        0x1
        0x2
    .end array-data
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundStartVoice:Z

    return p1
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingAroundVoiceEndTime:J

    return-wide p1
.end method

.method static synthetic access$200(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->callbackDialog()V

    return-void
.end method

.method static synthetic access$302(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playAroundStartVoiceEndTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayOpenDoorVoice:Z

    return p1
.end method

.method static synthetic access$502(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingOpenDoorEndTime:J

    return-wide p1
.end method

.method static synthetic access$602(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundVoice:Z

    return p1
.end method

.method private aroundCar(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->y:I

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 4
    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->lastAroundCarSensor:I

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->c(II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundStartSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    if-nez v0, :cond_0

    .line 6
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundStartSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 9
    iget v2, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    if-eq v0, v2, :cond_4

    .line 10
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->havePressSensor(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 11
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playAroundTone(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    iget v2, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->havePressSensor(I)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playAroundTone(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V

    .line 15
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    iget v2, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_4
    :goto_1
    iget v0, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->id:I

    sub-int/2addr v0, v1

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundValue:[Z

    aput-boolean v1, v2, v0

    .line 18
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->startAround:Z

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 20
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playAroundTone(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 21
    :cond_6
    :goto_2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->lastAroundCarSensor:I

    return-void
.end method

.method private callbackDialog()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isShowDialog:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isShowDialog:Z

    const-string v0, "AroundCarStep"

    const-string v1, "\u8bf7\u5f00\u59cb\u7ed5\u8f66\u4e00\u5468 \u5f39\u7a97"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startAroundCar:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const/4 v3, 0x0

    const-string v4, "\u8bf7\u5f00\u59cb\u7ed5\u8f66\u4e00\u5468"

    invoke-virtual {v0, v1, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private checkAroundCar(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundOrderError:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->checkOrder()V

    goto :goto_1

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->checkOrder()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x2

    const/4 v2, 0x4

    if-ne p1, v1, :cond_5

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v0, :cond_7

    const/4 p1, 0x1

    .line 6
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p1, v1, :cond_7

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 8
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    add-int/lit8 v4, p1, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v1, v0, :cond_3

    if-eq v3, v2, :cond_4

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundOrderError:Z

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    if-eq v1, v3, :cond_4

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundOrderError:Z

    goto :goto_1

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    const/4 v0, 0x3

    if-ne p1, v0, :cond_6

    goto :goto_1

    :cond_6
    if-ne p1, v2, :cond_7

    .line 11
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->checkOrder()V

    :cond_7
    :goto_1
    return-void
.end method

.method private checkAroundFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-nez v0, :cond_3

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundOrderError:Z

    if-eqz p1, :cond_1

    .line 4
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    goto :goto_1

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    array-length v0, v0

    if-ne p1, v0, :cond_7

    .line 7
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    goto :goto_1

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundValue:[Z

    const/4 v0, 0x0

    aget-boolean v0, p1, v0

    if-eqz v0, :cond_7

    aget-boolean v0, p1, v3

    if-eqz v0, :cond_7

    aget-boolean v0, p1, v2

    if-eqz v0, :cond_7

    aget-boolean p1, p1, v1

    if-eqz p1, :cond_7

    .line 9
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    .line 11
    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->lastDoorClose:Z

    xor-int/2addr v4, p1

    if-eqz v4, :cond_7

    if-eqz p1, :cond_4

    .line 12
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->closeDoorCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->closeDoorCount:I

    goto :goto_0

    .line 13
    :cond_4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->openDoorCount:I

    add-int/2addr p1, v3

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->openDoorCount:I

    :goto_0
    if-ne v0, v3, :cond_5

    .line 14
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->openDoorCount:I

    if-ne p1, v3, :cond_7

    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    goto :goto_1

    :cond_5
    if-ne v0, v2, :cond_6

    .line 15
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->openDoorCount:I

    if-ne p1, v2, :cond_7

    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    goto :goto_1

    :cond_6
    if-ne v0, v1, :cond_7

    .line 16
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->closeDoorCount:I

    if-ne p1, v2, :cond_7

    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    :cond_7
    :goto_1
    return-void
.end method

.method private checkCountError()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    array-length v2, v2

    if-eq v0, v2, :cond_2

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundCountError:Z

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundValue:[Z

    const/4 v2, 0x0

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_1

    aget-boolean v2, v0, v1

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    aget-boolean v2, v0, v2

    if-eqz v2, :cond_1

    const/4 v2, 0x3

    aget-boolean v0, v0, v2

    if-nez v0, :cond_2

    .line 5
    :cond_1
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundCountError:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private checkOrder()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->orderArr:[I

    aget v2, v2, v0

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundOrderError:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private checkPlayingAroundStartVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->startAround:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundStartVoice:Z

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playAroundStartVoiceEndTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundStartVoice:Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$2;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 5
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-static {p1, v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private havePressSensor(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundSensorOrders:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private playAroundTone(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundVoice:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingAroundVoiceEndTime:J

    .line 4
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundVoice:Z

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingAroundVoiceEndTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundVoice:Z

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201168:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget v0, Lcn/mucang/android/jiakaoyi/exam/R$raw;->dingdong:I

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->c(ILcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playSensorVoice(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V

    :cond_2
    :goto_0
    return-void
.end method

.method private playingOpenDoorVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-eqz p1, :cond_0

    .line 3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->lastDoorClose:Z

    if-nez p1, :cond_1

    .line 4
    sget p1, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_close_car_door:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->lastDoorClose:Z

    if-eqz p1, :cond_1

    .line 6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayOpenDoorVoice:Z

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingOpenDoorEndTime:J

    const-wide/16 v4, 0x3e8

    add-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayOpenDoorVoice:Z

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$3;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$3;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 9
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-static {p1, v0, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 6

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p2, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    .line 3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_5

    if-nez p2, :cond_1

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->hadOpenDoor:Z

    .line 5
    :cond_1
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->hadOpenDoor:Z

    if-nez p3, :cond_2

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->checkPlayingAroundStartVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 7
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingOpenDoorVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 8
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->aroundCar(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 9
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->checkAroundCar(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 10
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->checkAroundFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 11
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->finishAround:Z

    if-eqz p1, :cond_3

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->checkCountError()V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setFinish()V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    .line 15
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->startTime:J

    sub-long/2addr v2, v4

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v4, p1

    cmp-long p1, v2, v4

    if-lez p1, :cond_4

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isTimeOut:Z

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    .line 18
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p1, :cond_8

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissAroundCar:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const-string v2, "\u53d6\u6d88\u5f00\u59cb\u7ed5\u8f66\u4e00\u5468\u5f39\u7a97"

    invoke-virtual {p1, p3, v1, v2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    goto/16 :goto_0

    :cond_5
    const-string p1, "AroundCarStep"

    const-string p3, "\u68c0\u6d4b\u5f00\u59cb"

    .line 20
    invoke-static {p1, p3}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne p1, v1, :cond_7

    .line 22
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundStartVoice:Z

    if-eqz p1, :cond_6

    .line 23
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->canPlayAroundStartVoice:Z

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 25
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 26
    invoke-static {p1, p3, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 27
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v1, :cond_8

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    .line 29
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->callbackDialog()V

    goto :goto_0

    .line 30
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    .line 31
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->callbackDialog()V

    .line 32
    :cond_8
    :goto_0
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->lastDoorClose:Z

    return-void
.end method

.method public playSensorVoice(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V
    .locals 4

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->LeftBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    if-ne p1, v0, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightBack:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    if-ne p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201106:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;->RightFront:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_4

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$5;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$5;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;)V

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 10
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {v0, v1, v2, p1, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    :cond_4
    return-void
.end method
