.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/h;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Path;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->x(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;)V

    return-void
.end method

.method private p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 20

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    .line 1
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r:Landroid/graphics/Path;

    invoke-virtual {v11, v0}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 5
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->j:I

    int-to-float v0, v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {v10, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 6
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->o:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->c()D

    move-result-wide v0

    .line 8
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e()D

    move-result-wide v12

    .line 9
    iget-object v2, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->b()D

    move-result-wide v2

    .line 10
    iget-object v4, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->d()D

    move-result-wide v14

    sub-double v4, v2, v14

    sub-double v6, v0, v12

    cmpl-double v8, v4, v6

    if-lez v8, :cond_0

    add-double/2addr v4, v12

    move-wide/from16 v18, v2

    move-wide/from16 v16, v4

    goto :goto_0

    :cond_0
    add-double/2addr v6, v14

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    .line 11
    :goto_0
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    move-wide/from16 v1, v16

    move-wide v3, v12

    move-wide/from16 v5, v18

    move-wide v7, v14

    move-object/from16 p2, v9

    .line 12
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->w(DDDDLjava/util/List;)V

    .line 13
    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->v(DDDDLjava/util/List;)V

    .line 14
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    move-object/from16 v1, p2

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->g:Ljava/util/List;

    .line 15
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 16
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v10, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->o:Landroid/graphics/Paint;

    invoke-virtual {v10, v11, v2, v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 17
    :cond_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    :cond_2
    return-void
.end method

.method private q(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float p2, p2

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result p2

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->reset()V

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r:Landroid/graphics/Path;

    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result p2

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 p2, 0x1

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r:Landroid/graphics/Path;

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r:Landroid/graphics/Path;

    invoke-virtual {p2}, Landroid/graphics/Path;->close()V

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private r(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method private s(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    const/4 p2, 0x0

    .line 4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->h:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 p2, p2, 0x1

    .line 6
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_1
    return-void
.end method

.method private t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/util/SparseArray;)D
    .locals 6
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

    .line 1
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    invoke-virtual {p5, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpg-double v5, v3, p2

    if-gez v5, :cond_0

    .line 4
    invoke-virtual {p4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

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

.method private v(DDDDLjava/util/List;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    .line 1
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->k:I

    int-to-float v6, v6

    sget v7, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->d:F

    invoke-virtual {v0, v6, v7}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v6

    float-to-double v6, v6

    sub-double v8, v1, v3

    div-double/2addr v8, v6

    double-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    move-wide/from16 v10, p1

    move-wide v12, v1

    move-wide v14, v3

    move-wide/from16 v16, v6

    move-wide/from16 v6, p3

    :goto_0
    if-ge v9, v8, :cond_1

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move/from16 v18, v8

    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v3, v4, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    move/from16 v19, v9

    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v20, v10

    move-wide/from16 v10, p3

    invoke-direct {v9, v12, v13, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v0, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v0, v14, v3

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v3, p1

    invoke-direct {v8, v14, v15, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v9, v1, v2, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v0, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-wide/from16 v3, p1

    :goto_1
    add-double v14, v14, v16

    sub-double v8, v20, v16

    sub-double v12, v12, v16

    add-double v6, v6, v16

    add-int/lit8 v0, v19, 0x1

    move-wide/from16 v3, p7

    move-wide v10, v8

    move/from16 v8, v18

    move v9, v0

    move-object/from16 v0, p0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private w(DDDDLjava/util/List;)V
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDDD",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move-object/from16 v5, p9

    .line 1
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->k:I

    int-to-float v6, v6

    sget v7, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->d:F

    invoke-virtual {v0, v6, v7}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v6

    float-to-double v6, v6

    sub-double v8, v1, v3

    div-double/2addr v8, v6

    double-to-int v8, v8

    add-int/lit8 v8, v8, 0x1

    const/4 v9, 0x0

    move-wide/from16 v12, p1

    move-wide/from16 v14, p3

    move-wide v10, v3

    move-wide/from16 v16, v6

    move-wide v6, v1

    :goto_0
    if-ge v9, v8, :cond_1

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move/from16 v18, v8

    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v19, v6

    move-wide/from16 v6, p3

    invoke-direct {v8, v10, v11, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v1, v2, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v0, v8, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    cmpl-double v0, v10, v3

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6, v3, v4, v14, v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v1, p1

    move-wide/from16 v3, v19

    invoke-direct {v7, v3, v4, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-direct {v0, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    move-wide/from16 v1, p1

    move-wide/from16 v3, v19

    :goto_1
    add-double v10, v10, v16

    sub-double v12, v12, v16

    add-double v14, v14, v16

    sub-double v6, v3, v16

    add-int/lit8 v9, v9, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v1, p5

    move-wide/from16 v3, p7

    move/from16 v8, v18

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->o:Landroid/graphics/Paint;

    const v1, -0xb350b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    :goto_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->q(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    const v1, 0x3ca3d70a    # 0.02f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    .line 7
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->p(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 8
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne v0, v2, :cond_2

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz v0, :cond_2

    .line 10
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->s(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 11
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {p2}, Landroid/util/SparseArray;->size()I

    move-result p2

    if-lez p2, :cond_2

    .line 13
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->BANMA_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->u(Lcn/mucang/android/jiakaoyi/signal/pos/c;Landroid/util/SparseArray;)Z

    move-result p1

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->a()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v8, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v0, v8, v9, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/util/SparseArray;)D

    move-result-wide v2

    const-wide v4, 0x42374876e8000000L    # 1.0E11

    cmpl-double v6, v2, v4

    if-nez v6, :cond_4

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    .line 5
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    .line 6
    new-array v6, v5, [I

    const/4 v7, 0x0

    const/4 v10, 0x0

    :goto_0
    if-ge v10, v5, :cond_1

    .line 7
    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v11

    .line 8
    aput v11, v6, v10

    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {v6}, Ljava/util/Arrays;->sort([I)V

    .line 10
    iget-object v10, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->s:Ljava/util/List;

    if-nez v10, :cond_2

    .line 11
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->s:Ljava/util/List;

    goto :goto_1

    .line 12
    :cond_2
    invoke-interface {v10}, Ljava/util/List;->clear()V

    :goto_1
    if-ge v7, v5, :cond_3

    .line 13
    aget v10, v6, v7

    .line 14
    iget-object v11, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->s:Ljava/util/List;

    invoke-virtual {v4, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 15
    :cond_3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->s:Ljava/util/List;

    invoke-static {p1, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v4

    if-eqz v4, :cond_4

    const-wide/16 v2, 0x0

    .line 16
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_4
    cmpl-double p1, v2, p2

    if-lez p1, :cond_5

    return-object v1

    .line 17
    :cond_5
    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, p1, v8

    if-nez p3, :cond_6

    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p3, p1, v8

    if-nez p3, :cond_6

    goto :goto_2

    :cond_6
    move-object v1, v0

    .line 18
    :goto_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v2, v3, v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->x(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;)V

    return-void
.end method

.method public x(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->o:Landroid/graphics/Paint;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->p:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->q:Landroid/graphics/Paint;

    .line 5
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;->r:Landroid/graphics/Path;

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
