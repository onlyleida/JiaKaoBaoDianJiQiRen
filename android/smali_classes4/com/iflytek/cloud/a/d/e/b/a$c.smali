.class Lcom/iflytek/cloud/a/d/e/b/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/iflytek/cloud/a/d/e/b/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/iflytek/cloud/a/d/e/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field private a:I

.field private final b:I

.field private final c:I

.field private final d:I

.field private final e:Lcom/iflytek/cloud/a/d/e/b/c;

.field private final f:Lcom/iflytek/cloud/a/d/e/b/c;

.field private volatile g:Lcom/iflytek/cloud/a/d/e/b/c;

.field private volatile h:Lcom/iflytek/cloud/a/d/e/b/c;

.field private final i:Ljava/lang/String;

.field private j:Ljava/lang/Thread;

.field private k:Z

.field private l:Z

.field final synthetic m:Lcom/iflytek/cloud/a/d/e/b/a;


# direct methods
.method private constructor <init>(Lcom/iflytek/cloud/a/d/e/b/a;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iput-object v1, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->m:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    .line 2
    iput v1, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->a:I

    const v2, 0xc000

    .line 3
    iput v2, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->b:I

    const v2, 0x7d000

    .line 4
    iput v2, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->c:I

    const v2, 0x3a98000

    .line 5
    iput v2, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->d:I

    .line 6
    new-instance v2, Lcom/iflytek/cloud/a/d/e/b/c;

    const-wide/32 v4, 0x7d000

    const v6, 0xc000

    const-wide/16 v7, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    move-object v3, v2

    invoke-direct/range {v3 .. v10}, Lcom/iflytek/cloud/a/d/e/b/c;-><init>(JIJZZ)V

    iput-object v2, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->e:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 7
    new-instance v3, Lcom/iflytek/cloud/a/d/e/b/c;

    const-wide/32 v12, 0x7d000

    const v14, 0xc000

    const-wide/16 v15, 0x0

    const/16 v17, 0x1

    const/16 v18, 0x0

    move-object v11, v3

    invoke-direct/range {v11 .. v18}, Lcom/iflytek/cloud/a/d/e/b/c;-><init>(JIJZZ)V

    iput-object v3, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->f:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 8
    iput-object v2, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 9
    iput-object v3, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->h:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "/aimic_alsa.pcm"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->i:Ljava/lang/String;

    const/4 v2, 0x0

    .line 11
    iput-object v2, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->j:Ljava/lang/Thread;

    .line 12
    iput-boolean v1, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->k:Z

    .line 13
    iput-boolean v1, v0, Lcom/iflytek/cloud/a/d/e/b/a$c;->l:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/iflytek/cloud/a/d/e/b/a;Lcom/iflytek/cloud/a/d/e/b/a$a;)V
    .locals 0

    .line 14
    invoke-direct {p0, p1}, Lcom/iflytek/cloud/a/d/e/b/a$c;-><init>(Lcom/iflytek/cloud/a/d/e/b/a;)V

    return-void
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/d/e/b/a$c;Ljava/lang/Thread;)Ljava/lang/Thread;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->j:Ljava/lang/Thread;

    return-object p1
.end method

.method private a(IZ)V
    .locals 4

    .line 16
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    monitor-enter v0

    if-nez p2, :cond_1

    .line 17
    :try_start_0
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/d/e/b/c;->e()J

    move-result-wide v1

    int-to-long p1, p1

    add-long/2addr v1, p1

    const-wide/32 p1, 0x7d000

    cmp-long v3, v1, p1

    if-ltz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_2

    .line 18
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 19
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->f:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->e:Lcom/iflytek/cloud/a/d/e/b/c;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->f:Lcom/iflytek/cloud/a/d/e/b/c;

    :goto_1
    iput-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 20
    :goto_2
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    if-eqz p1, :cond_6

    .line 21
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->h:Lcom/iflytek/cloud/a/d/e/b/c;

    monitor-enter p2

    .line 22
    :try_start_1
    iput-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->h:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 23
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 24
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->j:Ljava/lang/Thread;

    if-eqz p1, :cond_4

    .line 25
    monitor-enter p1

    .line 26
    :try_start_2
    sget-object p2, Ljava/lang/Thread$State;->WAITING:Ljava/lang/Thread$State;

    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->j:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->getState()Ljava/lang/Thread$State;

    move-result-object v0

    if-ne p2, v0, :cond_3

    .line 27
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->j:Ljava/lang/Thread;

    invoke-virtual {p2}, Ljava/lang/Object;->notify()V

    .line 28
    :cond_3
    monitor-exit p1

    goto :goto_3

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p2

    .line 29
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    monitor-enter p1

    const-wide/16 v0, 0x0

    .line 30
    :try_start_3
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {p2}, Lcom/iflytek/cloud/a/d/e/b/c;->e()J

    move-result-wide v2

    cmp-long p2, v0, v2

    if-eqz p2, :cond_5

    const-string p2, "Error: buffer is not null when exchanged!"

    .line 31
    invoke-static {p2}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    .line 32
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->m:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-static {p2}, Lcom/iflytek/cloud/a/d/e/b/a;->c(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/a$b;

    move-result-object p2

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V

    .line 33
    :cond_5
    monitor-exit p1

    goto :goto_4

    :catchall_1
    move-exception p2

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p2

    :catchall_2
    move-exception p1

    .line 34
    :try_start_4
    monitor-exit p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p1

    :cond_6
    :goto_4
    return-void

    :catchall_3
    move-exception p1

    .line 35
    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw p1
.end method

.method private a()Z
    .locals 1

    .line 9
    iget-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->k:Z

    return v0
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/d/e/b/a$c;)Z
    .locals 0

    .line 2
    iget-boolean p0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->l:Z

    return p0
.end method

.method static synthetic a(Lcom/iflytek/cloud/a/d/e/b/a$c;Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z

    move-result p0

    return p0
.end method

.method private a(Ljava/io/RandomAccessFile;Landroid/os/MemoryFile;II)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    if-ltz p3, :cond_2

    if-ltz p4, :cond_2

    add-int/2addr p4, p3

    const/high16 v1, 0x10000

    :try_start_0
    new-array v2, v1, [B

    :goto_0
    if-le p4, p3, :cond_1

    sub-int v3, p4, p3

    .line 10
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 11
    invoke-virtual {p2, v2, p3, v0, v3}, Landroid/os/MemoryFile;->readBytes([BIII)I

    move-result v4

    if-eq v4, v3, :cond_0

    const-string p1, "saveFileFromMemory error: read bytes length error!"

    .line 12
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    add-int/2addr p3, v3

    .line 13
    invoke-virtual {p1, v2, v0, v3}, Ljava/io/RandomAccessFile;->write([BII)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const-string p1, "saveFileFromMemory error: arguments error"

    .line 14
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 15
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    :goto_1
    return v0
.end method

.method static synthetic b(Lcom/iflytek/cloud/a/d/e/b/a$c;)Lcom/iflytek/cloud/a/d/e/b/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->h:Lcom/iflytek/cloud/a/d/e/b/c;

    return-object p0
.end method

.method private b([BI)V
    .locals 3

    .line 5
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->j:Ljava/lang/Thread;

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->i:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->e:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    .line 10
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->f:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/d/e/b/c;->a()V

    .line 11
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->e:Lcom/iflytek/cloud/a/d/e/b/c;

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    .line 12
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->f:Lcom/iflytek/cloud/a/d/e/b/c;

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->h:Lcom/iflytek/cloud/a/d/e/b/c;

    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->l:Z

    .line 14
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a$c;->c()V

    :cond_1
    const/4 v0, 0x0

    .line 15
    :try_start_0
    invoke-direct {p0, p2, v0}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(IZ)V

    .line 16
    iget-object v1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 17
    :try_start_1
    iget-object v2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->g:Lcom/iflytek/cloud/a/d/e/b/c;

    invoke-virtual {v2, p1, v0, p2}, Lcom/iflytek/cloud/a/d/e/b/c;->a([BII)V

    .line 18
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    .line 19
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    .line 20
    iget-object p2, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->m:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-static {p2}, Lcom/iflytek/cloud/a/d/e/b/a;->c(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/a$b;

    move-result-object p2

    new-instance v0, Lcom/iflytek/cloud/SpeechError;

    const/16 v1, 0x5207

    invoke-direct {v0, p1, v1}, Lcom/iflytek/cloud/SpeechError;-><init>(Ljava/lang/Throwable;I)V

    invoke-virtual {p2, v0}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V

    :goto_0
    return-void
.end method

.method static synthetic c(Lcom/iflytek/cloud/a/d/e/b/a$c;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->i:Ljava/lang/String;

    return-object p0
.end method

.method private c()V
    .locals 2

    .line 2
    new-instance v0, Lcom/iflytek/cloud/a/d/e/b/a$c$a;

    const-string v1, "AlsaAudioSavingThread"

    invoke-direct {v0, p0, v1}, Lcom/iflytek/cloud/a/d/e/b/a$c$a;-><init>(Lcom/iflytek/cloud/a/d/e/b/a$c;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->j:Ljava/lang/Thread;

    .line 3
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 8
    iput-boolean p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->k:Z

    return-void
.end method

.method public a([BI)V
    .locals 2

    .line 4
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/iflytek/cloud/a/d/e/b/a$c;->b([BI)V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->m:Lcom/iflytek/cloud/a/d/e/b/a;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2}, Lcom/iflytek/cloud/a/d/e/b/a;->a([BII)I

    move-result p1

    iput p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->a:I

    if-eqz p1, :cond_1

    .line 7
    iget-object p1, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->m:Lcom/iflytek/cloud/a/d/e/b/a;

    invoke-static {p1}, Lcom/iflytek/cloud/a/d/e/b/a;->c(Lcom/iflytek/cloud/a/d/e/b/a;)Lcom/iflytek/cloud/a/d/e/b/a$b;

    move-result-object p1

    new-instance p2, Lcom/iflytek/cloud/SpeechError;

    iget v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->a:I

    invoke-direct {p2, v0}, Lcom/iflytek/cloud/SpeechError;-><init>(I)V

    invoke-virtual {p1, p2}, Lcom/iflytek/cloud/a/d/e/b/a$b;->a(Lcom/iflytek/cloud/SpeechError;)V

    :cond_1
    return-void
.end method

.method public b()V
    .locals 2

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/iflytek/cloud/a/d/e/b/a$c;->l:Z

    .line 3
    invoke-direct {p0}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/iflytek/cloud/a/d/e/b/a$c;->a(IZ)V

    :cond_0
    return-void
.end method
