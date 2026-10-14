.class public Lcom/iflytek/cloud/a/b/c;
.super Lcom/iflytek/cloud/a/b/b;
.source "SourceFile"


# instance fields
.field private u:I

.field private v:Lcom/iflytek/cloud/util/AudioDetector;

.field w:Z

.field private x:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/a/b/b;-><init>(Landroid/content/Context;Lcom/iflytek/cloud/b/a;Landroid/os/HandlerThread;)V

    const/16 p2, 0x3e80

    .line 2
    iput p2, p0, Lcom/iflytek/cloud/a/b/c;->u:I

    const/4 p3, 0x0

    .line 3
    iput-object p3, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/b/c;->w:Z

    .line 5
    iput-object p3, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    .line 6
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p3

    const-string v0, "sample_rate"

    if-eqz p3, :cond_0

    .line 7
    invoke-virtual {p3, v0, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p2

    :cond_0
    iput p2, p0, Lcom/iflytek/cloud/a/b/c;->u:I

    const/4 p2, 0x1

    const-string v1, "vad_enable"

    const-string v2, "0"

    .line 8
    invoke-virtual {p3, v1, v2, p2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 9
    invoke-static {}, Lcom/iflytek/cloud/util/AudioDetector;->getDetector()Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object p2

    iput-object p2, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    if-nez p2, :cond_2

    .line 10
    new-instance p2, Ljava/lang/StringBuffer;

    invoke-direct {p2}, Ljava/lang/StringBuffer;-><init>()V

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/iflytek/cloud/a/b/c;->u:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v1, "vad_engine"

    const-string v2, "meta"

    .line 12
    invoke-virtual {p3, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    .line 13
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "vad_res_path"

    .line 14
    invoke-virtual {p3, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 15
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 16
    invoke-virtual {p2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 17
    :cond_1
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/iflytek/cloud/util/AudioDetector;->createDetector(Landroid/content/Context;Ljava/lang/String;)Lcom/iflytek/cloud/util/AudioDetector;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    .line 18
    :cond_2
    iget p1, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const p1, 0x7fffffff

    .line 19
    :goto_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "vad_bos"

    invoke-virtual {p2, v0, p1}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    invoke-static {p0}, Lcom/iflytek/cloud/b/c;->b(Lcom/iflytek/cloud/a/f/a;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "vad_eos"

    invoke-virtual {p3, p2, p1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "meta vad eos on recog: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 22
    iget-object p3, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-virtual {p3, p2, p1}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    iget p2, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "speech_timeout"

    invoke-virtual {p1, p3, p2}, Lcom/iflytek/cloud/util/AudioDetector;->setParameter(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private a([B)[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    if-eqz v0, :cond_b

    .line 8
    array-length v0, p1

    const v1, 0x8000

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v6, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    :goto_0
    if-lez v0, :cond_4

    .line 9
    iget-object v6, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-virtual {v6, p1, v4, v0, v3}, Lcom/iflytek/cloud/util/AudioDetector;->detect([BIIZ)Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    move-result-object v6

    .line 10
    iget v8, v6, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez v8, :cond_3

    .line 11
    iget v8, v6, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    const/4 v9, 0x3

    if-ne v9, v8, :cond_0

    .line 12
    iget-object v8, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    invoke-virtual {v8}, Lcom/iflytek/cloud/util/AudioDetector;->reset()V

    goto :goto_1

    :cond_0
    if-eqz v8, :cond_2

    .line 13
    iget-boolean v8, p0, Lcom/iflytek/cloud/a/b/c;->w:Z

    const/4 v9, 0x1

    if-nez v8, :cond_1

    .line 14
    iget-object v7, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    array-length v7, v7

    sub-int v7, v4, v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 15
    iput-boolean v9, p0, Lcom/iflytek/cloud/a/b/c;->w:Z

    const-string v7, "detectAudioData find start and begin session"

    .line 16
    invoke-static {v7}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Lcom/iflytek/cloud/a/b/c;->c()V

    const/4 v7, 0x1

    .line 18
    :cond_1
    iget v8, v6, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-eq v9, v8, :cond_2

    goto :goto_2

    :cond_2
    :goto_1
    add-int/2addr v4, v0

    .line 19
    array-length v0, p1

    sub-int/2addr v0, v4

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_0

    .line 20
    :cond_3
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    iget v0, v6, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1

    :cond_4
    :goto_2
    if-eqz v6, :cond_5

    .line 21
    iget v0, v6, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->volume:I

    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/a/b/b;->callbackVolume([BI)V

    :cond_5
    if-eqz v6, :cond_a

    .line 22
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/c;->w:Z

    if-eqz v0, :cond_a

    if-eqz v7, :cond_7

    .line 23
    array-length v0, p1

    sub-int/2addr v0, v5

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    array-length v2, v1

    add-int/2addr v0, v2

    new-array v2, v0, [B

    .line 24
    array-length v4, v1

    if-gt v4, v5, :cond_6

    .line 25
    array-length v1, v1

    sub-int/2addr v5, v1

    invoke-static {p1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3

    .line 26
    :cond_6
    array-length v0, v1

    sub-int/2addr v0, v5

    invoke-static {v1, v5, v2, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 27
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    array-length v0, v0

    sub-int/2addr v0, v5

    array-length v1, p1

    invoke-static {p1, v3, v2, v0, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_3
    move-object p1, v2

    .line 28
    :cond_7
    iget v0, v6, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    const/4 v1, 0x2

    if-eq v1, v0, :cond_8

    const/4 v1, 0x4

    if-ne v1, v0, :cond_9

    :cond_8
    const-string v0, "detectAudioData find eos or timeout"

    .line 29
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->b()V

    :cond_9
    move-object v2, p1

    goto :goto_4

    .line 31
    :cond_a
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    array-length v0, v0

    array-length v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 32
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    array-length v4, v1

    sub-int/2addr v4, v0

    invoke-static {v1, v0, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 33
    array-length v1, p1

    sub-int/2addr v1, v0

    iget-object v3, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    array-length v4, v3

    sub-int/2addr v4, v0

    invoke-static {p1, v1, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_4
    return-object v2

    .line 34
    :cond_b
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 v0, 0x55f1

    invoke-direct {p1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
.end method

.method private c()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/iflytek/cloud/SpeechUtility;->getUtility()Lcom/iflytek/cloud/SpeechUtility;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_ssb"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    const-string v0, "begin session"

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/b/b;->proc_Msg_Session_Begin()V

    goto :goto_0

    :cond_0
    const-string v0, "not init while begin session"

    .line 5
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 6
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e2f

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected a([BZ)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iget-boolean p2, p0, Lcom/iflytek/cloud/a/b/b;->e:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    .line 2
    iput-boolean p2, p0, Lcom/iflytek/cloud/a/b/b;->e:Z

    .line 3
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v0, "app_fau"

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz p2, :cond_0

    .line 5
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    const/16 v0, 0x55f2

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p2, v0, v2, v2, v1}, Lcom/iflytek/cloud/RecognizerListener;->onEvent(IIILandroid/os/Bundle;)V

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    array-length v0, p1

    invoke-virtual {p2, p1, v0}, Lcom/iflytek/cloud/a/b/a;->pushAudioData([BI)V

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
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/b/c;->a([B)[B

    move-result-object p1

    if-eqz p1, :cond_1

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->m:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/iflytek/cloud/a/b/c;->a([BZ)V

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

    .line 1
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/b/c;->w:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "app_lau"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->j:Lcom/iflytek/cloud/a/b/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/b/a;->pushEndFlag()V

    .line 4
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->updateTimeoutMsg()V

    goto :goto_0

    :cond_0
    const-string v0, "exit with no speech audio"

    .line 5
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/f/a;->exit(Lcom/iflytek/cloud/SpeechError;)V

    :goto_0
    return-void
.end method

.method protected proc_Msg_Start()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-string v0, "start connecting"

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
    sget-object v1, Lcom/iflytek/cloud/a/f/a$b;->c:Lcom/iflytek/cloud/a/f/a$b;

    invoke-virtual {p0, v1}, Lcom/iflytek/cloud/a/f/a;->setStatus(Lcom/iflytek/cloud/a/f/a$b;)V

    .line 11
    iget v1, p0, Lcom/iflytek/cloud/a/b/c;->u:I

    mul-int/lit16 v1, v1, 0x12c

    mul-int/lit8 v1, v1, 0x2

    div-int/lit16 v1, v1, 0x3e8

    .line 12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MscRecognizerMeta last buffer len: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    new-array v1, v1, [B

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/c;->x:[B

    .line 14
    iget v1, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_5

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "start  record"

    .line 15
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 16
    iget v1, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    const/4 v3, -0x2

    if-ne v1, v3, :cond_3

    .line 17
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v1

    const-string v3, "asr_source_path"

    invoke-virtual {v1, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 18
    new-instance v3, Lcom/iflytek/cloud/record/a;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v4

    iget v5, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    invoke-direct {v3, v4, v0, v5, v1}, Lcom/iflytek/cloud/record/a;-><init>(IIILjava/lang/String;)V

    iput-object v3, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    goto :goto_1

    .line 19
    :cond_3
    new-instance v1, Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getSampleRate()I

    move-result v3

    iget v4, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    invoke-direct {v1, v3, v0, v4}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    iput-object v1, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    const/4 v0, 0x3

    .line 20
    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->o:Lcom/iflytek/cloud/a/f/c;

    const-string v1, "rec_open"

    invoke-virtual {v0, v1}, Lcom/iflytek/cloud/a/f/c;->a(Ljava/lang/String;)V

    .line 22
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->k:Lcom/iflytek/cloud/record/PcmRecorder;

    invoke-virtual {v0, p0}, Lcom/iflytek/cloud/record/PcmRecorder;->startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V

    .line 23
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v0

    const-string v1, "speech_timeout"

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/iflytek/cloud/a/f/a;->mSpeechTimeOut:I

    if-eq v2, v0, :cond_5

    .line 24
    sget-object v1, Lcom/iflytek/cloud/a/f/a$a;->b:Lcom/iflytek/cloud/a/f/a$a;

    const/16 v3, 0x9

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v1, v4, v0}, Lcom/iflytek/cloud/a/f/a;->sendMsg(ILcom/iflytek/cloud/a/f/a$a;ZI)V

    goto :goto_2

    .line 25
    :cond_4
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x2786

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    .line 26
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/iflytek/cloud/a/b/b;->h:I

    if-le v0, v2, :cond_6

    .line 27
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/b;->c:Lcom/iflytek/cloud/RecognizerListener;

    invoke-interface {v0}, Lcom/iflytek/cloud/RecognizerListener;->onBeginOfSpeech()V

    .line 28
    :cond_6
    iget-object v0, p0, Lcom/iflytek/cloud/a/b/c;->v:Lcom/iflytek/cloud/util/AudioDetector;

    if-eqz v0, :cond_7

    .line 29
    invoke-virtual {v0}, Lcom/iflytek/cloud/util/AudioDetector;->reset()V

    return-void

    .line 30
    :cond_7
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x520b

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method
