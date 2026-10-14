.class public Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# instance fields
.field private final i:Landroid/graphics/Paint;

.field private final j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iget-boolean p1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isSelect:Z

    if-eqz p1, :cond_0

    const/16 p1, 0x14

    goto :goto_0

    :cond_0
    const/16 p1, 0xa

    :goto_0
    iput p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 12

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    invoke-virtual {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isSelect:Z

    if-eqz v2, :cond_0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 8
    :goto_0
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v4

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v4, v4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v4, v1, v5}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    if-eqz v2, :cond_1

    .line 10
    iget v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    int-to-float v1, v1

    invoke-virtual {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result p2

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 12
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v4

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p2, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_1

    .line 13
    :cond_1
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 15
    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v4

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v8, v1

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v9, v1

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v10, v1

    iget-object v11, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    move-object v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 16
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->number:Ljava/lang/String;

    invoke-static {p2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isSelect:Z

    if-eqz v1, :cond_2

    const/high16 v3, -0x1000000

    :cond_2
    invoke-virtual {p2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    const/high16 v1, 0x41a00000    # 20.0f

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    new-instance p2, Landroid/graphics/Rect;

    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->number:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v1, v2, v3, v4, p2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->number:Ljava/lang/String;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v5

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result p2

    int-to-float p2, p2

    mul-float p2, p2, v4

    add-float/2addr v0, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->i:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, p2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 23
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/j3;->j:Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->posOnLine:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method
