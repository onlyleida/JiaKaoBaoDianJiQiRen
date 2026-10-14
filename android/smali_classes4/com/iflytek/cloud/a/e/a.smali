.class public Lcom/iflytek/cloud/a/e/a;
.super Lcom/iflytek/cloud/a/f/b;
.source "SourceFile"


# instance fields
.field private a:Lcom/iflytek/msc/MSCSessionInfo;

.field private b:Lcom/iflytek/msc/MSCSessionInfo;

.field private c:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/b;-><init>()V

    .line 2
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/e/a;->a:Lcom/iflytek/msc/MSCSessionInfo;

    .line 3
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/e/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/a/e/a;->c:[B

    return-void
.end method

.method private declared-synchronized a(Ljava/lang/String;[BI)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    iget-object v1, p0, Lcom/iflytek/cloud/a/e/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/iflytek/msc/MSC;->QMFVDataWrite([C[B[BILcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    .line 14
    iget-object p2, p0, Lcom/iflytek/cloud/a/e/a;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v0, p0, Lcom/iflytek/cloud/a/e/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    iput v0, p2, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QISRAudioWrite length:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    monitor-exit p0

    return-void

    .line 16
    :cond_0
    :try_start_1
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    iget-object p2, p0, Lcom/iflytek/cloud/a/e/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

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
.method public declared-synchronized a(Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    const-string v0, "LastDataFlag"

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    new-array v1, v0, [B

    .line 8
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ssub="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p1, ",data_status=4"

    .line 10
    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 11
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mfv pushEndFlag, param:"

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1, v0}, Lcom/iflytek/cloud/a/e/a;->a(Ljava/lang/String;[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized a(Ljava/lang/StringBuffer;[BIZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string p1, ",data_status="

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    if-eqz p4, :cond_0

    const/4 p1, 0x1

    .line 3
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 5
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "pushAudioData, param:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/a/e/a;->a(Ljava/lang/String;[BI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
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

    iget-object v3, p0, Lcom/iflytek/cloud/a/e/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QMFVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/a/e/a;->b:Lcom/iflytek/msc/MSCSessionInfo;

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

.method public declared-synchronized getIntValue(Ljava/lang/String;)I
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    monitor-exit p0

    return v1

    .line 2
    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/e/a;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getSessionID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, "sid"

    .line 2
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/e/a;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mSessionID:Ljava/lang/String;

    return-object v0
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

    iget-object v2, p0, Lcom/iflytek/cloud/a/e/a;->a:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, v2}, Lcom/iflytek/msc/MSC;->QMFVGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/a/e/a;->a:Lcom/iflytek/msc/MSCSessionInfo;

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

.method public sessionBegin(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/iflytek/cloud/b/c;->d(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;

    move-result-object p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sessionBegin Params:"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string p2, "MSCSessionBegin"

    const/4 v2, 0x0

    .line 4
    invoke-static {p2, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    const-class p2, Lcom/iflytek/cloud/a/e/a;

    monitor-enter p2

    .line 6
    :try_start_0
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p3, p0, Lcom/iflytek/cloud/a/e/a;->a:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {p1, p3}, Lcom/iflytek/msc/MSC;->QMFVSessionBegin([BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    .line 7
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string p1, "SessionBeginEnd"

    .line 8
    invoke-static {p1, v2}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "sessionBegin ErrCode:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/cloud/a/e/a;->a:Lcom/iflytek/msc/MSCSessionInfo;

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
    iget-object p1, p0, Lcom/iflytek/cloud/a/e/a;->a:Lcom/iflytek/msc/MSCSessionInfo;

    iget p1, p1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz p1, :cond_1

    const/16 p2, 0x2791

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2781

    if-eq p1, p2, :cond_1

    const/16 p2, 0x2794

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 13
    :cond_0
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p2

    :cond_1
    :goto_0
    return p1

    :catchall_0
    move-exception p1

    .line 14
    :try_start_1
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
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

    invoke-static {v2, p1}, Lcom/iflytek/msc/MSC;->QMFVSessionEnd([C[B)I

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

    const-string v3, "sessionEnd leavel:"

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

.method public declared-synchronized setParam(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    :try_start_1
    const-string v3, "utf-8"

    .line 2
    invoke-virtual {p1, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    const-string v3, "utf-8"

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    invoke-static {v0, p1, p2}, Lcom/iflytek/msc/MSC;->QMFVSetParam([C[B[B)I

    move-result v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    :try_start_2
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-nez v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    monitor-exit p0

    return v1

    :cond_2
    :goto_1
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
