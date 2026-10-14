.class public Lcn/mucang/android/jiakaoyi/framework/log/l/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/log/l/h;


# static fields
.field private static final c:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

.field private final b:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->c:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/log/l/e;Lcn/mucang/android/jiakaoyi/framework/log/i;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->b:Ljava/util/LinkedList;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    return-void
.end method

.method private synthetic c()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogWrap"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic e()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->stop()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log error = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogWrap"

    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private synthetic g([BLjava/lang/String;JLjava/lang/String;)V
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    invoke-direct {p0, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->k(J)J

    move-result-wide v3

    move-object v1, p1

    move-object v2, p2

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->g([BLjava/lang/String;JLjava/lang/String;)V
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

.method private synthetic i(Ljava/lang/Object;JLjava/lang/String;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    invoke-direct {p0, p2, p3}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->k(J)J

    move-result-wide p2

    invoke-virtual {v0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->f(Ljava/lang/Object;JLjava/lang/String;)V
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

.method private k(J)J
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v3, p1, v1

    if-nez v3, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->b:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    goto :goto_1

    .line 3
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->b:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const-wide/16 v0, 0x1

    add-long/2addr p1, v0

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->b:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xa

    if-le v0, v1, :cond_3

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->b:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_3
    return-wide p1
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/log/l/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/log/l/b;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/l/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public synthetic d()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->c()V

    return-void
.end method

.method public entityId()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->a:Lcn/mucang/android/jiakaoyi/framework/log/l/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/log/l/e;->entityId()J

    move-result-wide v0

    return-wide v0
.end method

.method public synthetic f()V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->e()V

    return-void
.end method

.method public synthetic h([BLjava/lang/String;JLjava/lang/String;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->g([BLjava/lang/String;JLjava/lang/String;)V

    return-void
.end method

.method public synthetic j(Ljava/lang/Object;JLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->i(Ljava/lang/Object;JLjava/lang/String;)V

    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcn/mucang/android/jiakaoyi/framework/log/l/c;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/framework/log/l/c;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/l/f;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write(Ljava/lang/Object;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v6

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v7, Lcn/mucang/android/jiakaoyi/framework/log/l/d;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    invoke-direct/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/framework/log/l/d;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/l/f;Ljava/lang/Object;JLjava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public write([BLjava/lang/String;J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v7

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/log/l/f;->c:Ljava/util/concurrent/ExecutorService;

    new-instance v8, Lcn/mucang/android/jiakaoyi/framework/log/l/a;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p3

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/framework/log/l/a;-><init>(Lcn/mucang/android/jiakaoyi/framework/log/l/f;[BLjava/lang/String;JLjava/lang/String;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
