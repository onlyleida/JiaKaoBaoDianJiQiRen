.class public Lcom/amap/api/mapcore/util/aa;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/aa$f;,
        Lcom/amap/api/mapcore/util/aa$c;,
        Lcom/amap/api/mapcore/util/aa$d;,
        Lcom/amap/api/mapcore/util/aa$e;,
        Lcom/amap/api/mapcore/util/aa$b;
    }
.end annotation


# instance fields
.field a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field b:Landroid/content/Context;

.field c:Landroid/view/GestureDetector;

.field private d:Lcom/amap/api/mapcore/util/o;

.field private e:Lcom/amap/api/mapcore/util/m;

.field private f:Lcom/amap/api/mapcore/util/l;

.field private g:Lcom/amap/api/mapcore/util/p;

.field private h:Z

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:I

.field private r:I

.field public s:Lcom/amap/api/maps/model/AMapGestureListener;

.field private t:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/aa;->h:Z

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->i:I

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->j:I

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->k:I

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->l:I

    .line 7
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->m:I

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/aa;->n:Z

    .line 9
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/aa;->o:Z

    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/aa;->p:Z

    .line 11
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aa;->t:Landroid/os/Handler;

    .line 12
    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/aa;->b:Landroid/content/Context;

    .line 13
    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 14
    new-instance p1, Lcom/amap/api/mapcore/util/aa$b;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/amap/api/mapcore/util/aa$b;-><init>(Lcom/amap/api/mapcore/util/aa;Lcom/amap/api/mapcore/util/aa$a;)V

    .line 15
    new-instance v1, Landroid/view/GestureDetector;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/aa;->t:Landroid/os/Handler;

    invoke-direct {v1, v2, p1, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/aa;->c:Landroid/view/GestureDetector;

    .line 16
    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->setOnDoubleTapListener(Landroid/view/GestureDetector$OnDoubleTapListener;)V

    .line 17
    new-instance p1, Lcom/amap/api/mapcore/util/o;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/aa$e;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/aa$e;-><init>(Lcom/amap/api/mapcore/util/aa;Lcom/amap/api/mapcore/util/aa$a;)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/mapcore/util/o;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/o$a;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa;->d:Lcom/amap/api/mapcore/util/o;

    .line 18
    new-instance p1, Lcom/amap/api/mapcore/util/m;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/aa$d;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/aa$d;-><init>(Lcom/amap/api/mapcore/util/aa;Lcom/amap/api/mapcore/util/aa$a;)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/mapcore/util/m;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/m$a;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa;->e:Lcom/amap/api/mapcore/util/m;

    .line 19
    new-instance p1, Lcom/amap/api/mapcore/util/l;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/aa$c;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/aa$c;-><init>(Lcom/amap/api/mapcore/util/aa;Lcom/amap/api/mapcore/util/aa$a;)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/mapcore/util/l;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/l$a;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa;->f:Lcom/amap/api/mapcore/util/l;

    .line 20
    new-instance p1, Lcom/amap/api/mapcore/util/p;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa;->b:Landroid/content/Context;

    new-instance v2, Lcom/amap/api/mapcore/util/aa$f;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/mapcore/util/aa$f;-><init>(Lcom/amap/api/mapcore/util/aa;Lcom/amap/api/mapcore/util/aa$a;)V

    invoke-direct {p1, v1, v2}, Lcom/amap/api/mapcore/util/p;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/p$a;)V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa;->g:Lcom/amap/api/mapcore/util/p;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/aa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/aa;->l:I

    return p0
.end method

.method static synthetic f(Lcom/amap/api/mapcore/util/aa;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/aa;->n:Z

    return p1
.end method

.method static synthetic h(Lcom/amap/api/mapcore/util/aa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/aa;->j:I

    return p0
.end method

.method static synthetic i(Lcom/amap/api/mapcore/util/aa;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/aa;->h:Z

    return p1
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/aa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/aa;->k:I

    return p0
.end method

.method static synthetic l(Lcom/amap/api/mapcore/util/aa;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/aa;->p:Z

    return p1
.end method

.method static synthetic n(Lcom/amap/api/mapcore/util/aa;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/aa;->p:Z

    return p0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/aa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/aa;->m:I

    return p0
.end method

.method static synthetic p(Lcom/amap/api/mapcore/util/aa;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/aa;->n:Z

    return p0
.end method

.method static synthetic q(Lcom/amap/api/mapcore/util/aa;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->j:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/aa;->j:I

    return v0
.end method

.method static synthetic r(Lcom/amap/api/mapcore/util/aa;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->k:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/aa;->k:I

    return v0
.end method

.method static synthetic s(Lcom/amap/api/mapcore/util/aa;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/aa;->h:Z

    return p0
.end method

.method static synthetic t(Lcom/amap/api/mapcore/util/aa;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/aa;->o:Z

    return p0
.end method

.method static synthetic u(Lcom/amap/api/mapcore/util/aa;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/amap/api/mapcore/util/aa;->i:I

    return p0
.end method

.method static synthetic v(Lcom/amap/api/mapcore/util/aa;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->i:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/aa;->i:I

    return v0
.end method

.method static synthetic w(Lcom/amap/api/mapcore/util/aa;)I
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->l:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/amap/api/mapcore/util/aa;->l:I

    return v0
.end method


# virtual methods
.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->i:I

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->k:I

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->j:I

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->l:I

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->m:I

    return-void
.end method

.method public c(II)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/aa;->q:I

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/aa;->r:I

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa;->d:Lcom/amap/api/mapcore/util/o;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/n;->d(II)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa;->e:Lcom/amap/api/mapcore/util/m;

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/k;->b(II)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa;->f:Lcom/amap/api/mapcore/util/l;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/k;->b(II)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa;->g:Lcom/amap/api/mapcore/util/p;

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/mapcore/util/k;->b(II)V

    :cond_3
    return-void
.end method

.method public d(Lcom/amap/api/maps/model/AMapGestureListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa;->s:Lcom/amap/api/maps/model/AMapGestureListener;

    return-void
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->m:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/aa;->m:I

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/aa;->o:Z

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/aa;->p:Z

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x6

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 8
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/aa;->o:Z

    .line 9
    :cond_2
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/aa;->n:Z

    const/4 v2, 0x2

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->m:I

    if-lt v0, v2, :cond_3

    .line 10
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/aa;->n:Z

    :cond_3
    :try_start_0
    new-array v0, v2, [I

    aput v1, v0, v1

    aput v1, v0, v3

    .line 11
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v2, :cond_4

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 12
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 13
    :cond_4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->s:Lcom/amap/api/maps/model/AMapGestureListener;

    if-eqz v2, :cond_6

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_5

    .line 15
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->s:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/amap/api/maps/model/AMapGestureListener;->onDown(FF)V

    goto :goto_0

    .line 16
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v3, :cond_6

    .line 17
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->s:Lcom/amap/api/maps/model/AMapGestureListener;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-interface {v2, v4, v5}, Lcom/amap/api/maps/model/AMapGestureListener;->onUp(FF)V

    .line 18
    :cond_6
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->c:Landroid/view/GestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 19
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->f:Lcom/amap/api/mapcore/util/l;

    aget v4, v0, v1

    aget v5, v0, v3

    invoke-virtual {v2, p1, v4, v5}, Lcom/amap/api/mapcore/util/k;->i(Landroid/view/MotionEvent;II)Z

    move-result v2

    .line 20
    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/aa;->h:Z

    if-eqz v4, :cond_7

    iget v4, p0, Lcom/amap/api/mapcore/util/aa;->l:I

    if-gtz v4, :cond_8

    .line 21
    :cond_7
    iget-object v4, p0, Lcom/amap/api/mapcore/util/aa;->g:Lcom/amap/api/mapcore/util/p;

    aget v5, v0, v1

    aget v6, v0, v3

    invoke-virtual {v4, p1, v5, v6}, Lcom/amap/api/mapcore/util/k;->i(Landroid/view/MotionEvent;II)Z

    .line 22
    iget-boolean v4, p0, Lcom/amap/api/mapcore/util/aa;->n:Z

    if-nez v4, :cond_8

    .line 23
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->d:Lcom/amap/api/mapcore/util/o;

    invoke-virtual {v2, p1}, Lcom/amap/api/mapcore/util/n;->e(Landroid/view/MotionEvent;)Z

    .line 24
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa;->e:Lcom/amap/api/mapcore/util/m;

    aget v4, v0, v1

    aget v0, v0, v3

    invoke-virtual {v2, p1, v4, v0}, Lcom/amap/api/mapcore/util/k;->i(Landroid/view/MotionEvent;II)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_8
    return v2

    :catchall_0
    move-exception p1

    .line 25
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method

.method public g()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->q:I

    return v0
.end method

.method public j()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/aa;->r:I

    return v0
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa;->t:Landroid/os/Handler;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/aa;->t:Landroid/os/Handler;

    :cond_0
    return-void
.end method
