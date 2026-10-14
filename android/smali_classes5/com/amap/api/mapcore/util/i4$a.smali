.class Lcom/amap/api/mapcore/util/i4$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/i4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/i4;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/i4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    const/4 p1, 0x0

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i4;->a(Lcom/amap/api/mapcore/util/i4;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getZoomLevel()F

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/i4;->a(Lcom/amap/api/mapcore/util/i4;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMaxZoomLevel()F

    move-result v1

    cmpl-float v0, v0, v1

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i4;->a(Lcom/amap/api/mapcore/util/i4;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMaploaded()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    .line 3
    iget-object p2, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {p2}, Lcom/amap/api/mapcore/util/i4;->g(Lcom/amap/api/mapcore/util/i4;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i4;->f(Lcom/amap/api/mapcore/util/i4;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    goto :goto_1

    .line 4
    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_3

    .line 5
    iget-object p2, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {p2}, Lcom/amap/api/mapcore/util/i4;->g(Lcom/amap/api/mapcore/util/i4;)Landroid/widget/ImageView;

    move-result-object p2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/i4;->h(Lcom/amap/api/mapcore/util/i4;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    :try_start_1
    iget-object p2, p0, Lcom/amap/api/mapcore/util/i4$a;->a:Lcom/amap/api/mapcore/util/i4;

    invoke-static {p2}, Lcom/amap/api/mapcore/util/i4;->a(Lcom/amap/api/mapcore/util/i4;)Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p2

    invoke-static {}, Lcom/amap/api/mapcore/util/h;->a()Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p2

    :try_start_2
    const-string v0, "ZoomControllerView"

    const-string v1, "zoomin ontouch"

    .line 7
    invoke-static {p2, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_2
    :goto_0
    return p1

    :catchall_0
    move-exception p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return p1
.end method
