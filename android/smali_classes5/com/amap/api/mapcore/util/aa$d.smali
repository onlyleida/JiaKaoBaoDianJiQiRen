.class Lcom/amap/api/mapcore/util/aa$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/aa;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field private a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

.field final synthetic b:Lcom/amap/api/mapcore/util/aa;


# direct methods
.method private constructor <init>(Lcom/amap/api/mapcore/util/aa;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-direct {p1}, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/aa$d;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/mapcore/util/aa;Lcom/amap/api/mapcore/util/aa$a;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/aa$d;-><init>(Lcom/amap/api/mapcore/util/aa;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/amap/api/mapcore/util/m;)Z
    .locals 5

    const/4 v0, 0x1

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa$d;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    iput v0, v1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v2, 0x3

    .line 3
    iput v2, v1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k;->h()Landroid/view/MotionEvent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    aput v4, v2, v3

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k;->h()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v2, v0

    iput-object v2, v1, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa$d;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v1, v1, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-static {v2, v3, v3}, Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    return v0

    :catchall_0
    move-exception p1

    const-string v1, "GLMapGestrureDetector"

    const-string v2, "onMoveBegin"

    .line 7
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public b(Lcom/amap/api/mapcore/util/m;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v1, 0x3

    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    .line 3
    iput v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k;->h()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k;->h()Landroid/view/MotionEvent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    aput p1, v1, v2

    iput-object v1, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object p1, p1, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aa;->u(Lcom/amap/api/mapcore/util/aa;)I

    move-result v0

    if-lez v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/4 v1, 0x5

    invoke-interface {v0, p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setGestureStatus(II)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v1, 0x66

    const/4 v2, 0x0

    invoke-static {v1, v2, v2}, Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    return-void

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v1, "onMoveEnd"

    .line 9
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public c(Lcom/amap/api/mapcore/util/m;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aa;->s(Lcom/amap/api/mapcore/util/aa;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v0

    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isScrollGesturesEnabled()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/aa;->t(Lcom/amap/api/mapcore/util/aa;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    const/4 v2, 0x2

    iput v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureState:I

    const/4 v3, 0x3

    .line 4
    iput v3, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mGestureType:I

    new-array v2, v2, [F

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k;->h()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/k;->h()Landroid/view/MotionEvent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    aput v3, v2, v1

    iput-object v2, v0, Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;->mLocation:[F

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa$d;->a:Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;

    invoke-interface {v0, v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getEngineIDWithGestureInfo(Lcom/autonavi/base/ae/gmap/gesture/EAMapPlatformGestureInfo;)I

    move-result v0

    .line 7
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/m;->j()Landroid/graphics/PointF;

    move-result-object p1

    const/high16 v2, 0x3f800000    # 1.0f

    .line 8
    iget-object v3, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    invoke-static {v3}, Lcom/amap/api/mapcore/util/aa;->u(Lcom/amap/api/mapcore/util/aa;)I

    move-result v3

    if-nez v3, :cond_2

    const/high16 v2, 0x40800000    # 4.0f

    .line 9
    :cond_2
    iget v3, p1, Landroid/graphics/PointF;->x:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v3, v3, v2

    if-gtz v3, :cond_4

    iget v3, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    cmpl-float v2, v3, v2

    if-lez v2, :cond_3

    goto :goto_0

    :cond_3
    return v4

    .line 10
    :cond_4
    :goto_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/aa;->u(Lcom/amap/api/mapcore/util/aa;)I

    move-result v2

    if-nez v2, :cond_5

    .line 11
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->clearAnimations(IZ)V

    .line 12
    :cond_5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    iget-object v2, v2, Lcom/amap/api/mapcore/util/aa;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    const/16 v3, 0x65

    iget v4, p1, Landroid/graphics/PointF;->x:F

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-static {v3, v4, p1}, Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;->obtain(IFF)Lcom/autonavi/base/amap/mapcore/message/MoveGestureMapMessage;

    move-result-object p1

    invoke-interface {v2, v0, p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addGestureMapMessage(ILcom/autonavi/base/amap/mapcore/message/AbstractGestureMapMessage;)V

    .line 13
    iget-object p1, p0, Lcom/amap/api/mapcore/util/aa$d;->b:Lcom/amap/api/mapcore/util/aa;

    invoke-static {p1}, Lcom/amap/api/mapcore/util/aa;->v(Lcom/amap/api/mapcore/util/aa;)I

    :cond_6
    :goto_1
    return v1

    :catchall_0
    move-exception p1

    const-string v0, "GLMapGestrureDetector"

    const-string v2, "onMove"

    .line 14
    invoke-static {p1, v0, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return v1
.end method
