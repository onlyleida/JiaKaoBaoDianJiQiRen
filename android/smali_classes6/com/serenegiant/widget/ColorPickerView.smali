.class public Lcom/serenegiant/widget/ColorPickerView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;
    }
.end annotation


# static fields
.field private static final BORDER_COLOR:I = -0x919192

.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final DEFAULT_HEIGHT:I = 0x64

.field private static final DEFAULT_SELECTED_RADIUS:I = 0x8

.field private static final DEFAULT_WIDTH:I = 0x64

.field private static final PI:F = 3.1415927f

.field private static final RECTANGLE_TRACKER_OFFSET_DP:F = 2.0f

.field private static final SQRT2:F

.field private static final STATE_ALPHA:I = 0x2

.field private static final STATE_COLOR:I = 0x1

.field private static final STATE_IDLE:I = 0x0

.field private static final STATE_VAL:I = 0x3

.field private static final TRACKER_COLOR:I = -0xe3e3e4


# instance fields
.field private final COLORS:[I

.field private final DENSITY:F

.field private final HSV:[F

.field private final RECTANGLE_TRACKER_OFFSET:F

.field private final SELECTED_RADIUS:F

.field private center_x:I

.field private center_y:I

.field private mAlpha:I

.field private final mAlphaDrawable:Lcom/serenegiant/graphics/ShaderDrawable;

.field private final mAlphaPaint:Landroid/graphics/Paint;

.field private final mAlphaRect:Landroid/graphics/RectF;

.field private final mAlphaShader:Landroid/graphics/Shader;

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mColor:I

.field private mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

.field private final mDrawingRect:Landroid/graphics/RectF;

.field private final mGradientPaint:Landroid/graphics/Paint;

.field private mHue:F

.field private final mPaint:Landroid/graphics/Paint;

.field private mSat:F

.field private final mSelected:Landroid/graphics/PointF;

.field private final mSelectionPaint:Landroid/graphics/Paint;

.field private final mSelectionRect:Landroid/graphics/RectF;

.field private mShowAlphaSlider:Z

.field private mShowSelectedColor:Z

.field private mShowValSlider:Z

.field private final mSliderRect:Landroid/graphics/RectF;

.field private mState:I

.field private final mTrackerPaint:Landroid/graphics/Paint;

.field private mVal:F

.field private final mValPaint:Landroid/graphics/Paint;

.field private final mValRect:Landroid/graphics/RectF;

.field private radius:I

.field private radius2:I

.field private slider_width:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Lcom/serenegiant/widget/ColorPickerView;->SQRT2:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/serenegiant/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/serenegiant/widget/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 4
    iput-boolean p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    .line 5
    iput-boolean p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowValSlider:Z

    .line 6
    iput-boolean p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowSelectedColor:Z

    const/16 p3, 0x168

    new-array p3, p3, [I

    .line 7
    iput-object p3, p0, Lcom/serenegiant/widget/ColorPickerView;->COLORS:[I

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 8
    iput-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->HSV:[F

    .line 9
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 10
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 11
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    .line 12
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    .line 13
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mGradientPaint:Landroid/graphics/Paint;

    .line 14
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    .line 15
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionRect:Landroid/graphics/RectF;

    .line 16
    new-instance v3, Landroid/graphics/PointF;

    invoke-direct {v3}, Landroid/graphics/PointF;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelected:Landroid/graphics/PointF;

    .line 17
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSliderRect:Landroid/graphics/RectF;

    .line 18
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 19
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 20
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    .line 21
    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    const/4 v3, 0x0

    .line 22
    iput v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mState:I

    const/16 v4, 0x20

    .line 23
    iput v4, p0, Lcom/serenegiant/widget/ColorPickerView;->slider_width:I

    const/4 v4, -0x1

    .line 24
    iput v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    const/16 v4, 0xff

    .line 25
    iput v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    const/4 v4, 0x0

    .line 26
    iput v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    const/high16 v5, 0x43b40000    # 360.0f

    .line 27
    iput v5, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    .line 28
    iput v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    .line 29
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    iput p1, p0, Lcom/serenegiant/widget/ColorPickerView;->DENSITY:F

    const/high16 v5, 0x40000000    # 2.0f

    mul-float v6, p1, v5

    .line 30
    iput v6, p0, Lcom/serenegiant/widget/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    const/high16 v6, 0x41000000    # 8.0f

    mul-float v6, v6, p1

    .line 31
    iput v6, p0, Lcom/serenegiant/widget/ColorPickerView;->SELECTED_RADIUS:F

    .line 32
    new-instance v6, Landroid/graphics/BitmapShader;

    invoke-static {}, Lcom/serenegiant/graphics/BitmapHelper;->makeCheckBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    sget-object v8, Landroid/graphics/Shader$TileMode;->REPEAT:Landroid/graphics/Shader$TileMode;

    invoke-direct {v6, v7, v8, v8}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    iput-object v6, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 33
    new-instance v7, Lcom/serenegiant/graphics/ShaderDrawable;

    const/4 v8, 0x6

    invoke-direct {v7, v8, v3}, Lcom/serenegiant/graphics/ShaderDrawable;-><init>(II)V

    iput-object v7, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaDrawable:Lcom/serenegiant/graphics/ShaderDrawable;

    .line 34
    invoke-virtual {v7, v6}, Lcom/serenegiant/graphics/ShaderDrawable;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 35
    iput v3, p0, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    .line 36
    iget v6, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    invoke-virtual {p0, v6, v3}, Lcom/serenegiant/widget/ColorPickerView;->internalSetColor(IZ)V

    .line 37
    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v3, p3}, Lcom/serenegiant/widget/ColorPickerView;->setHueColorArray(I[I)[I

    .line 38
    new-instance v3, Landroid/graphics/SweepGradient;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v4, p3, v6}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 39
    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 40
    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 41
    iget p3, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setColor(I)V

    const/high16 p3, 0x40a00000    # 5.0f

    .line 42
    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const p3, -0xe3e3e4

    .line 43
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 44
    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    mul-float p1, p1, v5

    .line 45
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method private final HSVToColor(IFFF)I
    .locals 3

    const/4 v0, 0x0

    const/high16 v1, 0x43b40000    # 360.0f

    cmpl-float v1, p2, v1

    if-ltz v1, :cond_0

    const p2, 0x43b3feb8    # 359.99f

    goto :goto_0

    :cond_0
    cmpg-float v1, p2, v0

    if-gez v1, :cond_1

    const/4 p2, 0x0

    :cond_1
    :goto_0
    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p3, v1

    if-lez v2, :cond_2

    const/high16 p3, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    cmpg-float v2, p3, v0

    if-gez v2, :cond_3

    const/4 p3, 0x0

    :cond_3
    :goto_1
    cmpl-float v2, p4, v1

    if-lez v2, :cond_4

    const/high16 p4, 0x3f800000    # 1.0f

    goto :goto_2

    :cond_4
    cmpg-float v1, p4, v0

    if-gez v1, :cond_5

    const/4 p4, 0x0

    .line 1
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->HSV:[F

    const/4 v1, 0x0

    aput p2, v0, v1

    const/4 p2, 0x1

    .line 2
    aput p3, v0, p2

    const/4 p2, 0x2

    .line 3
    aput p4, v0, p2

    .line 4
    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    return p1
.end method

.method private final alphaToPoint(I)Landroid/graphics/Point;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Point;

    int-to-float p1, p1

    mul-float p1, p1, v1

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr p1, v3

    sub-float/2addr v1, p1

    iget p1, v0, Landroid/graphics/RectF;->left:F

    add-float/2addr v1, p1

    float-to-int p1, v1

    iget v0, v0, Landroid/graphics/RectF;->top:F

    float-to-int v0, v0

    invoke-direct {v2, p1, v0}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method private final drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    const v2, -0x919192

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lcom/serenegiant/widget/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/16 v1, 0xff

    .line 7
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    iget v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/serenegiant/widget/ColorPickerView;->HSVToColor(IFFF)I

    move-result v10

    const/4 v1, 0x0

    .line 8
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    iget v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/serenegiant/widget/ColorPickerView;->HSVToColor(IFFF)I

    move-result v11

    .line 9
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v6, v0, Landroid/graphics/RectF;->left:F

    iget v9, v0, Landroid/graphics/RectF;->top:F

    iget v8, v0, Landroid/graphics/RectF;->right:F

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    move v7, v9

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 10
    iget-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 12
    iget v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v1}, Lcom/serenegiant/widget/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v1

    .line 13
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/serenegiant/widget/ColorPickerView;->drawTrackerHorizontal(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private final drawTrackerHorizontal(Landroid/graphics/Canvas;FFF)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->DENSITY:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSliderRect:Landroid/graphics/RectF;

    sub-float v3, p2, v0

    iput v3, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, v0

    .line 3
    iput p2, v2, Landroid/graphics/RectF;->right:F

    .line 4
    iget p2, p0, Lcom/serenegiant/widget/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float v0, p3, p2

    iput v0, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, p4

    add-float/2addr p3, p2

    .line 5
    iput p3, v2, Landroid/graphics/RectF;->bottom:F

    .line 6
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    const p3, -0x1c1c1d

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSliderRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    const p3, -0xe3e3e4

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSliderRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawTrackerVertical(Landroid/graphics/Canvas;FFF)V
    .locals 5

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->DENSITY:F

    const/high16 v1, 0x40800000    # 4.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    .line 2
    iget-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSliderRect:Landroid/graphics/RectF;

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float v4, p2, v3

    iput v4, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr p2, p4

    add-float/2addr p2, v3

    .line 3
    iput p2, v2, Landroid/graphics/RectF;->right:F

    sub-float p2, p3, v0

    .line 4
    iput p2, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr p3, v0

    .line 5
    iput p3, v2, Landroid/graphics/RectF;->bottom:F

    .line 6
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    const p3, -0x1c1c1d

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSliderRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 9
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    const p3, -0xe3e3e4

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    sget-object p3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 11
    iget-object p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSliderRect:Landroid/graphics/RectF;

    iget-object p3, p0, Lcom/serenegiant/widget/ColorPickerView;->mTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v1, v1, p3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private final drawValPanel(Landroid/graphics/Canvas;)V
    .locals 13

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowValSlider:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    const v2, -0x919192

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget v1, v0, Landroid/graphics/RectF;->left:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v4, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->top:F

    sub-float v5, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->right:F

    add-float v6, v1, v2

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    add-float v7, v1, v2

    iget-object v8, p0, Lcom/serenegiant/widget/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 5
    iget v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    const/16 v4, 0xff

    invoke-direct {p0, v4, v1, v3, v2}, Lcom/serenegiant/widget/ColorPickerView;->HSVToColor(IFFF)I

    move-result v10

    .line 6
    iget v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    const/4 v3, 0x0

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/serenegiant/widget/ColorPickerView;->HSVToColor(IFFF)I

    move-result v11

    .line 7
    new-instance v1, Landroid/graphics/LinearGradient;

    iget v8, v0, Landroid/graphics/RectF;->left:F

    iget v7, v0, Landroid/graphics/RectF;->top:F

    iget v9, v0, Landroid/graphics/RectF;->bottom:F

    sget-object v12, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v5, v1

    move v6, v8

    invoke-direct/range {v5 .. v12}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 8
    iget-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 9
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 10
    iget v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    invoke-direct {p0, v1}, Lcom/serenegiant/widget/ColorPickerView;->valToPoint(F)Landroid/graphics/Point;

    move-result-object v1

    .line 11
    iget v2, v1, Landroid/graphics/Point;->x:I

    int-to-float v2, v2

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/serenegiant/widget/ColorPickerView;->drawTrackerVertical(Landroid/graphics/Canvas;FFF)V

    return-void
.end method

.method private final pointToAlpha(I)I
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    int-to-float v2, p1

    .line 3
    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v4, v2, v3

    if-gez v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v0, v2, v0

    if-lez v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    float-to-int v0, v3

    sub-int/2addr p1, v0

    :goto_0
    mul-int/lit16 p1, p1, 0xff

    .line 5
    div-int/2addr p1, v1

    rsub-int p1, p1, 0xff

    return p1
.end method

.method private final pointToVal(F)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 3
    iget v2, v0, Landroid/graphics/RectF;->top:F

    cmpg-float v3, p1, v2

    if-gez v3, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_1

    move p1, v1

    goto :goto_0

    :cond_1
    sub-float/2addr p1, v2

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    mul-float p1, p1, v0

    div-float/2addr p1, v1

    sub-float/2addr v0, p1

    return v0
.end method

.method private final setHueColorArray(I[I)[I
    .locals 11

    .line 1
    array-length v0, p2

    int-to-float v1, v0

    const/high16 v2, 0x43b40000    # 360.0f

    div-float v1, v2, v1

    .line 2
    iget-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->HSV:[F

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 3
    iget v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    const/4 v6, 0x2

    aput v4, v3, v6

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    float-to-double v6, v2

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_1

    if-lt v4, v0, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v6, p0, Lcom/serenegiant/widget/ColorPickerView;->HSV:[F

    aput v2, v6, v3

    .line 5
    invoke-static {p1, v6}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    aput v6, p2, v4

    sub-float/2addr v2, v1

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 6
    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->HSV:[F

    const/4 v2, 0x0

    aput v2, v1, v3

    sub-int/2addr v0, v5

    .line 7
    invoke-static {p1, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    aput p1, p2, v0

    return-object p2
.end method

.method private final setUpValRect()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowValSlider:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->right:F

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->slider_width:I

    int-to-float v4, v3

    sub-float v4, v2, v4

    const/high16 v5, 0x3f800000    # 1.0f

    add-float/2addr v4, v5

    iget v6, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v6, v5

    iget v7, p0, Lcom/serenegiant/widget/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v6, v7

    sub-float/2addr v2, v5

    sub-float/2addr v2, v7

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v5

    iget-boolean v5, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    if-eqz v5, :cond_1

    add-int/lit8 v3, v3, 0x10

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    int-to-float v3, v3

    sub-float/2addr v0, v3

    invoke-virtual {v1, v4, v6, v2, v0}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private setupAlphaRect()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 3
    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/serenegiant/widget/ColorPickerView;->slider_width:I

    int-to-float v6, v5

    sub-float v6, v4, v6

    add-float/2addr v6, v3

    iget v0, v0, Landroid/graphics/RectF;->right:F

    int-to-float v5, v5

    sub-float/2addr v0, v5

    sub-float/2addr v0, v3

    sub-float/2addr v4, v3

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v4, v3

    invoke-virtual {v1, v2, v6, v0, v4}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private final trackAlpha(FF)Z
    .locals 6

    .line 1
    iget-boolean p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    if-eqz p2, :cond_0

    float-to-int p1, p1

    .line 2
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ColorPickerView;->pointToAlpha(I)I

    move-result v1

    .line 3
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    if-eq p1, v1, :cond_0

    .line 4
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    iget v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/serenegiant/widget/ColorPickerView;->setColor(IFFFZ)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final trackVal(FF)Z
    .locals 6

    .line 1
    invoke-direct {p0, p2}, Lcom/serenegiant/widget/ColorPickerView;->pointToVal(F)F

    move-result v4

    .line 2
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    cmpl-float p1, p1, v4

    if-eqz p1, :cond_0

    .line 3
    iget v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/serenegiant/widget/ColorPickerView;->setColor(IFFFZ)V

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private final valToPoint(F)Landroid/graphics/Point;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    .line 2
    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v1

    .line 3
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    mul-float p1, p1, v1

    sub-float/2addr v1, p1

    .line 4
    iget p1, v0, Landroid/graphics/RectF;->top:F

    add-float/2addr v1, p1

    float-to-int p1, v1

    iput p1, v2, Landroid/graphics/Point;->y:I

    .line 5
    iget p1, v0, Landroid/graphics/RectF;->left:F

    float-to-int p1, p1

    iput p1, v2, Landroid/graphics/Point;->x:I

    return-object v2
.end method


# virtual methods
.method public getColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    return v0
.end method

.method public getColorPickerListener()Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    return-object v0
.end method

.method public getHue()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    return v0
.end method

.method public getSat()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    return v0
.end method

.method public getShowSelectedColor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowSelectedColor:Z

    return v0
.end method

.method public getVal()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    return v0
.end method

.method protected internalSetColor(IZ)V
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v1

    .line 2
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 3
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result p1

    .line 5
    iget-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->HSV:[F

    invoke-static {v0, p1, v2, v3}, Landroid/graphics/Color;->RGBToHSV(III[F)V

    .line 6
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->HSV:[F

    const/4 v0, 0x0

    aget v2, p1, v0

    const/4 v0, 0x1

    aget v3, p1, v0

    const/4 v0, 0x2

    aget v4, p1, v0

    move-object v0, p0

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/serenegiant/widget/ColorPickerView;->setColor(IFFFZ)V

    return-void
.end method

.method public isShowAlpha()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    return v0
.end method

.method public isShowVal()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowValSlider:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowSelectedColor:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 4
    iget-object v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionRect:Landroid/graphics/RectF;

    const/4 v5, 0x0

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 5
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 6
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v4, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 9
    :try_start_0
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->center_x:I

    int-to-float v2, v2

    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->center_y:I

    int-to-float v3, v3

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 10
    iget-object v2, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 11
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    const/4 v4, 0x0

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 12
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mGradientPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 15
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 16
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    not-int v1, v1

    const/high16 v2, -0x1000000

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelected:Landroid/graphics/PointF;

    iget v1, v0, Landroid/graphics/PointF;->x:F

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->SELECTED_RADIUS:F

    iget-object v3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelectionPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 19
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    .line 20
    invoke-direct {p0, p1}, Lcom/serenegiant/widget/ColorPickerView;->drawValPanel(Landroid/graphics/Canvas;)V

    return-void

    :catchall_0
    move-exception v1

    .line 21
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    throw v1
.end method

.method protected onLayout(ZIIII)V
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DrawAllocation"
        }
    .end annotation

    move-object v6, p0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 5
    iget-object v2, v6, Lcom/serenegiant/widget/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v3, v0

    int-to-float v4, v1

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 7
    div-int/lit8 v3, v2, 0xa

    iput v3, v6, Lcom/serenegiant/widget/ColorPickerView;->slider_width:I

    const/16 v4, 0x20

    if-ge v3, v4, :cond_0

    const/high16 v3, 0x42000000    # 32.0f

    .line 8
    iget v4, v6, Lcom/serenegiant/widget/ColorPickerView;->DENSITY:F

    mul-float v4, v4, v3

    float-to-int v3, v4

    iput v3, v6, Lcom/serenegiant/widget/ColorPickerView;->slider_width:I

    .line 9
    :cond_0
    iget v3, v6, Lcom/serenegiant/widget/ColorPickerView;->slider_width:I

    const/high16 v4, 0x41800000    # 16.0f

    iget v5, v6, Lcom/serenegiant/widget/ColorPickerView;->DENSITY:F

    mul-float v5, v5, v4

    float-to-int v4, v5

    add-int/2addr v4, v3

    sub-int/2addr v2, v4

    ushr-int/lit8 v2, v2, 0x1

    .line 10
    iput v2, v6, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    mul-int v2, v2, v2

    .line 11
    iput v2, v6, Lcom/serenegiant/widget/ColorPickerView;->radius2:I

    .line 12
    iget-boolean v2, v6, Lcom/serenegiant/widget/ColorPickerView;->mShowValSlider:Z

    const/4 v4, 0x0

    if-eqz v2, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x1

    iput v0, v6, Lcom/serenegiant/widget/ColorPickerView;->center_x:I

    .line 13
    iget-boolean v2, v6, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    sub-int/2addr v1, v3

    ushr-int/lit8 v1, v1, 0x1

    iput v1, v6, Lcom/serenegiant/widget/ColorPickerView;->center_y:I

    mul-int v0, v0, v0

    mul-int v1, v1, v1

    add-int/2addr v0, v1

    int-to-double v0, v0

    .line 14
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, v6, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    sub-int/2addr v0, v1

    .line 15
    iget-object v1, v6, Lcom/serenegiant/widget/ColorPickerView;->mSelectionRect:Landroid/graphics/RectF;

    neg-int v2, v0

    int-to-float v2, v2

    int-to-float v0, v0

    invoke-virtual {v1, v2, v2, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 16
    iget-object v0, v6, Lcom/serenegiant/widget/ColorPickerView;->mGradientPaint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RadialGradient;

    const/4 v8, 0x0

    const/4 v9, 0x0

    iget v2, v6, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    int-to-float v10, v2

    const/4 v11, -0x1

    const v12, 0xffffff

    sget-object v13, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v7, v1

    invoke-direct/range {v7 .. v13}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 17
    invoke-direct {p0}, Lcom/serenegiant/widget/ColorPickerView;->setupAlphaRect()V

    .line 18
    invoke-direct {p0}, Lcom/serenegiant/widget/ColorPickerView;->setUpValRect()V

    .line 19
    iget v1, v6, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    iget v2, v6, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    iget v3, v6, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    iget v4, v6, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    const/4 v5, 0x1

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/serenegiant/widget/ColorPickerView;->setColor(IFFFZ)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    .line 4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/16 v2, 0x64

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v0, 0x64

    .line 5
    :goto_0
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    if-eqz p2, :cond_1

    goto :goto_1

    :cond_1
    const/16 v1, 0x64

    .line 6
    :goto_1
    invoke-static {v1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 7
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 8
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 3
    iget v2, p0, Lcom/serenegiant/widget/ColorPickerView;->center_x:I

    int-to-float v2, v2

    sub-float v2, v0, v2

    .line 4
    iget v3, p0, Lcom/serenegiant/widget/ColorPickerView;->center_y:I

    int-to-float v3, v3

    sub-float v3, v1, v3

    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    .line 5
    iget v5, p0, Lcom/serenegiant/widget/ColorPickerView;->radius2:I

    int-to-float v5, v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    cmpg-float v5, v4, v5

    if-gtz v5, :cond_0

    const/4 v5, 0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v8, 0x3

    const/4 v9, 0x2

    if-eqz p1, :cond_3

    if-eq p1, v7, :cond_1

    if-eq p1, v9, :cond_6

    goto/16 :goto_3

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    if-eqz p1, :cond_2

    .line 8
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    invoke-interface {p1, p0, v0}, Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;->onColorChanged(Lcom/serenegiant/widget/ColorPickerView;I)V

    .line 9
    :cond_2
    iput v6, p0, Lcom/serenegiant/widget/ColorPickerView;->mState:I

    goto/16 :goto_3

    :cond_3
    if-eqz v5, :cond_4

    .line 10
    iput v7, p0, Lcom/serenegiant/widget/ColorPickerView;->mState:I

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    iput v9, p0, Lcom/serenegiant/widget/ColorPickerView;->mState:I

    goto :goto_1

    .line 13
    :cond_5
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mValRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/RectF;->contains(FF)Z

    move-result p1

    if-eqz p1, :cond_d

    .line 14
    iput v8, p0, Lcom/serenegiant/widget/ColorPickerView;->mState:I

    .line 15
    :cond_6
    :goto_1
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mState:I

    const/4 v5, 0x0

    if-eq p1, v7, :cond_9

    const/4 v2, 0x0

    if-eq p1, v9, :cond_8

    if-eq p1, v8, :cond_7

    goto :goto_2

    .line 16
    :cond_7
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/widget/ColorPickerView;->trackVal(FF)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 17
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->COLORS:[I

    invoke-direct {p0, p1, v0}, Lcom/serenegiant/widget/ColorPickerView;->setHueColorArray(I[I)[I

    .line 18
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->COLORS:[I

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    .line 19
    :cond_8
    invoke-direct {p0, v0, v1}, Lcom/serenegiant/widget/ColorPickerView;->trackAlpha(FF)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 20
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    iget-object v0, p0, Lcom/serenegiant/widget/ColorPickerView;->COLORS:[I

    invoke-direct {p0, p1, v0}, Lcom/serenegiant/widget/ColorPickerView;->setHueColorArray(I[I)[I

    .line 21
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/SweepGradient;

    iget-object v1, p0, Lcom/serenegiant/widget/ColorPickerView;->COLORS:[I

    invoke-direct {v0, v5, v5, v1, v2}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto :goto_2

    :cond_9
    float-to-double v0, v3

    float-to-double v2, v2

    .line 22
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    double-to-float p1, v0

    const v0, 0x40c90fdb

    div-float/2addr p1, v0

    cmpg-float v0, p1, v5

    if-gez v0, :cond_a

    const/high16 v0, 0x3f800000    # 1.0f

    add-float/2addr p1, v0

    .line 23
    :cond_a
    iget v9, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    const/high16 v0, 0x43b40000    # 360.0f

    mul-float p1, p1, v0

    sub-float v10, v0, p1

    float-to-double v0, v4

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    int-to-float v0, v0

    div-float v11, p1, v0

    iget v12, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    const/4 v13, 0x1

    move-object v8, p0

    invoke-virtual/range {v8 .. v13}, Lcom/serenegiant/widget/ColorPickerView;->setColor(IFFFZ)V

    const/4 v6, 0x1

    :cond_b
    :goto_2
    if-eqz v6, :cond_c

    .line 24
    iget-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    if-eqz p1, :cond_c

    .line 25
    iget v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    invoke-interface {p1, p0, v0}, Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;->onColorChanged(Lcom/serenegiant/widget/ColorPickerView;I)V

    :cond_c
    :goto_3
    return v7

    :cond_d
    return v6
.end method

.method public setColor(I)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/serenegiant/widget/ColorPickerView;->internalSetColor(IZ)V

    return-void
.end method

.method protected setColor(IFFFZ)V
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p3, v0

    if-lez v1, :cond_0

    const/high16 p3, 0x3f800000    # 1.0f

    :cond_0
    if-nez p5, :cond_1

    .line 2
    iget p5, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    if-ne p5, p1, :cond_1

    iget p5, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    cmpl-float p5, p5, p2

    if-nez p5, :cond_1

    iget p5, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    cmpl-float p5, p5, p3

    if-nez p5, :cond_1

    iget p5, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    cmpl-float p5, p5, p4

    if-eqz p5, :cond_2

    .line 3
    :cond_1
    iput p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mAlpha:I

    .line 4
    iput p2, p0, Lcom/serenegiant/widget/ColorPickerView;->mHue:F

    .line 5
    iput p3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSat:F

    .line 6
    iput p4, p0, Lcom/serenegiant/widget/ColorPickerView;->mVal:F

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/serenegiant/widget/ColorPickerView;->HSVToColor(IFFF)I

    move-result p1

    iput p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mColor:I

    .line 8
    iget p1, p0, Lcom/serenegiant/widget/ColorPickerView;->radius:I

    if-lez p1, :cond_2

    int-to-float p1, p1

    mul-float p1, p1, p3

    const/high16 p3, 0x43340000    # 180.0f

    div-float/2addr p2, p3

    const p3, 0x40490fdb    # (float)Math.PI

    mul-float p2, p2, p3

    .line 9
    iget-object p3, p0, Lcom/serenegiant/widget/ColorPickerView;->mSelected:Landroid/graphics/PointF;

    iget p4, p0, Lcom/serenegiant/widget/ColorPickerView;->center_x:I

    int-to-float p4, p4

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    double-to-float p2, v2

    mul-float p2, p2, p1

    add-float/2addr p4, p2

    iget p2, p0, Lcom/serenegiant/widget/ColorPickerView;->center_y:I

    int-to-float p2, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    double-to-float p5, v0

    mul-float p1, p1, p5

    sub-float/2addr p2, p1

    invoke-virtual {p3, p4, p2}, Landroid/graphics/PointF;->set(FF)V

    .line 10
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_2
    return-void
.end method

.method public setColorPickerListener(Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mColorPickerListener:Lcom/serenegiant/widget/ColorPickerView$ColorPickerListener;

    return-void
.end method

.method public setShowSelectedColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowSelectedColor:Z

    return-void
.end method

.method public setShowVal(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowValSlider:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowValSlider:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method

.method public showAlpha(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    if-eq v0, p1, :cond_0

    .line 2
    iput-boolean p1, p0, Lcom/serenegiant/widget/ColorPickerView;->mShowAlphaSlider:Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    :cond_0
    return-void
.end method
