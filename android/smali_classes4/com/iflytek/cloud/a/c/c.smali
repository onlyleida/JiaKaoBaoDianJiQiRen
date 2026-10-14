.class public Lcom/iflytek/cloud/a/c/c;
.super Lcom/iflytek/cloud/a/f/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/iflytek/msc/MSCSessionInfo;

.field private b:Lcom/iflytek/msc/MSCSessionInfo;

.field private c:Lcom/iflytek/msc/MSCSessionInfo;

.field private d:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/b;-><init>()V

    .line 2
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    .line 3
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/c/c;->b:Lcom/iflytek/msc/MSCSessionInfo;

    .line 4
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/c/c;->c:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/a/c/c;->d:[B

    return-void
.end method

.method private declared-synchronized writeData([BII)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    iget-object v5, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v1, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    invoke-static/range {v0 .. v5}, Lcom/iflytek/msc/MSC;->QISVAudioWrite([C[C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "QISVAudioWrite error:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 3
    :cond_0
    :try_start_1
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;,
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParam()Lcom/iflytek/cloud/b/a;

    move-result-object v2

    const-string v3, "vid"

    invoke-virtual {v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {p1, p2}, Lcom/iflytek/cloud/b/c;->c(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;

    move-result-object p1

    const-string v3, "sendRequest enter "

    .line 5
    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v3, "LastDataFlag"

    const/4 v4, 0x0

    .line 6
    invoke-static {v3, v4}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_0

    move-object v2, v4

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 8
    :goto_0
    invoke-virtual {p2}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/cloud/a/c/c;->c:Lcom/iflytek/msc/MSCSessionInfo;

    .line 9
    invoke-static {v2, p1, p2}, Lcom/iflytek/msc/MSC;->QISVQueDelModel([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object p1

    const-string p2, "GetNotifyResult"

    .line 10
    invoke-static {p2, v4}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {p1}, Lcom/iflytek/msc/MSC;->QISVQueDelModelRelease([C)I

    .line 12
    iget-object p1, p0, Lcom/iflytek/cloud/a/c/c;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget p1, p1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    const/4 p2, -0x1

    if-eqz p1, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/String;

    iget-object v2, p0, Lcom/iflytek/cloud/a/c/c;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v2, v2, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {p1, v2}, Ljava/lang/String;-><init>([B)V

    const-string v2, "true"

    .line 14
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    .line 15
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendRequest leave:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    if-eqz p1, :cond_4

    if-ne p2, p1, :cond_3

    goto :goto_2

    .line 18
    :cond_3
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p2

    :cond_4
    :goto_2
    return p1
.end method

.method public declared-synchronized a()Z
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->epstatues:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getAudioVolume()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    const-string v2, "volume"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/a/c/c;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/a/c/c;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 3
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v2, "VAD CHECK FALSE"

    .line 4
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    const/4 v1, 0x0

    .line 5
    :catch_1
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAudioVolume Exception vadret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    monitor-exit p0

    return v0

    :goto_1
    monitor-exit p0

    throw v0
.end method

.method public getResultData()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/c;->d:[B

    return-object v0
.end method

.method protected getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "sid"

    .line 2
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/c/c;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Lcom/iflytek/cloud/a/f/b$a;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    iget-object v2, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Lcom/iflytek/msc/MSC;->QISVGetResult([C[CLcom/iflytek/msc/MSCSessionInfo;)[B

    move-result-object v1

    iput-object v1, p0, Lcom/iflytek/cloud/a/c/c;->d:[B

    .line 3
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QISVGetResult leavel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/iflytek/cloud/a/c/c;->d:[B

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " time:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v5, v0

    invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget v1, v0, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-nez v1, :cond_4

    .line 8
    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->rsltstatus:I

    if-eqz v0, :cond_2

    if-eq v0, v4, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    goto :goto_1

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultStatus: noResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e25

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/iflytek/cloud/a/c/c;->d:[B

    if-eqz v1, :cond_3

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ResultStatus: hasResult"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    sget-object v0, Lcom/iflytek/cloud/a/f/b$a;->a:Lcom/iflytek/cloud/a/f/b$a;

    return-object v0

    .line 14
    :cond_3
    :goto_1
    sget-object v0, Lcom/iflytek/cloud/a/f/b$a;->c:Lcom/iflytek/cloud/a/f/b$a;

    return-object v0

    .line 15
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Result: error errorcode is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 16
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0
.end method

.method public declared-synchronized getStringValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return-object v1

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v2, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, v2}, Lcom/iflytek/msc/MSC;->QISVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {p1, v0}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catch_0
    :cond_1
    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

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
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/a/c/c;->writeData([BII)V
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

    const-string v2, "IsvSession pushEndFlag"

    .line 2
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 3
    invoke-direct {p0, v1, v0, v2}, Lcom/iflytek/cloud/a/c/c;->writeData([BII)V
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
    invoke-static {p1, p3}, Lcom/iflytek/cloud/b/c;->c(Landroid/content/Context;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "MSCSessionBegin"

    const/4 v3, 0x0

    .line 3
    invoke-static {v2, v3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "QISVSessionBegin begin"

    .line 4
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    if-nez p2, :cond_0

    move-object p2, v3

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    :goto_0
    iget-object p3, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    .line 7
    invoke-static {p1, p2, p3}, Lcom/iflytek/msc/MSC;->QISVSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    const-string p1, "SessionBeginEnd"

    .line 8
    invoke-static {p1, v3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QISVSessionBegin ret: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget p2, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcom/iflytek/cloud/a/c/c;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget p1, p1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz p1, :cond_2

    const/16 p2, 0x2791

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2781

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2794

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p2

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return p1
.end method

.method public sessionEnd(Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "isv sessionEnd enter "

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 4
    iget-object v2, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    .line 5
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    .line 6
    invoke-static {v2, p1}, Lcom/iflytek/msc/MSC;->QISVSessionEnd([C[B)I

    move-result p1

    if-nez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 7
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isv sessionEnd leave:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " time:"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 9
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 10
    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    .line 11
    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    return-void
.end method
