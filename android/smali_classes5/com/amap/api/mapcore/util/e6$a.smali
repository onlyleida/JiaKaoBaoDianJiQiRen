.class Lcom/amap/api/mapcore/util/e6$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/e6;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/amap/api/mapcore/util/m5;

.field final synthetic c:Z

.field final synthetic d:Lcom/amap/api/mapcore/util/e6;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/e6;Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e6$a;->d:Lcom/amap/api/mapcore/util/e6;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e6$a;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/amap/api/mapcore/util/e6$a;->b:Lcom/amap/api/mapcore/util/m5;

    iput-boolean p4, p0, Lcom/amap/api/mapcore/util/e6$a;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2
    :try_start_1
    new-instance v1, Lcom/amap/api/mapcore/util/m6;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/e6$a;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/amap/api/mapcore/util/m6;-><init>(Landroid/content/Context;Z)V

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e6$a;->b:Lcom/amap/api/mapcore/util/m5;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/m6;->c(Lcom/amap/api/mapcore/util/m5;)V

    .line 4
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    :try_start_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e6$a;->c:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e6$a;->d:Lcom/amap/api/mapcore/util/e6;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/e6;->f(Lcom/amap/api/mapcore/util/e6;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/f6;->e(Landroid/content/Context;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 7
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
