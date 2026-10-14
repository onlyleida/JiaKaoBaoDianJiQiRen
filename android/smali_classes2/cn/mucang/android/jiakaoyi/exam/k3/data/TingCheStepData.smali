.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private canSpeakExamTips:Z

.field private carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

.field public distance:D

.field public hasDetectSide:Z

.field private hasPlaying:Z

.field public isCheckPressLine:Z

.field public isStopped:Z

.field private lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

.field private lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

.field private lastToastTime:J

.field private sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

.field private speakExamTipsEndTime:J

.field public startJudgeDistance:Z

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

.field public twoSideOffset:Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasDetectSide:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->startJudgeDistance:Z

    .line 6
    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->distance:D

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->canSpeakExamTips:Z

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isCheckPressLine:Z

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastToastTime:J

    .line 10
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasPlaying:Z

    return-void
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->speakExamTipsEndTime:J

    return-wide p1
.end method

.method static synthetic access$100(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->checkIsSpeakExamTips()V

    return-void
.end method

.method private checkIsSpeakExamTips()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->canSpeakExamTips:Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    xor-int/2addr v0, v2

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->canSpeakExamTips:Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-double v3, v0

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, v3, v5

    if-gez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->canSpeakExamTips:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private setState(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 3

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    .line 2
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->Max:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_1

    .line 4
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->FrontWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    goto :goto_0

    .line 5
    :cond_1
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->BackWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    .line 6
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    if-nez v1, :cond_2

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    .line 8
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->TingCheFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)D

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->distance:D

    .line 9
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    .line 10
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isStopped:Z

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$2;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$TingCheStepData$State:[I

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p1, p1, p2

    const/4 p2, 0x3

    if-eq p1, v0, :cond_a

    const/4 p3, 0x2

    if-eq p1, p3, :cond_5

    if-eq p1, p2, :cond_7

    const/4 p2, 0x4

    if-eq p1, p2, :cond_3

    goto/16 :goto_2

    .line 12
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-eqz p1, :cond_4

    .line 13
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->CloseDoor:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    .line 14
    :cond_4
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->a()V

    goto/16 :goto_2

    .line 15
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_6

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p1, :cond_6

    .line 16
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    goto/16 :goto_2

    .line 17
    :cond_6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isStopped:Z

    if-eqz p1, :cond_7

    .line 18
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    .line 19
    :cond_7
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasPlaying:Z

    if-nez p1, :cond_9

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-nez p1, :cond_8

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p1, :cond_9

    .line 22
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasPlaying:Z

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    goto :goto_1

    .line 24
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v0, :cond_9

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->ON:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-eq p1, p2, :cond_9

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-eq p1, p2, :cond_9

    .line 26
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->hasPlaying:Z

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-object v0, p1

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p3, v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    .line 28
    :cond_9
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez p1, :cond_d

    .line 29
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->OpenDoor:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    goto :goto_2

    .line 30
    :cond_a
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p2, :cond_b

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p1, :cond_b

    .line 31
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    goto :goto_2

    .line 32
    :cond_b
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_c

    .line 33
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopping:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    goto :goto_2

    .line 34
    :cond_c
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isStopped:Z

    if-eqz p1, :cond_d

    .line 35
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    :cond_d
    :goto_2
    return-void
.end method

.method private speakingQiBuExam()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->canSpeakExamTips:Z

    if-eqz v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->speakExamTipsEndTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->canSpeakExamTips:Z

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$1;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 5
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v3

    .line 6
    invoke-static {v0, v1, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isCheckPressLine:Z

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez v0, :cond_1

    .line 6
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isCheckPressLine:Z

    .line 7
    :cond_1
    :goto_0
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->setState(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216161:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v1, :cond_2

    .line 9
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->isStopped:Z

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->startJudgeDistance:Z

    goto :goto_2

    .line 10
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne p2, p3, :cond_3

    const/4 p2, 0x1

    goto :goto_1

    :cond_3
    const/4 p2, 0x0

    :goto_1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->startJudgeDistance:Z

    .line 11
    :goto_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    if-nez p2, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 p3, 0x40800000    # 4.0f

    cmpg-float p2, p2, p3

    if-gez p2, :cond_4

    .line 12
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->c()Z

    move-result p2

    if-nez p2, :cond_4

    .line 13
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->k()V

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastToastTime:J

    sub-long/2addr p2, v2

    const-wide/16 v2, 0x1388

    cmp-long v0, p2, v2

    if-lez v0, :cond_4

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastToastTime:J

    const-string p2, "\u5f00\u59cb\u6444\u50cf\u5934\u8fb9\u7ebf\u68c0\u6d4b"

    .line 16
    invoke-static {p2}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 17
    :cond_4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v1, :cond_5

    .line 19
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->carModel:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p2, :cond_6

    .line 20
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->speakingQiBuExam()V

    goto :goto_3

    .line 21
    :cond_5
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_6

    .line 22
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;->CloseDoor:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-ne p2, p3, :cond_6

    .line 23
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->speakingQiBuExam()V

    .line 24
    :cond_6
    :goto_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 25
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-eq p3, p2, :cond_7

    .line 26
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "direction "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "; state "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; speed "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, " ; carStop "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    :cond_7
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    if-eq p3, v0, :cond_8

    .line 28
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u9760\u8fb9\u505c\u8f66\u72b6\u6001 lastState "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; state "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " ; estimateTotalDistance "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 29
    :cond_8
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastDirection:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$State;

    return-void
.end method
