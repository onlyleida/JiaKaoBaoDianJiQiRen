.class public Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;
    }
.end annotation


# instance fields
.field public final i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field protected final j:Landroid/graphics/Paint;

.field protected final k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 2
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->c:F

    invoke-virtual {p0, v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v1

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->d:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->h:Z

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v3, :cond_0

    .line 7
    iget v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->i:F

    float-to-double v2, v2

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    .line 8
    invoke-virtual {p2, v2}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v2

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->j:F

    float-to-double v6, v3

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    .line 10
    invoke-virtual {p2, v3}, Landroid/graphics/Matrix;->mapRadius(F)F

    move-result v3

    .line 11
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/DashPathEffect;

    const/4 v8, 0x2

    new-array v8, v8, [F

    aput v2, v8, v4

    const/4 v2, 0x1

    aput v3, v8, v2

    invoke-direct {v7, v8, v5}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 12
    :cond_0
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v6

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->a:F

    cmpl-float v3, v2, v5

    if-lez v3, :cond_1

    .line 14
    invoke-virtual {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v2

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 16
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 17
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->b:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v6

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v1, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 19
    :cond_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->e:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v2

    const v3, 0x3e4ccccc    # 0.19999999f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_3

    .line 22
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_2

    .line 23
    new-instance p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    const/high16 v0, 0x40200000    # 2.5f

    mul-float v1, v1, v0

    float-to-double v0, v1

    sub-double/2addr v5, v0

    invoke-direct {p2, v2, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 25
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->g:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 27
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 28
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->e:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 29
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->e:Ljava/lang/String;

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f000000    # 0.5f

    mul-float v3, v3, v4

    sub-float/2addr v2, v3

    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p2, v5

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    mul-float v0, v0, v4

    add-float/2addr p2, v0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->j:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, p2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 30
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

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
