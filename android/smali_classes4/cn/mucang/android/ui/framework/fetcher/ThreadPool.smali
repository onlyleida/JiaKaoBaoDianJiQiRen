.class public Lcn/mucang/android/ui/framework/fetcher/ThreadPool;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;,
        Lcn/mucang/android/ui/framework/fetcher/ThreadPool$Priority;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I

.field private static final c:I

.field private static final d:Ljava/util/concurrent/ThreadPoolExecutor;

.field private static final e:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->a:I

    add-int/lit8 v2, v0, 0x1

    .line 2
    sput v2, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->b:I

    mul-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 3
    sput v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->c:I

    .line 4
    new-instance v11, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    new-instance v9, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v9}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v10, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v13, "pool"

    invoke-direct {v10, v1, v13}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(ILjava/lang/String;)V

    const/4 v4, 0x1

    const-wide/16 v6, 0xa

    move-object v3, v11

    move v5, v0

    move-object v8, v12

    invoke-direct/range {v3 .. v10}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v11, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    .line 5
    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    new-instance v8, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const/4 v1, 0x5

    invoke-direct {v8, v1, v13}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(ILjava/lang/String;)V

    const-wide/16 v4, 0xa

    move-object v1, v9

    move v3, v0

    move-object v6, v12

    invoke-direct/range {v1 .. v8}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    sput-object v9, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method

.method public static a(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$Priority;->NORMAL:Lcn/mucang/android/ui/framework/fetcher/ThreadPool$Priority;

    invoke-static {p0, v0}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->b(Ljava/lang/Runnable;Lcn/mucang/android/ui/framework/fetcher/ThreadPool$Priority;)V

    return-void
.end method

.method public static b(Ljava/lang/Runnable;Lcn/mucang/android/ui/framework/fetcher/ThreadPool$Priority;)V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$Priority;->LOW:Lcn/mucang/android/ui/framework/fetcher/ThreadPool$Priority;

    if-ne p1, v0, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->d:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcn/mucang/android/ui/framework/fetcher/ThreadPool;->e:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {p1, p0}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
