.class public Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/log/write/end/StopWriter;


# static fields
.field private static final uploadExe:Ljava/util/concurrent/ExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;->uploadExe:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private synthetic a(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;Ljava/util/concurrent/CountDownLatch;)V
    .locals 2

    .line 1
    :try_start_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;->doStop(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :goto_0
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :catchall_0
    move-exception p1

    :try_start_1
    const-string p2, "StopWriter"

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "stop error : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :goto_1
    return-void

    :catchall_1
    move-exception p1

    .line 4
    invoke-virtual {p3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    throw p1
.end method

.method private doStop(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;)V
    .locals 6

    .line 1
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Lcn/mucang/sundial/android/log/db/LogEntity;->getFile()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_0

    .line 3
    invoke-static {p1}, Lcn/mucang/sundial/android/log/db/LogDb;->delete(Lcn/mucang/sundial/android/log/db/LogEntity;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u65e5\u5fd7\u6587\u4ef6\u4e0d\u5b58\u5728 ,info="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-boolean v0, p2, Lcn/mucang/sundial/android/log/LogType;->realTimeUpload:Z

    if-eqz v0, :cond_1

    .line 7
    :try_start_0
    invoke-static {p2, p1}, Lcn/mucang/sundial/android/log/upload/UploadLogApi;->upload(Lcn/mucang/sundial/android/log/LogType;Lcn/mucang/sundial/android/log/db/LogEntity;)Z

    .line 8
    invoke-static {}, Lcn/mucang/sundial/android/log/SundialLog;->uploadAll()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4e0a\u4f20\u5931\u8d25 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "StopWriter"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u65e5\u5fd7\u4e0a\u4f20\u5931\u8d25:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ,info="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    :cond_1
    :goto_0
    invoke-static {p2}, Lcn/mucang/sundial/android/log/LUtils;->checkInValid(Lcn/mucang/sundial/android/log/LogType;)V

    return-void
.end method


# virtual methods
.method public synthetic b(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;->a(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method public onStop(Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 2
    sget-object v1, Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;->uploadExe:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/sundial/android/log/write/end/a;

    invoke-direct {v2, p0, p1, p2, v0}, Lcn/mucang/sundial/android/log/write/end/a;-><init>(Lcn/mucang/sundial/android/log/write/end/DefaultStopWriter;Lcn/mucang/sundial/android/log/db/LogEntity;Lcn/mucang/sundial/android/log/LogType;Ljava/util/concurrent/CountDownLatch;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "stop error : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StopWriter"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
