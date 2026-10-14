.class public Lcn/mucang/sundial/android/log/write/LogExe;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/log/write/LogWriter;


# static fields
.field private static final writerExe:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final type:Lcn/mucang/sundial/android/log/LogType;

.field public final writer:Lcn/mucang/sundial/android/log/write/LogWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/sundial/android/log/write/LogExe;->writerExe:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/sundial/android/log/write/LogWriter;Lcn/mucang/sundial/android/log/LogType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/sundial/android/log/write/LogExe;->writer:Lcn/mucang/sundial/android/log/write/LogWriter;

    .line 3
    iput-object p2, p0, Lcn/mucang/sundial/android/log/write/LogExe;->type:Lcn/mucang/sundial/android/log/LogType;

    return-void
.end method

.method private synthetic a(Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogExe;->writer:Lcn/mucang/sundial/android/log/write/LogWriter;

    invoke-interface {v0}, Lcn/mucang/sundial/android/log/write/LogWriter;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "LogWrap"

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "log error = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception v0

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw v0
.end method

.method private synthetic c([BLjava/lang/String;J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogExe;->writer:Lcn/mucang/sundial/android/log/write/LogWriter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcn/mucang/sundial/android/log/write/LogWriter;->write([BLjava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "log error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LogWrap"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic e(Ljava/lang/Object;J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogExe;->writer:Lcn/mucang/sundial/android/log/write/LogWriter;

    invoke-interface {v0, p1, p2, p3}, Lcn/mucang/sundial/android/log/write/LogWriter;->write(Ljava/lang/Object;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "log error = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "LogWrap"

    invoke-static {p2, p1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/sundial/android/log/write/LogExe;->a(Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public synthetic d([BLjava/lang/String;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/sundial/android/log/write/LogExe;->c([BLjava/lang/String;J)V

    return-void
.end method

.method public entityId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/android/log/write/LogExe;->writer:Lcn/mucang/sundial/android/log/write/LogWriter;

    invoke-interface {v0}, Lcn/mucang/sundial/android/log/write/LogWriter;->entityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic f(Ljava/lang/Object;J)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/sundial/android/log/write/LogExe;->e(Ljava/lang/Object;J)V

    return-void
.end method

.method public stop()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    sget-object v1, Lcn/mucang/sundial/android/log/write/LogExe;->writerExe:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/sundial/android/log/write/c;

    invoke-direct {v2, p0, v0}, Lcn/mucang/sundial/android/log/write/c;-><init>(Lcn/mucang/sundial/android/log/write/LogExe;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v1

    if-nez v1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogWrap"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public write(Ljava/lang/Object;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 2
    sget-object v0, Lcn/mucang/sundial/android/log/write/LogExe;->writerExe:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/sundial/android/log/write/b;

    invoke-direct {v1, p0, p1, p2, p3}, Lcn/mucang/sundial/android/log/write/b;-><init>(Lcn/mucang/sundial/android/log/write/LogExe;Ljava/lang/Object;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write([BLjava/lang/String;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/sundial/android/log/write/LogExe;->writerExe:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcn/mucang/sundial/android/log/write/a;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcn/mucang/sundial/android/log/write/a;-><init>(Lcn/mucang/sundial/android/log/write/LogExe;[BLjava/lang/String;J)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
