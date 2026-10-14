.class public Lcom/tencent/connect/avatar/c;
.super Landroid/widget/ImageView;
.source "SourceFile"


# instance fields
.field final a:Ljava/lang/String;

.field public b:Z

.field private c:Landroid/graphics/Matrix;

.field private d:Landroid/graphics/Matrix;

.field private e:I

.field private f:F

.field private g:F

.field private h:Landroid/graphics/Bitmap;

.field private i:Z

.field private j:F

.field private k:F

.field private l:Landroid/graphics/PointF;

.field private m:Landroid/graphics/PointF;

.field private n:F

.field private o:F

.field private p:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    .line 3
    new-instance p1, Landroid/graphics/Matrix;

    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    const/4 p1, 0x0

    .line 4
    iput p1, p0, Lcom/tencent/connect/avatar/c;->e:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 5
    iput v0, p0, Lcom/tencent/connect/avatar/c;->f:F

    .line 6
    iput v0, p0, Lcom/tencent/connect/avatar/c;->g:F

    .line 7
    iput-boolean p1, p0, Lcom/tencent/connect/avatar/c;->i:Z

    const-string v1, "TouchView"

    .line 8
    iput-object v1, p0, Lcom/tencent/connect/avatar/c;->a:Ljava/lang/String;

    .line 9
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    .line 10
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    .line 11
    iput v0, p0, Lcom/tencent/connect/avatar/c;->n:F

    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/tencent/connect/avatar/c;->o:F

    .line 13
    iput-boolean p1, p0, Lcom/tencent/connect/avatar/c;->b:Z

    .line 14
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->getDrawingRect(Landroid/graphics/Rect;)V

    .line 16
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->a()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)F
    .locals 4

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    sub-float/2addr v1, v3

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result p1

    sub-float/2addr v0, p1

    mul-float v1, v1, v1

    mul-float v0, v0, v0

    add-float/2addr v1, v0

    float-to-double v0, v1

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private a()V
    .locals 0

    return-void
.end method

.method private a(Landroid/graphics/PointF;)V
    .locals 8

    .line 10
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 11
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v1, 0x2

    .line 12
    aget v1, v0, v1

    const/4 v2, 0x5

    .line 13
    aget v2, v0, v2

    const/4 v3, 0x0

    .line 14
    aget v0, v0, v3

    .line 15
    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    .line 16
    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float v3, v3, v0

    mul-float v4, v4, v0

    .line 17
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    sub-float/2addr v5, v1

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v7, v5, v6

    if-gtz v7, :cond_1

    const/high16 v5, 0x3f800000    # 1.0f

    :cond_1
    add-float/2addr v1, v3

    .line 18
    iget v3, v0, Landroid/graphics/Rect;->right:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    cmpg-float v3, v1, v6

    if-gtz v3, :cond_2

    const/high16 v1, 0x3f800000    # 1.0f

    :cond_2
    add-float/2addr v1, v5

    .line 19
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v5

    div-float/2addr v0, v1

    .line 20
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v3, v1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 21
    iget v3, v1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    add-float/2addr v2, v4

    .line 22
    iget v4, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    sub-float/2addr v2, v4

    cmpg-float v4, v3, v6

    if-gtz v4, :cond_3

    const/high16 v3, 0x3f800000    # 1.0f

    :cond_3
    cmpg-float v4, v2, v6

    if-gtz v4, :cond_4

    goto :goto_0

    :cond_4
    move v6, v2

    :goto_0
    add-float/2addr v6, v3

    .line 23
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v3

    div-float/2addr v1, v6

    .line 24
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/graphics/PointF;->set(FF)V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->b()V

    return-void
.end method

.method static synthetic a(Lcom/tencent/connect/avatar/c;Z)Z
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/tencent/connect/avatar/c;->i:Z

    return p1
.end method

.method private b()V
    .locals 18

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-nez v1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, v0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    .line 3
    iget-object v2, v0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    const/16 v3, 0x9

    new-array v3, v3, [F

    .line 4
    iget-object v4, v0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->getValues([F)V

    const/4 v4, 0x2

    .line 5
    aget v5, v3, v4

    const/4 v6, 0x5

    .line 6
    aget v7, v3, v6

    const/4 v8, 0x0

    .line 7
    aget v9, v3, v8

    .line 8
    iget v11, v0, Lcom/tencent/connect/avatar/c;->f:F

    const/4 v12, 0x1

    cmpl-float v13, v9, v11

    if-lez v13, :cond_1

    div-float/2addr v11, v9

    .line 9
    iput v11, v0, Lcom/tencent/connect/avatar/c;->o:F

    .line 10
    iget-object v1, v0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v11, v11, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 11
    iget-object v1, v0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 12
    new-instance v10, Landroid/view/animation/ScaleAnimation;

    iget v1, v0, Lcom/tencent/connect/avatar/c;->o:F

    const/high16 v2, 0x3f800000    # 1.0f

    div-float v3, v2, v1

    const/high16 v4, 0x3f800000    # 1.0f

    div-float v5, v2, v1

    const/high16 v6, 0x3f800000    # 1.0f

    iget-object v1, v0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v7, v1, Landroid/graphics/PointF;->x:F

    iget v8, v1, Landroid/graphics/PointF;->y:F

    move-object v2, v10

    invoke-direct/range {v2 .. v8}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    goto/16 :goto_1

    .line 13
    :cond_1
    iget v11, v0, Lcom/tencent/connect/avatar/c;->g:F

    cmpg-float v13, v9, v11

    if-gez v13, :cond_2

    div-float/2addr v11, v9

    .line 14
    iput v11, v0, Lcom/tencent/connect/avatar/c;->o:F

    .line 15
    iget-object v1, v0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v2, v0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, v11, v11, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 16
    new-instance v1, Landroid/view/animation/ScaleAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    iget v8, v0, Lcom/tencent/connect/avatar/c;->o:F

    const/high16 v7, 0x3f800000    # 1.0f

    iget-object v2, v0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    move-object v4, v1

    move v6, v8

    invoke-direct/range {v4 .. v10}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFFF)V

    move-object v10, v1

    goto :goto_1

    .line 17
    :cond_2
    iget-object v11, v0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v11}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    int-to-float v11, v11

    mul-float v11, v11, v9

    .line 18
    iget-object v13, v0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v13}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    int-to-float v13, v13

    mul-float v13, v13, v9

    .line 19
    iget-object v9, v0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v14, v9, Landroid/graphics/Rect;->left:I

    int-to-float v15, v14

    sub-float/2addr v15, v5

    .line 20
    iget v9, v9, Landroid/graphics/Rect;->top:I

    int-to-float v8, v9

    sub-float/2addr v8, v7

    const/4 v10, 0x0

    cmpg-float v17, v15, v10

    if-gez v17, :cond_3

    int-to-float v5, v14

    const/16 v16, 0x1

    goto :goto_0

    :cond_3
    const/16 v16, 0x0

    :goto_0
    cmpg-float v17, v8, v10

    if-gez v17, :cond_4

    int-to-float v7, v9

    const/16 v16, 0x1

    :cond_4
    sub-float v15, v11, v15

    sub-float v8, v13, v8

    cmpg-float v15, v15, v1

    if-gez v15, :cond_5

    sub-float/2addr v11, v1

    int-to-float v1, v14

    sub-float v5, v1, v11

    const/16 v16, 0x1

    :cond_5
    cmpg-float v1, v8, v2

    if-gez v1, :cond_6

    sub-float/2addr v13, v2

    int-to-float v1, v9

    sub-float v7, v1, v13

    const/16 v16, 0x1

    :cond_6
    if-eqz v16, :cond_7

    .line 21
    aget v1, v3, v4

    sub-float/2addr v1, v5

    .line 22
    aget v2, v3, v6

    sub-float/2addr v2, v7

    aput v5, v3, v4

    aput v7, v3, v6

    .line 23
    iget-object v4, v0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v4, v3}, Landroid/graphics/Matrix;->setValues([F)V

    .line 24
    iget-object v3, v0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    .line 25
    new-instance v3, Landroid/view/animation/TranslateAnimation;

    invoke-direct {v3, v1, v10, v2, v10}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    move-object v10, v3

    goto :goto_1

    .line 26
    :cond_7
    iget-object v1, v0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    const/4 v10, 0x0

    :goto_1
    if-eqz v10, :cond_8

    .line 27
    iput-boolean v12, v0, Lcom/tencent/connect/avatar/c;->i:Z

    const-wide/16 v1, 0x12c

    .line 28
    invoke-virtual {v10, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 29
    invoke-virtual {v0, v10}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 30
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/tencent/connect/avatar/c$1;

    invoke-direct {v2, v0}, Lcom/tencent/connect/avatar/c$1;-><init>(Lcom/tencent/connect/avatar/c;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 31
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    :cond_8
    return-void
.end method

.method private c()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/16 v0, 0x9

    new-array v0, v0, [F

    .line 2
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 3
    iget-object v1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    .line 5
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 6
    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    .line 7
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    .line 8
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    iget-object v4, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tencent/connect/avatar/c;->j:F

    .line 9
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    .line 10
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    mul-float v3, v3, v1

    iget-object v5, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v3, v5

    div-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p0, Lcom/tencent/connect/avatar/c;->k:F

    const/4 v3, 0x2

    .line 11
    iget v4, p0, Lcom/tencent/connect/avatar/c;->j:F

    aput v4, v0, v3

    const/4 v3, 0x5

    aput v2, v0, v3

    const/4 v2, 0x0

    const/4 v3, 0x4

    aput v1, v0, v3

    aput v1, v0, v2

    .line 12
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0}, Landroid/graphics/Matrix;->setValues([F)V

    .line 13
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    .line 14
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x45000000    # 2048.0f

    div-float v0, v2, v0

    iget-object v3, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    .line 15
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    .line 16
    invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/tencent/connect/avatar/c;->f:F

    .line 17
    iput v1, p0, Lcom/tencent/connect/avatar/c;->g:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 18
    iput v1, p0, Lcom/tencent/connect/avatar/c;->f:F

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)V
    .locals 0

    .line 7
    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->p:Landroid/graphics/Rect;

    .line 8
    iget-object p1, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->c()V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/tencent/connect/avatar/c;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_5

    const/high16 v2, 0x41200000    # 10.0f

    const/4 v3, 0x2

    if-eq v0, v3, :cond_2

    const/4 v4, 0x5

    if-eq v0, v4, :cond_1

    const/4 p1, 0x6

    if-eq v0, p1, :cond_5

    goto/16 :goto_0

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/c;->a(Landroid/view/MotionEvent;)F

    move-result p1

    iput p1, p0, Lcom/tencent/connect/avatar/c;->n:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_7

    .line 4
    iget-object p1, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 5
    iget-object p1, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/c;->a(Landroid/graphics/PointF;)V

    .line 6
    iput v3, p0, Lcom/tencent/connect/avatar/c;->e:I

    goto/16 :goto_0

    .line 7
    :cond_2
    iget v0, p0, Lcom/tencent/connect/avatar/c;->e:I

    if-ne v0, v1, :cond_3

    .line 8
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->x:F

    sub-float/2addr v0, v2

    .line 10
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr p1, v2

    .line 11
    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v2, v0, p1}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 12
    iget-object p1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    :cond_3
    if-ne v0, v3, :cond_7

    .line 13
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v0}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 14
    invoke-direct {p0, p1}, Lcom/tencent/connect/avatar/c;->a(Landroid/view/MotionEvent;)F

    move-result p1

    cmpl-float v0, p1, v2

    if-lez v0, :cond_4

    .line 15
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 16
    iget v0, p0, Lcom/tencent/connect/avatar/c;->n:F

    div-float/2addr p1, v0

    .line 17
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->m:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, p1, p1, v3, v2}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 18
    :cond_4
    iget-object p1, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageMatrix(Landroid/graphics/Matrix;)V

    goto :goto_0

    .line 19
    :cond_5
    invoke-direct {p0}, Lcom/tencent/connect/avatar/c;->b()V

    const/4 p1, 0x0

    .line 20
    iput p1, p0, Lcom/tencent/connect/avatar/c;->e:I

    goto :goto_0

    .line 21
    :cond_6
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getImageMatrix()Landroid/graphics/Matrix;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 22
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->d:Landroid/graphics/Matrix;

    iget-object v2, p0, Lcom/tencent/connect/avatar/c;->c:Landroid/graphics/Matrix;

    invoke-virtual {v0, v2}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 23
    iget-object v0, p0, Lcom/tencent/connect/avatar/c;->l:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    .line 24
    iput v1, p0, Lcom/tencent/connect/avatar/c;->e:I

    .line 25
    :cond_7
    :goto_0
    iput-boolean v1, p0, Lcom/tencent/connect/avatar/c;->b:Z

    return v1
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 2
    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    if-eqz p1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/tencent/connect/avatar/c;->h:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method
