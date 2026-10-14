.class public final Lcom/amap/api/mapcore/util/a5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/amap/api/mapcore/util/ga;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/os/Handler;

.field private c:Landroid/os/HandlerThread;

.field private d:Lcom/amap/api/mapcore/util/c1;

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/c1;Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/util/Hashtable;

    invoke-direct {p1}, Ljava/util/Hashtable;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/a5;->a:Ljava/util/Map;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/a5;->e:Z

    .line 4
    iput-object p2, p0, Lcom/amap/api/mapcore/util/a5;->d:Lcom/amap/api/mapcore/util/c1;

    .line 5
    new-instance p2, Landroid/os/HandlerThread;

    const-string p3, "AMapMessageHandler"

    invoke-direct {p2, p3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/a5;->c:Landroid/os/HandlerThread;

    .line 6
    invoke-virtual {p2}, Landroid/os/HandlerThread;->start()V

    .line 7
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/amap/api/mapcore/util/a5;->c:Landroid/os/HandlerThread;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/a5;->b:Landroid/os/Handler;

    .line 8
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/a5;->e:Z

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/a5;->e:Z

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a5;->c:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/a5;->b:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/ga;)V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/a5;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    iget v0, p1, Lcom/amap/api/mapcore/util/ga;->a:I

    const/16 v1, 0x99

    if-ne v0, v1, :cond_2

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/a5;->a:Ljava/util/Map;

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_4

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/a5;->b:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    .line 5
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a5;->a:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v2, 0x21

    if-ge v0, v2, :cond_3

    .line 6
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/a5;->a:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    .line 7
    :cond_3
    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    .line 8
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 5

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/a5;->e:Z

    if-eqz v1, :cond_0

    return v0

    :cond_0
    if-nez p1, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Lcom/amap/api/mapcore/util/ga;

    .line 3
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-eq p1, v2, :cond_4

    const/16 v1, 0x99

    if-eq p1, v1, :cond_2

    goto :goto_1

    .line 4
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/a5;->a:Ljava/util/Map;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/a5;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v2

    if-lez v2, :cond_3

    .line 7
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 8
    iget-object v3, p0, Lcom/amap/api/mapcore/util/a5;->a:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/ga;

    .line 9
    iget-object v3, p0, Lcom/amap/api/mapcore/util/a5;->b:Landroid/os/Handler;

    iget v4, v2, Lcom/amap/api/mapcore/util/ga;->a:I

    invoke-virtual {v3, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 10
    :cond_3
    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/a5;->d:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/ga;->b:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/c1;->n0(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return v0
.end method
