.class public final Lcn/mucang/android/jiakaoyi/speech/engine/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/engine/l/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000O\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006\n\u0002\u0010\"\n\u0002\u0008\u0002*\u0001\u000e\u0018\u0000 \"2\u00020\u0001:\u0001\"B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0010\u001a\u00020\u0011H\u0016J\u001c\u0010\u0012\u001a\u00020\u00112\u0008\u0010\u0013\u001a\u0004\u0018\u00010\n2\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0016J\u0008\u0010\u0015\u001a\u00020\u000cH\u0016J\u0018\u0010\u0016\u001a\u00020\u00112\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0008\u0010\u001b\u001a\u00020\u0011H\u0016J\u0010\u0010\u001c\u001a\u00020\u00112\u0006\u0010\u001d\u001a\u00020\u000cH\u0016J\u0008\u0010\u001e\u001a\u00020\u0011H\u0016J\u0018\u0010\u001f\u001a\u00020\u00112\u000e\u0010 \u001a\n\u0012\u0004\u0012\u00020\u0008\u0018\u00010!H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\r\u001a\u00020\u000eX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u000f\u00a8\u0006#"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine;",
        "Lcn/mucang/android/jiakaoyi/speech/engine/asr/IAsrEngine;",
        "()V",
        "mAsrCallback",
        "Lcn/mucang/android/jiakaoyi/speech/callback/IAsrCallback;",
        "mAsrEngine",
        "Lcom/iflytek/cloud/SpeechRecognizer;",
        "mAsrResult",
        "",
        "mContext",
        "Landroid/content/Context;",
        "mInited",
        "",
        "mRecognizerListener",
        "cn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine$mRecognizerListener$1",
        "Lcn/mucang/android/jiakaoyi/speech/engine/asr/IflytekAsrEngine$mRecognizerListener$1;",
        "cancel",
        "",
        "init",
        "context",
        "callback",
        "isWorking",
        "onAudioWrite",
        "data",
        "",
        "length",
        "",
        "release",
        "startAsrMode",
        "force",
        "stopAsrMode",
        "uploadHotWords",
        "words",
        "",
        "Companion",
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
.field private a:Lcom/iflytek/cloud/SpeechRecognizer;

.field private b:Lcn/mucang/android/jiakaoyi/speech/d/a;

.field private volatile c:Z

.field private d:Ljava/lang/String;

.field private final e:Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->d:Ljava/lang/String;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Lcn/mucang/android/jiakaoyi/speech/d/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->b:Lcn/mucang/android/jiakaoyi/speech/d/a;

    return-object p0
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->d:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/speech/engine/l/b;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->isListening()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public cancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->cancel()V

    :goto_0
    return-void
.end method

.method public d(Z)V
    .locals 2

    const-string v0, "IflytekAsrEngine"

    const-string v1, "startAsrMode"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "is listening"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "startAsrMode success"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, ""

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->d:Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->e:Lcn/mucang/android/jiakaoyi/speech/engine/l/b$a;

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->startListening(Lcom/iflytek/cloud/RecognizerListener;)I

    :goto_1
    return-void
.end method

.method public e([BI)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->writeAudio([BII)I

    :cond_1
    :goto_0
    return-void
.end method

.method public f()V
    .locals 2

    const-string v0, "IflytekAsrEngine"

    const-string v1, "stopAsrMode"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "stopAsrMode success"

    .line 3
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ""

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->d:Ljava/lang/String;

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechRecognizer;->stopListening()V

    goto :goto_0

    :cond_1
    const-string v1, "is not listening"

    .line 6
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic g(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcn/mucang/android/jiakaoyi/speech/d/a;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->k(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/speech/d/a;)V

    return-void
.end method

.method public k(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/speech/d/a;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->c:Z

    if-eqz p1, :cond_0

    const-string p1, "IflytekAsrEngine"

    const-string p2, "already initialized"

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->b:Lcn/mucang/android/jiakaoyi/speech/d/a;

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez p1, :cond_2

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p1

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->createRecognizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechRecognizer;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->a:Lcom/iflytek/cloud/SpeechRecognizer;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "params"

    .line 6
    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "engine_type"

    const-string v0, "cloud"

    .line 7
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "result_type"

    const-string v0, "plain"

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "language"

    const-string v0, "zh_cn"

    .line 9
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "accent"

    const-string v0, "mandarin"

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "vad_bos"

    const-string v0, "9999"

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "vad_eos"

    const-string v0, "1000"

    .line 12
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "asr_ptt"

    const-string v0, "0"

    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "audio_format"

    const-string v0, "wav"

    .line 14
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "audio_source"

    const-string v0, "-1"

    .line 15
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 16
    sget-object p2, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a()Ljava/lang/String;

    move-result-object p2

    const-string v0, "asr_audio_path"

    .line 17
    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/SpeechRecognizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 18
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/l/b;->c:Z

    return-void

    .line 19
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not  null !!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
