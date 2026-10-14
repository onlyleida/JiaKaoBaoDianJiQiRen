.class public Lcom/iflytek/cloud/SpeechSynthesizer;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/SpeechSynthesizer$b;
    }
.end annotation


# static fields
.field private static a:Lcom/iflytek/cloud/SpeechSynthesizer;


# instance fields
.field private b:Lcom/iflytek/cloud/c/a/g;

.field private c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

.field private d:Lcom/iflytek/cloud/SpeechSynthesizer$b;

.field e:Lcom/iflytek/cloud/InitListener;

.field private f:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/InitListener;

    .line 5
    new-instance v1, Lcom/iflytek/cloud/SpeechSynthesizer$a;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/iflytek/cloud/SpeechSynthesizer$a;-><init>(Lcom/iflytek/cloud/SpeechSynthesizer;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Landroid/os/Handler;

    .line 6
    iput-object p2, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/InitListener;

    .line 7
    new-instance v1, Lcom/iflytek/cloud/c/a/g;

    invoke-direct {v1, p1}, Lcom/iflytek/cloud/c/a/g;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    .line 8
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechUtility;->c()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-virtual {v1}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/a/f/d$a;

    move-result-object v1

    sget-object v2, Lcom/iflytek/cloud/a/f/d$a;->a:Lcom/iflytek/cloud/a/f/d$a;

    if-eq v1, v2, :cond_0

    .line 11
    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1, p2}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    goto :goto_0

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->f:Landroid/os/Handler;

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, p2, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :goto_0
    return-void
.end method

.method public static createSynthesizer(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechSynthesizer;
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    if-nez v1, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v1, Lcom/iflytek/cloud/SpeechSynthesizer;

    invoke-direct {v1, p0, p1}, Lcom/iflytek/cloud/SpeechSynthesizer;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v1, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    .line 4
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    sget-object p0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-object p0

    :catchall_0
    move-exception p0

    .line 6
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static getSynthesizer()Lcom/iflytek/cloud/SpeechSynthesizer;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    return-object v0
.end method


# virtual methods
.method protected a(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->c()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/iflytek/cloud/SpeechUtility;->getEngineMode()Lcom/iflytek/cloud/a/f/d$a;

    move-result-object v0

    sget-object v2, Lcom/iflytek/cloud/a/f/d$a;->a:Lcom/iflytek/cloud/a/f/d$a;

    if-eq v0, v2, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    .line 6
    iput-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    .line 7
    :cond_0
    new-instance v0, Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/InitListener;

    invoke-direct {v0, p1, v1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    iput-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->e:Lcom/iflytek/cloud/InitListener;

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz p1, :cond_2

    .line 10
    invoke-virtual {p1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    .line 11
    iput-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    :cond_2
    :goto_0
    return-void
.end method

.method public destroy()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->destory()Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->destroy()Z

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_3

    .line 5
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/d;->destroy()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 7
    :try_start_0
    sput-object v2, Lcom/iflytek/cloud/SpeechSynthesizer;->a:Lcom/iflytek/cloud/SpeechSynthesizer;

    .line 8
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v2, "Destory tts engine."

    .line 10
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v2, "engine_type"

    .line 11
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/SpeechSynthesizer;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "xtts"

    .line 12
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "engine_destroy"

    const-string v3, "engine_destroy=xtts"

    .line 13
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :cond_2
    const-string v2, "engine_destroy"

    const-string v3, "engine_destroy=tts"

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/SpeechUtility;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 15
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    :goto_1
    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "local_speakers"

    .line 1
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "tts_play_state"

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isSpeaking()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public pauseSpeaking()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->pauseSpeaking()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer$b;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$b;->a(Lcom/iflytek/cloud/SpeechSynthesizer$b;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->pauseSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeSpeaking()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->resumeSpeaking()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer$b;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$b;->a(Lcom/iflytek/cloud/SpeechSynthesizer$b;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->resumeSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 2

    const-string v0, "stop all current session in new session"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechSynthesizer;->stopSpeaking()V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    const-string v1, "tts"

    invoke-virtual {p0, v1, v0}, Lcom/iflytek/cloud/a/f/d;->getStartMode(Ljava/lang/String;Lcom/iflytek/speech/ISpeechModule;)Lcom/iflytek/cloud/a/f/d$a;

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    if-nez v0, :cond_0

    const/16 p1, 0x5209

    return p1

    .line 5
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "next_text"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->f(Ljava/lang/String;)Ljava/lang/Boolean;

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    invoke-virtual {v0, p1, p2}, Lcom/iflytek/cloud/c/a/g;->startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result p1

    return p1
.end method

.method public stopSpeaking()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/g;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/g;->a(Z)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->d:Lcom/iflytek/cloud/SpeechSynthesizer$b;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->c:Lcom/iflytek/speech/SpeechSynthesizerAidl;

    invoke-static {v0}, Lcom/iflytek/cloud/SpeechSynthesizer$b;->a(Lcom/iflytek/cloud/SpeechSynthesizer$b;)Lcom/iflytek/speech/SynthesizerListener;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/iflytek/speech/SpeechSynthesizerAidl;->stopSpeaking(Lcom/iflytek/speech/SynthesizerListener;)I

    :cond_1
    return-void
.end method

.method public synthesizeToUri(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Lcom/iflytek/cloud/b/a;)Z

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechSynthesizer;->b:Lcom/iflytek/cloud/c/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/g;->synthesizeToUri(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result p1

    return p1

    :cond_0
    const/16 p1, 0x5209

    return p1
.end method
