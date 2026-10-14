.class public Lcom/amap/api/mapcore/util/e4;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/base/amap/api/mapcore/infowindow/IInfoWindowAction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/e4$c;
    }
.end annotation


# instance fields
.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Landroid/content/Context;

.field private c:Lcom/amap/api/mapcore/util/h4;

.field private d:Lcom/amap/api/mapcore/util/d4;

.field private e:Lcom/amap/api/mapcore/util/b4;

.field private f:Lcom/amap/api/mapcore/util/g4;

.field private g:Lcom/amap/api/mapcore/util/z3;

.field private h:Lcom/amap/api/mapcore/util/c4;

.field private i:Lcom/amap/api/mapcore/util/i4;

.field private j:Landroid/view/View;

.field private k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:Z

.field private n:Landroid/view/View;

.field private o:Z

.field p:Lcom/amap/api/mapcore/util/f4;

.field private q:Z

.field private r:Z

.field s:Lcom/amap/api/mapcore/util/s;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e4;->m:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e4;->q:Z

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e4;->r:Z

    .line 6
    :try_start_0
    iput-object p2, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 7
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->b:Landroid/content/Context;

    .line 8
    new-instance p2, Lcom/amap/api/mapcore/util/f4;

    invoke-direct {p2}, Lcom/amap/api/mapcore/util/f4;-><init>()V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    .line 9
    new-instance p2, Lcom/amap/api/mapcore/util/z3;

    invoke-direct {p2, p1}, Lcom/amap/api/mapcore/util/z3;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/e4;->g:Lcom/amap/api/mapcore/util/z3;

    .line 10
    new-instance p2, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p2, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 v1, 0x0

    .line 11
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 12
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 13
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->g:Lcom/amap/api/mapcore/util/z3;

    invoke-virtual {p0, v1, v0, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 14
    iget-boolean p2, p0, Lcom/amap/api/mapcore/util/e4;->q:Z

    if-nez p2, :cond_1

    .line 15
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/e4;->f(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 16
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 17
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-void
.end method

.method static synthetic C(Lcom/amap/api/mapcore/util/e4;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    return-object p0
.end method

.method static synthetic G(Lcom/amap/api/mapcore/util/e4;)Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;

    return-object p0
.end method

.method private V()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->f:Lcom/amap/api/mapcore/util/g4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->f:Lcom/amap/api/mapcore/util/g4;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    :cond_1
    return-void
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/e4;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    return-object p1
.end method

.method private d(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/amap/api/mapcore/util/w1;

    const/4 v1, 0x0

    const-string v2, "getInfoWindow or getInfoContents"

    const-string v3, "infowindow_bg.9.png"

    const-string v4, "showInfoWindow decodeDrawableFromAsset"

    const/4 v5, 0x0

    const-string v6, "MapOverlayViewGroup"

    if-eqz v0, :cond_5

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/Marker;

    check-cast p1, Lcom/amap/api/mapcore/util/w1;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/Marker;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IMarker;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->b:Landroid/content/Context;

    invoke-static {p1, v3}, Lcom/amap/api/mapcore/util/g3;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1, v6, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 7
    :cond_0
    :goto_0
    :try_start_1
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/e4;->o:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/s;->d(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez p1, :cond_1

    .line 9
    :try_start_2
    iget-object v3, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/s;->o(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1

    .line 10
    :cond_1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->n:Landroid/view/View;

    .line 11
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/e4;->o:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 12
    :cond_2
    :try_start_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->n:Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :goto_1
    if-nez p1, :cond_4

    .line 13
    :try_start_4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->l()Z

    move-result v1

    if-nez v1, :cond_3

    return-object v5

    .line 14
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/s;->d(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v5, p1

    goto :goto_3

    :cond_4
    :goto_2
    move-object v5, p1

    if-eqz v5, :cond_c

    .line 15
    :try_start_5
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_c

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_8

    :catchall_2
    move-exception v0

    .line 17
    :goto_3
    invoke-static {v0, v6, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_8

    .line 19
    :cond_5
    :try_start_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_6

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->b:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/amap/api/mapcore/util/g3;->c(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    goto :goto_4

    :catchall_3
    move-exception v0

    .line 21
    invoke-static {v0, v6, v4}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 23
    :cond_6
    :goto_4
    :try_start_7
    new-instance v0, Lcom/amap/api/maps/model/GL3DModel;

    check-cast p1, Lcom/amap/api/mapcore/util/t1;

    invoke-direct {v0, p1}, Lcom/amap/api/maps/model/GL3DModel;-><init>(Lcom/autonavi/amap/mapcore/interfaces/IglModel;)V

    .line 24
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/e4;->o:Z

    if-eqz p1, :cond_8

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/s;->d(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    if-nez p1, :cond_7

    .line 26
    :try_start_8
    iget-object v3, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/s;->o(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1

    .line 27
    :cond_7
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->n:Landroid/view/View;

    .line 28
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/e4;->o:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    goto :goto_5

    .line 29
    :cond_8
    :try_start_9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->n:Landroid/view/View;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_5

    :goto_5
    if-nez p1, :cond_a

    .line 30
    :try_start_a
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/s;->l()Z

    move-result v1

    if-nez v1, :cond_9

    return-object v5

    .line 31
    :cond_9
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/s;->d(Lcom/amap/api/maps/model/BasePointOverlay;)Landroid/view/View;

    move-result-object p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_6

    :catchall_4
    move-exception v0

    move-object v5, p1

    goto :goto_7

    :cond_a
    :goto_6
    move-object v5, p1

    .line 32
    :try_start_b
    invoke-virtual {v5}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-nez p1, :cond_b

    .line 33
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5, p1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :cond_b
    return-object v5

    :catchall_5
    move-exception v0

    .line 34
    :goto_7
    invoke-static {v0, v6, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_c
    :goto_8
    return-object v5
.end method

.method static synthetic e(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/g4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/e4;->f:Lcom/amap/api/mapcore/util/g4;

    return-object p0
.end method

.method private f(Landroid/content/Context;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/amap/api/mapcore/util/h4;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore/util/h4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    .line 2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/e4;->r:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/h4;->n(Z)V

    .line 3
    new-instance v0, Lcom/amap/api/mapcore/util/g4;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore/util/g4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->f:Lcom/amap/api/mapcore/util/g4;

    .line 4
    new-instance v0, Lcom/amap/api/mapcore/util/c4;

    invoke-direct {v0, p1}, Lcom/amap/api/mapcore/util/c4;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    .line 5
    new-instance v0, Lcom/amap/api/mapcore/util/i4;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore/util/i4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->i:Lcom/amap/api/mapcore/util/i4;

    .line 6
    new-instance v0, Lcom/amap/api/mapcore/util/d4;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore/util/d4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    .line 7
    new-instance v0, Lcom/amap/api/mapcore/util/b4;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-direct {v0, p1, v1}, Lcom/amap/api/mapcore/util/b4;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->e:Lcom/amap/api/mapcore/util/b4;

    .line 8
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->f:Lcom/amap/api/mapcore/util/g4;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 11
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 13
    new-instance p1, Lcom/amap/api/mapcore/util/e4$c;

    new-instance v4, Lcom/autonavi/base/amap/mapcore/FPoint;

    const/4 v0, 0x0

    invoke-direct {v4, v0, v0}, Lcom/autonavi/base/amap/mapcore/FPoint;-><init>(FF)V

    const/4 v2, -0x2

    const/4 v3, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x53

    move-object v1, p1

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore/util/e4$c;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    .line 14
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->i:Lcom/amap/api/mapcore/util/i4;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 15
    new-instance p1, Lcom/amap/api/mapcore/util/e4$c;

    .line 16
    invoke-static {v0, v0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    const/4 v4, -0x2

    const/4 v7, 0x0

    const/16 v8, 0x53

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore/util/e4$c;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    .line 17
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    invoke-virtual {p0, v1, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    new-instance p1, Lcom/amap/api/mapcore/util/e4$c;

    .line 19
    invoke-static {v0, v0}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    const/16 v8, 0x33

    move-object v2, p1

    invoke-direct/range {v2 .. v8}, Lcom/amap/api/mapcore/util/e4$c;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->e:Lcom/amap/api/mapcore/util/b4;

    invoke-virtual {p0, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 21
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->e:Lcom/amap/api/mapcore/util/b4;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 22
    new-instance p1, Lcom/amap/api/mapcore/util/e4$a;

    invoke-direct {p1, p0}, Lcom/amap/api/mapcore/util/e4$a;-><init>(Lcom/amap/api/mapcore/util/e4;)V

    .line 23
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setMapWidgetListener(Lcom/autonavi/base/ae/gmap/listener/AMapWidgetListener;)V

    .line 24
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object p1

    invoke-interface {p1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isMyLocationButtonEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "AMapDelegateImpGLSurfaceView"

    const-string v1, "locationView gone"

    .line 26
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method private h(Landroid/view/View;II)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    if-eqz v0, :cond_2

    if-ne p1, v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_2
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheQuality(I)V

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRect()Landroid/graphics/Rect;

    const/4 v0, -0x2

    if-eqz p1, :cond_3

    .line 9
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 10
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    move v3, p1

    move v2, v0

    goto :goto_0

    :cond_3
    const/4 v2, -0x2

    const/4 v3, -0x2

    .line 11
    :goto_0
    new-instance p1, Lcom/amap/api/mapcore/util/e4$c;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 12
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    const/16 v7, 0x51

    move-object v1, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v7}, Lcom/amap/api/mapcore/util/e4$c;-><init>(IILcom/autonavi/base/amap/mapcore/FPoint;III)V

    .line 13
    iget-object p2, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {p0, p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private i(Landroid/view/View;IIIII)V
    .locals 2

    and-int/lit8 v0, p6, 0x7

    and-int/lit8 p6, p6, 0x70

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    sub-int/2addr p4, p2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 1
    div-int/lit8 v0, p2, 0x2

    sub-int/2addr p4, v0

    :cond_1
    :goto_0
    const/16 v0, 0x50

    if-ne p6, v0, :cond_2

    sub-int/2addr p5, p3

    goto :goto_2

    :cond_2
    const/16 v0, 0x11

    if-ne p6, v0, :cond_3

    .line 2
    div-int/lit8 p6, p3, 0x2

    :goto_1
    sub-int/2addr p5, p6

    goto :goto_2

    :cond_3
    const/16 v0, 0x10

    if-ne p6, v0, :cond_4

    .line 3
    div-int/lit8 p5, p5, 0x2

    div-int/lit8 p6, p3, 0x2

    goto :goto_1

    :cond_4
    :goto_2
    add-int p6, p4, p2

    add-int v0, p5, p3

    .line 4
    invoke-virtual {p1, p4, p5, p6, v0}, Landroid/view/View;->layout(IIII)V

    .line 5
    instance-of p1, p1, Lcom/autonavi/base/amap/api/mapcore/IGLSurfaceView;

    if-eqz p1, :cond_5

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1, p2, p3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->changeSize(II)V

    :cond_5
    return-void
.end method

.method private j(Landroid/view/View;II[I)V
    .locals 4

    .line 1
    instance-of v0, p1, Landroid/widget/ListView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v3

    aput v3, p4, v2

    .line 4
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    aput v0, p4, v1

    :cond_0
    if-lez p2, :cond_1

    if-gtz p3, :cond_2

    .line 5
    :cond_1
    invoke-virtual {p1, v2, v2}, Landroid/view/View;->measure(II)V

    :cond_2
    const/4 v0, -0x1

    const/4 v3, -0x2

    if-ne p2, v3, :cond_3

    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p2

    aput p2, p4, v2

    goto :goto_0

    :cond_3
    if-ne p2, v0, :cond_4

    .line 7
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result p2

    aput p2, p4, v2

    goto :goto_0

    .line 8
    :cond_4
    aput p2, p4, v2

    :goto_0
    if-ne p3, v3, :cond_5

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    aput p1, p4, v1

    goto :goto_1

    :cond_5
    if-ne p3, v0, :cond_6

    .line 10
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p1

    aput p1, p4, v1

    goto :goto_1

    .line 11
    :cond_6
    aput p3, p4, v1

    :goto_1
    return-void
.end method

.method private k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 9

    const/4 v2, 0x2

    new-array v2, v2, [I

    .line 1
    iget v3, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v0, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, v3, v0, v2}, Lcom/amap/api/mapcore/util/e4;->j(Landroid/view/View;II[I)V

    .line 2
    instance-of v0, p1, Lcom/amap/api/mapcore/util/c4;

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_0

    .line 3
    aget v3, v2, v3

    aget v5, v2, v4

    const/16 v6, 0x14

    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 4
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getWaterMarkerPositon()Landroid/graphics/Point;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Point;->y:I

    add-int/lit8 v0, v0, -0x50

    aget v2, v2, v4

    sub-int v7, v0, v2

    const/16 v8, 0x33

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v5

    move v4, v6

    move v5, v7

    move v6, v8

    .line 5
    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/e4;->i(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 6
    :cond_0
    aget v3, v2, v3

    aget v4, v2, v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x33

    move-object v0, p0

    move-object v1, p1

    move v2, v3

    move v3, v4

    move v4, v5

    move v5, v6

    move v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/amap/api/mapcore/util/e4;->i(Landroid/view/View;IIIII)V

    :goto_0
    return-void
.end method

.method private l(Landroid/view/View;Lcom/amap/api/mapcore/util/e4$c;)V
    .locals 13

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    iget v1, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget v2, p2, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/amap/api/mapcore/util/e4;->j(Landroid/view/View;II[I)V

    .line 2
    instance-of v1, p1, Lcom/amap/api/mapcore/util/i4;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 3
    aget v6, v0, v3

    aget v7, v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    aget v0, v0, v3

    sub-int v8, v1, v0

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    move-result v9

    iget v10, p2, Lcom/amap/api/mapcore/util/e4$c;->d:I

    move-object v4, p0

    move-object v5, p1

    .line 5
    invoke-direct/range {v4 .. v10}, Lcom/amap/api/mapcore/util/e4;->i(Landroid/view/View;IIIII)V

    goto/16 :goto_0

    .line 6
    :cond_0
    instance-of v1, p1, Lcom/amap/api/mapcore/util/d4;

    if-eqz v1, :cond_1

    .line 7
    aget v6, v0, v3

    aget v7, v0, v2

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v1

    aget v3, v0, v3

    sub-int v8, v1, v3

    aget v9, v0, v2

    iget v10, p2, Lcom/amap/api/mapcore/util/e4$c;->d:I

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/amap/api/mapcore/util/e4;->i(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 8
    :cond_1
    instance-of v1, p1, Lcom/amap/api/mapcore/util/b4;

    if-eqz v1, :cond_2

    .line 9
    aget v6, v0, v3

    aget v7, v0, v2

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v10, p2, Lcom/amap/api/mapcore/util/e4$c;->d:I

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/amap/api/mapcore/util/e4;->i(Landroid/view/View;IIIII)V

    goto :goto_0

    .line 10
    :cond_2
    iget-object v1, p2, Lcom/amap/api/mapcore/util/e4$c;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    if-eqz v1, :cond_4

    .line 11
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v1

    .line 12
    iget-object v4, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapProjection()Lcom/autonavi/base/ae/gmap/GLMapState;

    move-result-object v5

    if-eqz v4, :cond_3

    if-eqz v5, :cond_3

    .line 14
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    .line 15
    iget-object v6, p2, Lcom/amap/api/mapcore/util/e4$c;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    iget v7, v6, Landroid/graphics/PointF;->x:F

    float-to-int v7, v7

    iget v6, v6, Landroid/graphics/PointF;->y:F

    float-to-int v6, v6

    invoke-virtual {v5, v7, v6, v4}, Lcom/autonavi/base/ae/gmap/GLMapState;->p20ToScreenPoint(IILcom/autonavi/base/amap/mapcore/FPoint;)V

    .line 16
    iget v5, v4, Landroid/graphics/PointF;->x:F

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Point;->x:I

    .line 17
    iget v5, v4, Landroid/graphics/PointF;->y:F

    float-to-int v5, v5

    iput v5, v1, Landroid/graphics/Point;->y:I

    .line 18
    invoke-virtual {v4}, Lcom/autonavi/base/amap/mapcore/FPoint;->recycle()V

    .line 19
    :cond_3
    iget v4, v1, Landroid/graphics/Point;->x:I

    iget v5, p2, Lcom/amap/api/mapcore/util/e4$c;->b:I

    add-int v10, v4, v5

    iput v10, v1, Landroid/graphics/Point;->x:I

    .line 20
    iget v4, v1, Landroid/graphics/Point;->y:I

    iget v5, p2, Lcom/amap/api/mapcore/util/e4$c;->c:I

    add-int v11, v4, v5

    iput v11, v1, Landroid/graphics/Point;->y:I

    .line 21
    aget v8, v0, v3

    aget v9, v0, v2

    iget v12, p2, Lcom/amap/api/mapcore/util/e4$c;->d:I

    move-object v6, p0

    move-object v7, p1

    invoke-direct/range {v6 .. v12}, Lcom/amap/api/mapcore/util/e4;->i(Landroid/view/View;IIIII)V

    .line 22
    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/IPoint;->recycle()V

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic u(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/b4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/e4;->e:Lcom/amap/api/mapcore/util/b4;

    return-object p0
.end method

.method static synthetic y(Lcom/amap/api/mapcore/util/e4;)Lcom/amap/api/mapcore/util/i4;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/e4;->i:Lcom/amap/api/mapcore/util/i4;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public B(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h4;->i(I)V

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e4;->V()V

    :cond_1
    return-void
.end method

.method public D()Lcom/amap/api/mapcore/util/z3;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->g:Lcom/amap/api/mapcore/util/z3;

    return-object v0
.end method

.method public E(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->e:Lcom/amap/api/mapcore/util/b4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/b4;->b(Z)V

    return-void
.end method

.method public F(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h4;->m(I)V

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e4;->V()V

    :cond_1
    return-void
.end method

.method public H()Lcom/amap/api/mapcore/util/c4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    return-object v0
.end method

.method public I(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->f:Lcom/amap/api/mapcore/util/g4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/g4;->d(Z)V

    return-void
.end method

.method public J()Lcom/amap/api/mapcore/util/d4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    return-object v0
.end method

.method public K(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public L()Lcom/amap/api/mapcore/util/h4;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    return-object v0
.end method

.method public M(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {p1, v2}, Lcom/amap/api/mapcore/util/h4;->f(Z)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/h4;->f(Z)V

    :cond_2
    :goto_0
    return-void
.end method

.method public N()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->i:Lcom/amap/api/mapcore/util/i4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/i4;->b()V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->f:Lcom/amap/api/mapcore/util/g4;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g4;->a()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h4;->b()V

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/d4;->a()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->e:Lcom/amap/api/mapcore/util/b4;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b4;->a()V

    .line 11
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    if-eqz v0, :cond_5

    .line 12
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c4;->n()V

    :cond_5
    return-void
.end method

.method public O(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->d:Lcom/amap/api/mapcore/util/d4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/d4;->b(Z)V

    :goto_0
    return-void
.end method

.method public P()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e4;->hideInfoWindow()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->I(Landroid/graphics/drawable/Drawable;)V

    .line 3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e4;->N()V

    .line 4
    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViews()V

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->n:Landroid/view/View;

    return-void
.end method

.method public Q(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c4;->j(Z)V

    :goto_0
    return-void
.end method

.method public R()V
    .locals 0

    return-void
.end method

.method public S(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p1, 0x4

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public T()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->e:Lcom/amap/api/mapcore/util/b4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b4;->c()V

    :goto_0
    return-void
.end method

.method public U()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e4;->q:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->b:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/e4;->f(Landroid/content/Context;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/f4;->a()V

    :cond_0
    return-void
.end method

.method public a(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-eqz v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e4;->V()V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h4;->o(I)F

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public b()Landroid/graphics/Point;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h4;->l()Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method public g(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/view/View;->getDrawingCache(Z)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    move-result v2

    int-to-float v1, v1

    int-to-float v2, v2

    .line 5
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method public hideInfoWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/e4$b;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/e4$b;-><init>(Lcom/amap/api/mapcore/util/e4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 4
    invoke-interface {v0, v1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->setInfoWindowShown(Z)V

    :cond_0
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    :cond_1
    return-void
.end method

.method public isInfoWindowShown()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public m(Lcom/amap/api/mapcore/util/c4$d;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c4;->h(Lcom/amap/api/mapcore/util/c4$d;)V

    const-string p1, "MapOverlayViewGroup"

    const-string v0, "setOnIndoorFloorSwitchListener"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public n(Lcom/amap/api/maps/model/CameraPosition;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isLogoEnable()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->isLoadWorldGridMap()Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p1, Lcom/amap/api/maps/model/CameraPosition;->zoom:F

    const/high16 v2, 0x40c00000    # 6.0f

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_2

    iget-object p1, p1, Lcom/amap/api/maps/model/CameraPosition;->target:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, p1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    .line 5
    invoke-static {v2, v3, v4, v5}, Lcom/amap/api/mapcore/util/k3;->a(DD)Z

    move-result p1

    if-nez p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMaskLayerType()I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public o(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->canShowIndoorSwitch()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->h:Lcom/amap/api/mapcore/util/c4;

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/c4;->j(Z)V

    :cond_2
    return-void
.end method

.method public onInfoWindowTap(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    .line 3
    invoke-virtual {v4}, Landroid/view/View;->getRight()I

    move-result v4

    iget-object v5, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getBottom()I

    move-result v5

    invoke-direct {v0, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    invoke-static {v0, v2, p1}, Lcom/amap/api/mapcore/util/r3;->M(Landroid/graphics/Rect;II)Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1
.end method

.method public onLayout(ZIIII)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_2

    .line 2
    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p3

    if-nez p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    instance-of p4, p4, Lcom/amap/api/mapcore/util/e4$c;

    if-eqz p4, :cond_1

    .line 4
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    check-cast p4, Lcom/amap/api/mapcore/util/e4$c;

    .line 5
    invoke-direct {p0, p3, p4}, Lcom/amap/api/mapcore/util/e4;->l(Landroid/view/View;Lcom/amap/api/mapcore/util/e4$c;)V

    goto :goto_1

    .line 6
    :cond_1
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p4

    invoke-direct {p0, p3, p4}, Lcom/amap/api/mapcore/util/e4;->k(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-eqz p1, :cond_3

    .line 8
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/h4;->p()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_2
    return-void
.end method

.method public p(Ljava/lang/Float;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->i:Lcom/amap/api/mapcore/util/i4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i4;->c(F)V

    :cond_1
    return-void
.end method

.method public q(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->i:Lcom/amap/api/mapcore/util/i4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i4;->d(I)V

    :cond_1
    return-void
.end method

.method public r(Ljava/lang/Integer;Ljava/lang/Float;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/h4;->d(IF)V

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e4;->V()V

    :cond_1
    return-void
.end method

.method public redrawInfoWindow()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/16 v1, 0x8

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->checkInBounds()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/e4;->m:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetX()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 4
    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetX()I

    move-result v2

    add-int/2addr v0, v2

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getRealInfoWindowOffsetY()I

    move-result v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    .line 6
    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getInfoWindowOffsetY()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    .line 7
    iget-object v3, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-direct {p0, v3}, Lcom/amap/api/mapcore/util/e4;->d(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)Landroid/view/View;

    move-result-object v3

    if-nez v3, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-direct {p0, v3, v0, v2}, Lcom/amap/api/mapcore/util/e4;->h(Landroid/view/View;II)V

    .line 9
    iget-object v3, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    if-eqz v3, :cond_5

    .line 10
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/e4$c;

    if-eqz v3, :cond_2

    .line 11
    iget-object v4, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v4}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    iget v4, v4, Landroid/graphics/PointF;->x:F

    iget-object v5, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-interface {v5}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->getGeoPosition()Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v5

    iget v5, v5, Landroid/graphics/PointF;->y:F

    invoke-static {v4, v5}, Lcom/autonavi/base/amap/mapcore/FPoint;->obtain(FF)Lcom/autonavi/base/amap/mapcore/FPoint;

    move-result-object v4

    iput-object v4, v3, Lcom/amap/api/mapcore/util/e4$c;->a:Lcom/autonavi/base/amap/mapcore/FPoint;

    .line 12
    iput v0, v3, Lcom/amap/api/mapcore/util/e4$c;->b:I

    .line 13
    iput v2, v3, Lcom/amap/api/mapcore/util/e4$c;->c:I

    :cond_2
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, p0

    .line 14
    invoke-virtual/range {v2 .. v7}, Lcom/amap/api/mapcore/util/e4;->onLayout(ZIIII)V

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->l()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v2}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getTitle()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    invoke-virtual {v3}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getSnippet()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/mapcore/util/s;->k(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-ne v0, v1, :cond_5

    .line 18
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 19
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_5

    .line 20
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->j:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MapOverlayViewGroup"

    const-string v2, "redrawInfoWindow"

    .line 21
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_5
    :goto_0
    return-void
.end method

.method public s(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Integer;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    const/4 v1, 0x2

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 p1, 0x1

    aput-object p2, v2, p1

    aput-object p3, v2, v1

    invoke-virtual {v0, p0, v2}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/h4;->j(Z)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    .line 6
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    invoke-virtual {v0, p1, p3}, Lcom/amap/api/mapcore/util/h4;->e(Ljava/lang/String;I)V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/h4;->q(Z)V

    :goto_0
    return-void
.end method

.method public setInfoWindowAdapterManager(Lcom/amap/api/mapcore/util/s;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    return-void
.end method

.method public showInfoWindow(Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/s;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getSnippet()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->isInfoWindowEnable()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/e4;->hideInfoWindow()V

    .line 6
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->s:Lcom/amap/api/mapcore/util/s;

    if-eqz v0, :cond_4

    .line 7
    iput-object p1, p0, Lcom/amap/api/mapcore/util/e4;->k:Lcom/autonavi/base/amap/api/mapcore/BaseOverlayImp;

    const/4 v0, 0x1

    .line 8
    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/InfoWindowCalculate;->setInfoWindowShown(Z)V

    .line 9
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/e4;->o:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_4
    return-void
.end method

.method public t(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h4;->n(Z)V

    .line 3
    :cond_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/e4;->r:Z

    return-void
.end method

.method public v(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->i:Lcom/amap/api/mapcore/util/i4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i4;->e(Z)V

    return-void
.end method

.method public w(Ljava/lang/Integer;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/h4;->c(I)V

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V

    .line 5
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/e4;->V()V

    :cond_1
    return-void
.end method

.method public x()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h4;->r()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->c:Lcom/amap/api/mapcore/util/h4;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/e4;->p:Lcom/amap/api/mapcore/util/f4;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Lcom/amap/api/mapcore/util/f4;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    return-void

    :cond_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h4;->p()V

    :cond_1
    return-void
.end method
