.class public Lcom/iflytek/cloud/a/a/b;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# static fields
.field private static a:Ljava/lang/Boolean;


# instance fields
.field private volatile b:Lcom/iflytek/cloud/EvaluatorListener;

.field c:J

.field protected d:I

.field protected e:Lcom/iflytek/cloud/a/a/a;

.field protected f:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected g:Lcom/iflytek/cloud/a/f/c;

.field protected h:Ljava/lang/String;

.field protected i:[B

.field protected j:Ljava/lang/String;

.field protected k:Ljava/lang/String;

.field private l:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Z

.field private p:Lcom/iflytek/cloud/a/f/b$a;

.field private q:Ljava/lang/String;

.field private r:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/iflytek/cloud/a/a/b;->a:Ljava/lang/Boolean;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/iflytek/cloud/a/a/b;->c:J

    const/4 p3, 0x1

    .line 4
    iput p3, p0, Lcom/iflytek/cloud/a/a/b;->d:I

    .line 5
    new-instance p3, Lcom/iflytek/cloud/a/a/a;

    invoke-direct {p3}, Lcom/iflytek/cloud/a/a/a;-><init>()V

    iput-object p3, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    .line 6
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 7
    new-instance p3, Lcom/iflytek/cloud/a/f/c;

    invoke-direct {p3}, Lcom/iflytek/cloud/a/f/c;-><init>()V

    iput-object p3, p0, Lcom/iflytek/cloud/a/a/b;->g:Lcom/iflytek/cloud/a/f/c;

    .line 8
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->h:Ljava/lang/String;

    .line 9
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->i:[B

    .line 10
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->j:Ljava/lang/String;

    .line 11
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->k:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 14
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->n:Ljava/util/ArrayList;

    const/4 p3, 0x0

    .line 15
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/a/b;->o:Z

    .line 16
    sget-object v0, Lcom/iflytek/cloud/a/f/b$a;->c:Lcom/iflytek/cloud/a/f/b$a;

    iput-object v0, p0, Lcom/iflytek/cloud/a/a/b;->p:Lcom/iflytek/cloud/a/f/b$a;

    .line 17
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->q:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/a/b;->r:Z

    .line 19
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 20
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->n:Ljava/util/ArrayList;

    .line 22
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/a/b;->o:Z

    .line 23
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method private a([BZ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 27
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/a/a/a;->pushAudioData([BI)V

    if-eqz p2, :cond_1

    .line 28
    iget-object p2, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/a/a;->getEpStatus()I

    move-result p2

    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 29
    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/b;->c()V

    goto :goto_0

    .line 30
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/a/a;->getAudioVolume()I

    move-result p2

    .line 31
    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/a/a/b;->callbackVolume([BI)V

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/a/a;->a()Lcom/iflytek/cloud/a/f/b$a;

    move-result-object v0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/a/a/b;->p:Lcom/iflytek/cloud/a/f/b$a;

    .line 3
    sget-object v1, Lcom/iflytek/cloud/a/a/b$a;->a:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/a/a/b;->b(Z)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0}, Lcom/iflytek/cloud/a/a/b;->b(Z)V

    :goto_0
    return-void
.end method

.method private b(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/iflytek/cloud/a/f/a;->mStatusBegin:J

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/a/a;->getResultData()[B

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/a/a;->getResultData()[B

    move-result-object v0

    array-length v0, v0

    if-lez v0, :cond_0

    .line 8
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v1}, Lcom/iflytek/cloud/a/a/a;->getResultData()[B

    move-result-object v1

    const-string v2, "utf-8"

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 9
    iget-object v1, p0, Lcom/iflytek/cloud/a/a/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/a/b;->a(Z)V

    return-void
.end method

.method private c()V
    .locals 2

    .line 7
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    if-ne v0, v1, :cond_0

    const-string v0, "Ise Msc vadEndCall"

    .line 8
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 9
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/a/b;->c(Z)Z

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/EvaluatorListener;->onEndOfSpeech()V

    :cond_0
    return-void
.end method

.method private callbackVolume([BI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0, p2, p1}, Lcom/iflytek/cloud/EvaluatorListener;->onVolumeChanged(I[B)V

    :cond_0
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

    const-string v0, "--->onStoped: in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/b;->releaseRecord()V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/a/a;->pushEndFlag()V

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->updateTimeoutMsg()V

    const-string v0, "--->onStoped: out"

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method private releaseRecord()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

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
    iput-object v0, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 4
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/a/b;->r:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->stopBluetooth()V

    :cond_0
    return-void
.end method


# virtual methods
.method public a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation

    .line 32
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/iflytek/cloud/a/a/b;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public declared-synchronized a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/iflytek/cloud/a/a/b;->a:Ljava/lang/Boolean;

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->j:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/iflytek/cloud/a/a/b;->h:Ljava/lang/String;

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const-string p2, "user_model_id"

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->k:Ljava/lang/String;

    .line 5
    iput-object p3, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    const-string p1, "[ise]startListening called 01"

    .line 6
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public a(Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msc result time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "rse"

    const-string v2, "gb2312"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 17
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyEngineResult encoding="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 18
    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/a/a;->getResultData()[B

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 19
    new-instance v0, Lcom/iflytek/cloud/EvaluatorResult;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/EvaluatorResult;-><init>(Ljava/lang/String;)V

    .line 20
    iget-object v1, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 21
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 22
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/a/b;->getSessionID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "session_id"

    invoke-virtual {v1, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    const/16 v4, 0x4e21

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5, v5, v1}, Lcom/iflytek/cloud/EvaluatorListener;->onEvent(IIILandroid/os/Bundle;)V

    const-string v1, "GetNotifyResult"

    .line 24
    invoke-static {v1, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v1, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v1, v0, p1}, Lcom/iflytek/cloud/EvaluatorListener;->onResult(Lcom/iflytek/cloud/EvaluatorResult;Z)V

    :cond_0
    if-eqz p1, :cond_1

    .line 26
    invoke-virtual {p0, v2}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    return-void
.end method

.method public declared-synchronized a([BLjava/lang/String;Lcom/iflytek/cloud/EvaluatorListener;)V
    .locals 1

    monitor-enter p0

    .line 8
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/iflytek/cloud/a/a/b;->a:Ljava/lang/Boolean;

    .line 9
    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->i:[B

    .line 10
    iput-object p2, p0, Lcom/iflytek/cloud/a/a/b;->h:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p1

    const-string p2, "user_model_id"

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/a/b;->k:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    const-string p1, "[ise]startListening called 02"

    .line 13
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized c(Z)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stopRecognize fail  status is :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v2

    .line 3
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v3, "record_force_stop"

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    .line 5
    :cond_1
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/a/b;->o:Z

    const/4 p1, 0x3

    .line 6
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public cancel(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/EvaluatorListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/b;->releaseRecord()V

    .line 4
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    return-void
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->q:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/a/a;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/a/b;->q:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->q:Ljava/lang/String;

    return-object v0
.end method

.method public getTextEncoding()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "text_encoding"

    const-string v2, "gb2312"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 5

    const-string v0, "--->onEnd: in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/b;->releaseRecord()V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/a/b;->getSessionID()Ljava/lang/String;

    const-string v0, "SessionEndBegin"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    const-string v2, "user abort"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/a/a;->sessionEnd(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/a/a;->sessionEnd(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    const-string v2, "success"

    invoke-virtual {v0, v2}, Lcom/iflytek/cloud/a/a/a;->sessionEnd(Ljava/lang/String;)V

    :goto_0
    const-string v0, "SessionEndEnd"

    .line 9
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

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
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/a/b;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v2, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    const/16 v3, 0x4e21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, v0}, Lcom/iflytek/cloud/EvaluatorListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 17
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/EvaluatorListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 18
    :cond_3
    :goto_1
    iput-object v1, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    const-string p1, "--->onEnd: out"

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
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/a/b;->proc_Msg_Result(Landroid/os/Message;)V

    goto :goto_0

    .line 4
    :cond_1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/b;->proc_Msg_Record_Stoped()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/a/b;->proc_Msg_Record_Data(Landroid/os/Message;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/a/b;->proc_Msg_Session_Begin()V

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/a/b;->proc_Msg_Start()V

    goto :goto_0

    :cond_5
    const-string p1, "--->on timeout vad"

    .line 8
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/b;->c()V

    :goto_0
    return-void
.end method

.method protected onParseParam()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "speech_timeout"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "text_encoding"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "utf-8"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "text_bom"

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 4
    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v3

    const-string v4, "language"

    invoke-virtual {v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v3, "1"

    invoke-virtual {v0, v2, v3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v3, "0"

    invoke-virtual {v0, v2, v3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 7
    :goto_0
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    if-eq v0, v1, :cond_0

    const-string p1, "onRecordBuffer statuts not recording"

    .line 2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    return-void

    :cond_0
    if-lez p3, :cond_1

    .line 3
    new-array v0, p3, [B

    const/4 v1, 0x0

    .line 4
    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const/4 p1, 0x2

    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    :cond_1
    return-void
.end method

.method public onRecordReleased()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/iflytek/cloud/record/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/a/b;->c(Z)Z

    :cond_0
    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 0

    return-void
.end method

.method protected proc_Msg_Record_Data(Landroid/os/Message;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "proc_Msg_Record_Data"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    if-eqz p1, :cond_2

    .line 3
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "ise_audio_path"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/iflytek/cloud/a/a/b;->a([BZ)V

    :cond_2
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
    invoke-direct {p0}, Lcom/iflytek/cloud/a/a/b;->b()V

    .line 2
    sget-object p1, Lcom/iflytek/cloud/a/f/b$a;->c:Lcom/iflytek/cloud/a/f/b$a;

    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->p:Lcom/iflytek/cloud/a/f/b$a;

    const/4 v1, 0x4

    if-ne p1, v0, :cond_0

    .line 3
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v0, 0x0

    const/16 v2, 0x14

    invoke-virtual {p0, v1, p1, v0, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lcom/iflytek/cloud/a/f/b$a;->a:Lcom/iflytek/cloud/a/f/b$a;

    if-ne p1, v0, :cond_1

    .line 5
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected proc_Msg_Session_Begin()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    iget-object v0, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v0, "SDKSessionBegin"

    .line 2
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    iget-object v2, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/iflytek/cloud/a/a/b;->k:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, p0}, Lcom/iflytek/cloud/a/a/a;->sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I

    .line 4
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/a/b;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string v2, "gb2312"

    const-string v3, "1"

    const-string v4, "text_bom"

    if-eqz v0, :cond_2

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->i:[B

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/d;->b([B)[B

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->i:[B

    goto :goto_0

    .line 8
    :cond_2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->j:Ljava/lang/String;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/d;->b(Ljava/lang/String;)[B

    move-result-object v0

    goto :goto_0

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->j:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 11
    :goto_0
    iget-object v3, p0, Lcom/iflytek/cloud/a/a/b;->e:Lcom/iflytek/cloud/a/a/a;

    iget-object v4, p0, Lcom/iflytek/cloud/a/a/b;->h:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lcom/iflytek/cloud/a/a/b;->h:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    :goto_1
    invoke-virtual {v3, v0, v1}, Lcom/iflytek/cloud/a/a/a;->a([B[B)V

    .line 12
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    .line 13
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x4

    const/4 v2, 0x0

    const/16 v3, 0x14

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method protected proc_Msg_Start()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "--->onStart: in"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "net_check"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/content/Context;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/16 v1, 0x28

    const-string v3, "record_read_rate"

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v3, "audio_source"

    invoke-virtual {v1, v3, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/iflytek/cloud/a/a/b;->d:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_3

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "[ise]start  record"

    .line 7
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 8
    iget v1, p0, Lcom/iflytek/cloud/a/a/b;->d:I

    const/4 v4, -0x2

    if-ne v1, v4, :cond_1

    .line 9
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v4, "ise_source_path"

    invoke-virtual {v1, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v4, Lcom/iflytek/cloud/record/a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v5

    iget v6, p0, Lcom/iflytek/cloud/a/a/b;->d:I

    invoke-direct {v4, v5, v0, v6, v1}, Lcom/iflytek/cloud/record/a;-><init>(IIILjava/lang/String;)V

    iput-object v4, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    iget-boolean v4, p0, Lcom/iflytek/cloud/a/a/b;->r:Z

    const-string v5, "bluetooth"

    invoke-virtual {v1, v5, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/a/a/b;->r:Z

    if-eqz v1, :cond_2

    .line 12
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->startBluetooth()V

    .line 13
    :cond_2
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v4

    iget v5, p0, Lcom/iflytek/cloud/a/a/b;->d:I

    invoke-direct {v1, v4, v0, v5}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 14
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->f:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->e:Lcom/iflytek/cloud/a/f/a$b;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    if-eqz v0, :cond_4

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/a/b;->b:Lcom/iflytek/cloud/EvaluatorListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/EvaluatorListener;->onBeginOfSpeech()V

    :cond_4
    const/16 v0, 0x9

    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    const/4 v4, 0x0

    if-eq v3, v1, :cond_5

    .line 19
    sget-object v3, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v0, v3, v4, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    .line 20
    :cond_5
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v2, v0, v4, v4}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    const-string v0, "--->onStart: out"

    .line 21
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method
