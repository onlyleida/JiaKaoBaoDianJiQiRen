.class public final Lcn/mucang/android/jiakaoyi/speech/engine/m/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/speech/engine/m/b;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0012\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0006*\u0001\u000c\u0018\u0000 \u001e2\u00020\u0001:\u0001\u001eB\u0005\u00a2\u0006\u0002\u0010\u0002J\n\u0010\u000e\u001a\u0004\u0018\u00010\u000fH\u0002J\u001c\u0010\u0010\u001a\u00020\u00112\u0008\u0010\u0012\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0013\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\u0014\u001a\u00020\u0006H\u0016J\u0018\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0019H\u0016J\u0008\u0010\u001a\u001a\u00020\u0011H\u0016J\u0010\u0010\u001b\u001a\u00020\u00112\u0006\u0010\u001c\u001a\u00020\u0006H\u0016J\u0008\u0010\u001d\u001a\u00020\u0011H\u0016R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000b\u001a\u00020\u000cX\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\r\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine;",
        "Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IWakeupEngine;",
        "()V",
        "mContext",
        "Landroid/content/Context;",
        "mInited",
        "",
        "mWakeEngine",
        "Lcom/iflytek/cloud/VoiceWakeuper;",
        "mWakeupCallback",
        "Lcn/mucang/android/jiakaoyi/speech/callback/IWakeupCallback;",
        "mWakeuperListener",
        "cn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine$mWakeuperListener$1",
        "Lcn/mucang/android/jiakaoyi/speech/engine/wakeup/IflytekWakeupEngine$mWakeuperListener$1;",
        "getWakeupModePath",
        "",
        "init",
        "",
        "context",
        "callback",
        "isWorking",
        "onAudioWrite",
        "data",
        "",
        "length",
        "",
        "release",
        "startWakeupMode",
        "force",
        "stopWakeupMode",
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
.field private a:Lcom/iflytek/cloud/VoiceWakeuper;

.field private b:Lcn/mucang/android/jiakaoyi/speech/d/f;

.field private c:Landroid/content/Context;

.field private volatile d:Z

.field private final e:Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;-><init>(Lcn/mucang/android/jiakaoyi/speech/engine/m/c;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->e:Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;

    return-void
.end method

.method public static final synthetic h(Lcn/mucang/android/jiakaoyi/speech/engine/m/c;)Lcn/mucang/android/jiakaoyi/speech/d/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->b:Lcn/mucang/android/jiakaoyi/speech/d/f;

    return-object p0
.end method

.method private final i()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->c:Landroid/content/Context;

    .line 2
    sget-object v1, Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;->assets:Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;

    const-string v2, "ivw/5f0ea3a7.jet"

    .line 3
    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/util/ResourceUtil;->generateResourcePath(Landroid/content/Context;Lcom/iflytek/cloud/util/ResourceUtil$RESOURCE_TYPE;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final k(I)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v0, "init code="

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "IflytekWakeupEngine"

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic l(I)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->k(I)V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    const-string v0, "IflytekWakeupEngine"

    const-string v1, "startWakeupMode"

    .line 1
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "already is wakeup listening"

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string p1, "start wakeup listen success"

    .line 4
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->e:Lcn/mucang/android/jiakaoyi/speech/engine/m/c$a;

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/VoiceWakeuper;->startListening(Lcom/iflytek/cloud/WakeuperListener;)I

    :goto_1
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "IflytekWakeupEngine"

    const-string v1, "stop wakeup listen"

    .line 2
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/iflytek/cloud/VoiceWakeuper;->stopListening()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lcom/iflytek/cloud/VoiceWakeuper;->isListening()Z

    move-result v0

    :goto_0
    return v0
.end method

.method public e([BI)V
    .locals 2

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->d:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/VoiceWakeuper;->writeAudio([BII)I

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic g(Landroid/content/Context;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p2, Lcn/mucang/android/jiakaoyi/speech/d/f;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->j(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/speech/d/f;)V

    return-void
.end method

.method public j(Landroid/content/Context;Lcn/mucang/android/jiakaoyi/speech/d/f;)V
    .locals 1

    if-eqz p1, :cond_3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->d:Z

    if-eqz v0, :cond_0

    const-string p1, "IflytekWakeupEngine"

    const-string p2, "already initialized"

    .line 2
    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/speech/utils/e;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 3
    :cond_0
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->c:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->b:Lcn/mucang/android/jiakaoyi/speech/d/f;

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez p2, :cond_2

    .line 6
    sget-object p2, Lcn/mucang/android/jiakaoyi/speech/engine/m/a;->a:Lcn/mucang/android/jiakaoyi/speech/engine/m/a;

    invoke-static {p1, p2}, Lcom/iflytek/cloud/VoiceWakeuper;->createWakeuper(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/VoiceWakeuper;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->a:Lcom/iflytek/cloud/VoiceWakeuper;

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    const-string v0, "params"

    .line 7
    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "ivw_threshold"

    const-string v0, "0:1450;1:2000;2:1450"

    .line 8
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "sst"

    const-string v0, "wakeup"

    .line 9
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "keep_alive"

    const-string v0, "0"

    .line 10
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "ivw_net_mode"

    .line 11
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->i()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ivw_res_path"

    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "audio_source"

    const-string v0, "-1"

    .line 13
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 14
    sget-object p2, Lcn/mucang/android/jiakaoyi/speech/utils/d;->a:Lcn/mucang/android/jiakaoyi/speech/utils/d;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/speech/utils/d;->c()Ljava/lang/String;

    move-result-object p2

    const-string v0, "ivw_audio_path"

    .line 15
    invoke-virtual {p1, v0, p2}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string p2, "audio_format"

    const-string v0, "wav"

    .line 16
    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/VoiceWakeuper;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/speech/engine/m/c;->d:Z

    return-void

    .line 18
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "context must not  null !!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
