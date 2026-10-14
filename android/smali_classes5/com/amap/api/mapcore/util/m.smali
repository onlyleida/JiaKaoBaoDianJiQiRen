.class public Lcom/amap/api/mapcore/util/m;
.super Lcom/amap/api/mapcore/util/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/m$a;
    }
.end annotation


# static fields
.field private static final o:Landroid/graphics/PointF;


# instance fields
.field private final j:Lcom/amap/api/mapcore/util/m$a;

.field private k:Landroid/graphics/PointF;

.field private l:Landroid/graphics/PointF;

.field private m:Landroid/graphics/PointF;

.field private n:Landroid/graphics/PointF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    sput-object v0, Lcom/amap/api/mapcore/util/m;->o:Landroid/graphics/PointF;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/m$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/k;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m;->m:Landroid/graphics/PointF;

    .line 3
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/m;->n:Landroid/graphics/PointF;

    .line 4
    iput-object p2, p0, Lcom/amap/api/mapcore/util/m;->j:Lcom/amap/api/mapcore/util/m$a;

    return-void
.end method


# virtual methods
.method protected c(ILandroid/view/MotionEvent;)V
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p2, 0x3

    if-eq p1, p2, :cond_2

    goto :goto_0

    .line 1
    :cond_0
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/m;->e(Landroid/view/MotionEvent;)V

    .line 2
    iget p1, p0, Lcom/amap/api/mapcore/util/k;->e:F

    iget v1, p0, Lcom/amap/api/mapcore/util/k;->f:F

    div-float/2addr p1, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result p1

    if-le p1, v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m;->j:Lcom/amap/api/mapcore/util/m$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/m$a;->c(Lcom/amap/api/mapcore/util/m;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m;->j:Lcom/amap/api/mapcore/util/m$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/m$a;->b(Lcom/amap/api/mapcore/util/m;)V

    .line 8
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/k;->a()V

    :cond_3
    :goto_0
    return-void
.end method

.method protected d(ILandroid/view/MotionEvent;II)V
    .locals 0

    if-eqz p1, :cond_3

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x5

    if-eq p1, p3, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    :cond_1
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    .line 4
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/m;->e(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 5
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m;->j:Lcom/amap/api/mapcore/util/m$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/m$a;->a(Lcom/amap/api/mapcore/util/m;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/k;->b:Z

    goto :goto_0

    .line 6
    :cond_3
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/k;->a()V

    .line 7
    invoke-static {p2}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    const-wide/16 p3, 0x0

    .line 8
    iput-wide p3, p0, Lcom/amap/api/mapcore/util/k;->g:J

    .line 9
    invoke-virtual {p0, p2}, Lcom/amap/api/mapcore/util/m;->e(Landroid/view/MotionEvent;)V

    :goto_0
    return-void
.end method

.method protected e(Landroid/view/MotionEvent;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Lcom/amap/api/mapcore/util/k;->e(Landroid/view/MotionEvent;)V

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    .line 3
    invoke-static {p1}, Lcom/amap/api/mapcore/util/k;->g(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/m;->k:Landroid/graphics/PointF;

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/k;->g(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/m;->l:Landroid/graphics/PointF;

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 7
    sget-object v1, Lcom/amap/api/mapcore/util/m;->o:Landroid/graphics/PointF;

    goto :goto_1

    :cond_1
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/m;->k:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget-object v4, p0, Lcom/amap/api/mapcore/util/m;->l:Landroid/graphics/PointF;

    iget v5, v4, Landroid/graphics/PointF;->x:F

    sub-float/2addr v3, v5

    iget v2, v2, Landroid/graphics/PointF;->y:F

    iget v4, v4, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v4

    invoke-direct {v1, v3, v2}, Landroid/graphics/PointF;-><init>(FF)V

    :goto_1
    iput-object v1, p0, Lcom/amap/api/mapcore/util/m;->n:Landroid/graphics/PointF;

    if-eqz v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/k;->c:Landroid/view/MotionEvent;

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/m;->m:Landroid/graphics/PointF;

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/amap/api/mapcore/util/m;->n:Landroid/graphics/PointF;

    iget v2, v1, Landroid/graphics/PointF;->x:F

    add-float/2addr v0, v2

    iput v0, p1, Landroid/graphics/PointF;->x:F

    .line 11
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    add-float/2addr v0, v1

    iput v0, p1, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method public j()Landroid/graphics/PointF;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/m;->n:Landroid/graphics/PointF;

    return-object v0
.end method
