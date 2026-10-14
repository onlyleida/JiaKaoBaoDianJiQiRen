.class public final Lcom/tencent/bugly/proguard/ad;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ad$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/tencent/bugly/proguard/ac;

.field private f:Lcom/tencent/bugly/proguard/ad$a;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->a:Z

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    .line 4
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->c:Z

    .line 5
    iput v1, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    .line 6
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ad;->g:Z

    return-void
.end method

.method private declared-synchronized a(Lcom/tencent/bugly/proguard/ac;)V
    .locals 2

    monitor-enter p0

    .line 9
    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 10
    monitor-exit p0

    return-void

    .line 11
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->c:Z

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/ac;->b()Z

    move-result p1

    if-nez p1, :cond_1

    const-string p1, "Restart getting main stack trace."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 13
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    .line 14
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->c:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/ad$a;)V
    .locals 0

    .line 8
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ad;->f:Lcom/tencent/bugly/proguard/ad$a;

    return-void
.end method

.method public final a(Z)V
    .locals 2

    .line 1
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ad;->g:Z

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set record stack trace enable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .locals 3

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->a:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    .line 5
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_0
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "MainHandlerChecker is reset to null."

    .line 7
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    return v0
.end method

.method public final declared-synchronized b(Z)V
    .locals 0

    monitor-enter p0

    const/4 p1, 0x1

    .line 5
    :try_start_0
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ad;->c:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .locals 5

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    const-wide/16 v2, 0x1388

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/proguard/ac;->a(J)V

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/tencent/bugly/proguard/ac;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/ac;-><init>(Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    .line 4
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_1
    return v1
.end method

.method public final c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/anr/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    const-wide/32 v1, 0x30d40

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/ac;->b(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    const-string v1, "Record stack trace is disabled."

    new-array v0, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    :goto_0
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/ad;->a:Z

    if-nez v2, :cond_9

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const-string v2, "Main handler checker is null. Stop thread monitor."

    new-array v3, v3, [Ljava/lang/Object;

    .line 4
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 5
    :cond_0
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->a()V

    .line 6
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/ad;->a(Lcom/tencent/bugly/proguard/ac;)V

    .line 7
    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/ad;->g:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_6

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    if-nez v4, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x5e6

    cmp-long v4, v6, v8

    if-lez v4, :cond_6

    const-wide/32 v8, 0x30d36

    cmp-long v4, v6, v8

    if-ltz v4, :cond_2

    goto :goto_2

    :cond_2
    const-wide/16 v8, 0x1392

    cmp-long v4, v6, v8

    if-gtz v4, :cond_3

    iput v5, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    const-string v4, "timeSinceMsgSent in [2s, 5s], record stack"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    iget v4, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    add-int/lit8 v6, v4, -0x1

    and-int/2addr v4, v6

    if-nez v4, :cond_4

    goto :goto_1

    :cond_4
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_5

    const-string v4, "timeSinceMsgSent in (5s, 200s), should record stack:true"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5
    move v3, v5

    :cond_6
    :goto_2
    if-eqz v3, :cond_7

    .line 8
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->d()V

    .line 9
    :cond_7
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ad;->f:Lcom/tencent/bugly/proguard/ad$a;

    if-eqz v3, :cond_8

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    if-eqz v4, :cond_8

    .line 10
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->b()Z

    move-result v4

    .line 11
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->c()J

    move-result-wide v5

    .line 12
    invoke-interface {v3, v4, v5, v6}, Lcom/tencent/bugly/proguard/ad$a;->a(ZJ)V

    .line 13
    :cond_8
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    rem-long/2addr v2, v4

    sub-long/2addr v4, v2

    .line 14
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/ab;->b(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    .line 15
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :catch_1
    move-exception v2

    .line 16
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    goto/16 :goto_0

    :cond_9
    return-void
.end method
