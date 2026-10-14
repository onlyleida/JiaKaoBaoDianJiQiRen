.class public Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private final deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final deducts:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;"
        }
    .end annotation
.end field

.field private hasDeduct:Z

.field private hasLeftLightTimeDeduct:Z

.field private hasRightLightTimeDeduct:Z

.field private haveJudgeReset:Z

.field private volatile id:I

.field private isBreakJudge:Z

.field private isFailure:Z

.field private volatile isPlaying:Z

.field private isPlayingDeduct:Z

.field private isPrintFirstFrame:Z

.field private isStart:Z

.field private judgeFirstFrameLights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation
.end field

.field public lastCarLightState:I

.field private lastModel:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

.field private final needPlayDeduct:Z

.field private volatile playEndTime:J

.field private playStartTime:J

.field private volatile startJudgeTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;Ljava/util/Map;Lcn/mucang/android/jiakaoyi/framework/h/c;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Deduct;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/framework/h/c<",
            "Ljava/lang/Boolean;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->deducts:Ljava/util/Map;

    .line 5
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->needPlayDeduct:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isStart:Z

    .line 7
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)I
    .locals 0

    .line 1
    iget p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->id:I

    return p0
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    return p1
.end method

.method static synthetic access$200(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    return-wide v0
.end method

.method static synthetic access$202(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    return-wide p1
.end method

.method static synthetic access$300(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->startJudgeTime:J

    return-wide v0
.end method

.method static synthetic access$302(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->startJudgeTime:J

    return-wide p1
.end method

.method static synthetic access$402(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    return p1
.end method

.method private checkFlashLightAction(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    add-int/2addr p1, v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 3
    iget-object v2, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I

    move-result p2

    if-le p2, v1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u95ea\u706f\u6b21\u6570\u8d85\u8fc7\u6700\u5927\u8bbe\u7f6e minCount "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ; maxCount "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " ; \u8fdc\u5149\u706f\u5f00\u542f\u6b21\u6570 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeTag"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget p1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p3, p1, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    :cond_0
    return-void
.end method

.method private checkIsReset(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    if-eqz v0, :cond_2

    return v1

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->haveJudgeReset:Z

    if-nez v0, :cond_e

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_e

    const/4 p3, 0x1

    .line 5
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->haveJudgeReset:Z

    .line 6
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_e

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    goto/16 :goto_2

    :cond_3
    if-eqz p1, :cond_e

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    if-nez p1, :cond_4

    goto/16 :goto_2

    .line 8
    :cond_4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v0, v2, :cond_6

    goto :goto_0

    .line 10
    :cond_6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v0, v2, :cond_5

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v0, v2, :cond_7

    goto :goto_0

    .line 11
    :cond_7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_8

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v0, v2, :cond_8

    goto :goto_0

    .line 12
    :cond_8
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const-string v3, "TimeTag"

    const-string v4, "\u706f\u5149\u6ca1\u6709\u590d\u4f4d"

    if-eq v0, v2, :cond_c

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v0, v2, :cond_9

    goto :goto_1

    .line 13
    :cond_9
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v0, v2, :cond_b

    .line 14
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v5, v2}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v2

    .line 15
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v5

    if-nez v2, :cond_a

    if-eqz v5, :cond_5

    .line 16
    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 17
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p2, p1, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    return p3

    .line 19
    :cond_b
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    iget p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p2, p1, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    return p3

    .line 23
    :cond_c
    :goto_1
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v2

    .line 24
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v5

    .line 25
    iget v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    sget-object v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v6

    if-nez v2, :cond_d

    if-nez v5, :cond_d

    if-eqz v6, :cond_5

    .line 26
    :cond_d
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 27
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p2, p1, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    return p3

    :cond_e
    :goto_2
    return v1
.end method

.method private checkLightChange(I)Z
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->a(II)I

    move-result v5

    iget v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->a(II)I

    move-result v4

    if-eq v5, v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkLightRightFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/ArrayList;Ljava/util/List;J)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;J)Z"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v2, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_5

    .line 3
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    cmp-long v0, v5, v2

    if-lez v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    sub-long/2addr v2, v5

    cmp-long v0, v2, p5

    if-gtz v0, :cond_2

    :cond_1
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p4

    if-nez p4, :cond_7

    .line 4
    :cond_2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-nez p4, :cond_4

    .line 5
    invoke-direct {p0, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkOtherLightOn(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;

    move-result-object p3

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish()Z

    move-result p4

    if-eqz p4, :cond_7

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastLightOn(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result p4

    if-eqz p4, :cond_7

    if-eqz p3, :cond_3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-nez p3, :cond_7

    :cond_3
    :goto_0
    const/4 p3, 0x1

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastLightOn(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_0

    .line 8
    :cond_5
    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    cmp-long v0, p3, v2

    if-lez v0, :cond_7

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    sub-long/2addr p3, v2

    cmp-long v0, p3, p5

    if-lez v0, :cond_7

    .line 9
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    .line 10
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish()Z

    move-result p3

    goto :goto_1

    .line 11
    :cond_6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastLightOn(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result p3

    if-eqz p3, :cond_7

    goto :goto_0

    :cond_7
    const/4 p3, 0x0

    .line 12
    :goto_1
    iget-object p4, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object p5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {p4, p5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_8

    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 13
    invoke-virtual {p2, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I

    move-result p5

    if-ne p5, v4, :cond_8

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p5

    invoke-virtual {p5, p4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p4

    if-eqz p4, :cond_8

    const/4 p3, 0x0

    .line 14
    :cond_8
    iget p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    const p4, 0x18f0a

    if-ne p2, p4, :cond_a

    if-eqz p3, :cond_a

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_9

    const/4 v1, 0x1

    :cond_9
    move p3, v1

    :cond_a
    return p3
.end method

.method private checkNotAllowedAction(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    const/4 v2, 0x1

    if-nez v0, :cond_4

    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 5
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const-string v5, "TimeTag"

    const-string v6, "\u64cd\u4f5c\u4e86\u4e0d\u5e94\u8be5\u64cd\u4f5c\u7684\u706f\u5149"

    if-ne v3, v4, :cond_3

    .line 6
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v1, "\u4e0d\u5e94\u8be5\u64cd\u4f5c\u7684FlashLight \u8fdc\u5149\u88ab\u6253\u5f00"

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    invoke-static {v5, v6}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    iget v1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p3, v1, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    const/4 v1, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 11
    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    invoke-static {v5, v6}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget p1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p3, p1, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method private checkOpenLights(I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 3
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    iget v6, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->c(II)Z

    move-result v5

    if-eqz v5, :cond_1

    iget v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {p1, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private checkOpenOtherLight(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkOtherLightOn(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p2, :cond_2

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {p2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->openLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)I

    move-result v1

    if-gt v1, v2, :cond_2

    goto :goto_0

    .line 7
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v0, v3, :cond_2

    .line 8
    iget-object v4, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    if-eqz v1, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 10
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u5f00\u542f\u4e86\u4e0d\u5e94\u8be5\u5f00\u7684\u706f\u51492 "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "TimeTag"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    iget p1, p3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p3, p1, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    return v2

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private checkOtherLightOn(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    if-nez v0, :cond_d

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_d

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    goto/16 :goto_3

    .line 3
    :cond_1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 4
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 5
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v2, v3, :cond_2

    goto :goto_0

    .line 6
    :cond_2
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v2, v3, :cond_7

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v2, v4, :cond_3

    goto :goto_1

    .line 7
    :cond_3
    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v2, v3, :cond_4

    .line 8
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_4
    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v2, v4, :cond_5

    .line 11
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 13
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v2, v5, :cond_6

    .line 15
    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 17
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 18
    :cond_6
    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 19
    :cond_7
    :goto_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 21
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WidthLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 23
    :cond_8
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_d

    .line 24
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_9
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 26
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 27
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v1, v2, :cond_9

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v1, v2, :cond_a

    goto :goto_2

    .line 28
    :cond_a
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_b

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v1, v2, :cond_b

    goto :goto_2

    .line 29
    :cond_b
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_c
    return-object p2

    :cond_d
    :goto_3
    return-object v1
.end method

.method private checkRobOrder(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/ArrayList;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_2

    return v1

    .line 4
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_3

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p3

    if-ne p3, v0, :cond_3

    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {p4, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_3

    return v1

    .line 5
    :cond_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    if-eqz p3, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1f4

    cmp-long p3, v2, v4

    if-lez p3, :cond_5

    .line 6
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    .line 7
    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    if-eq p3, p1, :cond_5

    const/4 p1, 0x1

    goto :goto_0

    .line 8
    :cond_4
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v0

    goto :goto_0

    :cond_5
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_6

    const-string p1, "\u62a2\u6307\u4ee4"

    .line 9
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string p3, "TimeTag"

    .line 10
    invoke-static {p3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x18ed9

    .line 11
    invoke-direct {p0, p2, p1, p5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    return v0

    :cond_6
    return v1
.end method

.method private checkSpecialLightTime(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z
    .locals 9

    .line 1
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-nez v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    if-nez v0, :cond_3

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isNeedCheckChaocheLightTime(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasLeftLightTimeDeduct:Z

    const v2, 0x18ed6

    const-string v3, "TimeTag"

    const/4 v4, 0x1

    if-nez v0, :cond_2

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p2, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnLeftTime:J

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_3

    .line 6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u5de6\u8f6c\u65f6\u95f4\u4e0d\u591f:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnLeftTime:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnLeftTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    invoke-direct {p0, p2, v2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    .line 9
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasLeftLightTimeDeduct:Z

    return v4

    .line 10
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasRightLightTimeDeduct:Z

    if-nez v0, :cond_3

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2, v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLight(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnRightTime:J

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v7, p1

    cmp-long p1, v5, v7

    if-gez p1, :cond_3

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u53f3\u8f6c\u65f6\u95f4\u4e0d\u591f:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnRightTime:J

    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->turnRightTime:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    invoke-direct {p0, p2, v2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    .line 15
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasRightLightTimeDeduct:Z

    return v4

    :cond_3
    return v1
.end method

.method private checkTimeOUt(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/ArrayList;Ljava/util/List;JLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Ljava/lang/Boolean;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;J",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    const-wide/16 v3, -0x1

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-object v0

    .line 3
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    if-nez v1, :cond_3

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    if-nez v1, :cond_3

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    sub-long/2addr v1, v3

    cmp-long v3, v1, p5

    if-lez v3, :cond_3

    .line 4
    invoke-direct/range {p0 .. p6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkLightRightFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/ArrayList;Ljava/util/List;J)Z

    move-result p1

    if-nez p1, :cond_3

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    iput-wide p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    const-string p1, "\u8d85\u8fc7\u4e86\u65f6\u95f4\uff0c\u8fd8\u6ca1\u5b8c\u6210"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string p3, "TimeTag"

    .line 8
    invoke-static {p3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isNeedCheckChaocheLightTime(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->allLightOn()Z

    move-result p1

    if-nez p1, :cond_2

    const p1, 0x18ed5

    .line 10
    invoke-direct {p0, p2, p1, p7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    .line 11
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "getDeduct:\u8003\u8bd5\u65f6\u95f4:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 12
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iget p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p2, p1, p7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    .line 14
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    :cond_3
    return-object v0
.end method

.method private checkWrongOrder(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->checkWrongOrderLight()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u987a\u5e8f\u9519\u4e86"

    .line 3
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const-string v1, "TimeTag"

    .line 4
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {p0, p1, v0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    const/4 p1, 0x1

    return p1

    :cond_1
    return v1
.end method

.method private getAllLightsOn(I)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Light;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v1, v3

    .line 3
    iget v5, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    if-ne v5, v6, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {p1, v5}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 5
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private getDeduct(ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->deducts:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_LightSimulate:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const-string v1, ""

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->empty(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v0

    .line 4
    iput p1, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    .line 5
    :cond_1
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->wrapDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object p1

    return-object p1
.end method

.method private init()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasDeduct:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isStart:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPrintFirstFrame:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->haveJudgeReset:Z

    const-wide/16 v1, 0x0

    .line 8
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playStartTime:J

    .line 9
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    .line 10
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->startJudgeTime:J

    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->judgeFirstFrameLights:Ljava/util/List;

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasLeftLightTimeDeduct:Z

    .line 13
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasRightLightTimeDeduct:Z

    return-void
.end method

.method private init(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;JLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V
    .locals 6

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : examTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ; "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " start "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " end = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isEnd:Z

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "TimeTag"

    invoke-static {p4, p3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->reset()V

    .line 17
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->setFlashConfigValue(I)V

    .line 18
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->init()V

    .line 19
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->loadCarLightState(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 21
    iget p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    const/4 p4, 0x1

    if-eq p3, p4, :cond_0

    const/16 p4, 0x14

    if-lt p3, p4, :cond_1

    .line 22
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 23
    :cond_1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    iget p4, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->voiceCode:I

    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->b(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p3, p4, v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playVoice(Ljava/lang/String;ILjava/lang/String;Z)V

    .line 24
    invoke-interface {p5, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onStart(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    return-void
.end method

.method private isNeedCheckChaocheLightTime(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isSpecialLight()Z

    move-result p1

    return p1
.end method

.method private isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    return p1
.end method

.method private judgeLight(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;IZJLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Ljava/lang/Boolean;
    .locals 20

    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p7

    .line 1
    sget-object v12, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sget-object v13, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/4 v14, 0x0

    iput-boolean v14, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isBreakJudge:Z

    .line 2
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkOpenLights(I)Ljava/util/List;

    move-result-object v15

    .line 3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->getAllLightsOn(I)Ljava/util/ArrayList;

    move-result-object v7

    .line 4
    iget v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    invoke-direct {v8, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->getAllLightsOn(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 5
    iget v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    const-string v6, "TimeTag"

    if-eq v0, v1, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const-string v2, "; "

    if-nez v1, :cond_0

    const-string v1, "last lights: "

    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e0a\u4e00\u6b21\u4eae\u7684\u706f\u5149 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6253\u5f00\u7684\u706f\u5149 "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-virtual {v7}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "current lights: "

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524d\u4eae\u7684\u706f\u5149 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v1, "openLights: "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v4, v15

    move-object/from16 v5, p7

    .line 16
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkRobOrder(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/ArrayList;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z

    .line 17
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    const/16 v16, 0x0

    if-eqz v0, :cond_3

    return-object v16

    .line 18
    :cond_3
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasDeduct:Z

    if-eqz v0, :cond_4

    return-object v13

    .line 19
    :cond_4
    iget-wide v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->startJudgeTime:J

    const-wide/16 v17, 0x0

    cmp-long v2, v0, v17

    if-nez v2, :cond_5

    .line 20
    iput-object v7, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->judgeFirstFrameLights:Ljava/util/List;

    return-object v16

    .line 21
    :cond_5
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPrintFirstFrame:Z

    const/4 v5, 0x1

    if-nez v0, :cond_6

    .line 22
    iput-boolean v5, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPrintFirstFrame:Z

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bc4\u5224\u7684\u7b2c\u4e00\u5e27\u6253\u5f00\u7684\u706f\u5149\uff1a "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->judgeFirstFrameLights:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 24
    :cond_6
    invoke-direct {v8, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 25
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v10, v0, v15}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->updateOpenLightCount(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;Ljava/util/List;)V

    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v3, v7

    move-object v4, v15

    move-object v14, v6

    move-wide/from16 v5, p5

    move-object/from16 v19, v7

    move-object/from16 v7, p7

    .line 26
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkTimeOUt(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/ArrayList;Ljava/util/List;JLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Ljava/lang/Boolean;

    .line 27
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastModel:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-direct {v8, v0, v10, v15, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkIsReset(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z

    .line 28
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->judgeFirstFrameLights:Ljava/util/List;

    invoke-direct {v8, v15, v0, v10, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkOpenOtherLight(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z

    .line 30
    :cond_8
    invoke-direct {v8, v9, v15, v10, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkNotAllowedAction(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "\u8bef\u64cd\u4f5c\u8fd4\u56de"

    .line 31
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 32
    invoke-static {v14, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    :cond_9
    iget-boolean v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    if-eqz v0, :cond_12

    .line 34
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    if-eqz v0, :cond_a

    return-object v16

    .line 35
    :cond_a
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasDeduct:Z

    if-eqz v0, :cond_b

    return-object v13

    .line 36
    :cond_b
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isBreakJudge:Z

    if-eqz v0, :cond_c

    return-object v13

    :cond_c
    if-eqz p3, :cond_d

    .line 37
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202104:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 38
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202105:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    .line 39
    :cond_d
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 40
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    move-wide/from16 v17, v0

    .line 41
    :cond_e
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    sub-long/2addr v0, v2

    cmp-long v2, v0, v17

    if-ltz v2, :cond_f

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u7ed3\u675f\u4e86"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    xor-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_f
    if-eqz p4, :cond_1c

    .line 44
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 45
    invoke-direct {v8, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 46
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->updateLightsState(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    .line 47
    :cond_10
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_11

    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v0, v1, :cond_11

    .line 48
    invoke-virtual/range {p0 .. p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->allLightOff(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    goto/16 :goto_2

    .line 49
    :cond_11
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish()Z

    move-result v0

    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    goto/16 :goto_2

    :cond_12
    if-eqz p4, :cond_13

    .line 50
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->tag:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    const/4 v0, 0x1

    .line 51
    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    return-object v12

    .line 53
    :cond_13
    invoke-direct {v8, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPauseJudge(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 54
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v10, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->updateLightsState(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V

    goto :goto_1

    .line 55
    :cond_14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "needPlayDeduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->needPlayDeduct:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ";isPlayingDeduct="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " ;model.isFinish="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 56
    :goto_1
    invoke-direct {v8, v10, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkWrongOrder(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z

    .line 57
    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->calculateOrder()V

    .line 58
    iget-wide v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_15

    return-object v16

    .line 59
    :cond_15
    invoke-direct {v8, v9, v10, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkSpecialLightTime(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Z

    .line 60
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz v0, :cond_16

    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_16

    .line 61
    invoke-direct {v8, v9, v15, v10, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkFlashLightAction(Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    .line 62
    :cond_16
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    if-eqz v0, :cond_17

    return-object v16

    :cond_17
    if-eqz p4, :cond_18

    .line 63
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202127:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isOffLight()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual/range {p2 .. p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    .line 64
    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 65
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    return-object v12

    .line 66
    :cond_18
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    if-nez v0, :cond_1a

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, v19

    move-object v4, v15

    move-wide/from16 v5, p5

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkLightRightFinish(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Ljava/util/ArrayList;Ljava/util/List;J)Z

    move-result v0

    if-eqz v0, :cond_1a

    const-string v0, "\u505a\u5bf9\u4e86 "

    .line 67
    invoke-static {v14, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iget-object v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_19

    move-object/from16 v0, v19

    .line 69
    invoke-direct {v8, v0, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkOtherLightOn(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 70
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    .line 71
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u542f\u4e86\u4e0d\u5e94\u8be5\u5f00\u7684\u706f\u51491 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 72
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    iget v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {v8, v10, v0, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    :cond_19
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 75
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 76
    iput-object v10, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastModel:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    goto/16 :goto_2

    :cond_1a
    move-object/from16 v0, v19

    .line 77
    iget-wide v1, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    cmp-long v3, v1, v17

    if-lez v3, :cond_1c

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    sub-long/2addr v1, v3

    cmp-long v3, v1, p5

    if-lez v3, :cond_1c

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8d85\u65f6\u8fd8\u6ca1\u5bf9 isFailure "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 79
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    iget-object v1, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1b

    .line 81
    invoke-direct {v8, v0, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkOtherLightOn(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 82
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1b

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f00\u542f\u4e86\u4e0d\u5e94\u8be5\u5f00\u7684\u706f\u51493 "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    invoke-direct {v8, v10, v0, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    :cond_1b
    const/4 v0, 0x1

    .line 86
    iput-boolean v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, v10, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 88
    iput-object v10, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastModel:Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 89
    :cond_1c
    :goto_2
    iget-boolean v0, v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isBreakJudge:Z

    if-eqz v0, :cond_1d

    goto :goto_3

    :cond_1d
    move-object/from16 v13, v16

    :goto_3
    return-object v13
.end method

.method private lightExamModelDeduct(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V
    .locals 3

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    if-ne p2, v0, :cond_0

    .line 2
    invoke-direct {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->getDeduct(ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->getDeduct(ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object v0

    .line 4
    :goto_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->needAutoCheck()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    .line 5
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasDeduct:Z

    if-eqz v1, :cond_2

    return-void

    :cond_2
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasDeduct:Z

    .line 7
    iget v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->deductId:I

    if-ne p2, v2, :cond_3

    .line 8
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    if-nez p2, :cond_4

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    .line 10
    invoke-interface {p3, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 11
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playingDeductVoice(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 13
    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isBreakJudge:Z

    goto :goto_1

    .line 16
    :cond_3
    invoke-direct {p0, p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->getDeduct(ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    move-result-object p2

    invoke-interface {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;->onFailure(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 17
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playingDeductVoice(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202114:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->deductIsOver:Lcn/mucang/android/jiakaoyi/framework/h/c;

    if-eqz p2, :cond_4

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/framework/h/c;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 19
    iput-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 20
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    iput-wide p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 21
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isBreakJudge:Z

    :cond_4
    :goto_1
    return-void
.end method

.method private loadCarLightState(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->getAllLightsOn(I)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->judgeFirstFrameLights:Ljava/util/List;

    return-void
.end method

.method private playVoice(Ljava/lang/String;ILjava/lang/String;Z)V
    .locals 10

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    .line 2
    iget v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->id:I

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playStartTime:J

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSpeaking text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ;voiceCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";voiceKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202138:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202112:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playStartTime:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->startJudgeTime:J

    .line 8
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v8, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p1

    move v5, p2

    move-object v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;ILjava/lang/String;ILjava/lang/String;Z)V

    const/4 v9, 0x2

    move-object v5, v0

    move-object v6, v8

    move v7, p2

    move-object v8, p3

    invoke-static/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->x(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;I)V

    return-void
.end method

.method private playingDeductVoice(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->needPlayDeduct:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    if-nez v0, :cond_0

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    .line 3
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isFinish:Z

    .line 4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->startWaitTime:J

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->desc:Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamDeduct:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$2;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)V

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->code:I

    invoke-static {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->v(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public allLightOff(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public handleTopic(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;IZJLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Ljava/lang/Boolean;
    .locals 6

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->id:I

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isStart:Z

    if-nez v0, :cond_0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-wide v3, p5

    move-object v5, p7

    .line 3
    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->init(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;JLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)V

    .line 4
    :cond_0
    invoke-direct/range {p0 .. p7}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->judgeLight(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;IZJLcn/mucang/android/jiakaoyi/exam/k3/light/LightExam$LightExamCallback;)Ljava/lang/Boolean;

    move-result-object p2

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->checkLightChange(I)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->lastCarLightState:I

    :cond_1
    return-object p2
.end method

.method public isPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    return v0
.end method

.method public lastLightOn(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    .line 2
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->lights:Ljava/util/List;

    const/4 v2, 0x1

    if-eqz v1, :cond_d

    .line 3
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_3

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 5
    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    return v2

    .line 6
    :cond_2
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    if-ne v1, v2, :cond_5

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v3, v1, :cond_5

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->notAllowed:Ljava/util/List;

    if-eqz p2, :cond_3

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-nez p2, :cond_5

    .line 8
    :cond_3
    iget p1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :goto_0
    return v2

    .line 9
    :cond_5
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FlashLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne p2, v3, :cond_6

    return v2

    .line 10
    :cond_6
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v3, p2, :cond_7

    .line 11
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->allLightOff(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    .line 12
    :cond_7
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-eq v3, p1, :cond_b

    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v3, p2, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne v3, p1, :cond_a

    .line 14
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_1

    :cond_9
    const/4 v2, 0x0

    :goto_1
    return v2

    .line 15
    :cond_a
    iget p1, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    return p1

    .line 16
    :cond_b
    :goto_2
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    if-nez p1, :cond_d

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->lightId:I

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/d/j/a;->d(II)Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_3

    :cond_c
    const/4 v2, 0x0

    :cond_d
    :goto_3
    return v2
.end method

.method public reset()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isStart:Z

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isFailure:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasDeduct:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlayingDeduct:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->haveJudgeReset:Z

    const/4 v1, -0x1

    .line 6
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->id:I

    const-wide/16 v1, -0x1

    .line 7
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playEndTime:J

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->isPlaying:Z

    const-wide/16 v1, 0x0

    .line 9
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playStartTime:J

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasLeftLightTimeDeduct:Z

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->hasRightLightTimeDeduct:Z

    return-void
.end method
