.class public Lcom/iflytek/cloud/c/a/e;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/c/a/e$a;
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
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/e;->e:Z

    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/c/a/e;->f()V

    .line 3
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/e;->cancel(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 5
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method protected d()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/e;->d()Z

    move-result v0

    return v0
.end method

.method protected f()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v2, "ise_audio_path"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/a/b;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/a/b;->a()Ljava/util/concurrent/ConcurrentLinkedQueue;

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

    iget-boolean v2, p0, Lcom/iflytek/cloud/c/a/e;->e:Z

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v2, v1}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    return-void
.end method

.method public isEvaluating()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v0

    return v0
.end method

.method public startEvaluating(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
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

    iput-boolean v2, p0, Lcom/iflytek/cloud/c/a/e;->e:Z

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

    const-string v4, "ise_interrupt_error"

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    .line 5
    :cond_0
    new-instance v2, Lcom/iflytek/cloud/a/a/b;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v5, "eva"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/cloud/a/a/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 6
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/c/a/e;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 7
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/a/b;

    new-instance v3, Lcom/iflytek/cloud/c/a/e$a;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/c/a/e$a;-><init>(Lcom/iflytek/cloud/c/a/e;Lcom/iflytek/cloud/EvaluatorListener;)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/iflytek/cloud/a/a/b;->a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/16 v1, 0x5207

    .line 8
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    .line 10
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 11
    :goto_0
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public startEvaluating([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)I
    .locals 6

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v3, "request_audio_focus"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/iflytek/cloud/c/a/e;->e:Z

    .line 14
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 15
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v4, "ise_interrupt_error"

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    .line 16
    :cond_0
    new-instance v2, Lcom/iflytek/cloud/a/a/b;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v5, "eva"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/cloud/a/a/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 17
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/c/a/e;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 18
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/a/b;

    new-instance v3, Lcom/iflytek/cloud/c/a/e$a;

    invoke-direct {v3, p0, p3}, Lcom/iflytek/cloud/c/a/e$a;-><init>(Lcom/iflytek/cloud/c/a/e;Lcom/iflytek/cloud/EvaluatorListener;)V

    invoke-virtual {v2, p1, p2, v3}, Lcom/iflytek/cloud/a/a/b;->a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    :try_end_0
    .catch Lcom/iflytek/cloud/SpeechError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const/16 v1, 0x5207

    .line 19
    :try_start_1
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v1

    .line 21
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 22
    :goto_0
    monitor-exit v0

    return v1

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw p1
.end method

.method public stopEvaluating()V
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

    check-cast v1, Lcom/iflytek/cloud/a/a/b;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/a/b;->c(Z)Z

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

.method public writeAudio([BII)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const-string p1, "writeAudio error, no active session."

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    monitor-exit v0

    return v2

    :cond_0
    if-eqz p1, :cond_3

    .line 5
    array-length v1, p1

    if-gtz v1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    array-length v1, p1

    add-int v3, p3, p2

    if-ge v1, v3, :cond_2

    const-string p1, "writeAudio error,buffer length < length."

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 8
    monitor-exit v0

    return v2

    .line 9
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/a/b;

    invoke-virtual {v1, p1, p2, p3}, Lcom/iflytek/cloud/a/a/b;->onRecordBuffer([BII)V

    const/4 p1, 0x1

    .line 10
    monitor-exit v0

    return p1

    :cond_3
    :goto_0
    const-string p1, "writeAudio error,buffer is null."

    .line 11
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 12
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    .line 13
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
