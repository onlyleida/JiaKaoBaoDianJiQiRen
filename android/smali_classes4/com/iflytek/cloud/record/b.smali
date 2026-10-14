.class public Lcom/iflytek/cloud/record/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/record/b$a;
    }
.end annotation


# instance fields
.field private final a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private g:I

.field private h:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/iflytek/cloud/record/b$a;",
            ">;"
        }
    .end annotation
.end field

.field private i:Landroid/content/Context;

.field private j:I

.field private volatile k:J

.field private l:Landroid/os/MemoryFile;

.field public volatile m:J

.field private volatile n:I

.field private o:Lcom/iflytek/cloud/record/b$a;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:[B

.field private s:I

.field private t:I

.field private u:I

.field private final v:F

.field private w:Z

.field private x:I


# direct methods
.method public constructor <init>(Landroid/content/Context;IILjava/lang/String;I)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/iflytek/cloud/record/b;->a:I

    const/4 v1, 0x1

    .line 3
    iput v1, p0, Lcom/iflytek/cloud/record/b;->b:I

    const/16 v2, 0x3e80

    .line 4
    iput v2, p0, Lcom/iflytek/cloud/record/b;->c:I

    const/16 v3, 0x3c

    .line 5
    iput v3, p0, Lcom/iflytek/cloud/record/b;->d:I

    const/16 v3, 0x1f4

    .line 6
    iput v3, p0, Lcom/iflytek/cloud/record/b;->e:I

    const v3, 0x1d4c00

    .line 7
    iput v3, p0, Lcom/iflytek/cloud/record/b;->f:I

    .line 8
    iput v3, p0, Lcom/iflytek/cloud/record/b;->g:I

    const/4 v4, 0x0

    .line 9
    iput-object v4, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    .line 10
    iput-object v4, p0, Lcom/iflytek/cloud/record/b;->i:Landroid/content/Context;

    .line 11
    iput v2, p0, Lcom/iflytek/cloud/record/b;->j:I

    const-wide/16 v5, 0x0

    .line 12
    iput-wide v5, p0, Lcom/iflytek/cloud/record/b;->k:J

    .line 13
    iput-object v4, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    .line 14
    iput-wide v5, p0, Lcom/iflytek/cloud/record/b;->m:J

    const/4 v2, 0x0

    .line 15
    iput v2, p0, Lcom/iflytek/cloud/record/b;->n:I

    .line 16
    iput-object v4, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    const-string v7, ""

    .line 17
    iput-object v7, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    .line 18
    iput-object v4, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    .line 19
    iput-object v4, p0, Lcom/iflytek/cloud/record/b;->r:[B

    .line 20
    iput v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    .line 21
    iput v2, p0, Lcom/iflytek/cloud/record/b;->t:I

    const/16 v4, 0x64

    .line 22
    iput v4, p0, Lcom/iflytek/cloud/record/b;->u:I

    const v4, 0x3f733333    # 0.95f

    .line 23
    iput v4, p0, Lcom/iflytek/cloud/record/b;->v:F

    .line 24
    iput-boolean v1, p0, Lcom/iflytek/cloud/record/b;->w:Z

    .line 25
    iput v2, p0, Lcom/iflytek/cloud/record/b;->x:I

    .line 26
    iput-object p1, p0, Lcom/iflytek/cloud/record/b;->i:Landroid/content/Context;

    .line 27
    iput-wide v5, p0, Lcom/iflytek/cloud/record/b;->k:J

    .line 28
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    .line 29
    iput-wide v5, p0, Lcom/iflytek/cloud/record/b;->m:J

    .line 30
    iput p2, p0, Lcom/iflytek/cloud/record/b;->j:I

    .line 31
    iput-object p4, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    .line 32
    iput p5, p0, Lcom/iflytek/cloud/record/b;->u:I

    mul-int/lit8 p2, p2, 0x2

    mul-int/lit8 p2, p2, 0x1

    mul-int p2, p2, p3

    add-int/2addr p2, v3

    .line 33
    iput p2, p0, Lcom/iflytek/cloud/record/b;->g:I

    .line 34
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "min audio seconds: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", max audio buf size: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method private a([B)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 15
    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 17
    invoke-direct {p0}, Lcom/iflytek/cloud/record/b;->c()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    .line 18
    new-instance v0, Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/iflytek/cloud/record/b;->p:Ljava/lang/String;

    iget v3, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-direct {v0, v2, v3}, Landroid/os/MemoryFile;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    .line 19
    invoke-virtual {v0, v1}, Landroid/os/MemoryFile;->allowPurging(Z)Z

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    long-to-int v3, v2

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v3, v2}, Landroid/os/MemoryFile;->writeBytes([BIII)V

    .line 21
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    array-length p1, p1

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    :cond_2
    :goto_0
    return-void
.end method

.method private b(I)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->r:[B

    if-nez v0, :cond_0

    mul-int/lit8 p1, p1, 0xa

    .line 12
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/iflytek/cloud/record/b;->r:[B

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/iflytek/cloud/record/b;->r:[B

    array-length p1, p1

    .line 14
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget v2, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    long-to-int v1, v0

    if-ge v1, p1, :cond_1

    move p1, v1

    .line 15
    :cond_1
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iget-object v2, p0, Lcom/iflytek/cloud/record/b;->r:[B

    iget v3, p0, Lcom/iflytek/cloud/record/b;->n:I

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4, p1}, Landroid/os/MemoryFile;->readBytes([BIII)I

    .line 16
    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    .line 17
    iput v4, p0, Lcom/iflytek/cloud/record/b;->s:I

    .line 18
    iput p1, p0, Lcom/iflytek/cloud/record/b;->t:I

    .line 19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readAudio leave, dataSize="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bufLen="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    return-void
.end method

.method private c()Ljava/lang/String;
    .locals 4

    .line 4
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/FileUtil;->getUserPath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "tts.pcm"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    const/4 v1, 0x0

    .line 23
    iput-object v1, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    .line 24
    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 25
    iget-object v1, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/iflytek/cloud/record/b$a;

    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    :cond_0
    return-void
.end method

.method public a(Landroid/media/AudioTrack;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 28
    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    if-lt v0, v1, :cond_0

    .line 29
    invoke-direct {p0, p2}, Lcom/iflytek/cloud/record/b;->b(I)V

    :cond_0
    mul-int/lit8 v0, p2, 0x2

    .line 30
    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, p2

    .line 31
    :goto_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->r:[B

    invoke-virtual {p1, v0, v2, v1}, Landroid/media/AudioTrack;->write([BII)I

    .line 32
    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    .line 33
    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/iflytek/cloud/record/b;->b(Landroid/media/AudioTrack;I)V

    :cond_2
    return-void
.end method

.method public a(Ljava/util/ArrayList;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "[B>;III)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffer percent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", beg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", end="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/iflytek/cloud/record/b$a;

    iget-wide v3, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget-wide v5, p0, Lcom/iflytek/cloud/record/b;->m:J

    move-object v1, v0

    move-object v2, p0

    move v7, p3

    move v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/iflytek/cloud/record/b$a;-><init>(Lcom/iflytek/cloud/record/b;JJII)V

    const/4 p3, 0x0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-ge p3, p4, :cond_0

    .line 4
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [B

    invoke-direct {p0, p4}, Lcom/iflytek/cloud/record/b;->a([B)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 5
    :cond_0
    iget-wide p3, p0, Lcom/iflytek/cloud/record/b;->m:J

    iput-wide p3, v0, Lcom/iflytek/cloud/record/b$a;->b:J

    int-to-long p1, p2

    .line 6
    iput-wide p1, p0, Lcom/iflytek/cloud/record/b;->k:J

    .line 7
    iget-object p1, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    monitor-enter p1

    .line 8
    :try_start_0
    iget-object p2, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "allSize = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p2, p0, Lcom/iflytek/cloud/record/b;->m:J

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, " maxSize="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p2

    .line 11
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public a(Z)V
    .locals 0

    .line 27
    iput-boolean p1, p0, Lcom/iflytek/cloud/record/b;->w:Z

    return-void
.end method

.method public a(I)Z
    .locals 6

    int-to-long v0, p1

    .line 26
    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget p1, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    iget p1, p0, Lcom/iflytek/cloud/record/b;->t:I

    int-to-long v4, p1

    add-long/2addr v2, v4

    iget p1, p0, Lcom/iflytek/cloud/record/b;->s:I

    int-to-long v4, p1

    sub-long/2addr v2, v4

    cmp-long p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public a(Ljava/lang/String;)Z
    .locals 4

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "save to local: format = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " totalSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/iflytek/cloud/record/b;->m:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " maxSize="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/iflytek/cloud/record/b;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    iget-wide v1, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget-object v3, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lcom/iflytek/cloud/msc/util/FileUtil;->saveFile(Landroid/os/MemoryFile;JLjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 14
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->q:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->h()I

    move-result v1

    invoke-static {p1, v0, v1}, Lcom/iflytek/cloud/msc/util/FileUtil;->formatPcm(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()V
    .locals 1

    const-string v0, "deleteFile"

    .line 6
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0}, Landroid/os/MemoryFile;->close()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 10
    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public b(Landroid/media/AudioTrack;I)V
    .locals 4

    .line 1
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    iget p2, p0, Lcom/iflytek/cloud/record/b;->x:I

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-gez p2, :cond_0

    .line 2
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    sub-long/2addr v2, v0

    long-to-int p2, v2

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBuffer.writeTrack writeTrackBlankBlock size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogI(Ljava/lang/String;)V

    .line 4
    new-array v0, p2, [B

    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, v1, p2}, Landroid/media/AudioTrack;->write([BII)I

    :cond_0
    return-void
.end method

.method public c(I)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->k:J

    long-to-float v0, v0

    iget v1, p0, Lcom/iflytek/cloud/record/b;->u:I

    int-to-float v1, v1

    const v2, 0x3f733333    # 0.95f

    mul-float v1, v1, v2

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    return v2

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    const-wide/16 v3, 0x20

    div-long/2addr v0, v3

    int-to-long v3, p1

    cmp-long p1, v0, v3

    if-ltz p1, :cond_1

    .line 3
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    const-wide/16 v3, 0x0

    cmp-long p1, v3, v0

    if-gez p1, :cond_1

    return v2

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public d(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/iflytek/cloud/record/b;->x:I

    return-void
.end method

.method public d()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/iflytek/cloud/record/b;->w:Z

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->l:Landroid/os/MemoryFile;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/os/MemoryFile;->length()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public f()Lcom/iflytek/cloud/record/b$a;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    if-eqz v0, :cond_3

    .line 2
    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    .line 3
    iget-object v2, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    iget-wide v3, v2, Lcom/iflytek/cloud/record/b$a;->a:J

    cmp-long v5, v0, v3

    if-ltz v5, :cond_0

    iget-wide v3, v2, Lcom/iflytek/cloud/record/b$a;->b:J

    cmp-long v5, v0, v3

    if-gtz v5, :cond_0

    return-object v2

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    monitor-enter v2

    .line 5
    :try_start_0
    iget-object v3, p0, Lcom/iflytek/cloud/record/b;->h:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 6
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/iflytek/cloud/record/b$a;

    iput-object v4, p0, Lcom/iflytek/cloud/record/b;->o:Lcom/iflytek/cloud/record/b$a;

    .line 8
    iget-wide v5, v4, Lcom/iflytek/cloud/record/b$a;->a:J

    cmp-long v7, v0, v5

    if-ltz v7, :cond_1

    iget-wide v5, v4, Lcom/iflytek/cloud/record/b$a;->b:J

    cmp-long v7, v0, v5

    if-gtz v7, :cond_1

    .line 9
    monitor-exit v2

    return-object v4

    .line 10
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_3
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected finalize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/iflytek/cloud/record/b;->b()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public g()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    const/4 v0, 0x0

    return v0

    .line 2
    :cond_0
    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    iget v2, p0, Lcom/iflytek/cloud/record/b;->s:I

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    mul-long v0, v0, v2

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    div-long/2addr v0, v2

    long-to-int v1, v0

    return v1
.end method

.method public h()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/record/b;->j:I

    return v0
.end method

.method public i()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/iflytek/cloud/record/b;->m:J

    return-wide v0
.end method

.method public j()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/record/b;->u:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/record/b;->u:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->k:J

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public l()Z
    .locals 5

    .line 1
    iget v0, p0, Lcom/iflytek/cloud/record/b;->n:I

    int-to-long v0, v0

    iget-wide v2, p0, Lcom/iflytek/cloud/record/b;->m:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    iget v0, p0, Lcom/iflytek/cloud/record/b;->s:I

    iget v1, p0, Lcom/iflytek/cloud/record/b;->t:I

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
