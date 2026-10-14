.class public Lcom/iflytek/cloud/a/c/b;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# instance fields
.field protected volatile a:Lcom/iflytek/cloud/VerifierListener;

.field protected b:J

.field protected c:Z

.field protected d:Lcom/iflytek/cloud/a/c/c;

.field protected e:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected f:Ljava/lang/String;

.field protected g:Ljava/lang/String;

.field protected h:Lcom/iflytek/cloud/VerifierResult;

.field protected i:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field protected j:I

.field private k:J

.field private l:I

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/iflytek/cloud/a/c/b;->b:J

    const/4 p3, 0x1

    .line 4
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/c/b;->c:Z

    .line 5
    new-instance v2, Lcom/iflytek/cloud/a/c/c;

    invoke-direct {v2}, Lcom/iflytek/cloud/a/c/c;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    .line 6
    iput-object p1, p0, Lcom/iflytek/cloud/a/c/b;->e:Lcom/iflytek/cloud/record/PcmRecorder;

    const-string v2, "train"

    .line 7
    iput-object v2, p0, Lcom/iflytek/cloud/a/c/b;->f:Ljava/lang/String;

    const-string v2, ""

    .line 8
    iput-object v2, p0, Lcom/iflytek/cloud/a/c/b;->g:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/iflytek/cloud/a/c/b;->h:Lcom/iflytek/cloud/VerifierResult;

    .line 10
    iput-object p1, p0, Lcom/iflytek/cloud/a/c/b;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 11
    iput p3, p0, Lcom/iflytek/cloud/a/c/b;->j:I

    .line 12
    iput-wide v0, p0, Lcom/iflytek/cloud/a/c/b;->k:J

    const/4 p3, 0x0

    .line 13
    iput p3, p0, Lcom/iflytek/cloud/a/c/b;->l:I

    .line 14
    iput-object p1, p0, Lcom/iflytek/cloud/a/c/b;->m:Ljava/lang/String;

    .line 15
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/c/b;->n:Z

    .line 16
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/c/b;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 17
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "sst"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "train"

    .line 2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private c()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J

    .line 2
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/c/c;->getResultData()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3
    new-instance v1, Lcom/iflytek/cloud/VerifierResult;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/VerifierResult;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/c/b;->h:Lcom/iflytek/cloud/VerifierResult;

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v2, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    const/16 v3, 0x4e21

    invoke-interface {v2, v3, v1, v1, v0}, Lcom/iflytek/cloud/VerifierListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->f:Ljava/lang/String;

    const-string v2, "train"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "GetNotifyResult"

    const/4 v3, 0x0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->h:Lcom/iflytek/cloud/VerifierResult;

    iget v4, v0, Lcom/iflytek/cloud/VerifierResult;->ret:I

    if-nez v4, :cond_2

    iget v4, v0, Lcom/iflytek/cloud/VerifierResult;->suc:I

    iget v0, v0, Lcom/iflytek/cloud/VerifierResult;->rgn:I

    if-ge v4, v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_1

    .line 11
    invoke-static {v2, v3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    iget-object v2, p0, Lcom/iflytek/cloud/a/c/b;->h:Lcom/iflytek/cloud/VerifierResult;

    invoke-interface {v0, v2}, Lcom/iflytek/cloud/VerifierListener;->onResult(Lcom/iflytek/cloud/VerifierResult;)V

    .line 13
    :cond_1
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    return-void

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_3

    .line 15
    invoke-static {v2, v3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    iget-object v1, p0, Lcom/iflytek/cloud/a/c/b;->h:Lcom/iflytek/cloud/VerifierResult;

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/VerifierListener;->onResult(Lcom/iflytek/cloud/VerifierResult;)V

    .line 17
    :cond_3
    invoke-virtual {p0, v3}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method private d()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/c/c;->getStatus()Lcom/iflytek/cloud/a/f/b$a;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/iflytek/cloud/a/c/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->c()V

    :goto_0
    return-void
.end method

.method private proc_Msg_Record_Stoped()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "record stop msg in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->releaseRecord()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/c/c;->pushEndFlag()V

    const/4 v0, 0x4

    .line 5
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    const-string v0, "record stop msg out"

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method private releaseRecord()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->e:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "record_force_stop"

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/c/b;->e:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 4
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/c/b;->n:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->stopBluetooth()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/VerifierListener;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    const-string v0, "Isv Msc startVerify in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->start()V

    const-string p1, "Isv Msc startVerify out"

    .line 4
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected a([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/a/c/c;->pushAudioData([BI)V

    if-eqz p2, :cond_1

    .line 6
    iget-object p2, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/c/c;->a()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->f()V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/c/c;->getAudioVolume()I

    move-result p2

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/a/c/b;->callbackVolume([BI)V

    :cond_1
    :goto_0
    return-void
.end method

.method public callbackVolume([BI)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0, p2, p1}, Lcom/iflytek/cloud/VerifierListener;->onVolumeChanged(I[B)V

    :cond_0
    return-void
.end method

.method public cancel(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/VerifierListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->releaseRecord()V

    .line 4
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    return-void
.end method

.method public declared-synchronized e()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "Isv Msc stopRecord in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v0, v1, :cond_0

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endVerify fail  status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    monitor-exit p0

    return v0

    .line 4
    :cond_0
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->b()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->releaseRecord()V

    :cond_1
    const/4 v0, 0x3

    .line 6
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    const-string v0, "Isv Msc stopRecord out"

    .line 7
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public f()V
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "Isv Msc vadEndCall"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->e()Z

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/a/c/b;->j:I

    return v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->m:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/c/c;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/c/b;->m:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->m:Ljava/lang/String;

    return-object v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 5

    const-string v0, "isv msc onEnd in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->releaseRecord()V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->getSessionID()Ljava/lang/String;

    const-string v0, "SessionEndBegin"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    const-string v2, "user abort"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/c/c;->sessionEnd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/c/c;->sessionEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/c/c;->sessionEnd(Ljava/lang/String;)V

    :goto_0
    const-string v0, "SessionEndEnd"

    .line 9
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_3

    .line 12
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "VerifyListener#onEnd"

    .line 13
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_3

    .line 14
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 15
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    const/16 v3, 0x4e21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/iflytek/cloud/VerifierListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/VerifierListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 18
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    const-string p1, "isv msc onEnd out"

    .line 19
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method public onError(Lcom/iflytek/cloud/SpeechError;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method protected onMsgProcess(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onMsgProcess(Landroid/os/Message;)V

    .line 2
    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0x9

    if-eq v0, v1, :cond_5

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/c/b;->proc_Msg_Result(Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->proc_Msg_Record_Stoped()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/c/b;->proc_Msg_Record_Data(Landroid/os/Message;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->proc_Msg_Session_Begin()V

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->proc_Msg_Start()V

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->f()V

    :goto_0
    return-void
.end method

.method protected onParseParam()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    const-string v2, "speech_timeout"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "vid"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/c/b;->g:Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/c/b;->j:I

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "filter_audio_time"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    iget v2, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    const-string v3, "sample_rate"

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    mul-int v1, v1, v0

    iput v1, p0, Lcom/iflytek/cloud/a/c/b;->l:I

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 7
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .locals 4

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    if-lez p3, :cond_3

    .line 2
    iget v0, p0, Lcom/iflytek/cloud/a/c/b;->l:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_2

    if-lt v0, p3, :cond_1

    sub-int/2addr v0, p3

    .line 3
    iput v0, p0, Lcom/iflytek/cloud/a/c/b;->l:I

    goto :goto_0

    :cond_1
    sub-int/2addr p3, v0

    .line 4
    new-array v3, p3, [B

    add-int/2addr p2, v0

    .line 5
    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 6
    invoke-virtual {p0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    .line 7
    iput v2, p0, Lcom/iflytek/cloud/a/c/b;->l:I

    goto :goto_0

    .line 8
    :cond_2
    new-array v0, p3, [B

    .line 9
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onRecordReleased()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->e:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/iflytek/cloud/record/a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/c/b;->e()Z

    :cond_0
    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 4

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "time cost: onRecordStarted:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/iflytek/cloud/a/c/b;->k:J

    sub-long/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method protected proc_Msg_Record_Data(Landroid/os/Message;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_1

    .line 2
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->i:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/a/c/b;->a([BZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method proc_Msg_Result(Landroid/os/Message;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->releaseRecord()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/c/b;->d()V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object p1

    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->d:Lcom/iflytek/cloud/a/f/a$b;

    if-ne p1, v0, :cond_1

    .line 5
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    :cond_1
    return-void
.end method

.method protected proc_Msg_Session_Begin()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    iget-object v0, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-nez v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "SDKSessionBegin"

    .line 2
    invoke-static {v1, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->d:Lcom/iflytek/cloud/a/c/c;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/c/b;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/a/c/c;->sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I

    .line 4
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    return-void
.end method

.method protected proc_Msg_Start()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "isv msc msg start in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "engine_type"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "net_check"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    const-string v2, "cloud"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/content/Context;)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/16 v1, 0x28

    const-string v2, "record_read_rate"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 7
    iget v1, p0, Lcom/iflytek/cloud/a/c/b;->j:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "[isv]start  record"

    .line 8
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/a/c/b;->e:Lcom/iflytek/cloud/record/PcmRecorder;

    if-nez v1, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    iget-boolean v2, p0, Lcom/iflytek/cloud/a/c/b;->n:Z

    const-string v4, "bluetooth"

    invoke-virtual {v1, v4, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/a/c/b;->n:Z

    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->startBluetooth()V

    .line 12
    :cond_1
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v2

    iget v4, p0, Lcom/iflytek/cloud/a/c/b;->j:I

    invoke-direct {v1, v2, v0, v4}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/c/b;->e:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 13
    invoke-virtual {v1, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    .line 14
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->e:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/b;->a:Lcom/iflytek/cloud/VerifierListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/VerifierListener;->onBeginOfSpeech()V

    .line 16
    :cond_3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/c/b;->b:J

    const/16 v0, 0x9

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    sget-object v1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    iget v2, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v1, v4, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    .line 19
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v3, v0, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    const-string v0, "isv msc msg start out"

    .line 20
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method
