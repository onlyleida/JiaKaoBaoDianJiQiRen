.class public Lcom/iflytek/cloud/c/a/f;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/c/a/f$c;,
        Lcom/iflytek/cloud/c/a/f$a;,
        Lcom/iflytek/cloud/c/a/f$b;
    }
.end annotation


# instance fields
.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/f/e;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/f;->e:Z

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/b/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/b/b;->getPerfLog()Lcom/iflytek/cloud/a/f/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public buildGrammar(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;)I
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x4e29

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x4e2c

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-nez p3, :cond_2

    return v1

    .line 3
    :cond_2
    new-instance v0, Lcom/iflytek/cloud/a/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/b/a;-><init>()V

    .line 4
    new-instance v1, Lcom/iflytek/cloud/c/a/f$a;

    invoke-direct {v1, p0, p3}, Lcom/iflytek/cloud/c/a/f$a;-><init>(Lcom/iflytek/cloud/c/a/f;Lcom/iflytek/cloud/GrammarListener;)V

    iget-object p3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iflytek/cloud/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;Lcom/iflytek/cloud/b/a;)I

    const/4 p1, 0x0

    return p1
.end method

.method public cancel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/f;->g()V

    .line 3
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/e;->cancel(Z)V

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method protected f()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "bos_dispose"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "vad_engine"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "meta"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    :goto_0
    return v0
.end method

.method protected g()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v2, "asr_audio_path"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/b/b;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/b/b;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/iflytek/cloud/msc/util/FileUtil;->saveFile(Ljava/util/concurrent/ConcurrentLinkedQueue;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v2

    const-string v3, "audio_format"

    invoke-virtual {v2, v3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 6
    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v3}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v3

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    iget v4, v4, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    const-string v5, "sample_rate"

    invoke-virtual {v3, v5, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v3

    .line 7
    invoke-static {v2, v0, v3}, Lcom/iflytek/cloud/msc/util/FileUtil;->formatPcm(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/iflytek/cloud/c/a/f;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public isListening()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v0

    return v0
.end method

.method public startListening(Lcom/iflytek/cloud/RecognizerListener;)I
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/cloud/c/a/f;->e:Z

    .line 3
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v4, "asr_interrupt_error"

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/f;->f()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    new-instance v2, Lcom/iflytek/cloud/a/b/c;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v5, "iat"

    .line 7
    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/cloud/a/b/c;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    goto :goto_0

    .line 8
    :cond_1
    new-instance v2, Lcom/iflytek/cloud/a/b/b;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v5, "iat"

    .line 9
    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/cloud/a/b/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 10
    :goto_0
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/c/a/f;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 11
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/b/b;

    new-instance v3, Lcom/iflytek/cloud/c/a/f$c;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/c/a/f$c;-><init>(Lcom/iflytek/cloud/c/a/f;Lcom/iflytek/cloud/RecognizerListener;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/b/b;->a(Lcom/iflytek/cloud/RecognizerListener;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const/16 v1, 0x5207

    .line 12
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_0
    move-exception p1

    .line 13
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    .line 14
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 15
    :goto_1
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public stopListening()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/b/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/b/b;->a(Z)Z

    .line 4
    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateLexicon(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;)I
    .locals 5

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 p1, 0x4e29

    return p1

    .line 2
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x4e2c

    if-eqz v0, :cond_1

    return v1

    :cond_1
    if-nez p3, :cond_2

    return v1

    .line 3
    :cond_2
    new-instance v0, Lcom/iflytek/cloud/a/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/b/a;-><init>()V

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v2, "subject"

    const-string v3, "uup"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "lexicon_type"

    .line 5
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    move-object v1, p1

    .line 7
    :cond_3
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v3, "data_type"

    invoke-virtual {v2, v3, v1, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 8
    new-instance v1, Lcom/iflytek/cloud/c/a/f$b;

    invoke-direct {v1, p0, p3}, Lcom/iflytek/cloud/c/a/f$b;-><init>(Lcom/iflytek/cloud/c/a/f;Lcom/iflytek/cloud/LexiconListener;)V

    iget-object p3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/iflytek/cloud/a/b/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;Lcom/iflytek/cloud/b/a;)I

    return v4
.end method

.method public writeAudio([BII)I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-nez v1, :cond_0

    const-string p1, "writeAudio error, no active session."

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/16 p1, 0x520c

    .line 4
    monitor-exit v0

    return p1

    :cond_0
    const/16 v1, 0x277d

    if-eqz p1, :cond_4

    .line 5
    array-length v2, p1

    if-gtz v2, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    array-length v2, p1

    add-int v3, p3, p2

    if-ge v2, v3, :cond_2

    const-string p1, "writeAudio error,buffer length < length."

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return v1

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/b/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/b/b;->getAudioSource()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_3

    const/16 p1, 0x277a

    .line 10
    monitor-exit v0

    return p1

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/b/b;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/cloud/a/b/b;->a([BII)I

    move-result p1

    monitor-exit v0

    return p1

    :cond_4
    :goto_0
    const-string p1, "writeAudio error,buffer is null."

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
