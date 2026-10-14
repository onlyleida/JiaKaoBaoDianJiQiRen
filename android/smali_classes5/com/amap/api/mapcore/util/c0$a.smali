.class Lcom/amap/api/mapcore/util/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c0;->h(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/amap/api/mapcore/util/c0;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c0;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/c0$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/c0;->a(Lcom/amap/api/mapcore/util/c0;Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 2
    :try_start_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v1

    iget-object v2, v0, Lcom/amap/api/mapcore/util/az;->j:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->c(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/r0;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/r0;->n(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v1

    .line 8
    :cond_1
    sget-object v2, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    if-eqz v1, :cond_4

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    sget-object v3, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    .line 9
    invoke-static {v2, v3, v1}, Lcom/amap/api/mapcore/util/c0;->j(Lcom/amap/api/mapcore/util/c0;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->C()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    goto :goto_3

    .line 11
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    monitor-enter v1

    .line 13
    :try_start_1
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/util/c0$d;->b(Lcom/amap/api/mapcore/util/az;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    :try_start_2
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    .line 14
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    :goto_1
    monitor-exit v1

    goto :goto_2

    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0

    :cond_3
    :goto_2
    return-void

    .line 16
    :cond_4
    :goto_3
    :try_start_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c0;->o(Lcom/amap/api/mapcore/util/c0;)V

    .line 17
    new-instance v1, Lcom/amap/api/mapcore/util/e0;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    .line 18
    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->q(Lcom/amap/api/mapcore/util/c0;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/e0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 19
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/a1;->f()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/d0;

    .line 20
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    if-eqz v2, :cond_7

    if-nez v1, :cond_6

    .line 21
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 22
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    monitor-enter v1

    .line 23
    :try_start_4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/util/c0$d;->b(Lcom/amap/api/mapcore/util/az;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_4

    :catchall_2
    move-exception v0

    :try_start_5
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    .line 24
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_4
    monitor-exit v1

    goto :goto_5

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v0

    :cond_5
    :goto_5
    return-void

    .line 26
    :cond_6
    :try_start_6
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/d0;->c()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 27
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/c0;->m()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 28
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 29
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    monitor-enter v1

    .line 30
    :try_start_7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/util/c0$d;->b(Lcom/amap/api/mapcore/util/az;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    :try_start_8
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    .line 31
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    :goto_6
    monitor-exit v1

    goto :goto_a

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    throw v0

    :catchall_6
    move-exception v1

    .line 33
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 34
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    monitor-enter v2

    .line 35
    :try_start_9
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v3

    invoke-interface {v3, v0}, Lcom/amap/api/mapcore/util/c0$d;->b(Lcom/amap/api/mapcore/util/az;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_7

    goto :goto_7

    :catchall_7
    move-exception v0

    :try_start_a
    const-string v3, "OfflineDownloadManager"

    const-string v4, "checkUpdatefinally"

    .line 36
    invoke-static {v0, v3, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :goto_7
    monitor-exit v2

    goto :goto_8

    :catchall_8
    move-exception v0

    monitor-exit v2
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_8

    throw v0

    .line 38
    :cond_8
    :goto_8
    throw v1

    .line 39
    :catch_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 40
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    monitor-enter v1

    .line 41
    :try_start_b
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0$a;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c0;->u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/amap/api/mapcore/util/c0$d;->b(Lcom/amap/api/mapcore/util/az;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_9

    goto :goto_9

    :catchall_9
    move-exception v0

    :try_start_c
    const-string v2, "OfflineDownloadManager"

    const-string v3, "checkUpdatefinally"

    .line 42
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    :goto_9
    monitor-exit v1

    goto :goto_a

    :catchall_a
    move-exception v0

    monitor-exit v1
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_a

    throw v0

    :cond_9
    :goto_a
    return-void
.end method
