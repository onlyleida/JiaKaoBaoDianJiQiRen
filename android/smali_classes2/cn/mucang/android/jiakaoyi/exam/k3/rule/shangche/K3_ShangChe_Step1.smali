.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;
.super Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private isEnd:Z

.field private isPlaying:Z

.field private playingEnd:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    return-void
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->playingEnd:Z

    return p1
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isPlaying:Z

    return p1
.end method

.method private checkIsEnd(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 2
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachingProcessor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->isEnd()Z

    move-result p1

    return p1

    :cond_0
    return v1

    .line 5
    :cond_1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    .line 6
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz v0, :cond_2

    .line 7
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->endTime:J

    sub-long/2addr v2, p1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long p1, p1

    cmp-long v0, v2, p1

    if-lez v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method


# virtual methods
.method protected configDistance()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/common/BaseFinishEvent;->doFixed(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 2
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLight:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 3
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightError:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightLongDistance:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    .line 5
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->TurnLightLongTime:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->c(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)V

    return-void
.end method

.method protected finishVoiceTips()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    return-object v0
.end method

.method protected isEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isEnd:Z

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->checkIsEnd(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isEnd:Z

    .line 3
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isEnd:Z

    if-eqz p1, :cond_2

    .line 4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isPlaying:Z

    if-nez p1, :cond_1

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->playingEnd:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isPlaying:Z

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->finishVoiceTips()Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-result-object p1

    .line 7
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;)V

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p2, p3, v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 10
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->playingEnd:Z

    return p1

    .line 11
    :cond_2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isEnd:Z

    return p1
.end method

.method protected needVoiceTip()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
