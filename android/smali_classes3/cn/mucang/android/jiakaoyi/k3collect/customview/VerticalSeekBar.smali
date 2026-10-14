.class public Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:F

.field protected f:Landroid/graphics/Bitmap;

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:Landroid/graphics/RectF;

.field private o:I

.field private p:I

.field private q:Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->d:I

    const/high16 v0, 0x42480000    # 50.0f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    const/4 v0, 0x4

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->k:I

    const v0, -0x33777778    # -7.158278E7f

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->m:I

    const v0, -0x55f67f13

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->p:I

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private a()V
    .locals 4

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    div-int/lit8 v2, v1, 0x2

    if-gt v0, v2, :cond_0

    .line 2
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    div-int/lit8 v3, v1, 0x2

    sub-int v3, v2, v3

    if-lt v0, v3, :cond_1

    .line 4
    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v2, v1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    :cond_1
    :goto_0
    return-void
.end method

.method private b(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->c:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcn/mucang/android/jiakaoyi/k3collect/R$drawable;->ic_map_scale_thumb:I

    invoke-static {p1, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->f:Landroid/graphics/Bitmap;

    .line 3
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->h:I

    .line 5
    new-instance p1, Landroid/graphics/RectF;

    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->h:I

    int-to-float p2, p2

    iget p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-direct {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    .line 6
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->k:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->l:I

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->h:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b:I

    div-int/lit8 v1, v1, 0x2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->h:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public d(II)V
    .locals 2

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->h:I

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    int-to-float p1, p1

    int-to-float p2, p2

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, p1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public getMaxProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->d:I

    return v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->f:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->o:I

    const/high16 v1, 0x3f000000    # 0.5f

    if-nez v0, :cond_0

    .line 2
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->d:I

    int-to-float v4, v1

    iget v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    sub-float/2addr v4, v5

    iget v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    sub-int/2addr v5, v2

    int-to-float v2, v5

    mul-float v4, v4, v2

    int-to-float v1, v1

    div-float/2addr v4, v1

    add-float/2addr v3, v4

    float-to-int v1, v3

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    goto :goto_0

    .line 3
    :cond_0
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    int-to-float v3, v2

    mul-float v3, v3, v1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    sub-int/2addr v4, v2

    int-to-float v2, v4

    mul-float v1, v1, v2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->d:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v3, v1

    float-to-int v1, v3

    iput v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    .line 4
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->c:Landroid/graphics/Paint;

    if-nez v0, :cond_1

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->m:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->p:I

    :goto_1
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->l:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    int-to-float v2, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    const/high16 v7, 0x40000000    # 2.0f

    div-float v3, v0, v7

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->l:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    int-to-float v4, v0

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    int-to-float v5, v0

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->c:Landroid/graphics/Paint;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->o:I

    if-nez v1, :cond_2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->p:I

    goto :goto_2

    :cond_2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->m:I

    :goto_2
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b:I

    div-int/lit8 v1, v0, 0x2

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->l:I

    div-int/lit8 v3, v2, 0x2

    sub-int/2addr v1, v3

    int-to-float v9, v1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    int-to-float v10, v1

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v0, v2

    int-to-float v11, v0

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v1, v7

    sub-float v12, v0, v1

    iget-object v13, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->c:Landroid/graphics/Paint;

    move-object v8, p1

    invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 9
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v1, v7

    sub-float/2addr v0, v1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    int-to-float v1, v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v2, v7

    sub-float/2addr v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->f:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 11
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 12
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->b:I

    .line 4
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    const/4 p3, -0x1

    if-ne p2, p3, :cond_0

    .line 5
    div-int/lit8 p1, p1, 0x2

    .line 6
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    div-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-eq v0, v1, :cond_3

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->i:Z

    if-eqz v0, :cond_6

    .line 3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a()V

    .line 5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->d:I

    int-to-double v2, v0

    iget v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->j:I

    int-to-double v4, v4

    iget v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    int-to-double v7, v6

    const-wide/high16 v9, 0x3fe0000000000000L    # 0.5

    mul-double v7, v7, v9

    sub-double/2addr v4, v7

    iget v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    sub-int/2addr v7, v6

    int-to-double v6, v7

    div-double/2addr v4, v6

    int-to-double v6, v0

    mul-double v4, v4, v6

    sub-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    .line 6
    iget v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->o:I

    if-ne v3, v1, :cond_1

    int-to-float v0, v0

    sub-float/2addr v0, v2

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    .line 8
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->q:Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;

    if-eqz p1, :cond_2

    .line 11
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    invoke-interface {p1, p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;->c(Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;F)V

    .line 12
    :cond_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    goto :goto_0

    .line 13
    :cond_3
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->i:Z

    if-eqz p1, :cond_6

    .line 14
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->q:Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;

    if-eqz p1, :cond_6

    .line 15
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    invoke-interface {p1, p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;->a(Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;F)V

    goto :goto_0

    .line 16
    :cond_4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->c(Landroid/view/MotionEvent;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->i:Z

    if-eqz v0, :cond_5

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->q:Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;

    if-eqz v0, :cond_5

    .line 18
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    invoke-interface {v0, p0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;->b(Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;F)V

    .line 19
    :cond_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 20
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    :cond_6
    :goto_0
    return v1
.end method

.method public setMaxProgress(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->d:I

    return-void
.end method

.method public setOnSlideChangeListener(Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->q:Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar$a;

    return-void
.end method

.method public setOrientation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->o:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->a:I

    .line 3
    :cond_0
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->e:F

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->p:I

    return-void
.end method

.method public setThumb(I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->f:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->f:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->h:I

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->n:Landroid/graphics/RectF;

    int-to-float p1, p1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->g:I

    int-to-float v1, v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v2, p1, v1}, Landroid/graphics/RectF;->set(FFFF)V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setUnSelectColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->m:I

    return-void
.end method

.method public setmInnerProgressWidth(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->k:I

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->l:I

    return-void
.end method

.method public setmInnerProgressWidthPx(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/customview/VerticalSeekBar;->l:I

    return-void
.end method
