.class Lcom/amap/api/mapcore/util/c1$k;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8

    const-string v0, "AMapDelegateImp"

    if-eqz p1, :cond_11

    .line 1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->D(Lcom/amap/api/mapcore/util/c1;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    :try_start_0
    iget v1, p1, Landroid/os/Message;->what:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_f

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_b

    .line 3
    :pswitch_0
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->y0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->y0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 4
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->y0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_11

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->y0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/AMap$OnPOIClickListener;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/amap/api/maps/model/Poi;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnPOIClickListener;->onPOIClick(Lcom/amap/api/maps/model/Poi;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catchall_0
    move-exception p1

    :try_start_2
    const-string v1, "OnPOIClickListener.onPOIClick"

    .line 6
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    .line 8
    :pswitch_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->A0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 9
    invoke-static {}, Lcom/autonavi/amap/mapcore/DPoint;->obtain()Lcom/autonavi/amap/mapcore/DPoint;

    move-result-object v1

    .line 10
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v2, v3, p1, v1}, Lcom/amap/api/mapcore/util/c1;->getPixel2LatLng(IILcom/autonavi/amap/mapcore/DPoint;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_7

    .line 11
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->A0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnMapClickListener;

    .line 12
    new-instance v3, Lcom/amap/api/maps/model/LatLng;

    iget-wide v4, v1, Lcom/autonavi/amap/mapcore/DPoint;->y:D

    iget-wide v6, v1, Lcom/autonavi/amap/mapcore/DPoint;->x:D

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v2, v3}, Lcom/amap/api/maps/AMap$OnMapClickListener;->onMapClick(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/DPoint;->recycle()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/16 :goto_b

    :catchall_1
    move-exception p1

    :try_start_4
    const-string v1, "OnMapClickListener.onMapClick"

    .line 14
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    .line 16
    :pswitch_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->C0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/s;

    move-result-object p1

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->E0(Lcom/amap/api/mapcore/util/c1;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 17
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->C0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/s;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/s;->w()V

    goto/16 :goto_b

    .line 18
    :pswitch_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    invoke-virtual {v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->isInMapAnimation(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    .line 19
    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 20
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/ab;->h(Z)V

    .line 21
    :cond_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v1

    if-eqz v1, :cond_11

    .line 22
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v1

    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/ab;->f(Z)V

    goto/16 :goto_b

    .line 23
    :pswitch_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->T(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_7

    if-eqz p1, :cond_4

    .line 24
    :goto_3
    :try_start_5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->T(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ge v3, p1, :cond_4

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->T(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/amap/api/maps/AMap$OnMapLoadedListener;

    invoke-interface {p1}, Lcom/amap/api/maps/AMap$OnMapLoadedListener;->onMapLoaded()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_2
    move-exception p1

    :try_start_6
    const-string v1, "onMapLoaded"

    .line 26
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 28
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 29
    :cond_4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 30
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/e4;->U()V

    goto/16 :goto_b

    .line 31
    :pswitch_5
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    .line 32
    iget p1, p1, Landroid/os/Message;->arg1:I

    if-eqz v1, :cond_7

    .line 33
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 34
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 35
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v4

    .line 36
    invoke-virtual {v4}, Lcom/amap/api/mapcore/util/e4;->L()Lcom/amap/api/mapcore/util/h4;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 37
    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore/util/h4;->onDraw(Landroid/graphics/Canvas;)V

    .line 38
    :cond_5
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/amap/api/mapcore/util/e4;->g(Landroid/graphics/Canvas;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_7

    .line 39
    :try_start_7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_6

    const/4 v2, 0x0

    .line 40
    :goto_4
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_6

    .line 41
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v6, v6, Lcom/amap/api/mapcore/util/c1;->C0:Landroid/content/Context;

    .line 42
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {v5, v6, v1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 43
    invoke-interface {v4, v5}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 44
    :cond_6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_9

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_9

    .line 45
    :goto_5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v3, v2, :cond_9

    .line 46
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v2, v1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    .line 47
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v2, v1, p1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 48
    :cond_7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    const/4 v1, 0x0

    .line 49
    :goto_6
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_8

    .line 50
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v4}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;

    invoke-interface {v4, v2}, Lcom/amap/api/maps/AMap$onMapPrintScreenListener;->onMapPrint(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 51
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_9

    .line 52
    :goto_7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_9

    .line 53
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;)V

    .line 54
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;

    invoke-interface {v1, v2, p1}, Lcom/amap/api/maps/AMap$OnMapScreenShotListener;->onMapScreenShot(Landroid/graphics/Bitmap;I)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    .line 55
    :catchall_3
    :cond_9
    :try_start_8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->i0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/c1;->p(Lcom/amap/api/mapcore/util/c1;Ljava/util/List;)V

    .line 56
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->l0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/c1;->p(Lcom/amap/api/mapcore/util/c1;Ljava/util/List;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_7

    goto/16 :goto_b

    .line 57
    :pswitch_6
    :try_start_9
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->d0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->d0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_11

    .line 58
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->d0(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_8
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_11

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnMapTouchListener;

    .line 59
    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v3, Landroid/view/MotionEvent;

    invoke-interface {v2, v3}, Lcom/amap/api/maps/AMap$OnMapTouchListener;->onTouch(Landroid/view/MotionEvent;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    goto :goto_8

    :catchall_4
    move-exception p1

    :try_start_a
    const-string v1, "onTouchHandler"

    .line 60
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    goto/16 :goto_b

    .line 62
    :pswitch_7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 63
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object p1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/e4;->T()V

    goto/16 :goto_b

    .line 64
    :pswitch_8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 65
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object p1

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/c1;->getZoomLevel()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/e4;->p(Ljava/lang/Float;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    goto/16 :goto_b

    .line 66
    :pswitch_9
    :try_start_b
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/c1;->getCameraPosition()Lcom/amap/api/maps/model/CameraPosition;

    move-result-object p1

    if-eqz p1, :cond_a

    .line 67
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 68
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->Z(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/e4;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/amap/api/mapcore/util/e4;->n(Lcom/amap/api/maps/model/CameraPosition;)V

    .line 69
    :cond_a
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/c1;->o(Lcom/amap/api/mapcore/util/c1;Lcom/amap/api/maps/model/CameraPosition;)V

    .line 70
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->r0(Lcom/amap/api/mapcore/util/c1;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 71
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1, v3}, Lcom/amap/api/mapcore/util/c1;->E(Lcom/amap/api/mapcore/util/c1;Z)Z

    .line 72
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 73
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->s0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/mapcore/util/ab;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/amap/api/mapcore/util/ab;->h(Z)V

    .line 74
    :cond_b
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/c1;->x(Z)V

    .line 75
    :cond_c
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->x0(Lcom/amap/api/mapcore/util/c1;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 76
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/c1;->redrawInfoWindow()V

    .line 77
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1, v3}, Lcom/amap/api/mapcore/util/c1;->R(Lcom/amap/api/mapcore/util/c1;Z)Z

    .line 78
    :cond_d
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-virtual {v1, v2, p1}, Lcom/amap/api/mapcore/util/c1;->y(ZLcom/amap/api/maps/model/CameraPosition;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto/16 :goto_b

    :catchall_5
    move-exception p1

    :try_start_c
    const-string v1, "CameraUpdateFinish"

    .line 79
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    goto :goto_b

    .line 81
    :pswitch_a
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/amap/api/maps/model/CameraPosition;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_7

    if-eqz p1, :cond_e

    .line 82
    :try_start_d
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->I(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->I(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_e

    .line 83
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c1;->I(Lcom/amap/api/mapcore/util/c1;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/AMap$OnCameraChangeListener;

    .line 84
    invoke-interface {v2, p1}, Lcom/amap/api/maps/AMap$OnCameraChangeListener;->onCameraChange(Lcom/amap/api/maps/model/CameraPosition;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    goto :goto_9

    :catchall_6
    move-exception p1

    .line 85
    :try_start_e
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 86
    :cond_e
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c1$k;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/c1;->W:Lcom/autonavi/base/amap/mapcore/MapConfig;

    invoke-virtual {p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->addChangedCounter()V

    goto :goto_b

    .line 87
    :cond_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Key\u9a8c\u8bc1\u5931\u8d25\uff1a["

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p1, :cond_10

    .line 90
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_a

    .line 91
    :cond_10
    sget-object p1, Lcom/amap/api/mapcore/util/d5;->b:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_a
    const-string p1, "]"

    .line 92
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "amapsdk"

    .line 93
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    goto :goto_b

    :catchall_7
    move-exception p1

    const-string v1, "handleMessage"

    .line 94
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
