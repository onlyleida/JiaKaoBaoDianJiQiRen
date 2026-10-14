.class public Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;
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
.field private canPlayThreeTouchVoice:Z

.field public countError:Z

.field private firstTouchSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

.field private lastTouchSensor:I

.field public orderError:Z

.field public orderList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

.field private playingThreeTouchVoiceEndTime:J

.field private shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

.field public touchSensorList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V
    .locals 2

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    .line 2
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    const/4 p3, 0x1

    .line 3
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->canPlayThreeTouchVoice:Z

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    const/4 p4, 0x0

    .line 5
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderError:Z

    .line 6
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->countError:Z

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 8
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, p3, :cond_1

    .line 9
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201130:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object p1

    .line 12
    :goto_0
    array-length p2, p1

    if-ge p4, p2, :cond_2

    .line 13
    aget-char p2, p1, p4

    add-int/lit8 p2, p2, -0x30

    if-lt p2, p3, :cond_0

    if-gt p2, v0, :cond_0

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    .line 15
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    const/4 p2, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->callbackDialog()V

    return-void
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->canPlayThreeTouchVoice:Z

    return p1
.end method

.method static synthetic access$202(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playingThreeTouchVoiceEndTime:J

    return-wide p1
.end method

.method private callbackDialog()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

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

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startThreeTouch:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    const/4 v3, 0x0

    const-string v4, "\u8bf7\u5f00\u59cb\u4e09\u6478"

    invoke-virtual {v1, v2, v0, v4, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method

.method private checkOrder()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 4
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    add-int/2addr v2, v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-eq v2, v3, :cond_0

    .line 6
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderError:Z

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->canPlayThreeTouchVoice:Z

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playingThreeTouchVoiceEndTime:J

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->canPlayThreeTouchVoice:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playingThreeTouchVoiceEndTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->canPlayThreeTouchVoice:Z

    const/4 v0, 0x0

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-ne p1, v1, :cond_3

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    .line 12
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-ne p1, v1, :cond_4

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 14
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$2;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;)V

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 15
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {p1, v1, v2, v0, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    :cond_5
    return-void
.end method

.method private threeTouch(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 6

    .line 1
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->z:I

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    move-result-object v0

    .line 3
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_6

    aget-object v3, v0, v2

    .line 4
    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->lastTouchSensor:I

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->c(II)Z

    move-result v4

    if-eqz v4, :cond_5

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-static {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->firstTouchSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-nez v0, :cond_0

    .line 6
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->firstTouchSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-eq v0, v3, :cond_4

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 13
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V

    .line 14
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_4
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 16
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V

    goto :goto_2

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 17
    :cond_6
    :goto_2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->lastTouchSensor:I

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_0

    const/4 p3, 0x1

    :cond_0
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->countError:Z

    :cond_1
    return-void

    .line 4
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    if-eqz p2, :cond_9

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 6
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->threeTouch(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    .line 7
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->checkOrder()V

    .line 8
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderError:Z

    if-eqz p1, :cond_3

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setFinish()V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201129:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_4

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-ne p1, p2, :cond_5

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setFinish()V

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    goto :goto_0

    .line 15
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 16
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 17
    invoke-interface {p1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setFinish()V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    .line 20
    :cond_5
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->startTime:J

    sub-long/2addr p1, v1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    cmp-long v3, p1, v1

    if-lez v3, :cond_6

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isTimeOut:Z

    .line 22
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    .line 23
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p1, :cond_c

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->orderList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-eq p1, p2, :cond_7

    goto :goto_1

    :cond_7
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->countError:Z

    .line 26
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissThreeTouch:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const-string v1, "\u53d6\u6d88\u5f00\u59cb\u4e09\u6478\u5f39\u7a97"

    invoke-virtual {p1, p2, v0, v1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    goto :goto_2

    .line 27
    :cond_9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne p1, v0, :cond_b

    .line 28
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPlayStartVoice:Z

    if-nez p2, :cond_a

    .line 29
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPlayStartVoice:Z

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 31
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 32
    invoke-static {p1, p2, p3, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 33
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_c

    .line 34
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    .line 35
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->callbackDialog()V

    goto :goto_2

    .line 36
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    .line 37
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->callbackDialog()V

    :cond_c
    :goto_2
    return-void
.end method
