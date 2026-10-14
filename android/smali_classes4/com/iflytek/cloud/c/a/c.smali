.class public Lcom/iflytek/cloud/c/a/c;
.super Lcom/iflytek/cloud/a/f/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/c/a/c$a;
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
    iput-boolean p1, p0, Lcom/iflytek/cloud/c/a/c;->e:Z

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/c/a/c;)Lcom/iflytek/cloud/a/f/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    return-object p0
.end method

.method static synthetic b(Lcom/iflytek/cloud/c/a/c;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic c(Lcom/iflytek/cloud/c/a/c;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/iflytek/cloud/c/a/c;->e:Z

    return p0
.end method


# virtual methods
.method public b(Ljava/lang/String;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v1, Lcom/iflytek/cloud/a/e/b;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/e/b;->getPerfLog()Lcom/iflytek/cloud/a/f/c;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 5
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

.method public cancel(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/iflytek/cloud/c/a/c;->e:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/iflytek/cloud/msc/util/g;->b(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 2
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/e;->cancel(Z)V

    return-void
.end method

.method public execute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/IdentityListener;)I
    .locals 6

    const-string v0, "sst"

    .line 1
    invoke-virtual {p0, v0, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 2
    invoke-virtual {p0, p4}, Lcom/iflytek/cloud/c/a/c;->startWorking(Lcom/iflytek/cloud/IdentityListener;)I

    move-result p2

    if-nez p2, :cond_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p3

    .line 3
    invoke-virtual/range {v0 .. v5}, Lcom/iflytek/cloud/c/a/c;->writeData(Ljava/lang/String;Ljava/lang/String;[BII)I

    move-result p2

    .line 4
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/c/a/c;->stopWrite(Ljava/lang/String;)V

    :cond_0
    return p2
.end method

.method public isWorking()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v0

    return v0
.end method

.method public startWorking(Lcom/iflytek/cloud/IdentityListener;)I
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

    iput-boolean v2, p0, Lcom/iflytek/cloud/c/a/c;->e:Z

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

    const-string v4, "mfv_interrupt_error"

    invoke-virtual {v3, v4, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    .line 5
    :cond_0
    new-instance v2, Lcom/iflytek/cloud/a/e/b;

    iget-object v3, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-object v4, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v5, "mfv"

    invoke-virtual {p0, v5}, Lcom/iflytek/cloud/a/f/e;->a(Ljava/lang/String;)Landroid/os/HandlerThread;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/iflytek/cloud/a/e/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    iput-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 6
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/iflytek/cloud/c/a/c;->e:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/iflytek/cloud/msc/util/g;->a(Landroid/content/Context;Ljava/lang/Boolean;Landroid/media/AudioManager$OnAudioFocusChangeListener;)Z

    .line 7
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    check-cast v2, Lcom/iflytek/cloud/a/e/b;

    new-instance v3, Lcom/iflytek/cloud/c/a/c$a;

    invoke-direct {v3, p0, p1}, Lcom/iflytek/cloud/c/a/c$a;-><init>(Lcom/iflytek/cloud/c/a/c;Lcom/iflytek/cloud/IdentityListener;)V

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/a/e/b;->a(Lcom/iflytek/cloud/IdentityListener;)V
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

.method public stopWrite(Ljava/lang/String;)V
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

    check-cast v1, Lcom/iflytek/cloud/a/e/b;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/iflytek/cloud/a/e/b;->a(Ljava/lang/String;Z)Z

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

.method public writeData(Ljava/lang/String;Ljava/lang/String;[BII)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-nez v1, :cond_0

    const-string p1, "writeAudio error, no active session."

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/16 p1, 0x520c

    .line 4
    monitor-exit v0

    return p1

    :cond_0
    const/16 v1, 0x277d

    if-gez p5, :cond_1

    const-string p1, "writeAudio error, length < 0."

    .line 5
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 6
    monitor-exit v0

    return v1

    :cond_1
    if-eqz p3, :cond_2

    .line 7
    array-length v2, p3

    add-int v3, p5, p4

    if-ge v2, v3, :cond_2

    const-string p1, "writeAudio error, buffer length < offset + length."

    .line 8
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 9
    monitor-exit v0

    return v1

    .line 10
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    move-object v2, v1

    check-cast v2, Lcom/iflytek/cloud/a/e/b;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/iflytek/cloud/a/e/b;->a(Ljava/lang/String;Ljava/lang/String;[BII)V

    const/4 p1, 0x0

    .line 11
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
