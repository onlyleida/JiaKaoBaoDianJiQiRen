.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/a;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

.field private o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;

.field private s:Landroid/graphics/Path;

.field private t:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;)V

    .line 3
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->s:Landroid/graphics/Path;

    .line 4
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->f:Ljava/lang/String;

    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->t:I

    return-void
.end method

.method private p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)D
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "D",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)D"
        }
    .end annotation

    .line 1
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :cond_0
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    cmpg-double v3, v1, p2

    if-gez v3, :cond_0

    .line 3
    invoke-virtual {p4, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v1

    :cond_1
    const-wide p1, 0x42374876e8000000L    # 1.0E11

    return-wide p1
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->t:I

    .line 4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    const v1, -0xb350b0

    if-eqz v0, :cond_0

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setColor(I)V

    const p2, -0xb350b0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->s:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->s:Landroid/graphics/Path;

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v4

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v0

    invoke-virtual {v3, v4, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->s:Landroid/graphics/Path;

    iget-wide v5, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v5

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_1

    .line 14
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->s:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->s:Landroid/graphics/Path;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_2

    .line 18
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ne p2, v1, :cond_3

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 20
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 21
    :cond_3
    :goto_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne p2, v0, :cond_8

    const/4 p2, 0x0

    .line 22
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_4

    .line 23
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    .line 25
    :cond_4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->e:Ljava/util/List;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 26
    :goto_4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v2, p2, :cond_7

    .line 27
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->e:Ljava/util/List;

    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_6

    .line 28
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz v0, :cond_5

    .line 29
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object v0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 31
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->r:Landroid/graphics/Paint;

    const-string v3, "\u70b91"

    invoke-virtual {p0, p1, v3, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 32
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u70b9"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 33
    :cond_7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-le p2, v1, :cond_8

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_8

    .line 34
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 36
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_1

    .line 3
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 9

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v7, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v6, v7, v8, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-object v4, v6

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)D

    move-result-wide v0

    const-wide v2, 0x42374876e8000000L    # 1.0E11

    cmpl-double v4, v0, v2

    if-nez v4, :cond_0

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-static {p1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-wide/16 v0, 0x0

    .line 4
    invoke-virtual {v6, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_0
    const/4 p1, 0x0

    cmpl-double v2, v0, p2

    if-lez v2, :cond_1

    return-object p1

    .line 5
    :cond_1
    iget-wide p2, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v2, p2, v7

    if-nez v2, :cond_2

    iget-wide p2, v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v2, p2, v7

    if-nez v2, :cond_2

    move-object v6, p1

    .line 6
    :cond_2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v0, v1, v6, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->p:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->q:Landroid/graphics/Paint;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;->r:Landroid/graphics/Paint;

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
