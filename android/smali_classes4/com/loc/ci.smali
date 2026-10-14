.class public final Lcom/loc/ci;
.super Lcom/loc/ck;
.source "SourceFile"


# static fields
.field private static c:Lcom/loc/ci;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/loc/ci;

    new-instance v1, Lcom/loc/ch$a;

    invoke-direct {v1}, Lcom/loc/ch$a;-><init>()V

    const-string v2, "amap-global-threadPool"

    invoke-virtual {v1, v2}, Lcom/loc/ch$a;->a(Ljava/lang/String;)Lcom/loc/ch$a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/loc/ch$a;->a()Lcom/loc/ch;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/loc/ci;-><init>(Lcom/loc/ch;)V

    sput-object v0, Lcom/loc/ci;->c:Lcom/loc/ci;

    return-void
.end method

.method private constructor <init>(Lcom/loc/ch;)V
    .locals 9

    invoke-direct {p0}, Lcom/loc/ck;-><init>()V

    :try_start_0
    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1}, Lcom/loc/ch;->a()I

    move-result v1

    invoke-virtual {p1}, Lcom/loc/ch;->b()I

    move-result v2

    invoke-virtual {p1}, Lcom/loc/ch;->d()I

    move-result v0

    int-to-long v3, v0

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1}, Lcom/loc/ch;->c()Ljava/util/concurrent/BlockingQueue;

    move-result-object v6

    move-object v0, v8

    move-object v7, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/loc/ck;->a:Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 p1, 0x1

    invoke-virtual {v8, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->allowCoreThreadTimeOut(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "TPool"

    const-string v1, "ThreadPool"

    invoke-static {p1, v0, v1}, Lcom/loc/am;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public static a()Lcom/loc/ci;
    .locals 1

    sget-object v0, Lcom/loc/ci;->c:Lcom/loc/ci;

    return-object v0
.end method
