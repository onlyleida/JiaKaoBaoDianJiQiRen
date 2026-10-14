.class public Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;
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
.field private isPlayingLineVoice:Z

.field private playingLineVoiceEndTime:J

.field private shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    return-void
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->isPlayingLineVoice:Z

    return p1
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->playingLineVoiceEndTime:J

    return-wide p1
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    if-nez p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    if-nez p1, :cond_4

    .line 5
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->routeName:Ljava/lang/String;

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201159:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_2

    const-string p1, ""

    :cond_2
    const-string p3, "*"

    .line 9
    invoke-virtual {p2, p3, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->isPlayingLineVoice:Z

    if-nez p2, :cond_4

    iget-wide p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->playingLineVoiceEndTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_4

    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->isPlayingLineVoice:Z

    .line 13
    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker$1;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;)V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201159:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201159:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 14
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {p1, p2, p3, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto :goto_0

    .line 16
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setFinish()V

    .line 17
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-nez p1, :cond_5

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    :cond_5
    return-void
.end method
