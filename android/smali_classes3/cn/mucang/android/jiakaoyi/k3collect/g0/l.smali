.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/l;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;",
        ">;"
    }
.end annotation


# instance fields
.field public n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;)V

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->r:Landroid/graphics/Paint;

    .line 4
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->r:Landroid/graphics/Paint;

    const/high16 p2, -0x10000

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->r:Landroid/graphics/Paint;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method

.method private p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;DLjava/util/List;)D
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)D"
        }
    .end annotation

    move-object v6, p1

    move-object/from16 v7, p4

    move-object/from16 v8, p7

    const/4 v9, 0x1

    move-wide/from16 v0, p5

    const/4 v10, 0x1

    .line 1
    :goto_0
    invoke-interface/range {p7 .. p7}, Ljava/util/List;->size()I

    move-result v2

    if-ge v10, v2, :cond_3

    add-int/lit8 v2, v10, -0x1

    .line 2
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-ne v10, v9, :cond_0

    .line 4
    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    cmpg-double v11, v4, v0

    if-gez v11, :cond_0

    cmpg-double v11, v4, p2

    if-gez v11, :cond_0

    .line 5
    invoke-virtual {v7, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v4

    .line 6
    :cond_0
    invoke-virtual {p1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    cmpg-double v11, v4, v0

    if-gez v11, :cond_1

    cmpg-double v11, v4, p2

    if-gez v11, :cond_1

    .line 7
    invoke-virtual {v7, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v4

    .line 8
    :cond_1
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/high16 v11, 0x4008000000000000L    # 3.0

    mul-double v11, v11, p2

    cmpl-double v13, v4, v11

    if-lez v13, :cond_2

    move-object v0, p1

    move-object v1, v2

    move-object v2, v3

    move-object/from16 v3, p4

    move-wide/from16 v4, p2

    .line 9
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v0

    cmpg-double v2, v0, p2

    if-gez v2, :cond_2

    return-wide v0

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    :cond_3
    return-wide v0
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->o:Landroid/graphics/Paint;

    const v1, -0xb350b0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->o:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float p2, p2

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result p2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->j:Landroid/graphics/Path;

    if-eqz v0, :cond_1

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->o:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 10
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 11
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-eq p2, v0, :cond_2

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 12
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p2

    const v0, 0x3ca3d70a    # 0.02f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_8

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    if-eqz v0, :cond_5

    .line 16
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p2, :cond_4

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->i()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-ne p2, v1, :cond_3

    .line 19
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    const/high16 v3, -0x10000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_3

    .line 20
    :cond_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    const v3, -0xff7501

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    :goto_3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 22
    :cond_4
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_4

    .line 24
    :cond_5
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 25
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 26
    :cond_6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_7

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 27
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p2

    .line 28
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

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 29
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->q:Landroid/graphics/Paint;

    const-string v1, "\u8d77\u70b9"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 30
    :goto_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->q:Landroid/graphics/Paint;

    const-string v1, "\u7ec8\u70b9"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 31
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->k:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v3

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v3

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->h:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result p1

    xor-int/2addr p1, v3

    return p1

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    invoke-static {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_3

    const/4 v2, 0x1

    :cond_3
    return v2

    .line 7
    :cond_4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_5

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v3

    .line 8
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_6

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v3

    .line 9
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_7

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_7

    invoke-static {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 v2, 0x1

    :cond_7
    return v2
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 12

    .line 1
    new-instance v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v9, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v8, v9, v10, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->k:Z

    const/4 v11, 0x0

    if-eqz v1, :cond_4

    .line 3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_1

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v0, p1

    move-object v3, v8

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v0

    goto :goto_1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    if-eqz v7, :cond_3

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const-wide v5, 0x42374876e8000000L    # 1.0E11

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v8

    .line 6
    invoke-direct/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;DLjava/util/List;)D

    move-result-wide v0

    goto :goto_1

    :cond_3
    :goto_0
    return-object v11

    .line 7
    :cond_4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_8

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_5

    goto :goto_2

    :cond_5
    move-object v0, p1

    move-object v3, v8

    move-wide v4, p2

    .line 8
    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v0

    :goto_1
    cmpl-double p1, v0, p2

    if-lez p1, :cond_6

    return-object v11

    .line 9
    :cond_6
    iget-wide p1, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, p1, v9

    if-nez p3, :cond_7

    iget-wide p1, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p3, p1, v9

    if-nez p3, :cond_7

    move-object v8, v11

    .line 10
    :cond_7
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v0, v1, v8, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1

    :cond_8
    :goto_2
    return-object v11
.end method

.method public i()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_2

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v4, v1

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    .line 4
    sget-wide v8, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m:D

    cmpg-double v10, v6, v8

    if-gez v10, :cond_0

    move-object v4, v5

    move-wide v2, v6

    goto :goto_0

    .line 5
    :cond_1
    sget-wide v5, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m:D

    cmpg-double v0, v2, v5

    if-gez v0, :cond_2

    return-object v4

    :cond_2
    return-object v1
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->o:Landroid/graphics/Paint;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->p:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;->q:Landroid/graphics/Paint;

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
