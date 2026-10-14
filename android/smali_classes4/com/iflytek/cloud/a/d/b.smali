.class public Lcom/iflytek/cloud/a/d/b;
.super Lcom/iflytek/cloud/a/f/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/iflytek/msc/MSCSessionInfo;

.field private b:Lcom/iflytek/msc/MSCSessionInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/b;-><init>()V

    .line 2
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/b;->a:Lcom/iflytek/msc/MSCSessionInfo;

    .line 3
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/b;->b:Lcom/iflytek/msc/MSCSessionInfo;

    return-void
.end method

.method private declared-synchronized writeData([BII)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/b;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/iflytek/msc/MSC;->QIVWAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    .line 2
    iget-object p3, p0, Lcom/iflytek/cloud/a/d/b;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/b;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    iput v0, p3, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QIVWAudioWrite length:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 4
    :cond_0
    :try_start_1
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    iget-object p2, p0, Lcom/iflytek/cloud/a/d/b;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget p2, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public declared-synchronized pushAudioData([BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x2

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/a/d/b;->writeData([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized pushEndFlag()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    new-array v1, v0, [B

    const-string v2, "LastDataFlag"

    const/4 v3, 0x0

    .line 1
    invoke-static {v2, v3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "ivw session pushEndFlag"

    .line 2
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 3
    invoke-direct {p0, v1, v0, v2}, Lcom/iflytek/cloud/a/d/b;->writeData([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/iflytek/cloud/b/c;->c(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object p2

    const-string v0, "cloud_grammar"

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "ivw sessionbegin begin"

    .line 4
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v2, "MSCSessionBegin"

    const/4 v3, 0x0

    .line 5
    invoke-static {v2, v3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/cloud/a/d/b;->a:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v3, p1, p2}, Lcom/iflytek/msc/MSC;->QIVWSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p3, p0, Lcom/iflytek/cloud/a/d/b;->a:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {p2, p1, p3}, Lcom/iflytek/msc/MSC;->QIVWSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    :goto_0
    const-string p1, "SessionBeginEnd"

    .line 9
    invoke-static {p1, v3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "ivw sessionBegin ErrCode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/cloud/a/d/b;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget p2, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/b;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget p1, p1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz p1, :cond_2

    const/16 p2, 0x2791

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2781

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2794

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 14
    :cond_1
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p2

    :cond_2
    :goto_1
    return p1
.end method

.method public sessionEnd(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "sessionEnd enter "

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    invoke-static {v2, p1}, Lcom/iflytek/msc/MSC;->QIVWSessionEnd([C[B)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sessionEnd leave: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " time:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 8
    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    .line 9
    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    return-void
.end method
