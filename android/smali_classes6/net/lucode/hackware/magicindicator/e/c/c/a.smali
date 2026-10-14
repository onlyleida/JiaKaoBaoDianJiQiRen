.class public Lnet/lucode/hackware/magicindicator/e/c/c/a;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Lnet/lucode/hackware/magicindicator/e/c/b/c;


# instance fields
.field private a:I

.field private b:Landroid/view/animation/Interpolator;

.field private c:Landroid/view/animation/Interpolator;

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:Landroid/graphics/Paint;

.field private j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/e/c/d/a;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private l:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->b:Landroid/view/animation/Interpolator;

    .line 3
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->c:Landroid/view/animation/Interpolator;

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->l:Landroid/graphics/RectF;

    .line 5
    invoke-direct {p0, p1}, Lnet/lucode/hackware/magicindicator/e/c/c/a;->b(Landroid/content/Context;)V

    return-void
.end method

.method private b(Landroid/content/Context;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->i:Landroid/graphics/Paint;

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 3
    invoke-static {p1, v0, v1}, Lnet/lucode/hackware/magicindicator/e/b;->a(Landroid/content/Context;D)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->e:F

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    .line 4
    invoke-static {p1, v0, v1}, Lnet/lucode/hackware/magicindicator/e/b;->a(Landroid/content/Context;D)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->g:F

    return-void
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lnet/lucode/hackware/magicindicator/e/c/d/a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->j:Ljava/util/List;

    return-void
.end method

.method public getColors()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->k:Ljava/util/List;

    return-object v0
.end method

.method public getEndInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->c:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getLineHeight()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->e:F

    return v0
.end method

.method public getLineWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->g:F

    return v0
.end method

.method public getMode()I
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->a:I

    return v0
.end method

.method public getPaint()Landroid/graphics/Paint;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->i:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getRoundRadius()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->h:F

    return v0
.end method

.method public getStartInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->b:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method public getXOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->f:F

    return v0
.end method

.method public getYOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->d:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->l:Landroid/graphics/RectF;

    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->h:F

    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 5

    .line 1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->j:Ljava/util/List;

    if-eqz p3, :cond_4

    invoke-interface {p3}, Ljava/util/List;->isEmpty()Z

    move-result p3

    if-eqz p3, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->k:Ljava/util/List;

    if-eqz p3, :cond_1

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lez p3, :cond_1

    .line 3
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->k:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    rem-int/2addr v0, v1

    invoke-interface {p3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 4
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->k:Ljava/util/List;

    add-int/lit8 v1, p1, 0x1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    iget-object v2, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->k:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    rem-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    invoke-static {p2, p3, v0}, Lnet/lucode/hackware/magicindicator/e/a;->a(FII)I

    move-result p3

    .line 6
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->i:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :cond_1
    iget-object p3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->j:Ljava/util/List;

    invoke-static {p3, p1}, Lnet/lucode/hackware/magicindicator/a;->a(Ljava/util/List;I)Lnet/lucode/hackware/magicindicator/e/c/d/a;

    move-result-object p3

    .line 8
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->j:Ljava/util/List;

    const/4 v1, 0x1

    add-int/2addr p1, v1

    invoke-static {v0, p1}, Lnet/lucode/hackware/magicindicator/a;->a(Ljava/util/List;I)Lnet/lucode/hackware/magicindicator/e/c/d/a;

    move-result-object p1

    .line 9
    iget v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->a:I

    if-nez v0, :cond_2

    .line 10
    iget v0, p3, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->f:F

    add-float/2addr v0, v1

    .line 11
    iget v2, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 12
    iget p3, p3, Lnet/lucode/hackware/magicindicator/e/c/d/a;->c:I

    int-to-float p3, p3

    sub-float/2addr p3, v1

    .line 13
    iget p1, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->c:I

    :goto_0
    int-to-float p1, p1

    sub-float/2addr p1, v1

    goto :goto_1

    :cond_2
    if-ne v0, v1, :cond_3

    .line 14
    iget v0, p3, Lnet/lucode/hackware/magicindicator/e/c/d/a;->e:I

    int-to-float v0, v0

    iget v1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->f:F

    add-float/2addr v0, v1

    .line 15
    iget v2, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->e:I

    int-to-float v2, v2

    add-float/2addr v2, v1

    .line 16
    iget p3, p3, Lnet/lucode/hackware/magicindicator/e/c/d/a;->g:I

    int-to-float p3, p3

    sub-float/2addr p3, v1

    .line 17
    iget p1, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->g:I

    goto :goto_0

    .line 18
    :cond_3
    iget v0, p3, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    int-to-float v0, v0

    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->g:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 19
    iget v1, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    int-to-float v1, v1

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->g:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v2

    add-float/2addr v1, v3

    .line 20
    iget v3, p3, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    int-to-float v3, v3

    invoke-virtual {p3}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result p3

    int-to-float p3, p3

    iget v4, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->g:F

    add-float/2addr p3, v4

    div-float/2addr p3, v2

    add-float/2addr p3, v3

    .line 21
    iget v3, p1, Lnet/lucode/hackware/magicindicator/e/c/d/a;->a:I

    int-to-float v3, v3

    invoke-virtual {p1}, Lnet/lucode/hackware/magicindicator/e/c/d/a;->b()I

    move-result p1

    int-to-float p1, p1

    iget v4, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->g:F

    add-float/2addr p1, v4

    div-float/2addr p1, v2

    add-float/2addr p1, v3

    move v2, v1

    .line 22
    :goto_1
    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->l:Landroid/graphics/RectF;

    sub-float/2addr v2, v0

    iget-object v3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->b:Landroid/view/animation/Interpolator;

    invoke-interface {v3, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v3

    mul-float v2, v2, v3

    add-float/2addr v0, v2

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 23
    iget-object v0, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->l:Landroid/graphics/RectF;

    sub-float/2addr p1, p3

    iget-object v1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->c:Landroid/view/animation/Interpolator;

    invoke-interface {v1, p2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result p2

    mul-float p1, p1, p2

    add-float/2addr p3, p1

    iput p3, v0, Landroid/graphics/RectF;->right:F

    .line 24
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->e:F

    sub-float/2addr p2, p3

    iget p3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->d:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->top:F

    .line 25
    iget-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->l:Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    iget p3, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->d:F

    sub-float/2addr p2, p3

    iput p2, p1, Landroid/graphics/RectF;->bottom:F

    .line 26
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_4
    :goto_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    return-void
.end method

.method public varargs setColors([Ljava/lang/Integer;)V
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->k:Ljava/util/List;

    return-void
.end method

.method public setEndInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->c:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->c:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public setLineHeight(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->e:F

    return-void
.end method

.method public setLineWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->g:F

    return-void
.end method

.method public setMode(I)V
    .locals 3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " not supported."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2
    :cond_1
    :goto_0
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->a:I

    return-void
.end method

.method public setRoundRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->h:F

    return-void
.end method

.method public setStartInterpolator(Landroid/view/animation/Interpolator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->b:Landroid/view/animation/Interpolator;

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    iput-object p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->b:Landroid/view/animation/Interpolator;

    :cond_0
    return-void
.end method

.method public setXOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->f:F

    return-void
.end method

.method public setYOffset(F)V
    .locals 0

    .line 1
    iput p1, p0, Lnet/lucode/hackware/magicindicator/e/c/c/a;->d:F

    return-void
.end method
