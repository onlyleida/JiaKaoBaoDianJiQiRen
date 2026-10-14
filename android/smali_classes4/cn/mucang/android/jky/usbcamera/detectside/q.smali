.class Lcn/mucang/android/jky/usbcamera/detectside/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lorg/opencv/core/Point;

.field public b:Lorg/opencv/core/Point;

.field public c:D

.field public d:D

.field public e:D

.field public f:Lorg/opencv/core/Point;

.field public g:F

.field public h:F

.field public i:F

.field public j:F

.field public k:F

.field public l:F

.field public m:F

.field public n:F

.field public o:F

.field public p:F

.field public q:F

.field public r:F

.field public s:F

.field public t:F

.field public u:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    .line 3
    iput p2, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    float-to-double p1, p1

    .line 4
    invoke-static {p1, p2}, Ljava/lang/Math;->toDegrees(D)D

    .line 5
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/q;->h()V

    return-void
.end method

.method private a()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->a:Lorg/opencv/core/Point;

    iget-wide v1, v0, Lorg/opencv/core/Point;->x:D

    iget-wide v3, v0, Lorg/opencv/core/Point;->y:D

    iget-object v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->b:Lorg/opencv/core/Point;

    iget-wide v5, v0, Lorg/opencv/core/Point;->x:D

    iget-wide v7, v0, Lorg/opencv/core/Point;->y:D

    sub-double/2addr v7, v3

    .line 2
    iput-wide v7, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->c:D

    sub-double v9, v1, v5

    .line 3
    iput-wide v9, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->d:D

    sub-double/2addr v5, v1

    mul-double v5, v5, v3

    mul-double v1, v1, v7

    sub-double/2addr v5, v1

    .line 4
    iput-wide v5, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->e:D

    const-wide/16 v0, 0x0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    cmpg-double v4, v9, v0

    if-gez v4, :cond_0

    mul-double v7, v7, v2

    .line 5
    iput-wide v7, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->c:D

    mul-double v9, v9, v2

    .line 6
    iput-wide v9, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->d:D

    mul-double v5, v5, v2

    .line 7
    iput-wide v5, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->e:D

    goto :goto_0

    :cond_0
    cmpl-double v4, v9, v0

    if-nez v4, :cond_1

    cmpg-double v4, v7, v0

    if-gez v4, :cond_1

    mul-double v7, v7, v2

    .line 8
    iput-wide v7, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->c:D

    mul-double v5, v5, v2

    .line 9
    iput-wide v5, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->e:D

    :cond_1
    :goto_0
    return-void
.end method

.method private b()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    .line 2
    iget v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    iput v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    const/4 v2, 0x0

    cmpg-float v2, v1, v2

    if-gez v2, :cond_0

    neg-float v1, v1

    .line 3
    iput v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    add-double/2addr v0, v2

    double-to-float v0, v0

    .line 4
    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->j:F

    .line 5
    :cond_0
    iget v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->k:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->i:F

    return-void
.end method

.method private c()V
    .locals 5

    const v0, 0x4295999a    # 74.8f

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->f(F)F

    move-result v0

    const/high16 v1, 0x42950000    # 74.5f

    float-to-double v1, v1

    const/high16 v3, 0x41200000    # 10.0f

    .line 2
    invoke-static {v3}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jky/usbcamera/detectside/q;->g(D)D

    move-result-wide v3

    sub-double v3, v1, v3

    double-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jky/usbcamera/detectside/p;->f(F)F

    move-result v3

    iput v3, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->p:F

    const/high16 v3, 0x43700000    # 240.0f

    .line 3
    invoke-static {v3}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jky/usbcamera/detectside/q;->g(D)D

    move-result-wide v3

    sub-double v3, v1, v3

    double-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jky/usbcamera/detectside/p;->f(F)F

    move-result v3

    iput v3, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->q:F

    const/4 v3, 0x0

    .line 4
    invoke-static {v3}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result v3

    float-to-double v3, v3

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jky/usbcamera/detectside/q;->g(D)D

    move-result-wide v3

    sub-double v3, v1, v3

    double-to-float v3, v3

    invoke-static {v3}, Lcn/mucang/android/jky/usbcamera/detectside/p;->f(F)F

    move-result v3

    iput v3, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->r:F

    .line 5
    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->b(F)F

    move-result v0

    float-to-double v3, v0

    invoke-direct {p0, v3, v4}, Lcn/mucang/android/jky/usbcamera/detectside/q;->g(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v0, v1

    invoke-static {v0}, Lcn/mucang/android/jky/usbcamera/detectside/p;->f(F)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->s:F

    return-void
.end method

.method private d()V
    .locals 11

    .line 1
    iget v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->t:F

    .line 2
    iget v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->g:F

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->u:F

    .line 3
    iget v1, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->t:F

    iget v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->h:F

    mul-float v1, v1, v2

    float-to-double v3, v1

    mul-float v0, v0, v2

    float-to-double v0, v0

    .line 4
    new-instance v2, Lorg/opencv/core/Point;

    invoke-direct {v2}, Lorg/opencv/core/Point;-><init>()V

    .line 5
    new-instance v5, Lorg/opencv/core/Point;

    invoke-direct {v5}, Lorg/opencv/core/Point;-><init>()V

    .line 6
    iget v6, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->u:F

    neg-float v7, v6

    const v8, 0x459c4000    # 5000.0f

    mul-float v7, v7, v8

    float-to-double v9, v7

    add-double/2addr v9, v3

    iput-wide v9, v2, Lorg/opencv/core/Point;->x:D

    .line 7
    iget v7, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->t:F

    mul-float v9, v7, v8

    float-to-double v9, v9

    add-double/2addr v9, v0

    iput-wide v9, v2, Lorg/opencv/core/Point;->y:D

    neg-float v6, v6

    mul-float v6, v6, v8

    float-to-double v9, v6

    sub-double v9, v3, v9

    .line 8
    iput-wide v9, v5, Lorg/opencv/core/Point;->x:D

    mul-float v7, v7, v8

    float-to-double v6, v7

    sub-double v6, v0, v6

    .line 9
    iput-wide v6, v5, Lorg/opencv/core/Point;->y:D

    .line 10
    new-instance v6, Lorg/opencv/core/Point;

    invoke-direct {v6, v3, v4, v0, v1}, Lorg/opencv/core/Point;-><init>(DD)V

    iput-object v6, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->f:Lorg/opencv/core/Point;

    .line 11
    iput-object v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->a:Lorg/opencv/core/Point;

    .line 12
    iput-object v5, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->b:Lorg/opencv/core/Point;

    return-void
.end method

.method public static e(FF)D
    .locals 0

    sub-float/2addr p0, p1

    float-to-double p0, p0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private g(D)D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->d:D

    const-wide/16 v2, 0x0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->e:D

    iget-wide v4, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->c:D

    mul-double v4, v4, p1

    add-double/2addr v2, v4

    neg-double p1, v2

    div-double/2addr p1, v0

    return-wide p1
.end method

.method private h()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/q;->d()V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/q;->b()V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/q;->a()V

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jky/usbcamera/detectside/q;->c()V

    return-void
.end method


# virtual methods
.method public f(Lcn/mucang/android/jky/usbcamera/detectside/q;)Lorg/opencv/core/Point;
    .locals 14

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->c:D

    iget-wide v2, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->d:D

    mul-double v4, v0, v2

    iget-wide v6, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->c:D

    iget-wide v8, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->d:D

    mul-double v10, v6, v8

    sub-double/2addr v4, v10

    const-wide/16 v10, 0x0

    cmpl-double v12, v4, v10

    if-nez v12, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 2
    :cond_0
    iget-wide v10, p1, Lcn/mucang/android/jky/usbcamera/detectside/q;->e:D

    mul-double v8, v8, v10

    iget-wide v12, p0, Lcn/mucang/android/jky/usbcamera/detectside/q;->e:D

    mul-double v2, v2, v12

    sub-double/2addr v8, v2

    div-double/2addr v8, v4

    mul-double v12, v12, v6

    mul-double v10, v10, v0

    sub-double/2addr v12, v10

    div-double/2addr v12, v4

    .line 3
    new-instance p1, Lorg/opencv/core/Point;

    invoke-direct {p1, v8, v9, v12, v13}, Lorg/opencv/core/Point;-><init>(DD)V

    return-object p1
.end method
