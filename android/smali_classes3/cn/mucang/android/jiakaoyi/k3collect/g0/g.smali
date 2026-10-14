.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/g;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

.field private o:Landroid/graphics/Path;

.field private p:Landroid/graphics/Path;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Paint;

.field private t:Landroid/graphics/Paint;

.field private u:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;)V

    return-void
.end method

.method private p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;DLjava/util/List;Ljava/util/List;)D
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)D"
        }
    .end annotation

    move-object/from16 v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    const/4 v10, 0x1

    const/4 v11, 0x1

    .line 1
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v0

    const-wide/high16 v12, 0x4008000000000000L    # 3.0

    const/4 v14, 0x0

    if-ge v11, v0, :cond_3

    add-int/lit8 v0, v11, -0x1

    .line 2
    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-ne v11, v10, :cond_0

    .line 4
    invoke-virtual {v6, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpg-double v0, v3, p5

    if-gez v0, :cond_0

    cmpg-double v0, v3, p2

    if-gez v0, :cond_0

    move-object v8, v1

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v6, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpg-double v0, v3, p5

    if-gez v0, :cond_1

    cmpg-double v0, v3, p2

    if-gez v0, :cond_1

    move-object v8, v2

    :goto_1
    move-wide v15, v3

    goto :goto_3

    .line 6
    :cond_1
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    mul-double v15, p2, v12

    cmpl-double v0, v3, v15

    if-lez v0, :cond_2

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    .line 7
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v3

    cmpg-double v0, v3, p2

    if-gez v0, :cond_2

    move-wide v15, v3

    goto :goto_2

    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_3
    move-wide/from16 v15, p5

    :goto_2
    move-object v8, v14

    :goto_3
    const/4 v11, 0x1

    .line 8
    :goto_4
    invoke-interface/range {p8 .. p8}, Ljava/util/List;->size()I

    move-result v0

    if-ge v11, v0, :cond_7

    add-int/lit8 v0, v11, -0x1

    .line 9
    invoke-interface {v9, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-ne v11, v10, :cond_4

    .line 11
    invoke-virtual {v6, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpg-double v0, v3, p5

    if-gez v0, :cond_4

    cmpg-double v0, v3, p2

    if-gez v0, :cond_4

    move-object v14, v1

    goto :goto_5

    .line 12
    :cond_4
    invoke-virtual {v6, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    cmpg-double v0, v3, p5

    if-gez v0, :cond_5

    cmpg-double v0, v3, p2

    if-gez v0, :cond_5

    move-object v14, v2

    goto :goto_5

    .line 13
    :cond_5
    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    mul-double v17, p2, v12

    cmpl-double v0, v3, v17

    if-lez v0, :cond_6

    move-object/from16 v0, p1

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    .line 14
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v3

    cmpg-double v0, v3, p2

    if-gez v0, :cond_6

    goto :goto_5

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_7
    move-wide/from16 v3, p5

    :goto_5
    cmpg-double v0, v15, p2

    if-ltz v0, :cond_9

    cmpg-double v0, v3, p2

    if-gez v0, :cond_8

    goto :goto_6

    :cond_8
    return-wide p5

    :cond_9
    :goto_6
    cmpg-double v0, v15, v3

    if-gez v0, :cond_b

    if-eqz v8, :cond_a

    .line 15
    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_a
    return-wide v15

    :cond_b
    if-eqz v14, :cond_c

    .line 16
    invoke-virtual {v7, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_c
    return-wide v3
.end method

.method private q(Ljava/util/List;)Landroid/graphics/Path;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)",
            "Landroid/graphics/Path;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 6
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q:Landroid/graphics/Paint;

    const v1, -0xb350b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->u:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->u:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float p2, p2

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result p2

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->n:I

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->LEFT_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v0

    if-ne p2, v0, :cond_2

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->o:Landroid/graphics/Path;

    if-eqz p2, :cond_1

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 13
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->p:Landroid/graphics/Path;

    if-eqz p2, :cond_4

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 15
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->o:Landroid/graphics/Path;

    if-eqz p2, :cond_3

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->u:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 17
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->p:Landroid/graphics/Path;

    if-eqz p2, :cond_4

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 19
    :cond_4
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne p2, v0, :cond_a

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p2

    const v0, 0x3ca3d70a    # 0.02f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_a

    .line 21
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 22
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 23
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 24
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 25
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    const/high16 v1, -0x10000

    const v2, -0xff7501

    if-eqz v0, :cond_6

    .line 27
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-ne p2, v3, :cond_5

    .line 28
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 29
    :cond_5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 30
    :goto_3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 31
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 32
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-ne p2, v3, :cond_7

    .line 33
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_5

    .line 34
    :cond_7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    :goto_5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 36
    :cond_8
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_9

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_9

    .line 37
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p2

    .line 38
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

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_6

    .line 39
    :cond_9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->s:Landroid/graphics/Paint;

    const-string v1, "\u8d77\u70b91"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 40
    :goto_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->s:Landroid/graphics/Paint;

    const-string v1, "\u8d77\u70b92"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 41
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->s:Landroid/graphics/Paint;

    const-string v1, "\u7ec8\u70b91"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 42
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->s:Landroid/graphics/Paint;

    const-string v1, "\u7ec8\u70b92"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 43
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 2
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-static {p1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 7
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    add-int/lit8 v4, v0, -0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    invoke-static {p1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 14

    move-object v9, p0

    move-object v1, p1

    .line 1
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v10, 0x0

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v12, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v11, v12, v13, v12, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    const-wide v5, 0x42374876e8000000L    # 1.0E11

    .line 3
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    .line 4
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v0, v7, v2

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v0, v7, v2

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v0, v7, v2

    if-eqz v0, :cond_2

    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v0, v7, v2

    if-nez v0, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, v9, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v2, p2

    move-object v4, v11

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;DLjava/util/List;Ljava/util/List;)D

    move-result-wide v5

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {v11, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v5, v2

    :cond_3
    :goto_1
    cmpl-double v0, v5, p2

    if-lez v0, :cond_4

    return-object v10

    .line 7
    :cond_4
    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v2, v0, v12

    if-nez v2, :cond_5

    iget-wide v0, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v2, v0, v12

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v10, v11

    .line 8
    :goto_2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {v0, v5, v6, v10, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object v0

    :cond_6
    :goto_3
    return-object v10
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;)V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q:Landroid/graphics/Paint;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->u:Landroid/graphics/Paint;

    .line 4
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    if-eqz v0, :cond_0

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->u:Landroid/graphics/Paint;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float v0, v0

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->u:Landroid/graphics/Paint;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->r:Landroid/graphics/Paint;

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->s:Landroid/graphics/Paint;

    .line 10
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    const/high16 v2, -0x10000

    if-eqz v0, :cond_1

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    const/high16 v3, 0x41c80000    # 25.0f

    .line 12
    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->t:Landroid/graphics/Paint;

    .line 15
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->t:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->t:Landroid/graphics/Paint;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 18
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->o:Landroid/graphics/Path;

    .line 19
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->q(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;->p:Landroid/graphics/Path;

    return-void
.end method
