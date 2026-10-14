.class public Lcom/iflytek/cloud/c/a/g;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/a/h/c$f;


# instance fields
.field private e:Landroid/content/Context;

.field private f:Lcom/iflytek/cloud/a/h/c;

.field private g:Lcom/iflytek/cloud/a/h/c;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/e;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/g;->e:Landroid/content/Context;

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/g;->e:Landroid/content/Context;

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I
    .locals 8

    const-string v0, "new Session Start"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/iflytek/cloud/a/h/c;

    iget-object v1, p0, Lcom/iflytek/cloud/c/a/g;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/a/h/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    .line 3
    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c$f;)V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "tts_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const/4 v6, 0x1

    move-object v3, p1

    move-object v5, p2

    invoke-virtual/range {v2 .. v7}, Lcom/iflytek/cloud/a/h/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;ZLjava/lang/String;)I

    move-result p1

    .line 6
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 7
    new-instance p2, Lcom/iflytek/cloud/a/h/c;

    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->e:Landroid/content/Context;

    invoke-direct {p2, v0}, Lcom/iflytek/cloud/a/h/c;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    .line 8
    invoke-virtual {p2, p0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c$f;)V

    .line 9
    iget-object p2, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p2, p3, v0}, Lcom/iflytek/cloud/a/h/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;)V

    :cond_0
    return p1
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 10
    monitor-enter p0

    .line 11
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/c;->g()V

    .line 13
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public a(Z)V
    .locals 2

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopSpeaking enter:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 15
    monitor-enter p0

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "-->stopSpeaking cur"

    .line 17
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    .line 19
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    .line 20
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    if-eqz p1, :cond_1

    const-string p1, "-->stopSpeaking cur next"

    .line 21
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    .line 23
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    .line 24
    :cond_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "stopSpeaking leave"

    .line 25
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public destroy()Z
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/c/a/g;->a(Z)V

    .line 2
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/e;->destroy()Z

    const/4 v0, 0x1

    return v0
.end method

.method public f()I
    .locals 2

    const-string v0, "getState enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/c;->f()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "getState leave"

    .line 6
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public isSpeaking()Z
    .locals 2

    const-string v0, "isSpeaking enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/c;->isSpeaking()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v1, "isSpeaking leave"

    .line 6
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return v0

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public pauseSpeaking()V
    .locals 1

    const-string v0, "pauseSpeaking enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/c;->pauseSpeaking()V

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "pauseSpeaking leave"

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public resumeSpeaking()V
    .locals 1

    const-string v0, "resumeSpeaking enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/c;->resumeSpeaking()V

    .line 5
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v0, "resumeSpeaking leave"

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v0

    .line 7
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public startSpeaking(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 5

    const-string v0, "startSpeaking enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "next_text"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/h/c;->isSpeaking()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v4, "tts_interrupt_error"

    invoke-virtual {v3, v4, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    if-nez v1, :cond_1

    .line 7
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/c/a/g;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I

    move-result p1

    :goto_0
    move v2, p1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v1, v1, Lcom/iflytek/cloud/a/h/c;->n:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    .line 10
    iput-object v3, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    .line 11
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/c/a/g;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    iget-object v4, v1, Lcom/iflytek/cloud/a/h/c;->o:Lcom/iflytek/cloud/SpeechError;

    if-nez v4, :cond_5

    iget-boolean v4, v1, Lcom/iflytek/cloud/a/h/c;->l:Z

    if-nez v4, :cond_3

    goto :goto_1

    .line 13
    :cond_3
    iput-object v3, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    new-instance p1, Lcom/iflytek/cloud/a/h/c;

    iget-object v3, p0, Lcom/iflytek/cloud/c/a/g;->e:Landroid/content/Context;

    invoke-direct {p1, v3}, Lcom/iflytek/cloud/a/h/c;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    .line 16
    invoke-virtual {p1, p0}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/a/h/c$f;)V

    .line 17
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p1, v0, v3}, Lcom/iflytek/cloud/a/h/c;->a(Ljava/lang/String;Lcom/iflytek/cloud/b/a;)V

    .line 18
    :cond_4
    iput-object v1, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    .line 19
    invoke-virtual {v1, p2}, Lcom/iflytek/cloud/a/h/c;->a(Lcom/iflytek/cloud/SynthesizerListener;)V

    .line 20
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/a/h/c;->resumeSpeaking()V

    .line 21
    iget-object p1, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    iget-boolean p1, p1, Lcom/iflytek/cloud/a/h/c;->m:Z

    if-eqz p1, :cond_6

    .line 22
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/g;->a()V

    const-string p1, "startSpeaking NextSession pause"

    .line 23
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_2

    .line 24
    :cond_5
    :goto_1
    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    .line 25
    iput-object v3, p0, Lcom/iflytek/cloud/c/a/g;->g:Lcom/iflytek/cloud/a/h/c;

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/c/a/g;->a(Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    .line 27
    :cond_6
    :goto_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "startSpeaking leave"

    .line 28
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return v2

    :catchall_0
    move-exception p1

    .line 29
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public synthesizeToUri(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/SynthesizerListener;)I
    .locals 4

    const-string v0, "synthesizeToUri enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/h/c;->isSpeaking()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v2, "tts_interrupt_error"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/h/c;->cancel(Z)V

    .line 5
    :cond_0
    new-instance v0, Lcom/iflytek/cloud/a/h/c;

    iget-object v1, p0, Lcom/iflytek/cloud/c/a/g;->e:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/a/h/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/iflytek/cloud/c/a/g;->f:Lcom/iflytek/cloud/a/h/c;

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iflytek/cloud/a/h/c;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/b/a;Lcom/iflytek/cloud/SynthesizerListener;)I

    move-result p1

    .line 7
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p2, "synthesizeToUri leave"

    .line 8
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return p1

    :catchall_0
    move-exception p1

    .line 9
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
