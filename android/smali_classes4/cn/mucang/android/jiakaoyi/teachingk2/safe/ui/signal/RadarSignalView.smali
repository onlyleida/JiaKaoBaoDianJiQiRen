.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:F

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:Landroid/graphics/Paint;

.field private final e:Landroid/text/TextPaint;

.field private f:I

.field private g:Landroid/graphics/RectF;

.field private h:[Landroid/graphics/RectF;

.field private i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x41a00000    # 20.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->a:F

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->c:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->d:Landroid/graphics/Paint;

    .line 6
    new-instance p1, Landroid/text/TextPaint;

    invoke-direct {p1, p2}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->e:Landroid/text/TextPaint;

    .line 7
    new-instance p1, Landroid/graphics/RectF;

    invoke-direct {p1}, Landroid/graphics/RectF;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->g:Landroid/graphics/RectF;

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->a()V

    return-void
.end method

.method private a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_30:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->a:F

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b:Landroid/graphics/Paint;

    const v1, -0xff0100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->d:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->d:Landroid/graphics/Paint;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->d:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->d:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->e:Landroid/text/TextPaint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->e:Landroid/text/TextPaint;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->a:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public b([I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    array-length v1, v0

    array-length v2, p1

    const/4 v3, 0x0

    if-ge v1, v2, :cond_0

    .line 2
    array-length v0, v0

    new-array v1, v0, [I

    .line 3
    invoke-static {p1, v3, v1, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    array-length v0, v0

    array-length v1, p1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_2

    .line 5
    rem-int/lit8 v1, v0, 0x2

    if-nez v1, :cond_2

    .line 6
    div-int/lit8 v0, v0, 0x2

    .line 7
    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    add-int v2, v3, v0

    aget-object v1, v1, v2

    aget v2, p1, v3

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->b(I)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    return-void
.end method

.method public getConfig()Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->h:[Landroid/graphics/RectF;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    const/4 v0, 0x4

    new-array v2, v0, [Landroid/graphics/RectF;

    .line 3
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->h:[Landroid/graphics/RectF;

    const/4 v2, 0x0

    .line 4
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->h:[Landroid/graphics/RectF;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    .line 5
    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4}, Landroid/graphics/RectF;-><init>()V

    aput-object v4, v3, v2

    .line 6
    iget v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->f:I

    add-int/lit8 v4, v2, 0x1

    mul-int v3, v3, v4

    div-int/2addr v3, v0

    .line 7
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->h:[Landroid/graphics/RectF;

    aget-object v2, v5, v2

    neg-int v5, v3

    int-to-float v5, v5

    int-to-float v3, v3

    invoke-virtual {v2, v5, v5, v3, v3}, Landroid/graphics/RectF;->set(FFFF)V

    move v2, v4

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c()I

    move-result v0

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b:Landroid/graphics/Paint;

    sget v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->e:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v2, 0x0

    .line 11
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    array-length v5, v4

    if-ge v2, v5, :cond_4

    .line 12
    aget-object v4, v4, v2

    .line 13
    iget-boolean v5, v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->a:Z

    if-nez v5, :cond_2

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6ca1\u5b89\u88c5\u96f7\u8fbe"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DebugRadar"

    invoke-static {v4, v3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 15
    :cond_2
    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->d(I)I

    move-result v3

    .line 16
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->g:Landroid/graphics/RectF;

    int-to-float v3, v3

    int-to-float v13, v0

    const/4 v9, 0x1

    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->b:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v3

    move v8, v13

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 17
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->c:Landroid/graphics/Paint;

    iget v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->c:I

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->c:[Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;

    aget-object v5, v5, v2

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->a()F

    move-result v5

    iget v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->f:I

    int-to-float v6, v6

    mul-float v5, v5, v6

    float-to-int v5, v5

    .line 19
    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->d:Landroid/graphics/RectF;

    neg-int v7, v5

    int-to-float v7, v7

    int-to-float v5, v5

    invoke-virtual {v6, v7, v7, v5, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 20
    iget-object v8, v4, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/b;->d:Landroid/graphics/RectF;

    const/4 v11, 0x1

    iget-object v12, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->c:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v3

    move v10, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    const/4 v4, 0x0

    .line 21
    :goto_2
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->h:[Landroid/graphics/RectF;

    array-length v6, v5

    if-ge v4, v6, :cond_3

    .line 22
    aget-object v8, v5, v4

    const/4 v11, 0x1

    .line 23
    iget-object v12, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->d:Landroid/graphics/Paint;

    move-object v7, p1

    move v9, v3

    move v10, v13

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_4
    :goto_4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->a:I

    if-ge v1, v2, :cond_5

    add-int/lit8 v2, v1, 0x1

    .line 25
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 26
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->e:Landroid/text/TextPaint;

    invoke-virtual {v4, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v4

    .line 27
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 28
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    invoke-virtual {v5, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;->d(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x5a

    div-int/lit8 v5, v0, 0x2

    add-int/2addr v1, v5

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    neg-float v1, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v1, v4

    .line 29
    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->f:I

    neg-int v4, v4

    add-int/lit8 v4, v4, -0x5

    int-to-float v4, v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->e:Landroid/text/TextPaint;

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    move v1, v2

    goto :goto_4

    :cond_5
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    int-to-float p2, p2

    const p3, 0x3f4ccccd    # 0.8f

    mul-float p2, p2, p3

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    float-to-int p2, p2

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->f:I

    .line 3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->g:Landroid/graphics/RectF;

    neg-int p4, p2

    int-to-float p4, p4

    neg-int v0, p2

    int-to-float v0, v0

    int-to-float v1, p2

    int-to-float p2, p2

    invoke-virtual {p3, p4, v0, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->e:Landroid/text/TextPaint;

    iget p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->a:F

    int-to-float p1, p1

    mul-float p3, p3, p1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_528:I

    invoke-virtual {p1, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p3, p1

    invoke-virtual {p2, p3}, Landroid/text/TextPaint;->setTextSize(F)V

    return-void
.end method

.method public setConfig(Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/RadarSignalView;->i:Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/signal/a;

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
