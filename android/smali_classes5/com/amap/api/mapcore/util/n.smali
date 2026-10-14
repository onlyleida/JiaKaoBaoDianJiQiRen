.class public Lcom/amap/api/mapcore/util/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/n$a;
    }
.end annotation


# instance fields
.field private A:I

.field private final a:Landroid/content/Context;

.field private final b:Lcom/amap/api/mapcore/util/n$a;

.field private c:Z

.field private d:Landroid/view/MotionEvent;

.field private e:Landroid/view/MotionEvent;

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:J

.field private final r:F

.field private s:F

.field private t:F

.field private u:Z

.field private v:Z

.field private w:I

.field private x:I

.field private y:Z

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/n$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/n;->z:I

    .line 3
    iput v0, p0, Lcom/amap/api/mapcore/util/n;->A:I

    .line 4
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/n;->a:Landroid/content/Context;

    .line 6
    iput-object p2, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledEdgeSlop()I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->r:F

    return-void
.end method

.method private static a(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result p0

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getX(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private b(Landroid/view/MotionEvent;II)I
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    .line 2
    invoke-virtual {p1, p2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p3, :cond_0

    if-eq v1, p2, :cond_0

    .line 3
    iget v2, p0, Lcom/amap/api/mapcore/util/n;->r:F

    .line 4
    iget v3, p0, Lcom/amap/api/mapcore/util/n;->s:F

    .line 5
    iget v4, p0, Lcom/amap/api/mapcore/util/n;->t:F

    .line 6
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->a(Landroid/view/MotionEvent;I)F

    move-result v5

    .line 7
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->g(Landroid/view/MotionEvent;I)F

    move-result v6

    cmpl-float v7, v5, v2

    if-ltz v7, :cond_0

    cmpl-float v2, v6, v2

    if-ltz v2, :cond_0

    cmpg-float v2, v5, v3

    if-gtz v2, :cond_0

    cmpg-float v2, v6, v4

    if-gtz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, -0x1

    :goto_1
    return v1
.end method

.method private static g(Landroid/view/MotionEvent;I)F
    .locals 2

    if-gez p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p1, :cond_1

    .line 1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result p0

    return p0

    .line 2
    :cond_1
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    sub-float/2addr v0, v1

    .line 3
    invoke-virtual {p0, p1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p0

    add-float/2addr p0, v0

    return p0
.end method

.method private h(Landroid/view/MotionEvent;)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    :cond_0
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n;->e:Landroid/view/MotionEvent;

    const/high16 v0, -0x40800000    # -1.0f

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/n;->l:F

    .line 5
    iput v0, p0, Lcom/amap/api/mapcore/util/n;->m:F

    .line 6
    iput v0, p0, Lcom/amap/api/mapcore/util/n;->n:F

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    .line 8
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 9
    iget v2, p0, Lcom/amap/api/mapcore/util/n;->x:I

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v2

    .line 10
    iget v3, p0, Lcom/amap/api/mapcore/util/n;->w:I

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 11
    iget v4, p0, Lcom/amap/api/mapcore/util/n;->x:I

    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v4

    if-ltz v1, :cond_2

    if-ltz v2, :cond_2

    if-ltz v3, :cond_2

    if-gez v4, :cond_1

    goto :goto_0

    .line 12
    :cond_1
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 15
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 16
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 17
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 18
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getX(I)F

    move-result v11

    .line 19
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getY(I)F

    move-result v12

    sub-float/2addr v7, v5

    sub-float/2addr v8, v6

    sub-float/2addr v11, v9

    sub-float/2addr v12, v10

    .line 20
    iput v7, p0, Lcom/amap/api/mapcore/util/n;->h:F

    .line 21
    iput v8, p0, Lcom/amap/api/mapcore/util/n;->i:F

    .line 22
    iput v11, p0, Lcom/amap/api/mapcore/util/n;->j:F

    .line 23
    iput v12, p0, Lcom/amap/api/mapcore/util/n;->k:F

    const/high16 v5, 0x3f000000    # 0.5f

    mul-float v11, v11, v5

    add-float/2addr v9, v11

    .line 24
    iput v9, p0, Lcom/amap/api/mapcore/util/n;->f:F

    mul-float v12, v12, v5

    add-float/2addr v10, v12

    .line 25
    iput v10, p0, Lcom/amap/api/mapcore/util/n;->g:F

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v5

    invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v7

    sub-long/2addr v5, v7

    iput-wide v5, p0, Lcom/amap/api/mapcore/util/n;->q:J

    .line 27
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v3

    .line 28
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    add-float/2addr v3, p1

    iput v3, p0, Lcom/amap/api/mapcore/util/n;->o:F

    .line 29
    invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result p1

    .line 30
    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->getPressure(I)F

    move-result v0

    add-float/2addr p1, v0

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->p:F

    return-void

    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 31
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/n;->v:Z

    .line 32
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    if-eqz p1, :cond_3

    .line 33
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/n$a;->b(Lcom/amap/api/mapcore/util/n;)V

    :cond_3
    return-void
.end method

.method private r()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 3
    iput-object v1, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->e:Landroid/view/MotionEvent;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/n;->e:Landroid/view/MotionEvent;

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    const/4 v1, -0x1

    .line 9
    iput v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 10
    iput v1, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/n;->v:Z

    return-void
.end method


# virtual methods
.method public c()Landroid/view/MotionEvent;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->e:Landroid/view/MotionEvent;

    return-object v0
.end method

.method public d(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/n;->z:I

    .line 2
    iput p2, p0, Lcom/amap/api/mapcore/util/n;->A:I

    return-void
.end method

.method public e(Landroid/view/MotionEvent;)Z
    .locals 13

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    if-nez v1, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n;->r()V

    .line 3
    :cond_0
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/n;->v:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    goto/16 :goto_14

    .line 4
    :cond_1
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    const/4 v5, 0x6

    const/4 v6, 0x5

    const/4 v7, -0x1

    const/16 v8, 0x8

    const/4 v9, 0x2

    if-nez v2, :cond_25

    if-eqz v1, :cond_24

    if-eq v1, v4, :cond_23

    const/high16 v2, -0x40800000    # -1.0f

    if-eq v1, v9, :cond_19

    if-eq v1, v6, :cond_9

    if-eq v1, v5, :cond_2

    goto/16 :goto_13

    .line 5
    :cond_2
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    if-eqz v1, :cond_36

    .line 6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v8, :cond_3

    .line 7
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 8
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-le v1, v9, :cond_5

    .line 9
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    if-ne v2, v1, :cond_4

    .line 10
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->x:I

    invoke-direct {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_36

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    goto/16 :goto_13

    .line 12
    :cond_4
    iget v3, p0, Lcom/amap/api/mapcore/util/n;->x:I

    if-ne v2, v3, :cond_36

    .line 13
    invoke-direct {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_36

    .line 14
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->x:I

    goto/16 :goto_13

    .line 15
    :cond_5
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->w:I

    if-ne v2, v0, :cond_6

    iget v0, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 16
    :cond_6
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-gez v0, :cond_8

    .line 17
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->v:Z

    .line 18
    iget-boolean p1, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    if-eqz p1, :cond_7

    .line 19
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/n$a;->b(Lcom/amap/api/mapcore/util/n;)V

    :cond_7
    return v3

    .line 20
    :cond_8
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 21
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    .line 22
    iput v7, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 23
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->g:F

    goto/16 :goto_13

    .line 25
    :cond_9
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->z:I

    if-eqz v1, :cond_b

    iget v5, p0, Lcom/amap/api/mapcore/util/n;->A:I

    if-nez v5, :cond_a

    goto :goto_1

    :cond_a
    int-to-float v1, v1

    .line 26
    iget v6, p0, Lcom/amap/api/mapcore/util/n;->r:F

    sub-float/2addr v1, v6

    iput v1, p0, Lcom/amap/api/mapcore/util/n;->s:F

    int-to-float v1, v5

    sub-float/2addr v1, v6

    .line 27
    iput v1, p0, Lcom/amap/api/mapcore/util/n;->t:F

    goto :goto_2

    .line 28
    :cond_b
    :goto_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 30
    iget v5, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v5, v5

    iget v6, p0, Lcom/amap/api/mapcore/util/n;->r:F

    sub-float/2addr v5, v6

    iput v5, p0, Lcom/amap/api/mapcore/util/n;->s:F

    .line 31
    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    sub-float/2addr v1, v6

    iput v1, p0, Lcom/amap/api/mapcore/util/n;->t:F

    .line 32
    :goto_2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    if-eqz v1, :cond_c

    .line 33
    invoke-virtual {v1}, Landroid/view/MotionEvent;->recycle()V

    .line 34
    :cond_c
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v1

    iput-object v1, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    const-wide/16 v5, 0x0

    .line 35
    iput-wide v5, p0, Lcom/amap/api/mapcore/util/n;->q:J

    if-lt v0, v8, :cond_f

    .line 36
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    .line 37
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 38
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/mapcore/util/n;->x:I

    if-ltz v1, :cond_d

    if-ne v1, v0, :cond_11

    :cond_d
    if-ne v1, v0, :cond_e

    goto :goto_3

    :cond_e
    move v7, v5

    .line 39
    :goto_3
    invoke-direct {p0, p1, v7, v1}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v1

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/mapcore/util/n;->w:I

    goto :goto_4

    .line 41
    :cond_f
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-lez v0, :cond_10

    .line 42
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    .line 43
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/mapcore/util/n;->x:I

    goto :goto_4

    :cond_10
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 45
    :cond_11
    :goto_4
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    .line 46
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/n;->h(Landroid/view/MotionEvent;)V

    .line 47
    iget v5, p0, Lcom/amap/api/mapcore/util/n;->r:F

    .line 48
    iget v6, p0, Lcom/amap/api/mapcore/util/n;->s:F

    .line 49
    iget v7, p0, Lcom/amap/api/mapcore/util/n;->t:F

    .line 50
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->a(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 51
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->g(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 52
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/n;->a(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 53
    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/n;->g(Landroid/view/MotionEvent;I)F

    move-result v11

    cmpg-float v12, v8, v5

    if-ltz v12, :cond_13

    cmpg-float v12, v9, v5

    if-ltz v12, :cond_13

    cmpl-float v8, v8, v6

    if-gtz v8, :cond_13

    cmpl-float v8, v9, v7

    if-lez v8, :cond_12

    goto :goto_5

    :cond_12
    const/4 v8, 0x0

    goto :goto_6

    :cond_13
    :goto_5
    const/4 v8, 0x1

    :goto_6
    cmpg-float v9, v10, v5

    if-ltz v9, :cond_15

    cmpg-float v5, v11, v5

    if-ltz v5, :cond_15

    cmpl-float v5, v10, v6

    if-gtz v5, :cond_15

    cmpl-float v5, v11, v7

    if-lez v5, :cond_14

    goto :goto_7

    :cond_14
    const/4 v5, 0x0

    goto :goto_8

    :cond_15
    :goto_7
    const/4 v5, 0x1

    :goto_8
    if-eqz v8, :cond_16

    if-eqz v5, :cond_16

    .line 54
    iput v2, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 55
    iput v2, p0, Lcom/amap/api/mapcore/util/n;->g:F

    .line 56
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    goto/16 :goto_13

    :cond_16
    if-eqz v8, :cond_17

    .line 57
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 58
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->g:F

    .line 59
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    goto/16 :goto_13

    :cond_17
    if-eqz v5, :cond_18

    .line 60
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 61
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->g:F

    .line 62
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    goto/16 :goto_13

    .line 63
    :cond_18
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    .line 64
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/n$a;->c(Lcom/amap/api/mapcore/util/n;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    goto/16 :goto_13

    .line 65
    :cond_19
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    if-eqz v0, :cond_36

    .line 66
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->r:F

    .line 67
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->s:F

    .line 68
    iget v5, p0, Lcom/amap/api/mapcore/util/n;->t:F

    .line 69
    iget v6, p0, Lcom/amap/api/mapcore/util/n;->w:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v6

    .line 70
    iget v7, p0, Lcom/amap/api/mapcore/util/n;->x:I

    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v7

    .line 71
    invoke-static {p1, v6}, Lcom/amap/api/mapcore/util/n;->a(Landroid/view/MotionEvent;I)F

    move-result v8

    .line 72
    invoke-static {p1, v6}, Lcom/amap/api/mapcore/util/n;->g(Landroid/view/MotionEvent;I)F

    move-result v9

    .line 73
    invoke-static {p1, v7}, Lcom/amap/api/mapcore/util/n;->a(Landroid/view/MotionEvent;I)F

    move-result v10

    .line 74
    invoke-static {p1, v7}, Lcom/amap/api/mapcore/util/n;->g(Landroid/view/MotionEvent;I)F

    move-result v11

    cmpg-float v12, v8, v0

    if-ltz v12, :cond_1b

    cmpg-float v12, v9, v0

    if-ltz v12, :cond_1b

    cmpl-float v8, v8, v1

    if-gtz v8, :cond_1b

    cmpl-float v8, v9, v5

    if-lez v8, :cond_1a

    goto :goto_9

    :cond_1a
    const/4 v8, 0x0

    goto :goto_a

    :cond_1b
    :goto_9
    const/4 v8, 0x1

    :goto_a
    cmpg-float v9, v10, v0

    if-ltz v9, :cond_1d

    cmpg-float v0, v11, v0

    if-ltz v0, :cond_1d

    cmpl-float v0, v10, v1

    if-gtz v0, :cond_1d

    cmpl-float v0, v11, v5

    if-lez v0, :cond_1c

    goto :goto_b

    :cond_1c
    const/4 v0, 0x0

    goto :goto_c

    :cond_1d
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-eqz v8, :cond_1e

    .line 75
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->x:I

    invoke-direct {p0, p1, v1, v6}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v1

    if-ltz v1, :cond_1e

    .line 76
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iput v5, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 77
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->a(Landroid/view/MotionEvent;I)F

    .line 78
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->g(Landroid/view/MotionEvent;I)F

    move v6, v1

    const/4 v8, 0x0

    :cond_1e
    if-eqz v0, :cond_1f

    .line 79
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    invoke-direct {p0, p1, v1, v7}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v1

    if-ltz v1, :cond_1f

    .line 80
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 81
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->a(Landroid/view/MotionEvent;I)F

    .line 82
    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/n;->g(Landroid/view/MotionEvent;I)F

    move v7, v1

    const/4 v0, 0x0

    :cond_1f
    if-eqz v8, :cond_20

    if-eqz v0, :cond_20

    .line 83
    iput v2, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 84
    iput v2, p0, Lcom/amap/api/mapcore/util/n;->g:F

    goto/16 :goto_13

    :cond_20
    if-eqz v8, :cond_21

    .line 85
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 86
    invoke-virtual {p1, v7}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->g:F

    goto/16 :goto_13

    :cond_21
    if-eqz v0, :cond_22

    .line 87
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 88
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->g:F

    goto/16 :goto_13

    .line 89
    :cond_22
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/n;->u:Z

    .line 90
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/n$a;->c(Lcom/amap/api/mapcore/util/n;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    goto/16 :goto_13

    .line 91
    :cond_23
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n;->r()V

    goto/16 :goto_13

    .line 92
    :cond_24
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 93
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    goto/16 :goto_13

    :cond_25
    if-eq v1, v4, :cond_35

    if-eq v1, v9, :cond_34

    const/4 v2, 0x3

    if-eq v1, v2, :cond_33

    if-eq v1, v6, :cond_2d

    if-eq v1, v5, :cond_26

    goto/16 :goto_13

    .line 94
    :cond_26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-lt v0, v8, :cond_27

    .line 95
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    goto :goto_d

    :cond_27
    const/4 v0, 0x0

    .line 96
    :goto_d
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    if-le v1, v9, :cond_2b

    .line 97
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    if-ne v2, v1, :cond_28

    .line 98
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->x:I

    invoke-direct {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_29

    .line 99
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {v1, p0}, Lcom/amap/api/mapcore/util/n$a;->b(Lcom/amap/api/mapcore/util/n;)V

    .line 100
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 101
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    .line 102
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    .line 103
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/n;->h(Landroid/view/MotionEvent;)V

    .line 104
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/n$a;->c(Lcom/amap/api/mapcore/util/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    goto :goto_e

    .line 105
    :cond_28
    iget v5, p0, Lcom/amap/api/mapcore/util/n;->x:I

    if-ne v2, v5, :cond_2a

    .line 106
    invoke-direct {p0, p1, v1, v0}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v0

    if-ltz v0, :cond_29

    .line 107
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {v1, p0}, Lcom/amap/api/mapcore/util/n$a;->b(Lcom/amap/api/mapcore/util/n;)V

    .line 108
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 109
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    .line 110
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    .line 111
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/n;->h(Landroid/view/MotionEvent;)V

    .line 112
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/n$a;->c(Lcom/amap/api/mapcore/util/n;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    goto :goto_e

    :cond_29
    const/4 v3, 0x1

    .line 113
    :cond_2a
    :goto_e
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 114
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    .line 115
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/n;->h(Landroid/view/MotionEvent;)V

    goto :goto_f

    :cond_2b
    const/4 v3, 0x1

    :goto_f
    if-eqz v3, :cond_36

    .line 116
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/n;->h(Landroid/view/MotionEvent;)V

    .line 117
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->w:I

    if-ne v2, v0, :cond_2c

    iget v0, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 118
    :cond_2c
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    .line 119
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    iput v2, p0, Lcom/amap/api/mapcore/util/n;->f:F

    .line 120
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    iput p1, p0, Lcom/amap/api/mapcore/util/n;->g:F

    .line 121
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/n$a;->b(Lcom/amap/api/mapcore/util/n;)V

    .line 122
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n;->r()V

    .line 123
    iput v0, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 124
    iput-boolean v4, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    goto/16 :goto_13

    .line 125
    :cond_2d
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {v1, p0}, Lcom/amap/api/mapcore/util/n$a;->b(Lcom/amap/api/mapcore/util/n;)V

    .line 126
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 127
    iget v2, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 128
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n;->r()V

    .line 129
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v5

    iput-object v5, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    .line 130
    iget-boolean v5, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    if-eqz v5, :cond_2e

    goto :goto_10

    :cond_2e
    move v1, v2

    :goto_10
    iput v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    if-lt v0, v8, :cond_2f

    .line 131
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->x:I

    goto :goto_11

    .line 132
    :cond_2f
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->x:I

    .line 133
    :goto_11
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/n;->y:Z

    .line 134
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->w:I

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v0

    if-ltz v0, :cond_30

    .line 135
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    iget v2, p0, Lcom/amap/api/mapcore/util/n;->x:I

    if-ne v1, v2, :cond_32

    .line 136
    :cond_30
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->w:I

    iget v2, p0, Lcom/amap/api/mapcore/util/n;->x:I

    if-ne v1, v2, :cond_31

    goto :goto_12

    :cond_31
    move v7, v2

    :goto_12
    invoke-direct {p0, p1, v7, v0}, Lcom/amap/api/mapcore/util/n;->b(Landroid/view/MotionEvent;II)I

    move-result v0

    .line 137
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->w:I

    .line 138
    :cond_32
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/n;->h(Landroid/view/MotionEvent;)V

    .line 139
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/n$a;->c(Lcom/amap/api/mapcore/util/n;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/n;->c:Z

    goto :goto_13

    .line 140
    :cond_33
    iget-object p1, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {p1, p0}, Lcom/amap/api/mapcore/util/n$a;->b(Lcom/amap/api/mapcore/util/n;)V

    .line 141
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n;->r()V

    goto :goto_13

    .line 142
    :cond_34
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/n;->h(Landroid/view/MotionEvent;)V

    .line 143
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->o:F

    iget v1, p0, Lcom/amap/api/mapcore/util/n;->p:F

    div-float/2addr v0, v1

    const v1, 0x3f2b851f    # 0.67f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_36

    .line 144
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->b:Lcom/amap/api/mapcore/util/n$a;

    invoke-interface {v0, p0}, Lcom/amap/api/mapcore/util/n$a;->a(Lcom/amap/api/mapcore/util/n;)Z

    move-result v0

    if-eqz v0, :cond_36

    .line 145
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 146
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/n;->d:Landroid/view/MotionEvent;

    goto :goto_13

    .line 147
    :cond_35
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n;->r()V

    :cond_36
    :goto_13
    const/4 v3, 0x1

    :goto_14
    return v3
.end method

.method public f()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->f:F

    return v0
.end method

.method public i()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->g:F

    return v0
.end method

.method public j()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->l:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->j:F

    .line 3
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->k:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->l:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->l:F

    return v0
.end method

.method public k()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->j:F

    return v0
.end method

.method public l()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->k:F

    return v0
.end method

.method public m()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->m:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->h:F

    .line 3
    iget v1, p0, Lcom/amap/api/mapcore/util/n;->i:F

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    float-to-double v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->m:F

    .line 5
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->m:F

    return v0
.end method

.method public n()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->h:F

    return v0
.end method

.method public o()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->i:F

    return v0
.end method

.method public p()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->n:F

    const/high16 v1, -0x40800000    # -1.0f

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/n;->j()F

    move-result v0

    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/n;->m()F

    move-result v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/amap/api/mapcore/util/n;->n:F

    .line 3
    :cond_0
    iget v0, p0, Lcom/amap/api/mapcore/util/n;->n:F

    return v0
.end method

.method public q()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/n;->q:J

    return-wide v0
.end method
