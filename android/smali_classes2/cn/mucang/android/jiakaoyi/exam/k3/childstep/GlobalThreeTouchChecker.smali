.class public Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private canPlayThreeTouchVoice:Z

.field private config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

.field private firstTouchSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

.field private isRepeatPlay:Z

.field private lastTouchSensor:I

.field private playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

.field private playingThreeTouchVoiceEndTime:J

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
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->canPlayThreeTouchVoice:Z

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    .line 5
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->isRepeatPlay:Z

    return-void
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->canPlayThreeTouchVoice:Z

    return p1
.end method

.method static synthetic access$100(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->isRepeatPlay:Z

    return p0
.end method

.method static synthetic access$202(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playingThreeTouchVoiceEndTime:J

    return-wide p1
.end method

.method private playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    const/4 v1, 0x1

    if-eq v0, p1, :cond_1

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->canPlayThreeTouchVoice:Z

    const-wide/16 v2, 0x0

    .line 4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playingThreeTouchVoiceEndTime:J

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->canPlayThreeTouchVoice:Z

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playingThreeTouchVoiceEndTime:J

    const-wide/16 v6, 0x3e8

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_5

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playingSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 7
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->canPlayThreeTouchVoice:Z

    const/4 v0, 0x0

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->Seat:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-ne p1, v1, :cond_2

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    .line 10
    :cond_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->OutsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-ne p1, v1, :cond_3

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    goto :goto_0

    .line 12
    :cond_3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->InsideMirror:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-ne p1, v1, :cond_4

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    :cond_4
    :goto_0
    if-eqz v0, :cond_5

    .line 14
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;)V

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
    if-ge v2, v1, :cond_5

    aget-object v3, v0, v2

    .line 4
    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->lastTouchSensor:I

    iget v5, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->c(II)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;->id:I

    invoke-static {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->firstTouchSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-nez v0, :cond_0

    .line 6
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->firstTouchSensor:Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;

    if-eq v0, v3, :cond_3

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 10
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_2
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->touchSensorList:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_3
    :goto_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->isRepeatPlay:Z

    if-eqz v0, :cond_5

    .line 15
    invoke-direct {p0, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V

    goto :goto_2

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 16
    :cond_5
    :goto_2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->lastTouchSensor:I

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->threeTouch(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    return-void
.end method
