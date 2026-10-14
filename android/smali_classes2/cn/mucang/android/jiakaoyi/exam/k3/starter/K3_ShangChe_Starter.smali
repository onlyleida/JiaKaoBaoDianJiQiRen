.class public Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;
.super Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private cancelCloseEngineDialog:Z

.field private haveEngineStart:Z

.field private isPlaying:Z

.field private isPlayingCloseEngineVoice:Z

.field private isPlayingStartVoiceAfter:Z

.field private playingCloseEngineVoice:J

.field private playingEnd:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;)V
    .locals 7

    .line 1
    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playingEnd:Z

    return p1
.end method

.method static synthetic access$102(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->isPlaying:Z

    return p1
.end method

.method static synthetic access$202(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->isPlayingCloseEngineVoice:Z

    return p1
.end method

.method static synthetic access$302(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;J)J
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playingCloseEngineVoice:J

    return-wide p1
.end method

.method private playCloseEngineVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;I)V
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->isPlayingCloseEngineVoice:Z

    if-nez p1, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playingCloseEngineVoice:J

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long p1, p2

    add-long/2addr v2, p1

    cmp-long p1, v0, v2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->isPlayingCloseEngineVoice:Z

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201169:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$2;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;)V

    invoke-static {p1, p2, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    :cond_0
    return-void
.end method


# virtual methods
.method protected canStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 6

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_7

    if-nez p4, :cond_0

    const-string p2, "HaveShangCheStep"

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_7

    .line 2
    :cond_0
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p3

    const-string p4, "\u8bf7\u5173\u95ed\u53d1\u52a8\u673a"

    const/4 v1, 0x0

    if-eqz p3, :cond_4

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->haveEngineStart:Z

    .line 5
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playingCloseEngineVoice:J

    const-wide/16 v4, 0x0

    cmp-long p3, v2, v4

    if-nez p3, :cond_2

    .line 6
    iget-boolean p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogCloseEngine:Z

    if-nez p3, :cond_1

    .line 7
    iput-boolean v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogCloseEngine:Z

    .line 8
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->showCloseEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p2, p3, v0, p4, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    .line 9
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playCloseEngineVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;I)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201152:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playCloseEngineVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;I)V

    :cond_3
    :goto_0
    return v1

    .line 12
    :cond_4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->cancelCloseEngineDialog:Z

    if-nez p1, :cond_5

    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->isDialogCloseEngine:Z

    if-eqz p1, :cond_5

    .line 13
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->cancelCloseEngineDialog:Z

    .line 14
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissCloseEngine:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->shangcheMainStep:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {p2, p1, p3, p4, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    .line 15
    :cond_5
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->haveEngineStart:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 16
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->isPlaying:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playingEnd:Z

    if-nez p1, :cond_6

    .line 17
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->isPlaying:Z

    .line 18
    sget p1, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_continue_complete_exam:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance p3, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$1;

    invoke-direct {p3, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;)V

    invoke-static {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->u(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;)V

    .line 19
    :cond_6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playingEnd:Z

    return p1

    :cond_7
    return v0
.end method

.method protected playingStartVoiceAfter(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->playingStartVoiceAfter(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)V

    return-void
.end method

.method protected reachStartPos(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    const/4 p1, 0x1

    if-eqz p4, :cond_0

    return p1

    :cond_0
    const-string p2, "HaveShangCheStep"

    .line 1
    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->b(Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
