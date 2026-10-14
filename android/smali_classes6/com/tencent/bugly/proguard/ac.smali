.class public final Lcom/tencent/bugly/proguard/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Landroid/os/Handler;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/anr/c;",
            ">;"
        }
    .end annotation
.end field

.field private c:J

.field private final d:J

.field private e:Z

.field private f:J


# direct methods
.method constructor <init>(Landroid/os/Handler;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Ljava/util/LinkedList;

    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    iput-object p2, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ac;->a:Landroid/os/Handler;

    const-wide/16 p1, 0x1388

    .line 4
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ac;->c:J

    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ac;->d:J

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ac;->e:Z

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ac;->e:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ac;->e:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ac;->f:J

    .line 4
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->a:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final a(J)V
    .locals 0

    const-wide/16 p1, 0x1388

    .line 5
    iput-wide p1, p0, Lcom/tencent/bugly/proguard/ac;->c:J

    return-void
.end method

.method public final b(J)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/anr/c;",
            ">;"
        }
    .end annotation

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    .line 3
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/tencent/bugly/crashreport/crash/anr/c;

    .line 7
    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/crash/anr/c;->d()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-virtual {v3}, Lcom/tencent/bugly/crashreport/crash/anr/c;->c()J

    move-result-wide v4

    sub-long v4, p1, v4

    const-wide/32 v6, 0x30d40

    cmp-long v8, v4, v6

    if-gez v8, :cond_0

    .line 8
    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v4, 0x1

    .line 9
    invoke-virtual {v3, v4}, Lcom/tencent/bugly/crashreport/crash/anr/c;->a(Z)V

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0

    throw p1
.end method

.method public final b()Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ac;->e:Z

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ac;->f:J

    iget-wide v4, p0, Lcom/tencent/bugly/proguard/ac;->c:J

    add-long/2addr v2, v4

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/ac;->f:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public final d()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x400

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    const/4 v1, 0x0

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ac;->a:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    .line 4
    array-length v3, v2

    if-nez v3, :cond_0

    const-string v2, "Thread does not have stack trace.\n"

    .line 5
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 6
    :cond_0
    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    .line 7
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, "\n"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "getStackTrace() encountered:\n"

    .line 8
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 10
    :cond_1
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 11
    new-instance v2, Lcom/tencent/bugly/crashreport/crash/anr/c;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, v0, v3, v4}, Lcom/tencent/bugly/crashreport/crash/anr/c;-><init>(Ljava/lang/String;J)V

    .line 12
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->a:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/tencent/bugly/crashreport/crash/anr/c;->a(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    monitor-enter v0

    .line 14
    :goto_2
    :try_start_1
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v4, 0x20

    if-lt v3, v4, :cond_2

    .line 15
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_2

    .line 16
    :cond_2
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ac;->b:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public final run()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ac;->e:Z

    .line 2
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/ac;->d:J

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/ac;->c:J

    return-void
.end method
