.class Lcom/amap/api/mapcore/util/c0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c0;->E(Lcom/amap/api/mapcore/util/az;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/az;

.field final synthetic b:Lcom/amap/api/mapcore/util/c0;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c0;Lcom/amap/api/mapcore/util/az;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c0$c;->b:Lcom/amap/api/mapcore/util/c0;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/c0$c;->a:Lcom/amap/api/mapcore/util/az;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$c;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->B(Lcom/amap/api/mapcore/util/c0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$c;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->o(Lcom/amap/api/mapcore/util/c0;)V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/e0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$c;->b:Lcom/amap/api/mapcore/util/c0;

    .line 4
    invoke-static {v1}, Lcom/amap/api/mapcore/util/c0;->q(Lcom/amap/api/mapcore/util/c0;)Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/e0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a1;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/d0;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0$c;->b:Lcom/amap/api/mapcore/util/c0;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/c0;->k(Lcom/amap/api/mapcore/util/c0;Z)Z

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d0;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$c;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c0;->m()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$c;->a:Lcom/amap/api/mapcore/util/az;

    sget-object v1, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0$c;->a:Lcom/amap/api/mapcore/util/az;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/az;->y()V
    :try_end_0
    .catch Lcom/amap/api/maps/AMapException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "startDownloadRunnable"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_0
    move-exception v0

    .line 12
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method
