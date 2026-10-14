.class public abstract Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;
.super Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;",
        ">",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;"
    }
.end annotation


# instance fields
.field protected final i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field protected final j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field protected final k:Landroid/graphics/Paint;

.field protected l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field protected final m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-direct {p1, v0}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    .line 7
    iget p4, p4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a:F

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    sget-object p4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 13

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x2

    new-array v1, v0, [F

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    const/4 v3, 0x0

    aput v2, v1, v3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    const/4 v4, 0x1

    aput v2, v1, v4

    new-array v0, v0, [F

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    aput v2, v0, v3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    aput v2, v0, v4

    .line 4
    invoke-virtual {p2, v1}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 5
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->b:I

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a:F

    invoke-virtual {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a(FLandroid/graphics/Matrix;)F

    move-result v2

    .line 8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->i(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V

    .line 11
    aget v6, v1, v3

    aget v7, v1, v4

    aget v8, v0, v3

    aget v9, v0, v4

    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->c:Ljava/lang/String;

    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_0

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v6, v1, v3

    aget v7, v0, v3

    add-float/2addr v6, v7

    float-to-double v6, v6

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v6, v6, v8

    aget v10, v1, v4

    aget v11, v0, v4

    add-float/2addr v10, v11

    float-to-double v10, v10

    mul-double v10, v10, v8

    invoke-direct {v2, v6, v7, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0, v2, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 16
    :goto_0
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v6, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 17
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->e:F

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 19
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->c:Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v7, v8, v3, v9, v6}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 22
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->c:Ljava/lang/String;

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v8, v8

    invoke-virtual {v6}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v9, v9, v10

    sub-float/2addr v8, v9

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v11

    invoke-virtual {v6}, Landroid/graphics/Rect;->height()I

    move-result v6

    int-to-float v6, v6

    mul-float v6, v6, v10

    add-float/2addr v2, v6

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v7, v8, v2, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 23
    :cond_1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v2, :cond_2

    .line 24
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 25
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    const/high16 v5, 0x40000000    # 2.0f

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    aget v2, v1, v3

    aget v1, v1, v4

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a:F

    mul-float v6, v6, v5

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v1, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    aget v1, v0, v3

    aget v0, v0, v4

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a:F

    mul-float v2, v2, v5

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 29
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 30
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    const v1, -0xd622d0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 31
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->scale(D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Matrix;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 32
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v0, v0

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p2, v1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->m:Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a:F

    mul-float v1, v1, v5

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->k:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 33
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h:Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/t/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 11

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v1, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v0, v1, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->scale(D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v0, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->scale(D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v5, p1

    move-wide v9, p2

    invoke-static/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v3

    const/4 p1, 0x0

    cmpl-double v0, v3, p2

    if-lez v0, :cond_0

    return-object p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, v5, v1

    if-nez p3, :cond_1

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v0, p2, v1

    if-nez v0, :cond_1

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    :cond_1
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, v3, v4, p2, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1
.end method

.method protected i(Landroid/graphics/Paint;Landroid/graphics/Matrix;)V
    .locals 0

    return-void
.end method
