.class public Lcom/sixents/sdk/utils/LogUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;,
        Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableRTCM;,
        Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;,
        Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableLog;,
        Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;
    }
.end annotation


# static fields
.field public static final DEBUG:I = 0x2

.field public static final ERROR:I = 0x5

.field private static final GLOBAL:Ljava/lang/String; = "GLOBAL"

.field public static final INFO:I = 0x3

.field public static final TAGPENG:Ljava/lang/String; = "TAGPENG"

.field public static final TIME_FORMAT:Ljava/text/SimpleDateFormat;

.field public static final TIME_FORMAT_LOG:Ljava/text/SimpleDateFormat;

.field public static final VERBOSE:I = 0x1

.field public static final WARN:I = 0x4

.field private static executorService:Ljava/util/concurrent/ExecutorService; = null

.field public static isDebug:Z = true

.field private static mSdf:Ljava/text/SimpleDateFormat;

.field private static workQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyyMMdd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sixents/sdk/utils/LogUtils;->mSdf:Ljava/text/SimpleDateFormat;

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    sput-object v0, Lcom/sixents/sdk/utils/LogUtils;->workQueue:Ljava/util/concurrent/BlockingQueue;

    .line 3
    new-instance v0, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/sixents/sdk/utils/LogUtils;->workQueue:Ljava/util/concurrent/BlockingQueue;

    new-instance v8, Lcom/sixents/sdk/utils/LogUtils$1;

    invoke-direct {v8}, Lcom/sixents/sdk/utils/LogUtils$1;-><init>()V

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v1, v0

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v0, Lcom/sixents/sdk/utils/LogUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    .line 4
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sixents/sdk/utils/LogUtils;->TIME_FORMAT:Ljava/text/SimpleDateFormat;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MM_dd_HH_mm_ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/sixents/sdk/utils/LogUtils;->TIME_FORMAT_LOG:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/BlockingQueue;
    .locals 1

    .line 1
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils;->workQueue:Ljava/util/concurrent/BlockingQueue;

    return-object v0
.end method

.method static synthetic access$100(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/sixents/sdk/utils/LogUtils;->printError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, v1}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static ds(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 1

    const-string v0, "TAGPENG"

    .line 1
    invoke-static {v0, p0}, Lcom/sixents/sdk/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x5

    const/4 v1, 0x0

    .line 3
    invoke-static {v0, p0, p1, p2, v1}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static filePrintError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableError;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/sixents/sdk/utils/LogUtils$1;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static filePrintLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableLog;

    const/4 v6, 0x0

    move-object v1, v7

    move v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/sixents/sdk/utils/LogUtils$FilePrintRunnableLog;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/sixents/sdk/utils/LogUtils$1;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static fileSaveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableData;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lcom/sixents/sdk/utils/LogUtils$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method public static fileSaveRtcm([B)V
    .locals 3

    .line 1
    sget-object v0, Lcom/sixents/sdk/utils/LogUtils;->executorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableRTCM;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sixents/sdk/utils/LogUtils$FileSaveRunnableRTCM;-><init>([BLcom/sixents/sdk/utils/LogUtils$1;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static getCodeLocation(Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;Ljava/lang/Thread;Ljava/lang/StackTraceElement;)Ljava/lang/StringBuilder;
    .locals 4

    .line 1
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v0

    .line 3
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object p2

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    invoke-virtual {p0}, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->isAt()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\tat "

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->isSimpleClassName()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 9
    invoke-static {p1}, Lcom/sixents/sdk/utils/LogUtils;->getSimpleName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string p0, "."

    .line 11
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "("

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ":"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object v2
.end method

.method private static getSimpleName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, "\\."

    .line 1
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 2
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object p0, p0, v0

    return-object p0
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, v1}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static ii(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLoger(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static ii(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x3

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, v1}, Lcom/sixents/sdk/utils/LogUtils;->printLoger(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static is(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x3

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static isLoggable(Ljava/lang/String;I)Z
    .locals 0

    .line 1
    sget-boolean p0, Lcom/sixents/sdk/utils/LogUtils;->isDebug:Z

    return p0
.end method

.method public static levelName(I)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_4

    const/4 v0, 0x2

    if-eq p0, v0, :cond_3

    const/4 v0, 0x3

    if-eq p0, v0, :cond_2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const-string p0, "DEFAULT"

    return-object p0

    :cond_0
    const-string p0, "ERROR"

    return-object p0

    :cond_1
    const-string p0, "WARN"

    return-object p0

    :cond_2
    const-string p0, "INFO"

    return-object p0

    :cond_3
    const-string p0, "DEBUG"

    return-object p0

    :cond_4
    const-string p0, "VERBOSE"

    return-object p0
.end method

.method private static print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_8

    const/4 v0, 0x2

    if-eq p0, v0, :cond_6

    const/4 v0, 0x3

    if-eq p0, v0, :cond_4

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_1

    .line 1
    invoke-static {p1, p2, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 2
    :cond_1
    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    .line 3
    invoke-static {p1, p2, p3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 4
    :cond_3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_5

    .line 5
    invoke-static {p1, p2, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 6
    :cond_5
    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_6
    if-eqz p3, :cond_7

    .line 7
    invoke-static {p1, p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 8
    :cond_7
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_8
    if-eqz p3, :cond_9

    .line 9
    invoke-static {p1, p2, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 10
    :cond_9
    invoke-static {p1, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static printError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 7

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "|"

    .line 5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->FIRST:Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    const/4 v5, 0x4

    aget-object v5, v1, v5

    const/4 v6, 0x0

    .line 6
    invoke-static {v4, v6, v5}, Lcom/sixents/sdk/utils/LogUtils;->getCodeLocation(Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;Ljava/lang/Thread;Ljava/lang/StackTraceElement;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 10
    invoke-static {p0, p1, p2, p3}, Lcom/sixents/sdk/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/sixents/sdk/utils/LogUtils;->filePrintError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p2, 0x5

    :goto_0
    if-eqz p4, :cond_0

    .line 12
    array-length p3, v1

    if-ge p2, p3, :cond_0

    .line 13
    sget-object p3, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->SUBSEQUENT:Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    aget-object v2, v1, p2

    invoke-static {p3, v0, v2}, Lcom/sixents/sdk/utils/LogUtils;->getCodeLocation(Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;Ljava/lang/Thread;Ljava/lang/StackTraceElement;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 14
    invoke-static {p0, p1, p3, v6}, Lcom/sixents/sdk/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 15
    invoke-static {p0, p1, p3, v6}, Lcom/sixents/sdk/utils/LogUtils;->filePrintError(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 5

    .line 1
    invoke-static {p1, p0}, Lcom/sixents/sdk/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p4

    .line 3
    invoke-virtual {p4}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    const/4 v1, 0x4

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    invoke-virtual {p4}, Ljava/lang/Thread;->getId()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p4, "|"

    .line 6
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;->FIRST:Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;

    const/4 v4, 0x0

    aget-object v0, v0, v1

    .line 7
    invoke-static {v3, v4, v0}, Lcom/sixents/sdk/utils/LogUtils;->getCodeLocation(Lcom/sixents/sdk/utils/LogUtils$CodeLocationStyle;Ljava/lang/Thread;Ljava/lang/StackTraceElement;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 11
    invoke-static {p0, p1, p2, p3}, Lcom/sixents/sdk/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 12
    invoke-static {p0, p1, p2, p3}, Lcom/sixents/sdk/utils/LogUtils;->filePrintLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static printLoger(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V
    .locals 0

    .line 1
    invoke-static {p1, p0}, Lcom/sixents/sdk/utils/LogUtils;->isLoggable(Ljava/lang/String;I)Z

    move-result p4

    if-nez p4, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 5
    invoke-static {p0, p1, p2, p3}, Lcom/sixents/sdk/utils/LogUtils;->print(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    invoke-static {p0, p1, p2, p3}, Lcom/sixents/sdk/utils/LogUtils;->filePrintLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static registerUncaughtExceptionHandler()V
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/sixents/sdk/utils/LogUtils$2;

    invoke-direct {v1, v0}, Lcom/sixents/sdk/utils/LogUtils$2;-><init>(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    invoke-static {v1}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method public static savaData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, p1, v0}, Lcom/sixents/sdk/utils/LogUtils;->fileSaveData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static savaRtcm([B)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/sixents/sdk/utils/LogUtils;->fileSaveRtcm([B)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, v1}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static vs(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1, v0}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    .line 2
    invoke-static {v0, p0, p1, p2, v1}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method

.method public static writeLog(Landroid/content/Context;)V
    .locals 3

    .line 1
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "/Rtcm/"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 3
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "log_"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/sixents/sdk/utils/LogUtils;->mSdf:Ljava/text/SimpleDateFormat;

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ".txt"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 8
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "logcat -v long -f "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static ws(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1
    invoke-static {v0, p0, p1, v1, v2}, Lcom/sixents/sdk/utils/LogUtils;->printLog(ILjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Z)V

    return-void
.end method
