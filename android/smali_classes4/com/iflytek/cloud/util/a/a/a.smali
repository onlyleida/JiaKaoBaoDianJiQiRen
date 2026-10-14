.class public Lcom/iflytek/cloud/util/a/a/a;
.super Lcom/iflytek/cloud/util/AudioDetector;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private e:Lcom/iflytek/cloud/b/a;

.field private f:J

.field private g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

.field private h:Lcom/iflytek/msc/VAD$VadData;

.field private i:[B

.field private j:[B

.field private k:Z

.field private l:I

.field private m:J

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/iflytek/cloud/util/a/a/a;->c:Ljava/util/Map;

    .line 2
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/iflytek/cloud/util/a/a/a;->d:Ljava/util/Map;

    const/4 v2, 0x0

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "vad_bos"

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x1

    .line 4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v4, "vad_eos"

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x3

    .line 5
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v6, "sub_timeout"

    invoke-interface {v0, v6, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    .line 6
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v7, "early_start"

    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x7d0

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x2bc

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x4e20

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v6, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-interface {v1, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/util/AudioDetector;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/iflytek/cloud/b/a;

    invoke-direct {v0}, Lcom/iflytek/cloud/b/a;-><init>()V

    iput-object v0, p0, Lcom/iflytek/cloud/util/a/a/a;->e:Lcom/iflytek/cloud/b/a;

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    .line 4
    new-instance v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    invoke-direct {v2}, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    .line 5
    new-instance v2, Lcom/iflytek/msc/VAD$VadData;

    invoke-direct {v2}, Lcom/iflytek/msc/VAD$VadData;-><init>()V

    iput-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    const v2, 0x8000

    new-array v2, v2, [B

    .line 6
    iput-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->i:[B

    const v2, 0x8010

    new-array v2, v2, [B

    .line 7
    iput-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->j:[B

    const/4 v2, 0x1

    .line 8
    iput-boolean v2, p0, Lcom/iflytek/cloud/util/a/a/a;->k:Z

    const/4 v2, 0x2

    .line 9
    iput v2, p0, Lcom/iflytek/cloud/util/a/a/a;->l:I

    const-wide/16 v2, -0x1

    .line 10
    iput-wide v2, p0, Lcom/iflytek/cloud/util/a/a/a;->m:J

    .line 11
    iput-wide v0, p0, Lcom/iflytek/cloud/util/a/a/a;->n:J

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioDetector constructor enter, context: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", param: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->e:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/b/a;->c(Ljava/lang/String;)V

    .line 14
    :try_start_0
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->e:Lcom/iflytek/cloud/b/a;

    const-string p2, "sample_rate"

    const/16 v0, 0x3e80

    invoke-virtual {p1, p2, v0}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p1

    invoke-static {p1}, Lcom/iflytek/msc/VAD;->Initialize(I)J

    move-result-wide p1

    iput-wide p1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VAD Initialize ret: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "AudioDetector constructor exception"

    .line 16
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 17
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 18
    :goto_0
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    iget-object p2, p0, Lcom/iflytek/cloud/util/a/a/a;->j:[B

    iput-object p2, p1, Lcom/iflytek/msc/VAD$VadData;->wavData:[B

    return-void
.end method

.method private a(I)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/4 v2, 0x3

    const/4 v3, 0x2

    packed-switch p1, :pswitch_data_0

    .line 1
    iget-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput p1, v2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    goto :goto_0

    .line 2
    :pswitch_0
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    goto :goto_0

    .line 3
    :pswitch_1
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    .line 4
    iput v3, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    goto :goto_0

    .line 5
    :pswitch_2
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v3, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    goto :goto_0

    .line 6
    :pswitch_3
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    goto :goto_0

    .line 7
    :pswitch_4
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v3, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    goto :goto_0

    .line 8
    :pswitch_5
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v0, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    goto :goto_0

    .line 9
    :cond_0
    :pswitch_6
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput v1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    .line 10
    :goto_0
    iget-boolean p1, p0, Lcom/iflytek/cloud/util/a/a/a;->k:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget v2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    if-eqz v2, :cond_1

    .line 11
    iput-boolean v1, p0, Lcom/iflytek/cloud/util/a/a/a;->k:Z

    .line 12
    iget v1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-nez v1, :cond_1

    .line 13
    iput v0, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-nez p1, :cond_2

    .line 15
    invoke-direct {p0}, Lcom/iflytek/cloud/util/a/a/a;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 16
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/4 v0, 0x4

    iput v0, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    :cond_2
    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_6
    .end packed-switch
.end method

.method private a()Z
    .locals 6

    .line 17
    iget-wide v0, p0, Lcom/iflytek/cloud/util/a/a/a;->m:J

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v0

    if-gez v5, :cond_0

    .line 18
    iget-wide v3, p0, Lcom/iflytek/cloud/util/a/a/a;->n:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private b()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->buffer:[B

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->end:I

    .line 3
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    .line 4
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->length:I

    .line 5
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->offset:I

    .line 6
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->quality:I

    .line 7
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->start:I

    .line 8
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    .line 9
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->sub:I

    .line 10
    iput-boolean v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->voice:Z

    .line 11
    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->volume:I

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->audioQuality:I

    .line 13
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->endByte:I

    .line 14
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->endRemainFrameNum:I

    .line 15
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->firstOutByte:I

    .line 16
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->inSpeech:I

    .line 17
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->startByte:I

    .line 18
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->startRemainFrameNum:I

    .line 19
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->status:I

    .line 20
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->volumeLevel:I

    .line 21
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->waitPauseOrEnd:I

    .line 22
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->waitStart:I

    .line 23
    iget-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->j:[B

    iput-object v2, v0, Lcom/iflytek/msc/VAD$VadData;->wavData:[B

    .line 24
    iput v1, v0, Lcom/iflytek/msc/VAD$VadData;->wavDataSize:I

    return-void
.end method

.method private c()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget-object v1, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    iget-object v2, v1, Lcom/iflytek/msc/VAD$VadData;->wavData:[B

    iput-object v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->buffer:[B

    .line 2
    iget v2, v1, Lcom/iflytek/msc/VAD$VadData;->endByte:I

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->end:I

    .line 3
    iget v2, v1, Lcom/iflytek/msc/VAD$VadData;->wavDataSize:I

    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->length:I

    const/4 v2, 0x0

    .line 4
    iput v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->offset:I

    .line 5
    iget v3, v1, Lcom/iflytek/msc/VAD$VadData;->audioQuality:I

    iput v3, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->quality:I

    .line 6
    iget v3, v1, Lcom/iflytek/msc/VAD$VadData;->startByte:I

    iput v3, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->start:I

    .line 7
    iget v3, v1, Lcom/iflytek/msc/VAD$VadData;->inSpeech:I

    const/4 v4, 0x1

    if-ne v4, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    iput-boolean v2, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->voice:Z

    .line 8
    iget v1, v1, Lcom/iflytek/msc/VAD$VadData;->volumeLevel:I

    iput v1, v0, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->volume:I

    return-void
.end method


# virtual methods
.method public destroy()Z
    .locals 6

    const-string v0, "destroy enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/util/AudioDetector;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 4
    :try_start_1
    invoke-static {v1, v2}, Lcom/iflytek/msc/VAD;->Uninitialize(J)V

    const-string v1, "VAD Uninitialize"

    .line 5
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 6
    iput-wide v3, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "destroy exception"

    .line 7
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 8
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v1, 0x1

    .line 9
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v0, 0x0

    .line 10
    sput-object v0, Lcom/iflytek/cloud/util/AudioDetector;->a:Lcom/iflytek/cloud/util/AudioDetector;

    const-string v0, "destroy leave"

    .line 11
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return v1

    :catchall_1
    move-exception v1

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public detect([BIIZ)Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;
    .locals 6

    .line 1
    sget-object v0, Lcom/iflytek/cloud/util/AudioDetector;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "detect enter, buffer: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", offset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isLast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    invoke-direct {p0}, Lcom/iflytek/cloud/util/a/a/a;->b()V

    const-wide/16 v1, 0x0

    .line 4
    iget-wide v3, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    const-string p1, "detect error: handle is invalid!"

    .line 5
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 p2, 0x520b

    iput p2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    goto/16 :goto_1

    :cond_0
    if-eqz p1, :cond_5

    if-lez p3, :cond_5

    const v1, 0x8000

    if-lt v1, p3, :cond_5

    if-ltz p2, :cond_5

    .line 7
    array-length v1, p1

    sub-int/2addr v1, p2

    if-ge v1, p3, :cond_1

    goto/16 :goto_0

    .line 8
    :cond_1
    iget-object v1, p0, Lcom/iflytek/cloud/util/a/a/a;->i:[B

    const/4 v2, 0x0

    invoke-static {p1, p2, v1, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "buffer length: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 10
    iget-wide p1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    iget-object v1, p0, Lcom/iflytek/cloud/util/a/a/a;->i:[B

    iget-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    invoke-static {p1, p2, v1, p3, v2}, Lcom/iflytek/msc/VAD;->CalcVolumLevel(J[BILcom/iflytek/msc/VAD$VadData;)I

    move-result p1

    .line 11
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAD CalcVolumLevel ret: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 12
    iget-object p2, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput p1, p2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez p1, :cond_7

    .line 13
    iget-wide p1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    iget-object v1, p0, Lcom/iflytek/cloud/util/a/a/a;->i:[B

    invoke-static {p1, p2, v1, p3}, Lcom/iflytek/msc/VAD;->AppendData(J[BI)I

    move-result p1

    .line 14
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VAD AppendData ret: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 15
    iget-boolean p2, p0, Lcom/iflytek/cloud/util/a/a/a;->k:Z

    if-nez p2, :cond_2

    .line 16
    iget-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->n:J

    int-to-long p2, p3

    add-long/2addr v1, p2

    iput-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->n:J

    .line 17
    :cond_2
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/util/a/a/a;->a(I)V

    .line 18
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez p1, :cond_7

    .line 19
    iget-wide p1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    iget-object p3, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    invoke-static {p1, p2, p3}, Lcom/iflytek/msc/VAD;->FetchData(JLcom/iflytek/msc/VAD$VadData;)I

    move-result p1

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VAD FetchData ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/util/a/a/a;->a(I)V

    .line 22
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez p2, :cond_7

    const/4 p2, 0x2

    .line 23
    iget p1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->status:I

    if-eq p2, p1, :cond_3

    const/4 p2, 0x3

    if-eq p2, p1, :cond_3

    if-eqz p4, :cond_4

    .line 24
    :cond_3
    iget-wide p1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    invoke-static {p1, p2}, Lcom/iflytek/msc/VAD;->EndAudioData(J)I

    move-result p1

    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VAD EndAudioData ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 26
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/util/a/a/a;->a(I)V

    .line 27
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez p1, :cond_4

    .line 28
    iget-wide p1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    iget-object p3, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    invoke-static {p1, p2, p3}, Lcom/iflytek/msc/VAD;->GetLastSpeechPos(JLcom/iflytek/msc/VAD$VadData;)I

    move-result p1

    .line 29
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VAD GetLastSpeechPos ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 30
    iget-object p2, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iput p1, p2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    .line 31
    :cond_4
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez p1, :cond_7

    .line 32
    invoke-direct {p0}, Lcom/iflytek/cloud/util/a/a/a;->c()V

    goto/16 :goto_1

    :cond_5
    :goto_0
    if-eqz p4, :cond_6

    .line 33
    invoke-static {v3, v4}, Lcom/iflytek/msc/VAD;->EndAudioData(J)I

    move-result p1

    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "VAD EndAudioData ret: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 35
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/util/a/a/a;->a(I)V

    .line 36
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez p2, :cond_7

    .line 37
    iget-wide p2, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    iget-object p4, p0, Lcom/iflytek/cloud/util/a/a/a;->h:Lcom/iflytek/msc/VAD$VadData;

    invoke-static {p2, p3, p4}, Lcom/iflytek/msc/VAD;->GetLastSpeechPos(JLcom/iflytek/msc/VAD$VadData;)I

    move-result p2

    iput p2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    .line 38
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "VAD GetLastSpeechPos ret: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p2, p2, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    iget p1, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    if-nez p1, :cond_7

    .line 40
    invoke-direct {p0}, Lcom/iflytek/cloud/util/a/a/a;->c()V

    goto :goto_1

    .line 41
    :cond_6
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 p2, 0x4e2c

    iput p2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I
    :try_end_1
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_2
    const-string p2, "detect exception"

    .line 42
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 43
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 44
    invoke-direct {p0}, Lcom/iflytek/cloud/util/a/a/a;->b()V

    .line 45
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 p2, 0x5207

    iput p2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    goto :goto_1

    :catch_0
    move-exception p1

    const-string p2, "detect exception"

    .line 46
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 47
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 48
    invoke-direct {p0}, Lcom/iflytek/cloud/util/a/a/a;->b()V

    .line 49
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    const/16 p2, 0x4e35

    iput p2, p1, Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;->error:I

    .line 50
    :cond_7
    :goto_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string p1, "detect leave"

    .line 51
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 52
    iget-object p1, p0, Lcom/iflytek/cloud/util/a/a/a;->g:Lcom/iflytek/cloud/util/AudioDetector$DetectorResult;

    return-object p1

    :catchall_1
    move-exception p1

    .line 53
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public reset()V
    .locals 6

    const-string v0, "reset enter"

    .line 1
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/util/AudioDetector;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v3, 0x0

    cmp-long v5, v3, v1

    if-eqz v5, :cond_0

    .line 4
    :try_start_1
    invoke-static {v1, v2}, Lcom/iflytek/msc/VAD;->Reset(J)V

    const-string v1, "VAD Reset"

    .line 5
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 6
    iput-boolean v1, p0, Lcom/iflytek/cloud/util/a/a/a;->k:Z

    .line 7
    iput-wide v3, p0, Lcom/iflytek/cloud/util/a/a/a;->n:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_2
    const-string v2, "reset exception"

    .line 8
    invoke-static {v2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 10
    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "reset leave"

    .line 11
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception v1

    .line 12
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method public setParameter(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setParameter enter, key: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/iflytek/cloud/util/AudioDetector;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 3
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/iflytek/cloud/util/a/a/a;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 5
    iget-object v2, p0, Lcom/iflytek/cloud/util/a/a/a;->e:Lcom/iflytek/cloud/b/a;

    invoke-virtual {v2, p1, p2}, Lcom/iflytek/cloud/b/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p2, p0, Lcom/iflytek/cloud/util/a/a/a;->e:Lcom/iflytek/cloud/b/a;

    invoke-virtual {p2, p1}, Lcom/iflytek/cloud/b/a;->e(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    :goto_0
    iget-object p2, p0, Lcom/iflytek/cloud/util/a/a/a;->e:Lcom/iflytek/cloud/b/a;

    sget-object v2, Lcom/iflytek/cloud/util/a/a/a;->d:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p2, p1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result p2

    .line 8
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 9
    iget-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    invoke-static {v1, v2, p1, p2}, Lcom/iflytek/msc/VAD;->SetParam(JII)I

    move-result v1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAD SetParameter key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_1
    const-string v1, "speech_timeout"

    .line 11
    invoke-virtual {v1, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_3

    const-wide/16 v1, -0x1

    .line 12
    :try_start_1
    invoke-static {p2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-wide p1, v1

    .line 13
    :goto_1
    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SetParameter speech timeout value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    const-wide/16 v3, 0x0

    cmp-long v5, v3, p1

    if-gez v5, :cond_2

    .line 14
    iget-object v1, p0, Lcom/iflytek/cloud/util/a/a/a;->e:Lcom/iflytek/cloud/b/a;

    const-string v2, "sample_rate"

    const/16 v3, 0x3e80

    invoke-virtual {v1, v2, v3}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v1

    .line 15
    iget v2, p0, Lcom/iflytek/cloud/util/a/a/a;->l:I

    mul-int v1, v1, v2

    int-to-long v1, v1

    mul-long v1, v1, p1

    const-wide/16 p1, 0x3e8

    div-long/2addr v1, p1

    iput-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->m:J

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SetParameter BytesOfSpeechTimeout: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->m:J

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    goto :goto_2

    .line 17
    :cond_2
    iput-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->m:J

    goto :goto_2

    .line 18
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 19
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 20
    iget-wide v1, p0, Lcom/iflytek/cloud/util/a/a/a;->f:J

    invoke-static {v1, v2, p1, p2}, Lcom/iflytek/msc/VAD;->SetParam(JII)I

    move-result v1

    .line 21
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VAD SetParameter key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", value="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret: "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    const-string p2, "setParameter exception"

    .line 22
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 24
    :goto_2
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const-string p1, "setParameter leave."

    .line 25
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void

    :catchall_1
    move-exception p1

    .line 26
    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
