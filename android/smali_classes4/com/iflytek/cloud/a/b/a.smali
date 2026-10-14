.class public Lcom/iflytek/cloud/a/b/a;
.super Lcom/iflytek/cloud/a/f/b;
.source "SourceFile"


# static fields
.field private static a:Lcom/iflytek/cloud/GrammarListener;

.field private static b:Lcom/iflytek/cloud/LexiconListener;


# instance fields
.field private c:Lcom/iflytek/msc/MSCSessionInfo;

.field private d:Lcom/iflytek/msc/MSCSessionInfo;

.field private e:[B

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/b;-><init>()V

    .line 2
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

    .line 3
    new-instance v0, Lcom/iflytek/msc/MSCSessionInfo;

    invoke-direct {v0}, Lcom/iflytek/msc/MSCSessionInfo;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/a/b/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/a/b/a;->e:[B

    const-string v0, ""

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/a/b/a;->f:Ljava/lang/String;

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

    iget-object v1, p0, Lcom/iflytek/cloud/a/b/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, p2, p3, v1}, Lcom/iflytek/msc/MSC;->QISRAudioWrite([C[BIILcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    .line 2
    iget-object p3, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget v0, v0, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    iput v0, p3, Lcom/iflytek/msc/MSCSessionInfo;->sesstatus:I

    .line 3
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "QISRAudioWrite length:"

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

    iget-object p2, p0, Lcom/iflytek/cloud/a/b/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

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
.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/GrammarListener;Lcom/iflytek/cloud/b/a;)I
    .locals 7

    .line 1
    sput-object p3, Lcom/iflytek/cloud/a/b/a;->a:Lcom/iflytek/cloud/GrammarListener;

    .line 2
    invoke-virtual {p4}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "text_encoding"

    const-string v1, "utf-8"

    .line 3
    invoke-virtual {p4, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "pte"

    .line 4
    invoke-virtual {p4, v2, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 5
    :try_start_0
    invoke-virtual {p2, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    const-string v0, "LastDataFlag"

    const/4 v1, 0x0

    .line 6
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QISRBuildGrammar begin, garmmar: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v2

    .line 9
    invoke-virtual {p3, p4}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "grammarCallBack"

    move-object v6, p0

    .line 10
    invoke-static/range {v1 .. v6}, Lcom/iflytek/msc/MSC;->QISRBuildGrammar([B[BI[BLjava/lang/String;Ljava/lang/Object;)I

    move-result p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "QISRBuildGrammar leave: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x4e2c

    return p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/iflytek/cloud/LexiconListener;Lcom/iflytek/cloud/b/a;)I
    .locals 7

    .line 13
    sput-object p3, Lcom/iflytek/cloud/a/b/a;->b:Lcom/iflytek/cloud/LexiconListener;

    .line 14
    iput-object p1, p0, Lcom/iflytek/cloud/a/b/a;->f:Ljava/lang/String;

    const-string p3, "text_encoding"

    const-string v0, "utf-8"

    const/4 v1, 0x0

    .line 15
    invoke-virtual {p4, p3, v0, v1}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 16
    invoke-virtual {p4, p3, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "pte"

    .line 17
    invoke-virtual {p4, v1, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    invoke-virtual {p4}, Lcom/iflytek/cloud/b/a;->toString()Ljava/lang/String;

    move-result-object p4

    .line 19
    :try_start_0
    invoke-virtual {p2, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v2

    .line 20
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "QISRUpdateLexicon begin, name: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "content: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string p2, "LastDataFlag"

    const/4 p3, 0x0

    .line 21
    invoke-static {p2, p3}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    array-length v3, v2

    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v4

    const-string v5, "lexiconCallBack"

    move-object v6, p0

    .line 24
    invoke-static/range {v1 .. v6}, Lcom/iflytek/msc/MSC;->QISRUpdateLexicon([B[BI[BLjava/lang/String;Ljava/lang/Object;)I

    move-result p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "QISRUpdateLexicon leave: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    .line 26
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/16 p1, 0x4e2c

    return p1
.end method

.method protected getAudioUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "audio_url"

    .line 1
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/a;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized getAudioVolume()I
    .locals 4

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    const-string v2, "volume"

    .line 2
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    iget-object v3, p0, Lcom/iflytek/cloud/a/b/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v1, v2, v3}, Lcom/iflytek/msc/MSC;->QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 3
    :try_start_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/iflytek/cloud/a/b/a;->d:Lcom/iflytek/msc/MSCSessionInfo;

    iget-object v3, v3, Lcom/iflytek/msc/MSCSessionInfo;->buffer:[B

    invoke-direct {v2, v3}, Ljava/lang/String;-><init>([B)V

    .line 4
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_0
    const-string v2, "VAD CHECK FALSE"

    .line 5
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

    .line 6
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
    invoke-virtual {p0, p1}, Lcom/iflytek/cloud/a/b/a;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

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
    invoke-virtual {p0, v0}, Lcom/iflytek/cloud/a/b/a;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

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

    iget-object v2, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

    invoke-static {v0, p1, v2}, Lcom/iflytek/msc/MSC;->QISRGetParam([C[BLcom/iflytek/msc/MSCSessionInfo;)I

    move-result p1

    if-nez p1, :cond_1

    .line 3
    new-instance p1, Ljava/lang/String;

    iget-object v0, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

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

.method grammarCallBack(I[C)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "grammarCallBack begin, errorCode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string v0, "GetNotifyResult"

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object v0, Lcom/iflytek/cloud/a/b/a;->a:Lcom/iflytek/cloud/GrammarListener;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    :goto_0
    const-string p1, ""

    .line 5
    invoke-interface {v0, p1, v1}, Lcom/iflytek/cloud/GrammarListener;->onBuildFinish(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-static {p2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Lcom/iflytek/cloud/GrammarListener;->onBuildFinish(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    :cond_2
    :goto_1
    const-string p1, "grammarCallBack begin, leave"

    .line 7
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method lexiconCallBack(I[C)I
    .locals 2

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "lexiconCallBack begin, errorCode: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-string p2, "GetNotifyResult"

    const/4 v0, 0x0

    .line 2
    invoke-static {p2, v0}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    sget-object p2, Lcom/iflytek/cloud/a/b/a;->b:Lcom/iflytek/cloud/LexiconListener;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/iflytek/cloud/a/b/a;->f:Ljava/lang/String;

    if-nez p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v0, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    .line 6
    :goto_0
    invoke-interface {p2, v1, v0}, Lcom/iflytek/cloud/LexiconListener;->onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    goto :goto_1

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/iflytek/cloud/a/b/a;->f:Ljava/lang/String;

    invoke-interface {p2, p1, v0}, Lcom/iflytek/cloud/LexiconListener;->onLexiconUpdated(Ljava/lang/String;Lcom/iflytek/cloud/SpeechError;)V

    :cond_2
    :goto_1
    const-string p1, "lexiconCallBack leave"

    .line 8
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
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
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/a/b/a;->writeData([BII)V
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

    const-string v2, "IsrSession pushEndFlag"

    .line 2
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v2, 0x4

    .line 3
    invoke-direct {p0, v1, v0, v2}, Lcom/iflytek/cloud/a/b/a;->writeData([BII)V
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
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;,
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Lcom/iflytek/cloud/b/c;->a(Landroid/content/Context;Ljava/lang/String;Lcom/iflytek/cloud/a/f/a;)Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QISRSessionBegin begin, grammar: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    const-class v2, Lcom/iflytek/cloud/a/b/a;

    monitor-enter v2

    :try_start_0
    const-string v3, "MSCSessionBegin"

    const/4 v4, 0x0

    .line 5
    invoke-static {v3, v4}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p2, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

    .line 8
    invoke-static {v4, p1, p2}, Lcom/iflytek/msc/MSC;->QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 10
    invoke-virtual {p3}, Lcom/iflytek/cloud/a/f/a;->getParamEncoding()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1

    iget-object p3, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

    .line 11
    invoke-static {p2, p1, p3}, Lcom/iflytek/msc/MSC;->QISRSessionBegin([B[BLcom/iflytek/msc/MSCSessionInfo;)[C

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/b;->mClientID:[C

    :goto_0
    const-string p1, "SessionBeginEnd"

    .line 12
    invoke-static {p1, v4}, Lcom/iflytek/cloud/msc/util/log/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "QISRSessionBegin end: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget p2, p2, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " time:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v0

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 16
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 17
    iget-object p1, p0, Lcom/iflytek/cloud/a/b/a;->c:Lcom/iflytek/msc/MSCSessionInfo;

    iget p1, p1, Lcom/iflytek/msc/MSCSessionInfo;->errorcode:I

    if-eqz p1, :cond_2

    const/16 p2, 0x2791

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2781

    if-eq p1, p2, :cond_2

    const/16 p2, 0x2794

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 18
    :cond_1
    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {p2, p1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p2

    :cond_2
    :goto_1
    return p1

    :catchall_0
    move-exception p1

    .line 19
    :try_start_1
    monitor-exit v2
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

    invoke-static {v2, p1}, Lcom/iflytek/msc/MSC;->QISRSessionEnd([C[B)I

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

    .line 3
    invoke-virtual {p2, v3}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p2

    .line 4
    invoke-static {v0, p1, p2}, Lcom/iflytek/msc/MSC;->QISRSetParam([C[B[B)I

    move-result v2
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 5
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
