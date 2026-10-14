.class public Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;
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

    sput-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->c:Ljava/util/concurrent/ExecutorService;

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
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;
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

    const-string v0, "gps_"

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

    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    const-wide/16 v0, -0x1

    .line 11
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->b:J

    const-string v0, "\u5f00\u59cb\u91c7\u96c6"

    .line 12
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    return-void
.end method

.method private synthetic b(DDDF)V
    .locals 3

    const-string v0, ","

    .line 1
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a()V

    .line 3
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    if-eqz v1, :cond_1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p5, p6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method private synthetic d()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/io/BufferedWriter;->flush()V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    invoke-virtual {v0}, Ljava/io/BufferedWriter;->close()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->a:Ljava/io/BufferedWriter;

    const-string v0, "\u7ed3\u675f\u91c7\u96c6"

    .line 5
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    return-void
.end method

.method private h()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/ui/setting/o0;

    invoke-direct {v1, p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/o0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public synthetic c(DDDF)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->b(DDDF)V

    return-void
.end method

.method public synthetic e()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->d()V

    return-void
.end method

.method public f(DDD)V
    .locals 12

    move-object v9, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    iget-wide v2, v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->b:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-gtz v6, :cond_0

    .line 3
    iput-wide v0, v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->b:J

    .line 4
    :cond_0
    iget-wide v2, v9, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->b:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float v8, v0, v1

    .line 5
    sget-object v10, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v11, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lcn/mucang/jiakaoyi/uilib/ui/setting/p0;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;DDDF)V

    invoke-interface {v10, v11}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public g()V
    .locals 2

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->b:J

    .line 2
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/ui/setting/b1;->h()V

    return-void
.end method
