.class Lcom/amap/api/mapcore/util/c1$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->M(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:I

.field final synthetic c:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;ZI)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$h;->c:Lcom/amap/api/mapcore/util/c1;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/c1$h;->a:Z

    iput p3, p0, Lcom/amap/api/mapcore/util/c1$h;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$h;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1$h;->a:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 3
    iget v1, p0, Lcom/amap/api/mapcore/util/c1$h;->b:I

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setAllContentEnable(IZ)V

    goto :goto_0

    .line 4
    :cond_0
    iget v1, p0, Lcom/amap/api/mapcore/util/c1$h;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setAllContentEnable(IZ)V

    .line 5
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$h;->c:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v1, p0, Lcom/amap/api/mapcore/util/c1$h;->b:I

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setSimple3DEnable(IZ)V

    :cond_1
    return-void
.end method
