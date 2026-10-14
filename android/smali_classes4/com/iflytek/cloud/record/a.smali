.class public Lcom/iflytek/cloud/record/a;
.super Lcom/iflytek/cloud/record/PcmRecorder;
.source "SourceFile"


# instance fields
.field private m:I

.field private n:Z

.field private o:I

.field private final p:S

.field private q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

.field private r:Ljava/lang/String;


# direct methods
.method public constructor <init>(IIILjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/iflytek/cloud/record/PcmRecorder;-><init>(III)V

    const/4 p2, 0x0

    .line 2
    iput p2, p0, Lcom/iflytek/cloud/record/a;->m:I

    .line 3
    iput-boolean p2, p0, Lcom/iflytek/cloud/record/a;->n:Z

    const/16 p2, 0x10

    .line 4
    iput-short p2, p0, Lcom/iflytek/cloud/record/a;->p:S

    const/4 p2, 0x0

    .line 5
    iput-object p2, p0, Lcom/iflytek/cloud/record/a;->q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    .line 6
    iput p1, p0, Lcom/iflytek/cloud/record/a;->o:I

    .line 7
    iput-object p4, p0, Lcom/iflytek/cloud/record/a;->r:Ljava/lang/String;

    return-void
.end method

.method private b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->r:Ljava/lang/String;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/cloud/record/a;->r:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordReleased()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/iflytek/cloud/record/a;->q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    :cond_0
    const-string v0, "release record over"

    .line 4
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected a(SII)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/iflytek/cloud/SpeechError;
        }
    .end annotation

    mul-int/lit8 p2, p2, 0x64

    .line 1
    div-int/lit16 p2, p2, 0x3e8

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x10

    .line 2
    div-int/lit8 p2, p2, 0x8

    const/16 p1, 0xa00

    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/record/a;->m:I

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/record/a;->r:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/iflytek/cloud/record/a;->r:Ljava/lang/String;

    invoke-direct {p1, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/iflytek/cloud/SpeechError;

    const/16 p2, 0x4e26

    invoke-direct {p1, p2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    throw p1
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/record/a;->b()V

    .line 2
    invoke-super {p0}, Lcom/iflytek/cloud/record/PcmRecorder;->finalize()V

    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    :try_start_0
    iget v0, p0, Lcom/iflytek/cloud/record/a;->o:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Lcom/iflytek/cloud/record/a;->a(SII)V

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, v2}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordStarted(Z)V

    .line 4
    :cond_0
    new-instance v0, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/iflytek/cloud/record/a;->r:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 5
    iget v3, p0, Lcom/iflytek/cloud/record/a;->m:I

    new-array v3, v3, [B

    .line 6
    :goto_0
    iget-boolean v4, p0, Lcom/iflytek/cloud/record/a;->n:Z

    if-nez v4, :cond_3

    .line 7
    invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    if-gez v4, :cond_1

    .line 8
    iput-boolean v2, p0, Lcom/iflytek/cloud/record/a;->n:Z

    goto :goto_1

    .line 9
    :cond_1
    iget-object v5, p0, Lcom/iflytek/cloud/record/a;->q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v5, :cond_2

    .line 10
    invoke-interface {v5, v3, v1, v4}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onRecordBuffer([BII)V

    :cond_2
    const-wide/16 v4, 0x5

    .line 11
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    goto :goto_0

    .line 12
    :cond_3
    :goto_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/record/a;->q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    if-eqz v0, :cond_4

    .line 15
    new-instance v1, Lcom/iflytek/cloud/SpeechError;

    const/16 v2, 0x4e26

    invoke-direct {v1, v2}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-interface {v0, v1}, Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;->onError(Lcom/iflytek/cloud/SpeechError;)V

    .line 16
    :cond_4
    :goto_2
    invoke-direct {p0}, Lcom/iflytek/cloud/record/a;->b()V

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
    iput-object p1, p0, Lcom/iflytek/cloud/record/a;->q:Lcom/iflytek/cloud/record/PcmRecorder$PcmRecordListener;

    const/16 p1, 0xa

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/Thread;->setPriority(I)V

    .line 3
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public stopRecord(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 1
    iput-boolean p1, p0, Lcom/iflytek/cloud/record/a;->n:Z

    return-void
.end method
