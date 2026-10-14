.class Lcom/amap/api/mapcore/util/c1$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->clear(Z)V
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
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$j;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$j;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->D(Lcom/amap/api/mapcore/util/c1;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$j;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->K0(Lcom/amap/api/mapcore/util/c1;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->removeNativeAllOverlay(I)V

    :cond_0
    return-void
.end method
