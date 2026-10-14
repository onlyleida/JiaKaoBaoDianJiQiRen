.class Lcom/amap/api/mapcore/util/c1$l0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->N(Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/MotionEvent;

.field final synthetic b:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$l0;->b:Lcom/amap/api/mapcore/util/c1;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/c1$l0;->a:Landroid/view/MotionEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    :try_start_0
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    .line 2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$l0;->b:Lcom/amap/api/mapcore/util/c1;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isTouchPoiEnable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$l0;->b:Lcom/amap/api/mapcore/util/c1;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$l0;->a:Landroid/view/MotionEvent;

    invoke-virtual {v2}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/c1$l0;->a:Landroid/view/MotionEvent;

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v3, v3

    const/16 v4, 0x19

    invoke-static {v1, v2, v3, v4}, Lcom/amap/api/mapcore/util/c1;->e(Lcom/amap/api/mapcore/util/c1;III)Lcom/amap/api/maps/model/Poi;

    move-result-object v1

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$l0;->b:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->y0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$l0;->b:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->y0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    if-eqz v1, :cond_1

    const/16 v2, 0x14

    .line 5
    iput v2, v0, Landroid/os/Message;->what:I

    .line 6
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$l0;->b:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1;->f1:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$l0;->b:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$l0;->a:Landroid/view/MotionEvent;

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/c1;->n(Lcom/amap/api/mapcore/util/c1;Landroid/view/MotionEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
