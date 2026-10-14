.class public final Lcom/iflytek/cloud/SpeechTranscripter;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# static fields
.field private static sInstance:Lcom/iflytek/cloud/SpeechTranscripter;


# instance fields
.field private mTranscripter:Lcom/iflytek/cloud/c/a/h;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/d;-><init>()V

    const/4 p2, 0x0

    .line 2
    iput-object p2, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    .line 3
    invoke-static {}, Lcom/iflytek/msc/MSC;->isLoaded()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 4
    new-instance p2, Lcom/iflytek/cloud/c/a/h;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/c/a/h;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    :cond_0
    return-void
.end method

.method private clearOnceParameter()V
    .locals 2

    const-string v0, "sid"

    const/4 v1, 0x0

    .line 1
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechTranscripter;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "spos"

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechTranscripter;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "syncid"

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/iflytek/cloud/SpeechTranscripter;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method

.method public static declared-synchronized createTranscripter(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)Lcom/iflytek/cloud/SpeechTranscripter;
    .locals 3

    const-class v0, Lcom/iflytek/cloud/SpeechTranscripter;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    sget-object v2, Lcom/iflytek/cloud/SpeechTranscripter;->sInstance:Lcom/iflytek/cloud/SpeechTranscripter;

    if-nez v2, :cond_0

    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcom/iflytek/cloud/SpeechTranscripter;

    invoke-direct {v2, p0, p1}, Lcom/iflytek/cloud/SpeechTranscripter;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/InitListener;)V

    sput-object v2, Lcom/iflytek/cloud/SpeechTranscripter;->sInstance:Lcom/iflytek/cloud/SpeechTranscripter;

    .line 4
    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz p1, :cond_1

    const/4 p0, 0x0

    .line 5
    :try_start_2
    invoke-interface {p1, p0}, Lcom/iflytek/cloud/InitListener;->onInit(I)V

    .line 6
    :cond_1
    sget-object p0, Lcom/iflytek/cloud/SpeechTranscripter;->sInstance:Lcom/iflytek/cloud/SpeechTranscripter;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 7
    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getTranscripter()Lcom/iflytek/cloud/SpeechTranscripter;
    .locals 1

    .line 1
    sget-object v0, Lcom/iflytek/cloud/SpeechTranscripter;->sInstance:Lcom/iflytek/cloud/SpeechTranscripter;

    return-object v0
.end method


# virtual methods
.method public cancel()V
    .locals 2

    const-string v0, "cancel enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/h;->isTranscripting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/c/a/h;->cancel(Z)V

    goto :goto_0

    :cond_0
    const-string v0, "SpeechTranscripter cancel failed, is not running"

    .line 4
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public destroy()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/e;->destroy()Z

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/d;->destroy()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v1, Lcom/iflytek/cloud/a/f/d;->sSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    .line 5
    :try_start_0
    sput-object v2, Lcom/iflytek/cloud/SpeechTranscripter;->sInstance:Lcom/iflytek/cloud/SpeechTranscripter;

    .line 6
    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :goto_1
    return v0
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    if-eqz v0, :cond_3

    const-string v0, "sid"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    invoke-virtual {p1}, Lcom/iflytek/cloud/c/a/h;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const-string v0, "spos"

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    invoke-virtual {p1}, Lcom/iflytek/cloud/c/a/h;->h()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v0, "syncid"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    invoke-virtual {p1}, Lcom/iflytek/cloud/c/a/h;->g()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2
    const-string v0, "ist_audio_path"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object p1, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    invoke-virtual {p1}, Lcom/iflytek/cloud/c/a/h;->f()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/d;->getParameter(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public isTranscripting()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/h;->isTranscripting()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public declared-synchronized startTranscripting(Lcom/iflytek/cloud/TranscripterListener;)I
    .locals 3

    monitor-enter p0

    :try_start_0
    const-string v0, "startTranscripting enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/16 p1, 0x5209

    monitor-exit p0

    return p1

    .line 3
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/SpeechTranscripter;->isTranscripting()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_1

    const/16 p1, 0x520d

    monitor-exit p0

    return p1

    .line 4
    :cond_1
    :try_start_2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    const-string v1, "params"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v1}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "params"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/a/f/d;->setParameter(Ljava/lang/String;Ljava/lang/String;)Z

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/c/a/h;->startTranscripting(Lcom/iflytek/cloud/TranscripterListener;)I

    move-result p1

    .line 7
    invoke-direct {p0}, Lcom/iflytek/cloud/SpeechTranscripter;->clearOnceParameter()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public stopTranscripting()V
    .locals 1

    const-string v0, "stopTranscripting enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/h;->isTranscripting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/h;->stopTranscripting()V

    goto :goto_0

    :cond_0
    const-string v0, "SpeechTranscripter stopListening failed, is not running"

    .line 4
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public writeAudio([BII)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/iflytek/cloud/c/a/h;->isTranscripting()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/SpeechTranscripter;->mTranscripter:Lcom/iflytek/cloud/c/a/h;

    invoke-virtual {v0, p1, p2, p3}, Lcom/iflytek/cloud/c/a/h;->writeAudio([BII)Z

    move-result p1

    return p1

    :cond_0
    const-string p1, "SpeechTranscripter writeAudio failed, is not running"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method
