.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/f;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;)V

    return-void
.end method

.method private p(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)Ljava/lang/String;
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getShapeTypes()Ljava/util/ArrayList;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->d:I

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getShapeName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_1
    const-string p1, "\u672a\u77e5"

    return-object p1
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 11

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->o:Landroid/graphics/Paint;

    const v1, -0xb350b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float v0, v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne v0, v1, :cond_2

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const v2, 0x3ca3d70a    # 0.02f

    cmpl-float v0, v0, v2

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 13
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CrossRoadMark:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 15
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q:Landroid/graphics/Paint;

    const-string v3, "\u8d77\u70b9"

    invoke-virtual {p0, p1, v3, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 16
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q:Landroid/graphics/Paint;

    const-string v3, "\u7ec8\u70b9"

    invoke-virtual {p0, p1, v3, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 17
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object v0

    if-ne v0, v1, :cond_3

    .line 19
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz v0, :cond_3

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 23
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 24
    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float p2, v2

    .line 25
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v4

    double-to-float v2, v2

    .line 26
    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v6, v0

    mul-double v6, v6, v4

    double-to-float v0, v6

    float-to-double v1, v2

    .line 27
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    float-to-double v6, v0

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    invoke-virtual {p1, v3, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 28
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 29
    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->CrossRoadMark:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->p(Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;)Ljava/lang/String;

    move-result-object v0

    const/high16 v3, 0x41600000    # 14.0f

    const/high16 v8, 0x41000000    # 8.0f

    .line 30
    invoke-virtual {p0, v3, v8}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v3

    .line 31
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 32
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v3

    .line 33
    iget v8, v3, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v8, v3

    .line 34
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    neg-float v3, v3

    float-to-double v9, v3

    mul-double v9, v9, v4

    double-to-float v3, v9

    neg-float v4, v8

    .line 35
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    neg-float p2, p2

    .line 36
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->rotate(F)V

    .line 37
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p2

    neg-float p2, p2

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    neg-float v0, v0

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 38
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_3
    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_2

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    invoke-static {p1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 10

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v7, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v6, v7, v8, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v9, 0x0

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    move-object v3, v6

    move-wide v4, p2

    .line 3
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v0

    cmpl-double p1, v0, p2

    if-lez p1, :cond_1

    return-object v9

    .line 4
    :cond_1
    iget-wide p1, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, p1, v7

    if-nez p3, :cond_2

    iget-wide p1, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p3, p1, v7

    if-nez p3, :cond_2

    move-object v6, v9

    .line 5
    :cond_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v0, v1, v6, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1

    :cond_3
    :goto_0
    return-object v9
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->o:Landroid/graphics/Paint;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->p:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->q:Landroid/graphics/Paint;

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;->o:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    const/high16 v0, 0x41c80000    # 25.0f

    .line 8
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
