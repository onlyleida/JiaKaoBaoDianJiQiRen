.class public Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

.field private hasPlayingStartVoice:Z

.field private isPlayingStartVoice:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->isPlayingStartVoice:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->hasPlayingStartVoice:Z

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    return-void
.end method

.method static synthetic access$002(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->isPlayingStartVoice:Z

    return p1
.end method


# virtual methods
.method public checkPlayingFinish()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->hasPlayingStartVoice:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->hasPlayingStartVoice:Z

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->isPlayingStartVoice:Z

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker$1;

    invoke-direct {v3, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;)V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;->p202100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    .line 5
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object v5

    .line 6
    invoke-static {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->w(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;Lcn/mucang/android/jiakaoyi/framework/tts/f;ILjava/lang/String;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightStartVoiceChecker;->isPlayingStartVoice:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    return v1
.end method
