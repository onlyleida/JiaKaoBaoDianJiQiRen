.class public final Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0008\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u000c\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0006\u0010-\u001a\u00020\u0004R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008R\u001a\u0010\t\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u0006\"\u0004\u0008\u000b\u0010\u0008R\u001a\u0010\u000c\u001a\u00020\rX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001a\u0010\u0012\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0006\"\u0004\u0008\u0014\u0010\u0008R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\u001c\u0010\u001b\u001a\u0004\u0018\u00010\u001cX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 R\u001c\u0010!\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\u001c\u0010\'\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008(\u0010$\"\u0004\u0008)\u0010&R\u001c\u0010*\u001a\u0004\u0018\u00010\"X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008+\u0010$\"\u0004\u0008,\u0010&\u00a8\u0006."
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;",
        "Ljava/io/Serializable;",
        "()V",
        "closeAfterSpeak",
        "",
        "getCloseAfterSpeak",
        "()Z",
        "setCloseAfterSpeak",
        "(Z)V",
        "closePanel",
        "getClosePanel",
        "setClosePanel",
        "code",
        "",
        "getCode",
        "()I",
        "setCode",
        "(I)V",
        "forcePlay",
        "getForcePlay",
        "setForcePlay",
        "grade",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        "getGrade",
        "()Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;",
        "setGrade",
        "(Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V",
        "listener",
        "Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "getListener",
        "()Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;",
        "setListener",
        "(Lcn/mucang/android/jiakaoyi/framework/tts/TtsListener;)V",
        "playText",
        "",
        "getPlayText",
        "()Ljava/lang/String;",
        "setPlayText",
        "(Ljava/lang/String;)V",
        "sessionId",
        "getSessionId",
        "setSessionId",
        "voiceUrl",
        "getVoiceUrl",
        "setVoiceUrl",
        "isNotMatch",
        "speech_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private closeAfterSpeak:Z

.field private closePanel:Z

.field private code:I

.field private forcePlay:Z

.field private grade:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

.field private listener:Lcn/mucang/android/jiakaoyi/framework/tts/f;

.field private playText:Ljava/lang/String;

.field private sessionId:Ljava/lang/String;

.field private voiceUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->VoiceRobot:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->grade:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    const/4 v0, -0x1

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->code:I

    return-void
.end method


# virtual methods
.method public final getCloseAfterSpeak()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->closeAfterSpeak:Z

    return v0
.end method

.method public final getClosePanel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->closePanel:Z

    return v0
.end method

.method public final getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->code:I

    return v0
.end method

.method public final getForcePlay()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->forcePlay:Z

    return v0
.end method

.method public final getGrade()Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->grade:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    return-object v0
.end method

.method public final getListener()Lcn/mucang/android/jiakaoyi/framework/tts/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->listener:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    return-object v0
.end method

.method public final getPlayText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->playText:Ljava/lang/String;

    return-object v0
.end method

.method public final getSessionId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->sessionId:Ljava/lang/String;

    return-object v0
.end method

.method public final getVoiceUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->voiceUrl:Ljava/lang/String;

    return-object v0
.end method

.method public final isNotMatch()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final setCloseAfterSpeak(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->closeAfterSpeak:Z

    return-void
.end method

.method public final setClosePanel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->closePanel:Z

    return-void
.end method

.method public final setCode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->code:I

    return-void
.end method

.method public final setForcePlay(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->forcePlay:Z

    return-void
.end method

.method public final setGrade(Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->grade:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    return-void
.end method

.method public final setListener(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->listener:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    return-void
.end method

.method public final setPlayText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->playText:Ljava/lang/String;

    return-void
.end method

.method public final setSessionId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->sessionId:Ljava/lang/String;

    return-void
.end method

.method public final setVoiceUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/model/VoicePerformanceModel;->voiceUrl:Ljava/lang/String;

    return-void
.end method
