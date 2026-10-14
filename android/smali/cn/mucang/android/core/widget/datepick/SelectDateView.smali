.class public Lcn/mucang/android/core/widget/datepick/SelectDateView;
.super Landroid/view/View;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/widget/datepick/SelectDateView$b;,
        Lcn/mucang/android/core/widget/datepick/SelectDateView$c;,
        Lcn/mucang/android/core/widget/datepick/SelectDateView$a;
    }
.end annotation


# instance fields
.field private a:F

.field private b:F

.field private c:F

.field private d:F

.field private e:F

.field private f:F

.field private g:I

.field private h:I

.field private i:Z

.field private j:I

.field private k:I

.field private l:Z

.field private m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Landroid/graphics/Paint;

.field private o:Landroid/graphics/Paint;

.field private p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

.field private q:Lcn/mucang/android/core/widget/datepick/SelectDateView$c;

.field private r:Ljava/util/Timer;

.field private s:Lcn/mucang/android/core/widget/datepick/SelectDateView$b;

.field private t:Landroid/graphics/Paint$FontMetricsInt;

.field private u:Landroid/graphics/Paint$FontMetricsInt;

.field private v:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x42f00000    # 120.0f

    .line 3
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->e:F

    const/high16 p1, 0x437f0000    # 255.0f

    .line 4
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->f:F

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i:Z

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->l:Z

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->f()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    .line 4
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->b:F

    return-void
.end method

.method private b(F)V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->b:F

    sub-float v1, p1, v1

    add-float/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    .line 2
    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d:F

    const v2, 0x40333333    # 2.8f

    mul-float v3, v1, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    cmpl-float v3, v0, v3

    if-lez v3, :cond_2

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i:Z

    if-nez v0, :cond_0

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    if-nez v1, :cond_0

    .line 4
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->b:F

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 6
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    .line 7
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->h()V

    .line 8
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d:F

    mul-float v1, v1, v2

    sub-float/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    goto :goto_0

    :cond_2
    const v3, -0x3fcccccd    # -2.8f

    mul-float v1, v1, v3

    div-float/2addr v1, v4

    cmpg-float v0, v0, v1

    if-gez v0, :cond_5

    .line 9
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_3

    .line 10
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->b:F

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void

    .line 12
    :cond_3
    iget-boolean v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i:Z

    if-nez v0, :cond_4

    .line 13
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    .line 14
    :cond_4
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g()V

    .line 15
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d:F

    mul-float v1, v1, v2

    add-float/2addr v0, v1

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    .line 16
    :cond_5
    :goto_0
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->b:F

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method private c()V
    .locals 7

    .line 1
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    .line 6
    :cond_1
    new-instance v2, Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->q:Lcn/mucang/android/core/widget/datepick/SelectDateView$c;

    invoke-direct {v2, p0, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView$a;-><init>(Lcn/mucang/android/core/widget/datepick/SelectDateView;Landroid/os/Handler;)V

    iput-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->r:Ljava/util/Timer;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0xa

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    return-void
.end method

.method private d(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g:I

    int-to-float v0, v0

    const/high16 v1, 0x40800000    # 4.0f

    div-float/2addr v0, v1

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    invoke-direct {p0, v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i(FF)F

    move-result v0

    .line 2
    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->c:F

    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d:F

    sub-float/2addr v1, v2

    mul-float v1, v1, v0

    add-float/2addr v1, v2

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->f:F

    iget v3, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->e:F

    sub-float/2addr v2, v3

    mul-float v2, v2, v0

    add-float/2addr v2, v3

    float-to-int v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 5
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->h:I

    int-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 6
    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g:I

    int-to-double v4, v1

    div-double/2addr v4, v2

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    float-to-double v6, v1

    add-double/2addr v4, v6

    double-to-float v1, v4

    .line 7
    iget-object v4, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->t:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    float-to-double v4, v1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->t:Landroid/graphics/Paint$FontMetricsInt;

    iget v6, v1, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v6, v6

    div-double/2addr v6, v2

    iget v1, v1, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v8, v1

    div-double/2addr v8, v2

    add-double/2addr v6, v8

    sub-double/2addr v4, v6

    double-to-float v1, v4

    .line 9
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    iget v3, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    if-le v2, v3, :cond_0

    .line 10
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 11
    :goto_0
    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    sub-int/2addr v2, v1

    const/16 v3, 0xa

    if-ltz v2, :cond_1

    if-gt v1, v3, :cond_1

    const/4 v2, -0x1

    .line 12
    invoke-direct {p0, p1, v1, v2}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->e(Landroid/graphics/Canvas;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    add-int/2addr v1, v0

    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    if-gt v0, v3, :cond_2

    const/4 v1, 0x1

    .line 14
    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->e(Landroid/graphics/Canvas;II)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private e(Landroid/graphics/Canvas;II)V
    .locals 8

    .line 1
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d:F

    const v1, 0x40333333    # 2.8f

    mul-float v0, v0, v1

    int-to-float v1, p2

    mul-float v0, v0, v1

    int-to-float v1, p3

    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    .line 2
    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g:I

    int-to-float v2, v2

    const/high16 v3, 0x40800000    # 4.0f

    div-float/2addr v2, v3

    invoke-direct {p0, v2, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i(FF)F

    move-result v2

    .line 3
    iget v3, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->c:F

    iget v4, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d:F

    sub-float/2addr v3, v4

    mul-float v3, v3, v2

    add-float/2addr v3, v4

    .line 4
    iget-object v4, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    invoke-virtual {v4, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v3, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    iget v4, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->f:F

    iget v5, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->e:F

    sub-float/2addr v4, v5

    mul-float v4, v4, v2

    add-float/2addr v4, v5

    float-to-int v2, v4

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 6
    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g:I

    int-to-double v2, v2

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    mul-float v1, v1, v0

    float-to-double v0, v1

    add-double/2addr v2, v0

    double-to-float v0, v2

    .line 7
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->u:Landroid/graphics/Paint$FontMetricsInt;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    float-to-double v0, v0

    .line 8
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->u:Landroid/graphics/Paint$FontMetricsInt;

    iget v3, v2, Landroid/graphics/Paint$FontMetricsInt;->bottom:I

    int-to-double v6, v3

    div-double/2addr v6, v4

    iget v2, v2, Landroid/graphics/Paint$FontMetricsInt;->top:I

    int-to-double v2, v2

    div-double/2addr v2, v4

    add-double/2addr v6, v2

    sub-double/2addr v0, v6

    double-to-float v0, v0

    .line 9
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    mul-int p3, p3, p2

    add-int/2addr v2, p3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iget p3, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->h:I

    int-to-double v1, p3

    div-double/2addr v1, v4

    double-to-float p3, v1

    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private f()V
    .locals 3

    const/high16 v0, 0x41a00000    # 20.0f

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/s0;->a(F)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->j:I

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcn/mucang/android/framework/core/R$color;->core__date_picker_content_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->v:I

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    .line 4
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->v:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    .line 8
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    new-instance v0, Lcn/mucang/android/core/widget/datepick/SelectDateView$c;

    invoke-direct {v0, p0}, Lcn/mucang/android/core/widget/datepick/SelectDateView$c;-><init>(Lcn/mucang/android/core/widget/datepick/SelectDateView;)V

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->q:Lcn/mucang/android/core/widget/datepick/SelectDateView$c;

    .line 12
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->r:Ljava/util/Timer;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->t:Landroid/graphics/Paint$FontMetricsInt;

    .line 14
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->u:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method private g()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private h()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private i(FF)F
    .locals 2

    div-float/2addr p2, p1

    float-to-double p1, p2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 1
    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v0, p1

    double-to-float p1, v0

    const/4 p2, 0x0

    cmpg-float v0, p1, p2

    if-gez v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    return p1
.end method


# virtual methods
.method public getCurrentSelected()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method public j()V
    .locals 3

    .line 1
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x41200000    # 10.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Ljava/util/TimerTask;->cancel()Z

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->p:Lcn/mucang/android/core/widget/datepick/SelectDateView$a;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->s:Lcn/mucang/android/core/widget/datepick/SelectDateView$b;

    if-eqz v0, :cond_1

    .line 7
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    iget v2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0, v1}, Lcn/mucang/android/core/widget/datepick/SelectDateView$b;->a(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_0
    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    div-float v2, v0, v2

    mul-float v2, v2, v1

    sub-float/2addr v0, v2

    iput v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a:F

    .line 9
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->h:I

    .line 4
    iget p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g:I

    int-to-float p1, p1

    const/high16 p2, 0x40e00000    # 7.0f

    div-float/2addr p1, p2

    iget p2, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->j:I

    int-to-float p2, p2

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->c:F

    const p2, 0x400ccccd    # 2.2f

    div-float/2addr p1, p2

    .line 5
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->d:F

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->l:Z

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->b(F)V

    goto :goto_0

    .line 3
    :cond_1
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->c()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->a(Landroid/view/MotionEvent;)V

    :goto_0
    return v1
.end method

.method public setColor(I)V
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->v:I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->n:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setDataList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    return-void
.end method

.method public setOnChangeListener(Lcn/mucang/android/core/widget/datepick/SelectDateView$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->s:Lcn/mucang/android/core/widget/datepick/SelectDateView$b;

    return-void
.end method

.method public setSelected(I)V
    .locals 2

    .line 1
    iput p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    .line 2
    iget-boolean p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->i:Z

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    iget v0, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    sub-int/2addr p1, v0

    const/4 v0, 0x0

    if-gez p1, :cond_0

    :goto_0
    neg-int v1, p1

    if-ge v0, v1, :cond_1

    .line 4
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->g()V

    .line 5
    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    if-lez p1, :cond_1

    :goto_1
    if-ge v0, p1, :cond_1

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->h()V

    .line 7
    iget v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->k:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public setSelected(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 9
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 10
    iget-object v1, p0, Lcn/mucang/android/core/widget/datepick/SelectDateView;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0, v0}, Lcn/mucang/android/core/widget/datepick/SelectDateView;->setSelected(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
