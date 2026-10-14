.class public Lcn/mucang/android/jiakaoyi/signal/e/e;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static a:Z = false

.field private static final b:Ljava/util/concurrent/ExecutorService;

.field private static final c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

.field private static final e:Lcn/mucang/android/jiakaoyi/framework/log/j/b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->b:Ljava/util/concurrent/ExecutorService;

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->c:Ljava/util/LinkedList;

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/e/c;->a:Lcn/mucang/android/jiakaoyi/signal/e/c;

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/log/j/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/framework/log/j/a;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->e:Lcn/mucang/android/jiakaoyi/framework/log/j/b;

    return-void
.end method

.method private static a()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->b:Ljava/util/concurrent/ExecutorService;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/e/d;->a:Lcn/mucang/android/jiakaoyi/signal/e/d;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static b([B)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/e/e;->h()V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/e/e;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/e/a;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/signal/e/a;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c([B)V
    .locals 3

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/e/e;->h()V

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/e/e;->b:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/e/b;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/jiakaoyi/signal/e/b;-><init>([BLjava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic d()V
    .locals 2

    .line 1
    :goto_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->i(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic e([BLjava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 2
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/e/e;->c:Ljava/util/LinkedList;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->e:Lcn/mucang/android/jiakaoyi/framework/log/j/b;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->k:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/log/j/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method static synthetic f([BLjava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p0}, Ljava/lang/String;-><init>([B)V

    .line 2
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/signal/e/e;->c:Ljava/util/LinkedList;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->e:Lcn/mucang/android/jiakaoyi/framework/log/j/b;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/log/i;->k:Lcn/mucang/android/jiakaoyi/framework/log/i;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    move-object v5, p1

    invoke-interface/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/log/j/b;->b(Lcn/mucang/android/jiakaoyi/framework/log/i;Ljava/lang/String;JLjava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/16 v0, 0x32

    if-le p1, v0, :cond_1

    .line 5
    invoke-virtual {p0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_1
    return-void
.end method

.method static synthetic g(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p0

    iget p0, p0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->h:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/e/e;->a()V

    :cond_0
    return-void
.end method

.method private static h()V
    .locals 2

    .line 1
    sget-boolean v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcn/mucang/android/jiakaoyi/signal/e/e;->a:Z

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/c/d;->m:Lcn/mucang/android/jiakaoyi/signal/c/d;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/e/e;->d:Lcn/mucang/android/jiakaoyi/signal/c/f/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/c/d;->b(Lcn/mucang/android/jiakaoyi/signal/c/f/a;)V

    return-void
.end method
