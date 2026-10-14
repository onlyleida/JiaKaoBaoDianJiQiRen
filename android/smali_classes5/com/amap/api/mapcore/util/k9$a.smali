.class final Lcom/amap/api/mapcore/util/k9$a;
.super Landroid/os/HandlerThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/k9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/k9;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/amap/api/mapcore/util/k9;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/k9$a;->a:Lcom/amap/api/mapcore/util/k9;

    return-void
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k9$a;->a:Lcom/amap/api/mapcore/util/k9;

    new-instance v1, Lcom/amap/api/mapcore/util/n9;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/k9$a;->a:Lcom/amap/api/mapcore/util/k9;

    iget-object v3, v2, Lcom/amap/api/mapcore/util/k9;->a:Landroid/content/Context;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/k9;->d:Landroid/os/Handler;

    invoke-direct {v1, v3, v2}, Lcom/amap/api/mapcore/util/n9;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, v0, Lcom/amap/api/mapcore/util/k9;->h:Lcom/amap/api/mapcore/util/n9;

    invoke-super {p0}, Landroid/os/HandlerThread;->onLooperPrepared()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final run()V
    .locals 0

    :try_start_0
    invoke-super {p0}, Landroid/os/HandlerThread;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method
