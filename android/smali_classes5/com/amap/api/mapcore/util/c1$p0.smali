.class Lcom/amap/api/mapcore/util/c1$p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "p0"
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

.field final synthetic c:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/c1;Landroid/content/Context;Lcom/amap/api/maps/AMap$OnCacheRemoveListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$p0;->c:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/amap/api/mapcore/util/c1$p0;->a:Landroid/content/Context;

    .line 3
    iput-object p3, p0, Lcom/amap/api/mapcore/util/c1$p0;->b:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Lcom/amap/api/mapcore/util/c1$p0;

    return p1
.end method

.method public run()V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$p0;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2
    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 3
    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->y(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 6
    invoke-static {v5}, Lcom/autonavi/base/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_2

    .line 7
    :try_start_1
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/autonavi/base/amap/mapcore/FileUtil;->deleteFile(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v2

    move v1, v3

    goto :goto_4

    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_3

    .line 8
    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->v0(Landroid/content/Context;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    const/4 v1, 0x0

    .line 9
    :goto_3
    :try_start_2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$p0;->c:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 10
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$p0;->c:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v2

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/ab;->p()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    :cond_4
    :try_start_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$p0;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_5

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$p0;->b:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v0, :cond_5

    .line 13
    invoke-interface {v0, v1}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_5

    :catchall_1
    move-exception v2

    .line 14
    :goto_4
    :try_start_4
    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    const-string v3, "AMapDelegateImp"

    const-string v4, "RemoveCacheRunnable"

    .line 15
    invoke-static {v2, v3, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 16
    :try_start_5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$p0;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_5

    .line 17
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$p0;->b:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v1, :cond_5

    .line 18
    invoke-interface {v1, v0}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_5

    :catchall_2
    move-exception v0

    .line 19
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_5
    return-void

    :catchall_3
    move-exception v0

    .line 20
    :try_start_6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$p0;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v2, :cond_6

    .line 21
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$p0;->b:Lcom/amap/api/maps/AMap$OnCacheRemoveListener;

    if-eqz v2, :cond_6

    .line 22
    invoke-interface {v2, v1}, Lcom/amap/api/maps/AMap$OnCacheRemoveListener;->onRemoveCacheFinish(Z)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v1

    .line 23
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 24
    :cond_6
    :goto_6
    throw v0
.end method
