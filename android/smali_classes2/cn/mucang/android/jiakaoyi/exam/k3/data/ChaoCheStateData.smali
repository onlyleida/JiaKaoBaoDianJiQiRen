.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

.field public chaoCheDaoInDistance:F

.field public chaocheDistance:F

.field public chaochePlayDistance:F

.field public chaochePlayTime:J

.field public chaocheTime:J

.field public dialogCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;",
            ">;"
        }
    .end annotation
.end field

.field public firstGpsFrame:Z

.field public hadTurnLeft:Z

.field public hadTurnRight:Z

.field public hasHpInit:Z

.field public hasPlayingBack:Z

.field private hasPlayingLeave:Z

.field private hasPlayingStartChaoChe:Z

.field public final hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

.field private isCancelDialog:Z

.field public volatile isChaoCheDao:Z

.field public volatile isChaoCheDaoIn:Z

.field public isFinishTurnLight:Z

.field public isOnlyCheckTurnLight:Z

.field private isShowDialog:Z

.field public laba:Z

.field public labaBefore:Z

.field public labaChacheDao:Z

.field public lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

.field private lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

.field private leaveChaoCheDaoDistance:F

.field private leftLightStartTime:J

.field private final offsetChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;

.field private rightLightStartTime:J

.field private rightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

.field private sendLpCahoCheDao:Z

.field public startTurningLeft:Z

.field public startTurningRight:Z

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

.field public turnRightNotAllow:Z

.field public turningLeft:Z

.field public turningRight:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningLeft:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->startTurningLeft:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningRight:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->startTurningRight:Z

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/f/a;

    const/high16 v2, 0x40000000    # 2.0f

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/f/a;-><init>(F)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isFinishTurnLight:Z

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->sendLpCahoCheDao:Z

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->firstGpsFrame:Z

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasHpInit:Z

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDaoIn:Z

    .line 13
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDao:Z

    .line 14
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 15
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;-><init>(F)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->offsetChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;

    .line 16
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    .line 17
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    return-void
.end method

.method private changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    return-void
.end method

.method private checkBackRightPlayingVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v0, v1, :cond_4

    .line 2
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaocheDistance:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaocheDistance:F

    .line 4
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaocheTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaocheTime:J

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaocheDistance:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_4

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaocheTime:J

    sub-long/2addr v2, v6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v6, p2

    cmp-long p2, v2, v6

    if-lez p2, :cond_4

    .line 9
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingBack:Z

    if-nez p2, :cond_4

    const/4 p2, 0x1

    .line 10
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingBack:Z

    .line 11
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne v0, p2, :cond_2

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;

    invoke-direct {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v2, p1

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 13
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object p1

    .line 14
    invoke-static {p2, v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto :goto_0

    .line 15
    :cond_2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayTime:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_3

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayTime:J

    .line 17
    :cond_3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayDistance:F

    cmpg-float p2, p2, v1

    if-gtz p2, :cond_4

    .line 18
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayDistance:F

    :cond_4
    :goto_0
    return-void
.end method

.method private checkChaoCheDao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;ZZ)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLineCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LeftRightLineCalHelper;->leftLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-eqz p1, :cond_1

    .line 3
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-eqz v0, :cond_0

    return v1

    .line 4
    :cond_0
    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-eqz v0, :cond_1

    .line 5
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 6
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    if-nez v0, :cond_1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    if-ne p1, v1, :cond_1

    return v1

    :cond_1
    return v2
.end method

.method private checkLeaveChaoCheDaoVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2

    .line 1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDaoIn:Z

    if-eqz p2, :cond_1

    .line 2
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaoCheDaoInDistance:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaoCheDaoInDistance:F

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingLeave:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingLeave:Z

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leaveChaoCheDaoDistance:F

    .line 7
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne p2, p1, :cond_1

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object p2, p1

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-object v1, p1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method private checkLpChaoChe(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->offsetChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDao:Z

    iput-boolean v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->couldTurnRight:Z

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->offsetChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->offsetChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 4
    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->turnRightNotAllow:Z

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turnRightNotAllow:Z

    .line 5
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p3, p2, :cond_2

    .line 6
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaBefore:Z

    if-nez p2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p2, 0x1

    :goto_1
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaBefore:Z

    .line 7
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_3

    .line 8
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaBefore:Z

    .line 9
    :cond_3
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_6

    .line 10
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaBefore:Z

    if-nez p2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz p2, :cond_4

    goto :goto_2

    :cond_4
    const/4 p2, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p2, 0x1

    :goto_3
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaBefore:Z

    .line 11
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_9

    .line 12
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaChacheDao:Z

    if-nez p2, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz p1, :cond_7

    goto :goto_4

    :cond_7
    const/4 v0, 0x0

    :cond_8
    :goto_4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaChacheDao:Z

    :cond_9
    return-void
.end method


# virtual methods
.method public beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->byGyro:Lcn/mucang/android/jiakaoyi/signal/f/a;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/f/a;->b(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->offsetChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->onBefore(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 9

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->sendLpCahoCheDao:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->sendLpCahoCheDao:Z

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206126:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    const-class v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 6
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v0, v3, :cond_3

    .line 8
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasHpInit:Z

    if-nez v0, :cond_1

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasHpInit:Z

    .line 10
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->firstGpsFrame:Z

    .line 11
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->checkChaoCheDao(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDao:Z

    .line 12
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->firstGpsFrame:Z

    if-eqz v0, :cond_3

    .line 13
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDao:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDaoIn:Z

    goto :goto_0

    .line 14
    :cond_2
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->firstGpsFrame:Z

    .line 15
    :cond_3
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    .line 16
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->GearSpeedNotMatch:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 17
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->HighRpm:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    goto :goto_1

    .line 18
    :cond_4
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->GearSpeedNotMatch:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 19
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->HighRpm:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->a(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 20
    :goto_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->laba:Z

    if-nez v0, :cond_5

    .line 21
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->laba:Z

    .line 22
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    const-string v3, " ; estimateTotalDistance "

    const-string v4, "\u68c0\u6d4b\u5230\u5411\u5de6\u53d8\u9053"

    const-string v5, "\u68c0\u6d4b\u5230\u5411\u53f3\u53d8\u9053"

    if-eqz v0, :cond_1c

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hpBianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;

    invoke-virtual {p2, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/HpBianDaoChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    move-result-object p2

    .line 24
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_6

    const/4 v6, 0x1

    goto :goto_2

    :cond_6
    const/4 v6, 0x0

    :goto_2
    iput-boolean v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningLeft:Z

    .line 25
    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v6, :cond_7

    const/4 v7, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    :goto_3
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningRight:Z

    .line 26
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v7, v0, :cond_8

    if-ne p2, v0, :cond_8

    const/4 v8, 0x1

    goto :goto_4

    :cond_8
    const/4 v8, 0x0

    :goto_4
    iput-boolean v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->startTurningLeft:Z

    if-eq v7, v6, :cond_9

    if-ne p2, v6, :cond_9

    const/4 v7, 0x1

    goto :goto_5

    :cond_9
    const/4 v7, 0x0

    .line 27
    :goto_5
    iput-boolean v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->startTurningRight:Z

    .line 28
    sget-object v7, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$2;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State:[I

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    goto/16 :goto_b

    .line 29
    :pswitch_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq v0, v4, :cond_a

    .line 30
    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 31
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne v0, v6, :cond_1a

    .line 32
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_b

    .line 33
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    .line 34
    :cond_b
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_1a

    .line 35
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    goto/16 :goto_b

    .line 36
    :pswitch_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v0, v4, :cond_c

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne v0, v4, :cond_d

    :cond_c
    if-ne p2, v6, :cond_d

    .line 37
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    .line 38
    :cond_d
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaChacheDao:Z

    if-nez v0, :cond_f

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz v0, :cond_e

    goto :goto_6

    :cond_e
    const/4 v0, 0x0

    goto :goto_7

    :cond_f
    :goto_6
    const/4 v0, 0x1

    :goto_7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaChacheDao:Z

    goto/16 :goto_b

    .line 39
    :pswitch_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq v0, v4, :cond_10

    .line 40
    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 41
    :cond_10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne v0, v6, :cond_1a

    .line 42
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_11

    .line 43
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    .line 44
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingLeave:Z

    if-eqz v0, :cond_11

    .line 45
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leaveChaoCheDaoDistance:F

    .line 46
    :cond_11
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_1a

    .line 47
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    goto/16 :goto_b

    .line 48
    :pswitch_3
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq v5, v6, :cond_12

    .line 49
    invoke-static {v4}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 50
    :cond_12
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne v4, v0, :cond_1a

    .line 51
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_13

    .line 52
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    .line 53
    :cond_13
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-ne p2, v0, :cond_1a

    .line 54
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    goto/16 :goto_b

    .line 55
    :pswitch_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingStartChaoChe:Z

    if-nez v0, :cond_14

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingLeave:Z

    if-eqz v0, :cond_14

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leaveChaoCheDaoDistance:F

    const/4 v4, 0x0

    cmpl-float v0, v0, v4

    if-lez v0, :cond_14

    .line 56
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hasPlayingStartChaoChe:Z

    .line 57
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne v0, v1, :cond_14

    .line 58
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    sget-object v5, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    move-object v6, v0

    check-cast v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v5, v6, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->t(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;ILjava/lang/String;)V

    .line 59
    :cond_14
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningLeft:Z

    if-eqz v0, :cond_15

    .line 60
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    goto :goto_8

    .line 61
    :cond_15
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turningRight:Z

    if-eqz v0, :cond_17

    .line 62
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v0, v4, :cond_16

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isChaoCheDao:Z

    if-nez v0, :cond_16

    .line 63
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->turnRightNotAllow:Z

    .line 64
    :cond_16
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->changeState(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;)V

    .line 65
    :cond_17
    :goto_8
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaBefore:Z

    if-nez v0, :cond_19

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->l:Z

    if-eqz v0, :cond_18

    goto :goto_9

    :cond_18
    const/4 v0, 0x0

    goto :goto_a

    :cond_19
    :goto_9
    const/4 v0, 0x1

    :goto_a
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->labaBefore:Z

    .line 66
    :cond_1a
    :goto_b
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    if-eq v0, p2, :cond_1b

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8d85\u8f66\u662f\u8f66\u8f86\u8f6c\u5411\u72b6\u6001 lastTurnState "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ; turnState "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 68
    :cond_1b
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/biandao/TurnState;

    goto :goto_c

    .line 69
    :cond_1c
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->checkLpChaoChe(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 70
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p2, v0, :cond_1d

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, v0, :cond_1d

    .line 71
    invoke-static {v4}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 72
    :cond_1d
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p2, v0, :cond_1e

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, v0, :cond_1e

    .line 73
    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 74
    :cond_1e
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p2, v0, :cond_1f

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, v0, :cond_1f

    .line 75
    invoke-static {v5}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 76
    :cond_1f
    :goto_c
    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->checkBackRightPlayingVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 77
    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->checkLeaveChaoCheDaoVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 78
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_20

    .line 79
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hadTurnRight:Z

    goto :goto_d

    .line 80
    :cond_20
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_21

    .line 81
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->hadTurnLeft:Z

    .line 82
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->dialogCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p2, :cond_21

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isShowDialog:Z

    if-eqz p3, :cond_21

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isCancelDialog:Z

    if-nez p3, :cond_21

    .line 83
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isCancelDialog:Z

    .line 84
    invoke-interface {p2, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 85
    :cond_21
    :goto_d
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->dialogCallback:Lcn/mucang/android/jiakaoyi/framework/h/b;

    if-eqz p2, :cond_22

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p3, v0, :cond_22

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isShowDialog:Z

    if-nez p3, :cond_22

    .line 86
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isShowDialog:Z

    .line 87
    invoke-interface {p2, p0}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    .line 88
    :cond_22
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_25

    .line 89
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-nez p2, :cond_23

    .line 90
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    goto :goto_e

    :cond_23
    if-ne p2, v1, :cond_25

    .line 91
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, p3, :cond_24

    const/4 v2, 0x1

    :cond_24
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    .line 92
    :cond_25
    :goto_e
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isOnlyCheckTurnLight:Z

    if-eqz p2, :cond_2b

    .line 93
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    const-wide/16 v4, 0x0

    if-eqz p2, :cond_26

    .line 94
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leftLightStartTime:J

    cmp-long v0, p2, v4

    if-nez v0, :cond_27

    .line 95
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leftLightStartTime:J

    goto :goto_f

    .line 96
    :cond_26
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leftLightStartTime:J

    .line 97
    :cond_27
    :goto_f
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_28

    .line 98
    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLightStartTime:J

    cmp-long v0, p2, v4

    if-nez v0, :cond_29

    .line 99
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLightStartTime:J

    goto :goto_10

    .line 100
    :cond_28
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLightStartTime:J

    .line 101
    :cond_29
    :goto_10
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isFinishTurnLight:Z

    if-nez p2, :cond_2a

    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leftLightStartTime:J

    cmp-long v0, p2, v4

    if-lez v0, :cond_2a

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->leftLightStartTime:J

    sub-long/2addr p2, v6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, p2, v6

    if-lez v0, :cond_2a

    .line 102
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isFinishTurnLight:Z

    .line 103
    :cond_2a
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isFinishTurnLight:Z

    if-nez p2, :cond_2b

    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLightStartTime:J

    cmp-long v0, p2, v4

    if-lez v0, :cond_2b

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->rightLightStartTime:J

    sub-long/2addr p2, v4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ChaoCheStepConfig;->p206149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v4, v0

    cmp-long v0, p2, v4

    if-lez v0, :cond_2b

    .line 104
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->isFinishTurnLight:Z

    .line 105
    :cond_2b
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p2, p3, :cond_2c

    .line 106
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8d85\u8f66\u72b6\u6001 lastState "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, " ; state "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 107
    :cond_2c
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
