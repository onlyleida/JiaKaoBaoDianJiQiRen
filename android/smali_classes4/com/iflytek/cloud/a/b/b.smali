.class public Lcom/iflytek/cloud/a/b/b;
.super Lcom/iflytek/cloud/a/f/a;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;


# static fields
.field public static a:I

.field public static b:I


# instance fields
.field protected volatile c:Lcom/iflytek/cloud/RecognizerListener;

.field protected d:Z

.field protected e:Z

.field protected f:Z

.field protected g:Z

.field protected h:I

.field protected i:Z

.field protected j:Lcom/iflytek/cloud/a/b/a;

.field protected k:Lcom/iflytek/cloud/record/PcmRecorder;

.field protected l:Ljava/lang/String;

.field protected m:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field protected n:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field protected o:Lcom/iflytek/cloud/a/f/c;

.field protected p:I

.field private q:Z

.field private r:Ljava/lang/String;

.field private s:Z

.field private t:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p3}, Lcom/iflytek/cloud/a/f/a;-><init>(Landroid/content/Context;Landroid/os/HandlerThread;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/4 p3, 0x0

    .line 3
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/b/b;->d:Z

    .line 4
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/b/b;->e:Z

    .line 5
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/b/b;->f:Z

    .line 6
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/b/b;->g:Z

    const/4 v0, 0x1

    .line 7
    iput v0, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    .line 8
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->i:Z

    .line 9
    new-instance v0, Lcom/iflytek/cloud/a/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/b/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    .line 10
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 11
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->l:Ljava/lang/String;

    .line 12
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 13
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->n:Ljava/util/ArrayList;

    .line 14
    new-instance v0, Lcom/iflytek/cloud/a/f/c;

    invoke-direct {v0}, Lcom/iflytek/cloud/a/f/c;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    .line 15
    iput p3, p0, Lcom/iflytek/cloud/a/b/b;->p:I

    .line 16
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/b/b;->q:Z

    .line 17
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->r:Ljava/lang/String;

    .line 18
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/b/b;->s:Z

    .line 19
    iput p3, p0, Lcom/iflytek/cloud/a/b/b;->t:I

    .line 20
    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    .line 21
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->n:Ljava/util/ArrayList;

    .line 22
    iput-boolean p3, p0, Lcom/iflytek/cloud/a/b/b;->g:Z

    .line 23
    invoke-virtual {p0, p2}, Lcom/iflytek/cloud/a/f/a;->setParams(Lcom/iflytek/cloud/b/a;)V

    return-void
.end method

.method private notifyResult(Z[B)V
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

    if-eqz p2, :cond_0

    .line 2
    array-length v0, p2

    if-lez v0, :cond_0

    .line 3
    new-instance v0, Ljava/lang/String;

    const-string v1, "utf-8"

    invoke-direct {v0, p2, v1}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    goto :goto_2

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->n:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-gtz p2, :cond_4

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p2

    const-string v0, "local_grammar"

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "sms.irf"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e25

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    .line 8
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p2

    const/4 v0, 0x1

    const-string v1, "asr_nomatch_error"

    invoke-virtual {p2, v1, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_1

    .line 9
    :cond_3
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x2786

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    :cond_4
    :goto_1
    const-string v0, ""

    .line 10
    :goto_2
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->n:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/4 v1, 0x0

    if-eqz p2, :cond_6

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 12
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 13
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->getSessionID()Ljava/lang/String;

    move-result-object v2

    const-string v3, "session_id"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v3, 0x4e21

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4, v4, p2}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "  anddjsun  "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v2

    const-string v3, "request_audio_url"

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p2

    invoke-virtual {p2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 17
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 18
    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/b/a;->getAudioUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "audio_url"

    invoke-virtual {p2, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v3, 0x59d9

    invoke-interface {v2, v3, v4, v4, p2}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 20
    :cond_5
    new-instance p2, Lcom/iflytek/cloud/RecognizerResult;

    invoke-direct {p2, v0}, Lcom/iflytek/cloud/RecognizerResult;-><init>(Ljava/lang/String;)V

    const-string v0, "GetNotifyResult"

    .line 21
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0, p2, p1}, Lcom/iflytek/cloud/RecognizerListener;->onResult(Lcom/iflytek/cloud/RecognizerResult;Z)V

    .line 23
    :cond_6
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "msc result time:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_7

    .line 24
    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :cond_7
    return-void
.end method


# virtual methods
.method public a([BII)I
    .locals 0

    .line 19
    invoke-virtual {p0, p1, p2, p3}, Lcom/iflytek/cloud/a/b/b;->onRecordBuffer([BII)V

    const/4 p1, 0x0

    return p1
.end method

.method public a()Ljava/util/concurrent/ConcurrentLinkedQueue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "[B>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    return-object v0
.end method

.method public declared-synchronized a(Lcom/iflytek/cloud/RecognizerListener;)V
    .locals 0

    monitor-enter p0

    .line 2
    :try_start_0
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const-string p1, "[isr]startListening called"

    .line 3
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->start()V
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
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 10
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->e:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 11
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->e:Z

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_fau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v1, 0x55f2

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v1, v3, v3, v2}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    array-length v1, p1

    invoke-virtual {v0, p1, v1}, Lcom/iflytek/cloud/a/b/a;->pushAudioData([BI)V

    if-eqz p2, :cond_1

    .line 16
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/b/a;->getAudioVolume()I

    move-result p2

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QISRAudioWrite volume:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/a/b/b;->callbackVolume([BI)V

    :cond_1
    return-void
.end method

.method public declared-synchronized a(Z)Z
    .locals 2

    monitor-enter p0

    .line 5
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stopRecognize, current status is :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " usercancel : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_stop"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->releaseRecord()V

    .line 8
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/b/b;->g:Z

    const/4 p1, 0x3

    .line 9
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p1, 0x1

    monitor-exit p0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 2

    .line 1
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v1

    if-ne v0, v1, :cond_1

    const-string v0, "isr recognize vadEndCall"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onEndOfSpeech()V

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/b;->a(Z)Z

    :cond_1
    return-void
.end method

.method public callbackVolume([BI)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0, p2, p1}, Lcom/iflytek/cloud/RecognizerListener;->onVolumeChanged(I[B)V

    .line 3
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->q:Z

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "data"

    .line 5
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putByteArray(Ljava/lang/String;[B)V

    .line 6
    iget-object p1, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v1, 0x520b

    const/4 v2, 0x0

    invoke-interface {p1, v1, p2, v2, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

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

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e31

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/RecognizerListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->releaseRecord()V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getStatus()Lcom/iflytek/cloud/a/f/a$b;

    move-result-object v0

    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    if-ne v0, v1, :cond_1

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->g:Z

    .line 6
    :cond_1
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    return-void
.end method

.method errCb([CI[B)V
    .locals 0

    .line 1
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/b/b;->onError(Lcom/iflytek/cloud/SpeechError;)V

    return-void
.end method

.method public getAudioSource()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    return v0
.end method

.method public getClientID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/b;->getClientID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPerfLog()Lcom/iflytek/cloud/a/f/c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    return-object v0
.end method

.method public getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/a;->getSessionID()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/b;->r:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->r:Ljava/lang/String;

    return-object v0
.end method

.method public isLongInput()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->i:Z

    return v0
.end method

.method protected onEnd(Lcom/iflytek/cloud/SpeechError;)V
    .locals 5

    const-string v0, "onSessionEnd"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->releaseRecord()V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    const-string v1, "upflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/b/a;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/a/b/b;->a:I

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    const-string v1, "downflow"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/b/a;->getIntValue(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/iflytek/cloud/a/b/b;->b:I

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->getSessionID()Ljava/lang/String;

    .line 6
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->n:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    if-nez p1, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "asr_nomatch_error"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x2786

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :cond_0
    const-string v0, "app_ret"

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 9
    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v3

    int-to-long v3, v3

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;JZ)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-wide/16 v3, 0x0

    invoke-virtual {v2, v0, v3, v4, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;JZ)V

    .line 11
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    iget-boolean v2, p0, Lcom/iflytek/cloud/a/b/b;->g:Z

    if-eqz v2, :cond_2

    const-string v2, "1"

    goto :goto_1

    :cond_2
    const-string v2, "0"

    :goto_1
    const-string v3, "rec_ustop"

    invoke-virtual {v0, v3, v2, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v2}, Lcom/iflytek/cloud/a/f/c;->a()Ljava/lang/String;

    move-result-object v2

    const-string v3, "sessinfo"

    invoke-virtual {v0, v3, v2}, Lcom/iflytek/cloud/a/b/a;->setParam(Ljava/lang/String;Ljava/lang/String;)Z

    const-string v0, "SessionEndBegin"

    const/4 v2, 0x0

    .line 13
    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    const-string v3, "user abort"

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/a/b/a;->sessionEnd(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    if-eqz p1, :cond_4

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/iflytek/cloud/SpeechError;->getErrorCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/a/b/a;->sessionEnd(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_4
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    const-string v3, "success"

    invoke-virtual {v0, v3}, Lcom/iflytek/cloud/a/b/a;->sessionEnd(Ljava/lang/String;)V

    :goto_2
    const-string v0, "SessionEndEnd"

    .line 18
    invoke-static {v0, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    invoke-super {p0, p1}, Lcom/iflytek/cloud/a/f/a;->onEnd(Lcom/iflytek/cloud/SpeechError;)V

    .line 20
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_6

    .line 21
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/f/a;->mUserCancel:Z

    if-eqz v0, :cond_5

    const-string p1, "RecognizerListener#onCancel"

    .line 22
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v0, "RecognizerListener#onEnd"

    .line 23
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_6

    .line 24
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 25
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->getSessionID()Ljava/lang/String;

    move-result-object v3

    const-string v4, "session_id"

    invoke-virtual {v0, v4, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    iget-object v3, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v4, 0x4e21

    invoke-interface {v3, v4, v1, v1, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 27
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0, p1}, Lcom/iflytek/cloud/RecognizerListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 28
    :cond_6
    :goto_3
    iput-object v2, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

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

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    if-eq v0, v1, :cond_5

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 p1, 0x7

    if-eq v0, p1, :cond_1

    const/16 p1, 0x9

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->b()V

    goto :goto_0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->proc_Msg_Netperf()V

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/b/b;->proc_Msg_Result(Landroid/os/Message;)V

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->proc_Msg_Record_Stoped()V

    goto :goto_0

    .line 7
    :cond_4
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/b/b;->proc_Msg_Record_Data(Landroid/os/Message;)V

    goto :goto_0

    .line 8
    :cond_5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->proc_Msg_Session_Begin()V

    goto :goto_0

    .line 9
    :cond_6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->proc_Msg_Start()V

    :goto_0
    return-void
.end method

.method protected onParseParam()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "cloud_grammar"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/b;->l:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "audio_source"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    .line 3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "domain"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/b/c;->a(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->i:Z

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

    iget v3, p0, Lcom/iflytek/cloud/a/f/a;->mSampleRate:I

    const-string v4, "sample_rate"

    invoke-virtual {v1, v4, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v1

    div-int/lit16 v1, v1, 0x3e8

    mul-int/lit8 v1, v1, 0x10

    div-int/lit8 v1, v1, 0x8

    mul-int v1, v1, v0

    iput v1, p0, Lcom/iflytek/cloud/a/b/b;->p:I

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    const-string v3, "speech_timeout"

    invoke-virtual {v0, v3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "notify_record_data"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->q:Z

    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSpeechTimeOut="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 9
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->onParseParam()V

    return-void
.end method

.method public onRecordBuffer([BII)V
    .locals 4

    if-eqz p1, :cond_4

    if-lez p3, :cond_4

    .line 1
    array-length v0, p1

    if-ge v0, p3, :cond_0

    goto :goto_0

    :cond_0
    if-lez p3, :cond_4

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->d:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->d:Z

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "rec_start"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget v0, p0, Lcom/iflytek/cloud/a/b/b;->p:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-lez v0, :cond_3

    if-lt v0, p3, :cond_2

    sub-int/2addr v0, p3

    .line 7
    iput v0, p0, Lcom/iflytek/cloud/a/b/b;->p:I

    goto :goto_0

    :cond_2
    sub-int/2addr p3, v0

    .line 8
    new-array v3, p3, [B

    add-int/2addr p2, v0

    .line 9
    invoke-static {p1, p2, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10
    invoke-virtual {p0, v1, v3}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    .line 11
    iput v2, p0, Lcom/iflytek/cloud/a/b/b;->p:I

    goto :goto_0

    .line 12
    :cond_3
    new-array v0, p3, [B

    .line 13
    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    invoke-virtual {p0, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onRecordReleased()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_0

    instance-of v0, v0, Lcom/iflytek/cloud/record/a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/b;->a(Z)Z

    :cond_0
    return-void
.end method

.method public onRecordStarted(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v0, "rec_ready"

    invoke-virtual {p1, v0}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public proc_Msg_Netperf()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    const-string v1, "netperf"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/b/a;->getIntValue(Ljava/lang/String;)I

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v3, 0x2711

    const/4 v4, 0x0

    invoke-interface {v1, v3, v0, v2, v4}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 5
    :cond_0
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v1, 0x7

    const/16 v3, 0x64

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    :cond_1
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
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 4
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/a/b/b;->a([BZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected proc_Msg_Record_Stoped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const-string v0, "recording stop"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->releaseRecord()V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/a;->pushEndFlag()V

    .line 5
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->updateTimeoutMsg()V

    return-void
.end method

.method proc_Msg_Result(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/lang/InterruptedException;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 2
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [B

    const-string v1, "app_frs"

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    const/4 v3, 0x5

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->f:Z

    if-nez v0, :cond_1

    .line 4
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/b/b;->f:Z

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_lrs"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 7
    invoke-direct {p0, v2, p1}, Lcom/iflytek/cloud/a/b/b;->notifyResult(Z[B)V

    goto :goto_0

    .line 8
    :cond_2
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->f:Z

    if-nez v0, :cond_3

    .line 9
    iput-boolean v2, p0, Lcom/iflytek/cloud/a/b/b;->f:Z

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    :cond_3
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0, p1}, Lcom/iflytek/cloud/a/b/b;->notifyResult(Z[B)V

    :goto_0
    return-void
.end method

.method protected proc_Msg_Session_Begin()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "SDKSessionBegin"

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    iget-object v1, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->l:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, p0}, Lcom/iflytek/cloud/a/b/a;->sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 3
    iget-object v2, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    iget-object v2, v2, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    iget-object v0, v0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    const-string v2, "rsltCb"

    const-string v3, "stusCb"

    const-string v4, "errCb"

    invoke-static {v0, v2, v3, v4, p0}, Lcom/iflytek/msc/MSC;->QISRRegisterNotify([CLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)I

    .line 6
    sget-object v0, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    .line 7
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v2, "asr_net_perf"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    const/4 v2, 0x7

    invoke-virtual {p0, v2, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_0

    .line 9
    :cond_0
    iget v2, p0, Lcom/iflytek/cloud/a/b/b;->t:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    iput v2, p0, Lcom/iflytek/cloud/a/b/b;->t:I

    const/16 v4, 0x28

    if-gt v2, v4, :cond_2

    .line 10
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    const-wide/16 v4, 0xf

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 12
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v3, v0, v1, v1}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    :cond_1
    :goto_0
    return-void

    .line 13
    :cond_2
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1
.end method

.method protected proc_Msg_Start()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "[isr]start connecting"

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

    move-result-object v2

    const-string v3, "net_check"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "cloud"

    .line 4
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/content/Context;)V

    goto :goto_0

    :cond_0
    const-string v2, "mixed"

    .line 6
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/a;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/j;->a(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8
    :catch_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v2, "local"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const/16 v1, 0x28

    const-string v2, "record_read_rate"

    invoke-virtual {v0, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    .line 10
    iget v1, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v1, v3, :cond_6

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "[isr]start  record"

    .line 11
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 12
    iget v1, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    const/4 v5, -0x2

    if-ne v1, v5, :cond_3

    .line 13
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v5, "asr_source_path"

    invoke-virtual {v1, v5}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    new-instance v5, Lcom/iflytek/cloud/record/a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v6

    iget v7, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    invoke-direct {v5, v6, v0, v7, v1}, Lcom/iflytek/cloud/record/a;-><init>(IIILjava/lang/String;)V

    iput-object v5, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    goto :goto_1

    .line 15
    :cond_3
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    iget-boolean v5, p0, Lcom/iflytek/cloud/a/b/b;->s:Z

    const-string v6, "bluetooth"

    invoke-virtual {v1, v6, v5}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/iflytek/cloud/a/b/b;->s:Z

    if-eqz v1, :cond_4

    .line 16
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->startBluetooth()V

    .line 17
    :cond_4
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v5

    iget v6, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    invoke-direct {v1, v5, v0, v6}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    const/4 v0, 0x3

    .line 18
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 19
    :goto_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "rec_open"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    .line 21
    iget v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    if-eq v3, v0, :cond_6

    .line 22
    sget-object v1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/16 v5, 0x9

    invoke-virtual {p0, v5, v1, v2, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_2

    .line 23
    :cond_5
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2786

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    .line 24
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_7

    iget v0, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    if-le v0, v3, :cond_7

    .line 25
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onBeginOfSpeech()V

    .line 26
    :cond_7
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_ssb"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 27
    sget-object v0, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, v4, v0, v2, v2}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    return-void
.end method

.method protected releaseRecord()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v2, "record_force_stop"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder;->stopRecord(Z)V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v2, "rec_close"

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v2, 0x55f3

    invoke-interface {v1, v2, v3, v3, v0}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/b;->s:Z

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->stopBluetooth()V

    :cond_1
    return-void
.end method

.method rsltCb([C[BII)V
    .locals 1

    const-string p1, "MscRecognizer"

    const-string p3, "rsltCb:"

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "result:"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p3, Ljava/lang/String;

    invoke-direct {p3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "result:null"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p1, 0x4

    const/4 p3, 0x0

    .line 3
    invoke-virtual {p0, p1, p4, p3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    .line 4
    invoke-virtual {p0, p1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_1

    .line 6
    :cond_1
    sget-object p1, Lcom/iflytek/cloud/a/f/a$a;->a:Lcom/iflytek/cloud/a/f/a$a;

    invoke-virtual {p0, p2, p1, p3, p3}, Lcom/iflytek/cloud/a/f/a;->sendMsg(Landroid/os/Message;Lcom/iflytek/cloud/a/f/a$a;ZI)V

    :goto_1
    return-void
.end method

.method protected start()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Lcom/iflytek/cloud/b/a;)V

    .line 2
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/a;->start()V

    return-void
.end method

.method stusCb([CIII[B)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p1, 0x3

    if-ne p3, p1, :cond_0

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "stusCb:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",type:"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "MscRecognizer"

    invoke-static {p2, p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->b()V

    :cond_0
    return-void
.end method
