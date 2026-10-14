.class public Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;
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
.field public isFinishFingerPrint:Z

.field private shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->isFinishFingerPrint:Z

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;)Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    return-object p0
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
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isStart:Z

    const/4 p3, 0x1

    if-eqz p2, :cond_6

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isShowDialog:Z

    if-nez v1, :cond_1

    .line 4
    iput-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isShowDialog:Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->startFingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    const-string v3, "\u8bf7\u5f00\u59cb\u6307\u7eb9\u9a8c\u8bc1"

    invoke-virtual {v1, v2, p2, v3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    .line 6
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, p3, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->s:Z

    if-eqz p1, :cond_2

    .line 7
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->isFinishFingerPrint:Z

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-boolean p3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 9
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->startTime:J

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->stepTime:J

    add-long/2addr v2, v4

    cmp-long v4, p1, v2

    if-lez v4, :cond_3

    .line 10
    iput-boolean p3, v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    .line 11
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->finish:Z

    const-string p2, "\u53d6\u6d88\u6307\u7eb9\u9a8c\u8bc1\u5f39\u7a97"

    if-eqz p1, :cond_5

    .line 12
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setFinish()V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPlayEndVoice:Z

    if-nez v1, :cond_5

    .line 15
    iput-boolean p3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPlayEndVoice:Z

    .line 16
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object p3, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 17
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v2

    .line 18
    invoke-static {p1, p3, v1, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    goto :goto_0

    .line 19
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    .line 20
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissFingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1, p3, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    .line 21
    :cond_5
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isEnd:Z

    if-eqz p1, :cond_9

    .line 22
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissFingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p1, p3, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    goto :goto_1

    .line 23
    :cond_6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201132:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->shangCheStepData:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    if-ne p1, p3, :cond_8

    .line 24
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-boolean p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPlayStartVoice:Z

    if-nez p2, :cond_7

    .line 25
    iput-boolean p3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPlayStartVoice:Z

    .line 26
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    move-object v2, v1

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201133:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 27
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v1

    .line 28
    invoke-static {p1, p2, v0, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 29
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, p3, :cond_9

    .line 30
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    goto :goto_1

    .line 31
    :cond_8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    :cond_9
    :goto_1
    return-void
.end method
