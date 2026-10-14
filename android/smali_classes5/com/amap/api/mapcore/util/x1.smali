.class public Lcom/amap/api/mapcore/util/x1;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/x1$c;
    }
.end annotation


# instance fields
.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Lcom/amap/api/maps/model/Marker;

.field private c:Lcom/amap/api/maps/model/Circle;

.field private d:Lcom/amap/api/maps/model/MyLocationStyle;

.field private e:Lcom/amap/api/maps/model/LatLng;

.field private f:D

.field private g:Landroid/content/Context;

.field private h:Lcom/amap/api/mapcore/util/b;

.field private i:I

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Z

.field private n:Z

.field private o:Z

.field p:Lcom/amap/api/mapcore/util/x1$c;

.field q:Landroid/animation/ValueAnimator;

.field r:Landroid/animation/Animator$AnimatorListener;

.field s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    const/4 v0, 0x4

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/x1;->i:I

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->j:Z

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->k:Z

    .line 6
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->l:Z

    .line 7
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->m:Z

    .line 8
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->n:Z

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->o:Z

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/amap/api/mapcore/util/x1;->p:Lcom/amap/api/mapcore/util/x1$c;

    .line 11
    new-instance v1, Lcom/amap/api/mapcore/util/x1$a;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/x1$a;-><init>(Lcom/amap/api/mapcore/util/x1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/x1;->r:Landroid/animation/Animator$AnimatorListener;

    .line 12
    new-instance v1, Lcom/amap/api/mapcore/util/x1$b;

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/x1$b;-><init>(Lcom/amap/api/mapcore/util/x1;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/x1;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 13
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/mapcore/util/x1;->g:Landroid/content/Context;

    .line 14
    iput-object p1, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 15
    new-instance v1, Lcom/amap/api/mapcore/util/b;

    invoke-direct {v1, p2, p1}, Lcom/amap/api/mapcore/util/b;-><init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    const/4 p1, 0x1

    .line 16
    invoke-direct {p0, v0, p1}, Lcom/amap/api/mapcore/util/x1;->d(IZ)V

    return-void
.end method

.method private d(IZ)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/x1;->i:I

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->j:Z

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->l:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->k:Z

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->n:Z

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->o:Z

    const/4 v1, 0x1

    if-eq p1, v1, :cond_5

    const/4 v2, 0x2

    if-eq p1, v2, :cond_4

    const/4 v2, 0x3

    if-eq p1, v2, :cond_3

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    const/4 v2, 0x7

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->o:Z

    goto :goto_0

    .line 8
    :cond_1
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->n:Z

    goto :goto_0

    .line 9
    :cond_2
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->k:Z

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->n:Z

    goto :goto_0

    .line 11
    :cond_3
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->k:Z

    .line 12
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->o:Z

    goto :goto_0

    .line 13
    :cond_4
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->k:Z

    .line 14
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->m:Z

    goto :goto_0

    .line 15
    :cond_5
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->k:Z

    .line 16
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->l:Z

    .line 17
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/x1;->m:Z

    .line 18
    :goto_0
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/x1;->n:Z

    if-nez p1, :cond_8

    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/x1;->o:Z

    if-eqz p1, :cond_6

    goto :goto_1

    .line 19
    :cond_6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz p1, :cond_7

    .line 20
    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    .line 21
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->v()V

    .line 22
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->u()V

    .line 23
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->t()V

    goto :goto_4

    .line 24
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/x1;->o:Z

    if-eqz p1, :cond_a

    .line 25
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {p1, v1}, Lcom/amap/api/mapcore/util/b;->g(Z)V

    if-nez p2, :cond_9

    .line 26
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/high16 p2, 0x41880000    # 17.0f

    invoke-static {p2}, Lcom/amap/api/mapcore/util/h;->b(F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_2
    const/high16 p1, 0x42340000    # 45.0f

    .line 28
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/x1;->l(F)V

    goto :goto_3

    .line 29
    :cond_a
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/b;->g(Z)V

    .line 30
    :goto_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/b;->e()V

    .line 31
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz p1, :cond_b

    .line 32
    invoke-virtual {p1, v1}, Lcom/amap/api/maps/model/Marker;->setFlat(Z)V

    :cond_b
    :goto_4
    return-void
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/x1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->w()V

    return-void
.end method

.method private g(Lcom/amap/api/maps/model/LatLng;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-direct {v0, v1, v2, v1, v2}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    .line 3
    :cond_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->p:Lcom/amap/api/mapcore/util/x1$c;

    if-nez v3, :cond_1

    .line 4
    new-instance v3, Lcom/amap/api/mapcore/util/x1$c;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/x1$c;-><init>()V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/x1;->p:Lcom/amap/api/mapcore/util/x1$c;

    .line 5
    :cond_1
    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->q:Landroid/animation/ValueAnimator;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    if-nez v3, :cond_2

    .line 6
    new-instance v3, Lcom/amap/api/mapcore/util/x1$c;

    invoke-direct {v3}, Lcom/amap/api/mapcore/util/x1$c;-><init>()V

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object p1, v6, v4

    invoke-static {v3, v6}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/x1;->q:Landroid/animation/ValueAnimator;

    .line 7
    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->r:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 8
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->q:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->s:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto :goto_0

    :cond_2
    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v5

    aput-object p1, v6, v4

    .line 9
    invoke-virtual {v3, v6}, Landroid/animation/ValueAnimator;->setObjectValues([Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->q:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->p:Lcom/amap/api/mapcore/util/x1$c;

    invoke-virtual {p1, v3}, Landroid/animation/ValueAnimator;->setEvaluator(Landroid/animation/TypeEvaluator;)V

    .line 11
    :goto_0
    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->latitude:D

    cmpl-double p1, v3, v1

    if-nez p1, :cond_3

    iget-wide v3, v0, Lcom/amap/api/maps/model/LatLng;->longitude:D

    cmpl-double p1, v3, v1

    if-nez p1, :cond_3

    .line 12
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->q:Landroid/animation/ValueAnimator;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    :goto_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/x1;)Lcom/amap/api/maps/model/Circle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    return-object p0
.end method

.method private l(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/h;->p(F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic m(Lcom/amap/api/mapcore/util/x1;)Lcom/amap/api/maps/model/Marker;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    return-object p0
.end method

.method private o(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/amap/api/mapcore/util/h;->q(F)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->moveCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private q(F)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v0, 0x43b40000    # 360.0f

    rem-float/2addr p1, v0

    const/high16 v1, 0x43340000    # 180.0f

    const/high16 v2, -0x3ccc0000    # -180.0f

    cmpl-float v1, p1, v1

    if-lez v1, :cond_1

    sub-float/2addr p1, v0

    goto :goto_0

    :cond_1
    cmpg-float v1, p1, v2

    if-gez v1, :cond_2

    add-float/2addr p1, v0

    .line 2
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_3

    neg-float p1, p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_3
    return-void
.end method

.method private t()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->i()V

    return-void
.end method

.method private u()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/x1;->l(F)V

    return-void
.end method

.method private v()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/x1;->o(F)V

    return-void
.end method

.method private w()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->e:Lcom/amap/api/maps/model/LatLng;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->k:Z

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->l:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->j:Z

    if-eqz v0, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/x1;->j:Z

    .line 5
    :try_start_0
    invoke-static {}, Lcom/autonavi/amap/mapcore/IPoint;->obtain()Lcom/autonavi/amap/mapcore/IPoint;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/x1;->e:Lcom/amap/api/maps/model/LatLng;

    iget-wide v2, v1, Lcom/amap/api/maps/model/LatLng;->longitude:D

    iget-wide v4, v1, Lcom/amap/api/maps/model/LatLng;->latitude:D

    invoke-static {v2, v3, v4, v5, v0}, Lcom/autonavi/base/ae/gmap/GLMapState;->lonlat2Geo(DDLcom/autonavi/amap/mapcore/IPoint;)V

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/h;->e(Landroid/graphics/Point;)Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->animateCamera(Lcom/autonavi/amap/mapcore/AbstractCameraUpdateMessage;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "moveMapToLocation"

    .line 8
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private x()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    const-string v1, "location_map_gps_locked.png"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-direct {v0}, Lcom/amap/api/maps/model/MyLocationStyle;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 3
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->z()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyLocationStyle;->myLocationIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/MyLocationStyle;

    .line 7
    :cond_2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->z()V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeGLOverlay(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v2, "MyLocationOverlay"

    const-string v3, "locationIconRemove"

    .line 3
    invoke-static {v0, v2, v3}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 5
    :goto_0
    iput-object v1, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->remove()V

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/b;->f(Lcom/amap/api/maps/model/Marker;)V

    :cond_1
    return-void
.end method

.method private z()V
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance v1, Lcom/amap/api/maps/model/CircleOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/CircleOptions;-><init>()V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/CircleOptions;->zIndex(F)Lcom/amap/api/maps/model/CircleOptions;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addCircle(Lcom/amap/api/maps/model/CircleOptions;)Lcom/amap/api/maps/model/Circle;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getStrokeWidth()F

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    cmpl-float v0, v0, v2

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setStrokeWidth(F)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getFillColor()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    if-eq v0, v2, :cond_2

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getRadiusFillColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setFillColor(I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getStrokeColor()I

    move-result v0

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    if-eq v0, v2, :cond_3

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getStrokeColor()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Circle;->setStrokeColor(I)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_4

    .line 11
    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/Circle;->setCenter(Lcom/amap/api/maps/model/LatLng;)V

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    iget-wide v2, p0, Lcom/amap/api/mapcore/util/x1;->f:D

    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    const/4 v2, 0x0

    if-nez v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    new-instance v3, Lcom/amap/api/maps/model/MarkerOptions;

    invoke-direct {v3}, Lcom/amap/api/maps/model/MarkerOptions;-><init>()V

    invoke-virtual {v3, v2}, Lcom/amap/api/maps/model/MarkerOptions;->visible(Z)Lcom/amap/api/maps/model/MarkerOptions;

    move-result-object v3

    invoke-interface {v0, v3}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->addMarker(Lcom/amap/api/maps/model/MarkerOptions;)Lcom/amap/api/maps/model/Marker;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_c

    .line 17
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getAnchorU()F

    move-result v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getAnchorV()F

    move-result v0

    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_8

    .line 18
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorU()F

    move-result v3

    iget-object v4, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/MyLocationStyle;->getAnchorV()F

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/amap/api/maps/model/Marker;->setAnchor(FF)V

    .line 19
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    .line 20
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getIcons()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/model/BitmapDescriptor;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 21
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    goto :goto_1

    .line 22
    :cond_a
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/Marker;->setIcon(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 23
    :cond_b
    :goto_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->e:Lcom/amap/api/maps/model/LatLng;

    if-eqz v0, :cond_c

    .line 24
    iget-object v2, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v2, v0}, Lcom/amap/api/maps/model/Marker;->setPosition(Lcom/amap/api/maps/model/LatLng;)V

    .line 25
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    .line 26
    :cond_c
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->w()V

    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/b;->f(Lcom/amap/api/maps/model/Marker;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "myLocStyle"

    .line 28
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_2
    return-void
.end method


# virtual methods
.method public a()Lcom/amap/api/maps/model/MyLocationStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    return-object v0
.end method

.method public b(F)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setRotateAngle(F)V

    :cond_0
    return-void
.end method

.method public c(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/x1;->d(IZ)V

    return-void
.end method

.method public e(Landroid/location/Location;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/x1;->i(Z)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 3
    :cond_1
    new-instance v0, Lcom/amap/api/maps/model/LatLng;

    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    .line 4
    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/amap/api/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->e:Lcom/amap/api/maps/model/LatLng;

    .line 5
    invoke-virtual {p1}, Landroid/location/Location;->getAccuracy()F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcom/amap/api/mapcore/util/x1;->f:D

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_2

    .line 7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->x()V

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_3

    .line 9
    :try_start_0
    iget-wide v1, p0, Lcom/amap/api/mapcore/util/x1;->f:D

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    cmpl-double v5, v1, v3

    if-eqz v5, :cond_3

    .line 10
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/Circle;->setRadius(D)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "MyLocationOverlay"

    const-string v2, "setCentAndRadius"

    .line 11
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 13
    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/x1;->q(F)V

    .line 14
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->e:Lcom/amap/api/maps/model/LatLng;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getPosition()Lcom/amap/api/maps/model/LatLng;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/LatLng;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 15
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->e:Lcom/amap/api/maps/model/LatLng;

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/x1;->g(Lcom/amap/api/maps/model/LatLng;)V

    goto :goto_1

    .line 16
    :cond_4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->w()V

    :goto_1
    return-void
.end method

.method public h(Lcom/amap/api/maps/model/MyLocationStyle;)V
    .locals 2

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/x1;->i(Z)V

    .line 3
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->isMyLocationShowing()Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/amap/api/mapcore/util/b;->g(Z)V

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/x1;->i:I

    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->x()V

    .line 7
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/b;->f(Lcom/amap/api/maps/model/Marker;)V

    .line 9
    iget-object p1, p0, Lcom/amap/api/mapcore/util/x1;->d:Lcom/amap/api/maps/model/MyLocationStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyLocationStyle;->getMyLocationType()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/x1;->c(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "MyLocationOverlay"

    const-string v1, "setMyLocationStyle"

    .line 10
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public i(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Circle;->setVisible(Z)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->isVisible()Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/Marker;->setVisible(Z)V

    :cond_1
    return-void
.end method

.method public k()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/x1;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/b;->e()V

    :cond_0
    return-void
.end method

.method public n()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->y()V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/x1;->t()V

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->h:Lcom/amap/api/mapcore/util/b;

    :cond_0
    return-void
.end method

.method public p()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Marker;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/maps/model/Circle;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public s()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->c:Lcom/amap/api/maps/model/Circle;

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/x1;->b:Lcom/amap/api/maps/model/Marker;

    return-void
.end method
