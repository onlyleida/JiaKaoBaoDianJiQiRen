.class public abstract Lcom/iflytek/cloud/a/f/e;
.super Lcom/iflytek/cloud/a/f/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/iflytek/cloud/a/f/e$a;
    }
.end annotation


# instance fields
.field protected a:Landroid/content/Context;

.field protected b:Ljava/lang/Object;

.field protected volatile c:Lcom/iflytek/cloud/a/f/a;

.field protected volatile d:Landroid/os/HandlerThread;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/iflytek/cloud/a/f/d;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    .line 3
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    .line 4
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    .line 5
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/b;->a(Landroid/content/Context;)Lcom/iflytek/cloud/msc/util/b;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    .line 8
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->e()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 9
    invoke-static {p1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogE(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 10
    :cond_0
    iput-object v0, p0, Lcom/iflytek/cloud/a/f/e;->a:Landroid/content/Context;

    :goto_0
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/String;)Landroid/os/HandlerThread;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    invoke-direct {v0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    .line 2
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 3
    iget-object p1, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    return-object p1
.end method

.method protected b()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v0}, Lcom/iflytek/cloud/a/f/a;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public cancel(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v0, p1}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    :cond_0
    return-void
.end method

.method protected d()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Lcom/iflytek/cloud/a/f/e;->d:Landroid/os/HandlerThread;

    .line 4
    invoke-virtual {v0}, Landroid/os/HandlerThread;->interrupt()V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public destroy()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/e;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->c()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/iflytek/cloud/a/f/e;->c:Lcom/iflytek/cloud/a/f/a;

    invoke-virtual {v1, v2}, Lcom/iflytek/cloud/a/f/a;->cancel(Z)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->d()Z

    move-result v2

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "destory ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogS(Ljava/lang/String;)V

    .line 6
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_1

    .line 7
    invoke-super {p0}, Lcom/iflytek/cloud/a/f/d;->destroy()Z

    move-result v2

    :cond_1
    return v2

    :catchall_0
    move-exception v1

    .line 8
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method protected e()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/iflytek/cloud/a/f/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " finalize called"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/iflytek/cloud/msc/util/log/DebugLog;->LogD(Ljava/lang/String;)V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getSampleRate()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/iflytek/cloud/a/f/d;->mSessionParams:Lcom/iflytek/cloud/b/a;

    const-string v1, "sample_rate"

    const/16 v2, 0x3e80

    invoke-virtual {v0, v1, v2}, Lcom/iflytek/cloud/b/a;->a(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
