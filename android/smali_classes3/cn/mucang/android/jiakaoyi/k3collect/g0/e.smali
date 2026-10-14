.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/e;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->v(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;)V

    return-void
.end method

.method private p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->m:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->j:I

    int-to-float p2, p2

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result p2

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->m:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private q(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    int-to-float v0, v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->l:D

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    int-to-double v5, v2

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    add-double/2addr v3, v5

    .line 7
    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    .line 8
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-wide v4, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->l:D

    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    int-to-double v9, v3

    mul-double v9, v9, v7

    add-double/2addr v4, v9

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 12
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 13
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->r(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/util/SparseArray;)V

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_1

    .line 17
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p2

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    :cond_1
    return-void
.end method

.method private r(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/util/SparseArray;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Canvas;",
            "Landroid/graphics/Matrix;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_2

    .line 1
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 p2, 0x0

    .line 4
    :goto_0
    invoke-virtual {p3}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_1

    .line 5
    invoke-virtual {p3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private s(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->f:Ljava/util/List;

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 3
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x4

    if-ne v3, v4, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->g:Ljava/util/List;

    .line 7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    .line 8
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v5

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v6

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v4, 0x0

    .line 9
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_1

    .line 10
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ne v4, v6, :cond_0

    const/4 v6, 0x0

    goto :goto_1

    :cond_0
    add-int/lit8 v6, v4, 0x1

    .line 12
    :goto_1
    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    iget-wide v8, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v8

    iget-wide v9, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v5

    iget-wide v9, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v9, v10}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v9

    iget-wide v10, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v10, v11}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v6

    invoke-virtual {v7, v8, v5, v9, v6}, Landroid/graphics/Path;->quadTo(FFFF)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    int-to-float v1, v1

    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v1

    .line 16
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    invoke-virtual {v3, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 19
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 20
    :cond_2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz v1, :cond_3

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->r(Landroid/graphics/Canvas;Landroid/graphics/Matrix;Landroid/util/SparseArray;)V

    .line 22
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_3

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_3

    .line 23
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    invoke-static {p2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p2

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method private t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/util/SparseArray;)D
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)D"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    invoke-virtual {p5, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    cmpg-double v4, v2, p2

    if-gez v4, :cond_0

    .line 4
    invoke-virtual {p4, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const-wide p1, 0x42374876e8000000L    # 1.0E11

    return-wide p1
.end method

.method private u(Lcn/mucang/android/jiakaoyi/signal/pos/c;Landroid/util/SparseArray;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/c;",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 1
    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 2
    invoke-virtual {p2, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_0

    .line 3
    invoke-static {p1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    const v1, -0xb350b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_4

    .line 6
    :cond_2
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->s(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    goto :goto_2

    .line 7
    :cond_3
    :goto_1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    :cond_4
    :goto_2
    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->a()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_4

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v3

    if-ne v0, v3, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    sget-object v3, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v3

    if-ne v0, v3, :cond_3

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->m:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 6
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v3

    if-eqz v3, :cond_2

    return v2

    :cond_3
    return v1

    .line 7
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->e(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->l:D

    cmpg-double p1, v3, v5

    if-gez p1, :cond_5

    const/4 v1, 0x1

    :cond_5
    return v1

    .line 8
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->u(Lcn/mucang/android/jiakaoyi/signal/pos/c;Landroid/util/SparseArray;)Z

    move-result p1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v8, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v0, v8, v9, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/util/SparseArray;)D

    move-result-wide v2

    const-wide v4, 0x42374876e8000000L    # 1.0E11

    const-wide/16 v6, 0x0

    cmpl-double v10, v2, v4

    if-nez v10, :cond_6

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_4

    sget-object v5, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v5

    if-ne v4, v5, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v5, 0x2

    if-eq v4, v5, :cond_2

    sget-object v5, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v5

    if-ne v4, v5, :cond_6

    .line 6
    :cond_2
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->n:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v4, :cond_3

    return-object v1

    .line 7
    :cond_3
    invoke-static {v4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 8
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 9
    :cond_4
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_5

    return-object v1

    .line 10
    :cond_5
    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 11
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-wide v10, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->l:D

    iget v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    int-to-double v4, v4

    add-double/2addr v10, v4

    cmpg-double v4, v2, v10

    if-gez v4, :cond_6

    .line 12
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_1
    move-wide v2, v6

    :cond_6
    cmpl-double p1, v2, p2

    if-lez p1, :cond_7

    return-object v1

    .line 13
    :cond_7
    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, p1, v8

    if-nez p3, :cond_8

    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p3, p1, v8

    if-nez p3, :cond_8

    goto :goto_2

    :cond_8
    move-object v1, v0

    .line 14
    :goto_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v2, v3, v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1

    :cond_9
    :goto_3
    return-object v1
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->v(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;)V

    return-void
.end method

.method public v(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->o:Landroid/graphics/Paint;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->p:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;->q:Landroid/graphics/Path;

    .line 5
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    const/high16 v0, 0x41c80000    # 25.0f

    .line 7
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    const/high16 v0, -0x10000

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    :cond_0
    return-void
.end method
