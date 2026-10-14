.class public Lcom/iflytek/cloud/record/PcmRecorder;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;
    }
.end annotation


# static fields
.field public static final RATE16K:I = 0x3e80

.field public static final READ_INTERVAL40MS:I = 0x28


# instance fields
.field private final a:S

.field private b:[B

.field private c:Landroid/media/AudioRecord;

.field private d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

.field private e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

.field private volatile f:Z

.field private g:D

.field private h:D

.field private i:I

.field private j:I

.field private k:I

.field private l:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, 0x10

    .line 3
    iput-short v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->a:S

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    .line 6
    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    .line 7
    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z

    const-wide/16 v0, 0x0

    .line 9
    iput-wide v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    .line 10
    iput-wide v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    const/16 v0, 0x3e80

    .line 11
    iput v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->i:I

    const/16 v0, 0x28

    .line 12
    iput v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    .line 13
    iput v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->k:I

    .line 14
    iput p3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->l:I

    .line 15
    iput p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->i:I

    .line 16
    iput p2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    if-lt p2, v0, :cond_0

    const/16 p1, 0x64

    if-le p2, p1, :cond_1

    .line 17
    :cond_0
    iput v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    :cond_1
    const/16 p1, 0xa

    .line 18
    iput p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->k:I

    return-void
.end method

.method private a([BI)D
    .locals 10

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_3

    if-gtz p2, :cond_0

    goto :goto_2

    .line 19
    :cond_0
    array-length p2, p1

    const/4 v2, 0x0

    move-wide v4, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, p2, :cond_1

    aget-byte v6, p1, v3

    int-to-double v6, v6

    add-double/2addr v4, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 20
    :cond_1
    array-length p2, p1

    int-to-double v6, p2

    div-double/2addr v4, v6

    .line 21
    array-length p2, p1

    :goto_1
    if-ge v2, p2, :cond_2

    aget-byte v3, p1, v2

    int-to-double v6, v3

    sub-double/2addr v6, v4

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 22
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    add-double/2addr v0, v6

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 23
    :cond_2
    array-length p1, p1

    add-int/lit8 p1, p1, -0x1

    int-to-double p1, p1

    div-double/2addr v0, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    return-wide p1

    :cond_3
    :goto_2
    return-wide v0
.end method

.method private a()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-nez v2, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    array-length v3, v2

    invoke-virtual {v0, v2, v1, v3}, Landroid/media/AudioRecord;->read([BII)I

    move-result v0

    if-lez v0, :cond_1

    .line 15
    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v2, :cond_1

    .line 16
    iget-object v3, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    invoke-interface {v2, v3, v1, v0}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordBuffer([BII)V

    goto :goto_0

    :cond_1
    if-ltz v0, :cond_2

    :goto_0
    return v0

    .line 17
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Record read data error: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 18
    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x4e26

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v0

    :cond_3
    :goto_1
    return v1
.end method

.method private b()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1

    const-string v0, "release record begin"

    .line 3
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v0}, Landroid/media/AudioRecord;->release()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    .line 6
    iget-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v1, :cond_0

    .line 7
    invoke-interface {v1}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    .line 8
    iput-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    :cond_0
    const-string v0, "release record over"

    .line 9
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 10
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 11
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method protected a(SII)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    if-eqz v0, :cond_0

    const-string v0, "[initRecord] recoder release first"

    .line 2
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->b()V

    :cond_0
    mul-int p3, p3, p2

    .line 4
    div-int/lit16 p3, p3, 0x3e8

    mul-int/lit8 v0, p3, 0x4

    mul-int/lit8 v0, v0, 0x10

    mul-int v0, v0, p1

    .line 5
    div-int/lit8 v0, v0, 0x8

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    const/4 v3, 0x2

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    .line 6
    :goto_0
    invoke-static {p2, v3, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v10

    if-ge v0, v10, :cond_2

    move v0, v10

    .line 7
    :cond_2
    new-instance v11, Landroid/media/AudioRecord;

    iget v5, p0, Lcom/iflytek/cloud/record/PcmRecorder;->l:I

    const/4 v8, 0x2

    move-object v4, v11

    move v6, p2

    move v7, v3

    move v9, v0

    invoke-direct/range {v4 .. v9}, Landroid/media/AudioRecord;-><init>(IIIII)V

    iput-object v11, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    mul-int p1, p1, p3

    mul-int/lit8 p1, p1, 0x10

    .line 8
    div-int/lit8 p1, p1, 0x8

    new-array p1, p1, [B

    iput-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nSampleRate:"

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nChannel:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nFormat:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nFramePeriod:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nBufferSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nMinBufferSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\nActualBufferSize:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    array-length p2, p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "\n"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-ne p1, v2, :cond_3

    return-void

    :cond_3
    const-string p1, "create AudioRecord error"

    .line 11
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 12
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e26

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const-string v0, "[finalize] release recoder"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->b()V

    .line 3
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public run()V
    .locals 11

    const/16 v0, 0x4e26

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    const-wide/16 v2, 0x28

    const/4 v4, 0x1

    if-nez v1, :cond_0

    .line 2
    :try_start_1
    iget v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->i:I

    iget v5, p0, Lcom/iflytek/cloud/record/PcmRecorder;->j:I

    invoke-virtual {p0, v4, v1, v5}, Lcom/iflytek/cloud/record/PcmRecorder;->a(SII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 3
    :catch_0
    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    .line 4
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    :cond_0
    :goto_0
    const/4 v1, 0x0

    const/4 v5, 0x0

    .line 5
    :goto_1
    iget-boolean v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v6, :cond_3

    .line 6
    :try_start_3
    iget-object v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->startRecording()V

    .line 7
    iget-object v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {v6}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result v6

    const/4 v7, 0x3

    if-ne v6, v7, :cond_1

    goto :goto_2

    :cond_1
    const-string v6, "recorder state is not recoding"

    .line 8
    invoke-static {v6}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 9
    new-instance v6, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v6, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    nop

    add-int/2addr v5, v4

    const/16 v6, 0xa

    if-ge v5, v6, :cond_2

    .line 10
    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_1

    :cond_2
    const-string v1, "recoder start failed"

    .line 11
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 12
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    .line 13
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v2, :cond_4

    .line 14
    invoke-interface {v2, v4}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordStarted(Z)V

    .line 15
    :cond_4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 16
    :cond_5
    :goto_3
    iget-boolean v5, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z

    if-nez v5, :cond_8

    .line 17
    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->a()I

    move-result v5

    if-eqz v4, :cond_7

    .line 18
    iget-wide v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    int-to-double v8, v5

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    .line 19
    iget-wide v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    iget-object v8, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    array-length v9, v8

    invoke-direct {p0, v8, v9}, Lcom/iflytek/cloud/record/PcmRecorder;->a([BI)D

    move-result-wide v8

    add-double/2addr v6, v8

    iput-wide v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    .line 20
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    const-wide/16 v8, 0x3e8

    cmp-long v10, v6, v8

    if-ltz v10, :cond_7

    .line 21
    iget-wide v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->g:D

    const-wide/16 v8, 0x0

    cmpl-double v4, v6, v8

    if-eqz v4, :cond_6

    iget-wide v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->h:D

    cmpl-double v4, v6, v8

    if-eqz v4, :cond_6

    const/4 v4, 0x0

    goto :goto_4

    :cond_6
    const-string v1, "cannot get record permission, get invalid audio data."

    .line 22
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 23
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v1, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw v1

    .line 24
    :cond_7
    :goto_4
    iget-object v6, p0, Lcom/iflytek/cloud/record/PcmRecorder;->b:[B

    array-length v6, v6

    if-le v6, v5, :cond_5

    .line 25
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current record read size is less than buffer size: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 26
    iget v5, p0, Lcom/iflytek/cloud/record/PcmRecorder;->k:I

    int-to-long v5, v5

    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v1

    .line 27
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 28
    iget-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v1, :cond_8

    .line 29
    new-instance v2, Lcom/iflytek/cloud/SpeechError;

    invoke-direct {v2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v1, v2}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 30
    :cond_8
    invoke-direct {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->b()V

    return-void
.end method

.method public startRecording(Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/16 p1, 0xa

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopRecord(Z)V
    .locals 3

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/iflytek/cloud/record/PcmRecorder;->f:Z

    .line 2
    iget-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    :cond_0
    const/4 v1, 0x0

    .line 4
    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->d:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz p1, :cond_3

    .line 5
    monitor-enter p0

    :try_start_0
    const-string p1, "stopRecord...release"

    .line 6
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    if-eqz p1, :cond_2

    const/4 v2, 0x3

    .line 8
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getRecordingState()I

    move-result p1

    if-ne v2, p1, :cond_1

    iget-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    .line 9
    invoke-virtual {p1}, Landroid/media/AudioRecord;->getState()I

    move-result p1

    if-ne v0, p1, :cond_1

    const-string p1, "stopRecord releaseRecording ing..."

    .line 10
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    invoke-virtual {p1}, Landroid/media/AudioRecord;->release()V

    const-string p1, "stopRecord releaseRecording end..."

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->c:Landroid/media/AudioRecord;

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz p1, :cond_2

    .line 15
    invoke-interface {p1}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    .line 16
    iput-object v1, p0, Lcom/iflytek/cloud/record/PcmRecorder;->e:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 17
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 18
    :cond_2
    :goto_0
    monitor-exit p0

    goto :goto_2

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_3
    :goto_2
    const-string p1, "stop record"

    .line 19
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method
