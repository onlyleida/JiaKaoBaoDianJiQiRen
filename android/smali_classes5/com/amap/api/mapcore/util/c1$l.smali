.class Lcom/amap/api/mapcore/util/c1$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->setTrafficEnabled(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$l;->c:Lcom/amap/api/mapcore/util/c1;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/c1$l;->a:Z

    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/c1$l;->b:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$l;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTrafficEnabled()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1$l;->a:Z

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$l;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1$l;->b:Z

    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setTrafficEnabled(Z)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$l;->c:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->L0(Lcom/amap/api/mapcore/util/c1;)Lcom/autonavi/base/ae/gmap/GLMapRender;

    move-result-object v0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1$l;->a:Z

    invoke-virtual {v0, v1}, Lcom/autonavi/base/ae/gmap/GLMapRender;->setTrafficMode(Z)V

    .line 5
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/c1$l;->a:Z

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$l;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setTrafficEnable(IZ)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$l;->c:Lcom/amap/api/mapcore/util/c1;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c1;->resetRenderTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 9
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method
