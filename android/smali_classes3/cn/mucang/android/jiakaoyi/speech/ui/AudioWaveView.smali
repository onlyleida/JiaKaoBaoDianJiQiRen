.class public Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static h:F


# instance fields
.field private a:[F

.field private b:[F

.field private c:Landroid/graphics/Paint;

.field private d:I

.field private e:F

.field private f:I

.field private g:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->f:I

    const/high16 p1, 0x47000000    # 32768.0f

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    return-void
.end method

.method private a(F)F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    return p1
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->b:[F

    if-eqz v1, :cond_0

    .line 2
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawLines([FLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method private c()V
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a(F)F

    move-result v1

    sput v1, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->h:F

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    if-lez v1, :cond_2

    if-gtz v2, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->c:Landroid/graphics/Paint;

    if-nez v2, :cond_2

    const/high16 v2, 0x40000000    # 2.0f

    .line 5
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a(F)F

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->e:F

    .line 6
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->c:Landroid/graphics/Paint;

    const/4 v3, 0x1

    .line 7
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->c:Landroid/graphics/Paint;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a(F)F

    move-result v4

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->f:I

    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->setColor(I)V

    const/high16 v2, 0x3f000000    # 0.5f

    int-to-float v1, v1

    mul-float v1, v1, v2

    .line 10
    iget v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->e:F

    div-float/2addr v1, v2

    add-float/2addr v1, v0

    float-to-int v0, v1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->d:I

    .line 11
    rem-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_1

    add-int/2addr v0, v3

    .line 12
    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->d:I

    .line 13
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->d:I

    new-array v1, v0, [F

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    mul-int/lit8 v0, v0, 0x4

    .line 14
    new-array v0, v0, [F

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->b:[F

    .line 15
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->f()V

    .line 16
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static d(BB)S
    .locals 0

    and-int/lit16 p0, p0, 0xff

    and-int/lit16 p1, p1, 0xff

    shl-int/lit8 p1, p1, 0x8

    or-int/2addr p0, p1

    int-to-short p0, p0

    return p0
.end method

.method private f()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->b:[F

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v2, v0, v1

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->c:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    mul-float v3, v3, v1

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    const/4 v4, 0x0

    cmpg-float v1, v1, v4

    if-gtz v1, :cond_1

    const/high16 v1, 0x47000000    # 32768.0f

    .line 5
    iput v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    array-length v6, v5

    if-ge v1, v6, :cond_5

    .line 7
    aget v6, v5, v1

    cmpl-float v6, v6, v4

    if-lez v6, :cond_2

    const/high16 v6, 0x3f800000    # 1.0f

    mul-float v6, v6, v2

    .line 8
    aget v5, v5, v1

    iget v7, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    div-float/2addr v5, v7

    mul-float v6, v6, v5

    goto :goto_1

    .line 9
    :cond_2
    sget v6, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->h:F

    .line 10
    :goto_1
    sget v5, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->h:F

    cmpg-float v7, v6, v5

    if-gez v7, :cond_3

    move v6, v5

    :cond_3
    cmpl-float v5, v6, v0

    if-lez v5, :cond_4

    move v6, v0

    .line 11
    :cond_4
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->b:[F

    mul-int/lit8 v7, v1, 0x4

    mul-int/lit8 v8, v1, 0x2

    int-to-float v8, v8

    iget v9, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->e:F

    mul-float v8, v8, v9

    add-float/2addr v8, v3

    aput v8, v5, v7

    add-int/lit8 v8, v7, 0x1

    sub-float v9, v2, v6

    .line 12
    aput v9, v5, v8

    add-int/lit8 v8, v7, 0x2

    .line 13
    aget v9, v5, v7

    aput v9, v5, v8

    add-int/lit8 v7, v7, 0x3

    add-float/2addr v6, v2

    .line 14
    aput v6, v5, v7

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method


# virtual methods
.method public e()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 2
    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([FF)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->f()V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->c()V

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->b(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setColor(I)V
    .locals 11

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->f:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->c:Landroid/graphics/Paint;

    if-eqz v0, :cond_0

    const v1, 0x15ffffff

    and-int/2addr v1, p1

    .line 3
    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v5, v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v6, v2

    const/4 v2, 0x3

    new-array v7, v2, [I

    const/4 v2, 0x0

    aput v1, v7, v2

    const/4 v2, 0x1

    aput p1, v7, v2

    const/4 p1, 0x2

    aput v1, v7, p1

    const/4 v8, 0x0

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    .line 5
    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :cond_0
    return-void
.end method

.method public setData([B)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/high16 v1, 0x46800000    # 16384.0f

    .line 2
    iput v1, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    .line 3
    array-length v1, v0

    mul-int/lit8 v1, v1, 0x2

    const/4 v2, 0x0

    if-nez p1, :cond_1

    .line 4
    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([FF)V

    goto/16 :goto_4

    .line 5
    :cond_1
    array-length v3, p1

    const v4, 0x3f266666    # 0.65f

    const/4 v5, 0x0

    if-lt v3, v1, :cond_5

    .line 6
    array-length v1, p1

    array-length v0, v0

    div-int/2addr v1, v0

    .line 7
    rem-int/lit8 v0, v1, 0x2

    if-eqz v0, :cond_2

    add-int/lit8 v1, v1, -0x1

    .line 8
    :cond_2
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    array-length v0, v0

    if-ge v5, v0, :cond_9

    mul-int v0, v5, v1

    .line 9
    aget-byte v2, p1, v0

    add-int/lit8 v3, v0, 0x1

    aget-byte v3, p1, v3

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->d(BB)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    add-int/lit8 v3, v0, 0x3

    .line 10
    array-length v6, p1

    if-ge v3, v6, :cond_3

    add-int/lit8 v0, v0, 0x2

    .line 11
    aget-byte v0, p1, v0

    aget-byte v3, p1, v3

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->d(BB)S

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-float v0, v0

    goto :goto_1

    :cond_3
    move v0, v2

    .line 12
    :goto_1
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    add-float/2addr v2, v0

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float v2, v2, v0

    aget v0, v3, v5

    add-float/2addr v2, v0

    mul-float v2, v2, v4

    aput v2, v3, v5

    .line 13
    aget v0, v3, v5

    iget v2, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    cmpl-float v0, v0, v2

    if-lez v0, :cond_4

    .line 14
    aget v0, v3, v5

    iput v0, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_5
    array-length v0, v0

    array-length v1, p1

    div-int/2addr v0, v1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 16
    :goto_2
    array-length v6, p1

    add-int/lit8 v6, v6, -0x3

    if-ge v1, v6, :cond_9

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    array-length v6, v6

    if-ge v3, v6, :cond_9

    if-nez v1, :cond_6

    .line 17
    aget-byte v2, p1, v1

    add-int/lit8 v6, v1, 0x1

    aget-byte v6, p1, v6

    invoke-static {v2, v6}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->d(BB)S

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    int-to-float v2, v2

    :cond_6
    add-int/lit8 v6, v1, 0x2

    .line 18
    aget-byte v6, p1, v6

    add-int/lit8 v7, v1, 0x3

    aget-byte v7, p1, v7

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->d(BB)S

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    const/4 v7, 0x0

    :goto_3
    if-ge v7, v0, :cond_8

    .line 19
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->a:[F

    array-length v9, v8

    if-ge v3, v9, :cond_8

    const/high16 v9, 0x3f800000    # 1.0f

    int-to-float v10, v7

    mul-float v10, v10, v9

    int-to-float v9, v0

    div-float/2addr v10, v9

    sub-float v9, v6, v2

    mul-float v10, v10, v9

    add-float/2addr v10, v2

    .line 20
    aget v9, v8, v3

    add-float/2addr v10, v9

    mul-float v10, v10, v4

    aput v10, v8, v3

    .line 21
    aget v9, v8, v3

    iget v10, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    cmpl-float v9, v9, v10

    if-lez v9, :cond_7

    .line 22
    aget v8, v8, v3

    iput v8, p0, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->g:F

    :cond_7
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_8
    add-int/lit8 v1, v1, 0x4

    move v2, v6

    goto :goto_2

    .line 23
    :cond_9
    :goto_4
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/speech/ui/AudioWaveView;->f()V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
