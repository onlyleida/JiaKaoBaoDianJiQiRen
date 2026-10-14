.class public Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;
.super Landroid/view/View;
.source "SourceFile"


# instance fields
.field private a:Landroid/graphics/Paint;

.field protected b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/RectF;

.field private d:F

.field private e:F

.field private f:F

.field private g:Ljava/lang/String;

.field private h:F

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:F

.field private o:Ljava/lang/String;

.field private p:F

.field private q:F

.field private final r:I

.field private final s:I

.field private final t:F

.field private final u:F

.field private final v:F

.field private final w:F

.field private final x:Ljava/lang/String;

.field private y:F

.field private final z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->c:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->j:I

    const-string v1, "%"

    .line 5
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->o:Ljava/lang/String;

    const/16 v2, 0x48

    const/16 v3, 0x6a

    const/16 v4, 0xb0

    .line 6
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->r:I

    const/16 v2, 0x42

    const/16 v3, 0x91

    const/16 v4, 0xf1

    .line 7
    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->s:I

    const/high16 v2, 0x41900000    # 18.0f

    .line 8
    invoke-virtual {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->y:F

    const/high16 v2, 0x42c80000    # 100.0f

    .line 9
    invoke-virtual {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a(F)I

    move-result v2

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->z:I

    const/high16 v2, 0x42200000    # 40.0f

    .line 10
    invoke-virtual {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->y:F

    const/high16 v2, 0x41700000    # 15.0f

    .line 11
    invoke-virtual {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->t:F

    const/high16 v2, 0x40800000    # 4.0f

    .line 12
    invoke-virtual {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a(F)I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->u:F

    .line 13
    iput-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->x:Ljava/lang/String;

    const/high16 v1, 0x41200000    # 10.0f

    .line 14
    invoke-virtual {p0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->v:F

    .line 15
    invoke-virtual {p0, v2}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->w:F

    .line 16
    sget-object v1, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b(Landroid/content/res/TypedArray;)V

    .line 18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->c()V

    return-void
.end method


# virtual methods
.method public a(F)I
    .locals 1

    .line 1
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    mul-float p1, p1, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method protected b(Landroid/content/res/TypedArray;)V
    .locals 2

    .line 1
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_finished_color:I

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->l:I

    .line 2
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_unfinished_color:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->r:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->m:I

    .line 3
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_text_color:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->s:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->i:I

    .line 4
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_text_size:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->y:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->h:F

    .line 5
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_angle:I

    const/high16 v1, 0x43900000    # 288.0f

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    .line 6
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_max:I

    const/16 v1, 0x64

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setMax(I)V

    .line 7
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_progress:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    .line 8
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_stroke_width:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->w:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->d:F

    .line 9
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_suffix_text_size:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->t:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->e:F

    .line 10
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->x:Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->o:Ljava/lang/String;

    .line 11
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_suffix_text_padding:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->u:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->p:F

    .line 12
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_bottom_text_size:I

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->v:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->f:F

    .line 13
    sget v0, Lcom/mucang/android/jiakaoyi/uilib/R$styleable;->ArcProgress_arc_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->g:Ljava/lang/String;

    return-void
.end method

.method protected c()V
    .locals 3

    .line 1
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    .line 2
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->i:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->h:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 5
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    .line 6
    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->r:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->d:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-void
.end method

.method public getArcAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    return v0
.end method

.method public getBottomText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getBottomTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->f:F

    return v0
.end method

.method public getFinishedStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->l:I

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->k:I

    return v0
.end method

.method public getProgress()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->j:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->d:F

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->o:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffixTextPadding()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->p:F

    return v0
.end method

.method public getSuffixTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->e:F

    return v0
.end method

.method protected getSuggestedMinimumHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->z:I

    return v0
.end method

.method protected getSuggestedMinimumWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->z:I

    return v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->i:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->h:F

    return v0
.end method

.method public getUnfinishedStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->m:I

    return v0
.end method

.method public invalidate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->c()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/high16 v2, 0x43870000    # 270.0f

    sub-float v5, v2, v0

    .line 3
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->j:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getMax()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    mul-float v9, v0, v2

    .line 4
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->j:I

    if-nez v0, :cond_0

    const v0, 0x3c23d70a    # 0.01f

    goto :goto_0

    :cond_0
    move v0, v5

    .line 5
    :goto_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->m:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->c:Landroid/graphics/RectF;

    iget v6, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    const/4 v7, 0x0

    iget-object v8, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 7
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->l:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->c:Landroid/graphics/RectF;

    const/4 v10, 0x0

    iget-object v11, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->a:Landroid/graphics/Paint;

    move-object v6, p1

    move v8, v0

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getProgress()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 10
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 11
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->i:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->h:F

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v2

    div-float/2addr v3, v1

    .line 15
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    sub-float/2addr v4, v5

    div-float/2addr v4, v1

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v4, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 16
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    iget v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->e:F

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 17
    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->descent()F

    move-result v4

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->ascent()F

    move-result v5

    add-float/2addr v4, v5

    .line 18
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->o:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v6

    int-to-float v6, v6

    div-float/2addr v6, v1

    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v6, v0

    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->p:F

    add-float/2addr v6, v0

    add-float/2addr v3, v2

    sub-float/2addr v3, v4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v5, v6, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 19
    :cond_1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->q:F

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    if-nez v0, :cond_2

    .line 20
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v1

    const/high16 v2, 0x43b40000    # 360.0f

    .line 21
    iget v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    sub-float/2addr v2, v3

    div-float/2addr v2, v1

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    const/high16 v5, 0x43340000    # 180.0f

    div-float/2addr v2, v5

    float-to-double v5, v2

    const-wide v7, 0x400921fb54442d18L    # Math.PI

    mul-double v5, v5, v7

    .line 22
    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    sub-double/2addr v3, v5

    double-to-float v2, v3

    mul-float v0, v0, v2

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->q:F

    .line 23
    :cond_2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 24
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->f:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->q:F

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->descent()F

    move-result v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    add-float/2addr v2, v3

    div-float/2addr v2, v1

    sub-float/2addr v0, v2

    .line 26
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .line 1
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->c:Landroid/graphics/RectF;

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->d:F

    const/high16 v2, 0x40000000    # 2.0f

    div-float v3, v1, v2

    div-float v4, v1, v2

    int-to-float p1, p1

    div-float/2addr v1, v2

    sub-float v1, p1, v1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    iget v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->d:F

    div-float/2addr v5, v2

    sub-float/2addr p2, v5

    invoke-virtual {v0, v3, v4, v1, p2}, Landroid/graphics/RectF;->set(FFFF)V

    div-float/2addr p1, v2

    .line 4
    iget p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    const/high16 v0, 0x43b40000    # 360.0f

    sub-float/2addr v0, p2

    div-float/2addr v0, v2

    const/high16 p2, 0x43340000    # 180.0f

    div-float/2addr v0, p2

    float-to-double v0, v0

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v0

    double-to-float p2, v2

    mul-float p1, p1, p2

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->q:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "stroke_width"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->d:F

    const-string v0, "suffix_text_size"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->e:F

    const-string v0, "suffix_text_padding"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->p:F

    const-string v0, "bottom_text_size"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->f:F

    const-string v0, "bottom_text"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->g:Ljava/lang/String;

    const-string v0, "text_size"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->h:F

    const-string v0, "text_color"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->i:I

    const-string v0, "max"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setMax(I)V

    const-string v0, "progress"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->setProgress(I)V

    const-string v0, "finished_stroke_color"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->l:I

    const-string v0, "unfinished_stroke_color"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->m:I

    const-string v0, "suffix"

    .line 14
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->o:Ljava/lang/String;

    .line 15
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->c()V

    const-string v0, "saved_instance"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto :goto_0

    .line 17
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    :goto_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "saved_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getStrokeWidth()F

    move-result v1

    const-string v2, "stroke_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getSuffixTextSize()F

    move-result v1

    const-string v2, "suffix_text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getSuffixTextPadding()F

    move-result v1

    const-string v2, "suffix_text_padding"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getBottomTextSize()F

    move-result v1

    const-string v2, "bottom_text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getBottomText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "bottom_text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getTextSize()F

    move-result v1

    const-string v2, "text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getTextColor()I

    move-result v1

    const-string v2, "text_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getProgress()I

    move-result v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getMax()I

    move-result v1

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getFinishedStrokeColor()I

    move-result v1

    const-string v2, "finished_stroke_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getUnfinishedStrokeColor()I

    move-result v1

    const-string v2, "unfinished_stroke_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 14
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getArcAngle()F

    move-result v1

    const-string v2, "arc_angle"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 15
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suffix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public setArcAngle(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->n:F

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setBottomText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->g:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setBottomTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->f:F

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setFinishedStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->l:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->k:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    :cond_0
    return-void
.end method

.method public setProgress(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->j:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getMax()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 3
    iget p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->j:I

    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->getMax()I

    move-result v0

    rem-int/2addr p1, v0

    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->j:I

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->d:F

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->o:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setSuffixTextPadding(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->p:F

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setSuffixTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->e:F

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->i:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->h:F

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method

.method public setUnfinishedStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->m:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/ui/widget/ArcProgress;->invalidate()V

    return-void
.end method
