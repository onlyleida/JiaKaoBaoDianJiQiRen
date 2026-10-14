.class public final Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/d/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/speech/SpeechManager;-><clinit>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00001\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J$\u0010\u0007\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0008\u001a\u00020\tH\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016J\u0012\u0010\u000b\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u000c\u001a\u00020\u00032\u0008\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0016J\u0008\u0010\r\u001a\u00020\u0003H\u0016J\u0008\u0010\u000e\u001a\u00020\u0003H\u0016J\u0010\u0010\u000f\u001a\u00020\u00032\u0006\u0010\u0010\u001a\u00020\u0011H\u0016J\u001a\u0010\u0012\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u0011H\u0016J\u001a\u0010\u0014\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00112\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0017H\u0016J$\u0010\u0018\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u00052\u0006\u0010\u0013\u001a\u00020\u00112\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0005H\u0016\u00a8\u0006\u001a"
    }
    d2 = {
        "cn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1",
        "Lcn/mucang/android/jiakaoyi/speech/callback/ISpeechViewCallback;",
        "onAnswerText",
        "",
        "sessionId",
        "",
        "words",
        "onAsrResult",
        "isFinal",
        "",
        "onDismissHint",
        "onSessionEnd",
        "onShowHint",
        "onSpeakEnd",
        "onSpeakStart",
        "onStateChanged",
        "state",
        "",
        "onTimeout",
        "type",
        "onVolumeChanged",
        "volume",
        "data",
        "",
        "onWakeup",
        "keyWord",
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


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onStateChanged$1;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onStateChanged$1;-><init>(I)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onSpeakStart$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onSpeakStart$1;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public c(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "SpeechManager"

    const-string p2, "onTimeout : sessionId == null"

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onTimeout$1;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onTimeout$1;-><init>(Ljava/lang/String;I)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onShowHint$1;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onShowHint$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public e(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onSessionEnd$1;

    invoke-direct {v1, p1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onSessionEnd$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public f(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "SpeechManager"

    const-string p2, "onAsrResult : sessionId == null"

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;

    invoke-direct {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAsrResult$1;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public g(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "SpeechManager"

    const-string p2, "onWakeup : sessionId == null"

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAnswerText$1;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onAnswerText$1;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public h(Ljava/lang/String;ILjava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "SpeechManager"

    const-string p2, "onWakeup : sessionId == null"

    .line 1
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->i()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onWakeup$1;

    invoke-direct {v1, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onWakeup$1;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onDismissHint$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onDismissHint$1;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public onSpeakEnd()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onSpeakEnd$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onSpeakEnd$1;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method public onVolumeChanged(I[B)V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->a:Lcn/mucang/android/jiakaoyi/speech/SpeechManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onVolumeChanged$1;

    invoke-direct {v1, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager$mSpeechCallbackWrap$1$onVolumeChanged$1;-><init>(I[B)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/SpeechManager;->d(Lcn/mucang/android/jiakaoyi/speech/SpeechManager;Lkotlin/jvm/b/a;)V

    return-void
.end method
