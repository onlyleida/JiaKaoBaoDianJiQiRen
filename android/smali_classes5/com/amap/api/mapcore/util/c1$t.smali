.class Lcom/amap/api/mapcore/util/c1$t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->setCenterToPixel(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->F0(Lcom/amap/api/mapcore/util/c1;)I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    iget v2, v2, Lcom/amap/api/mapcore/util/c1;->I0:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v2, 0x0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorX(I)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->G0(Lcom/amap/api/mapcore/util/c1;)I

    move-result v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    iget v3, v3, Lcom/amap/api/mapcore/util/c1;->J0:I

    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setAnchorY(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorX()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getAnchorY()I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setProjectionCenter(III)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$t;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/c1;->Y(Lcom/amap/api/mapcore/util/c1;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
