.class public final Lcn/mucang/android/jiakaoyi/framework/tts/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u0004J\u000e\u0010\n\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\r\u001a\u00020\u000eJ\u000e\u0010\u000f\u001a\u00020\u00082\u0006\u0010\u000b\u001a\u00020\u000cJ\u0006\u0010\u0010\u001a\u00020\u0008J\u000e\u0010\u0011\u001a\u00020\u00082\u0006\u0010\u0012\u001a\u00020\u0004J\u000e\u0010\u0013\u001a\u00020\u00082\u0006\u0010\u0014\u001a\u00020\u0004J\u0016\u0010\u0015\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0017\u001a\u00020\u0018J\u0006\u0010\u0019\u001a\u00020\u0008J\u001e\u0010\u001a\u001a\u00020\u00082\u0006\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u001c\u001a\u00020\u0018R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/framework/tts/Synthesizer;",
        "",
        "()V",
        "TAG",
        "",
        "speechSynthesizer",
        "Lcom/iflytek/cloud/SpeechSynthesizer;",
        "changeEngineType",
        "",
        "type",
        "initVoiceParameter",
        "context",
        "Landroid/content/Context;",
        "isPlaying",
        "",
        "onCreate",
        "onDestroy",
        "setAudioPath",
        "path",
        "setVoiceName",
        "name",
        "speak",
        "text",
        "callback",
        "Lcom/iflytek/cloud/SynthesizerListener;",
        "stopSpeaking",
        "synthesizeToUri",
        "file",
        "listener",
        "framework_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/framework/tts/d;

.field private static b:Lcom/iflytek/cloud/SpeechSynthesizer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/d;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/d;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic b(I)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/d;->d(I)V

    return-void
.end method

.method private static final d(I)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "InitListener init() code = "

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "Synthesizer"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->m(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_1

    .line 2
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "\u521d\u59cb\u5316\u5931\u8d25,\u9519\u8bef\u7801\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "\u8bed\u97f3\u521d\u59cb\u5316\u5931\u8d25\uff0c\u9519\u8bef\u7801\uff1a"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Landroid/content/Context;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->b()Ljava/lang/String;

    move-result-object v0

    const-string v1, "tts"

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    sget-object v3, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->assets:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    const-string v4, "/common.jet"

    .line 4
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5
    invoke-static {p1, v3, v4}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ";"

    .line 7
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2f

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".jet"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-static {p1, v3, v1}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "engine_type"

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v1, v3}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    :goto_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "tts_res_path"

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 13
    :goto_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez p1, :cond_2

    goto :goto_2

    :cond_2
    const-string v1, "voice_name"

    invoke-virtual {p1, v1, v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez p1, :cond_3

    goto :goto_3

    :cond_3
    const-string v0, "speed"

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/e;->c()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 17
    :goto_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez p1, :cond_4

    goto :goto_4

    :cond_4
    const-string v0, "pitch"

    const-string v1, "50"

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 18
    :goto_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez p1, :cond_5

    goto :goto_5

    :cond_5
    const-string v0, "volume"

    const-string v1, "50"

    invoke-virtual {p1, v0, v1}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :goto_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/framework/R$string;->app_id:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "appid="

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ","

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "engine_mode=msc"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/iflytek/cloud/SpeechUtility;->createUtility(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/SpeechUtility;

    const/4 v0, 0x0

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/Setting;->setShowLog(Z)V

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/a;

    invoke-static {p1, v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->createSynthesizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechSynthesizer;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "stream_type"

    const-string v2, "3"

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 9
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "request_audio_focus"

    const-string v2, "true"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 10
    :goto_1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/d;->a(Landroid/content/Context;)V

    return-void
.end method

.method public final e(Ljava/lang/String;)V
    .locals 2

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "tts_audio_path"

    invoke-virtual {v0, v1, p1}, Lcom/iflytek/cloud/SpeechSynthesizer;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :goto_0
    return-void
.end method

.method public final f(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/SpeechSynthesizer;->startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    :goto_0
    return-void
.end method

.method public final g()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    :goto_0
    return-void
.end method

.method public final h(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)V
    .locals 1

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "file"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/d;->b:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/SpeechSynthesizer;->synthesizeToUri(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    :goto_0
    return-void
.end method
