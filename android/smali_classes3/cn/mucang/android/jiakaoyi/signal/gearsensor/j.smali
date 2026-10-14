.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field private a:Ljava/io/BufferedWriter;

.field private b:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :catchall_0
    :cond_0
    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "/SensorData/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\u9640\u87ba\u4eea\u6570\u636e_"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Lcn/mucang/android/core/utils/p0;->b(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".txt"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-direct {v2, v3, v0}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/nio/charset/Charset;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->b:J

    const-string v0, "\u5f00\u59cb\u91c7\u96c6"

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method public static synthetic b(Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a()V

    return-void
.end method

.method private synthetic c(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private synthetic e()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->a:Ljava/io/BufferedWriter;

    :cond_0
    const-string v0, "\u7ed3\u675f\u91c7\u96c6"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method private j()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static k(D)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    const/4 p1, 0x0

    aput-object p0, v0, p1

    const-string p0, "%.1f"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public synthetic d(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->c(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->e()V

    return-void
.end method

.method public g(DDDDDD)V
    .locals 8

    move-object v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->b:J

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-gtz v7, :cond_0

    .line 3
    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->b:J

    .line 4
    :cond_0
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->b:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->k(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3, p4}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->k(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p5, p6}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->k(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-static/range {p7 .. p8}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->k(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p9 .. p10}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->k(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p11 .. p12}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->k(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/gearsensor/b;

    invoke-direct {v3, p0, v1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public h()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/a;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public i()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->b:J

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/j;->j()V

    return-void
.end method
