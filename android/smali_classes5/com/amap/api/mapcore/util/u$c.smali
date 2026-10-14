.class Lcom/amap/api/mapcore/util/u$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/u;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/u;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/u;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/u$c;->a:Lcom/amap/api/mapcore/util/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/u$c;->a:Lcom/amap/api/mapcore/util/u;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/u;->f(Lcom/amap/api/mapcore/util/u;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u$c;->a:Lcom/amap/api/mapcore/util/u;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/u;->q(Lcom/amap/api/mapcore/util/u;)V

    .line 3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
