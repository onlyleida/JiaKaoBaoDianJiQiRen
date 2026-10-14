.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/i;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

.field private o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p:Landroid/graphics/Paint;

    const v0, -0xb350b0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    if-eqz p2, :cond_8

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-lt p2, v0, :cond_2

    .line 8
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-nez p2, :cond_1

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 10
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 11
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    const/4 v2, 0x4

    if-lt p2, v2, :cond_4

    .line 12
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-nez p2, :cond_3

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p:Landroid/graphics/Paint;

    const/high16 v2, -0x10000

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v2, 0x3

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 15
    :cond_4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne p2, v0, :cond_8

    const/4 p2, 0x0

    .line 16
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p2, v0, :cond_5

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_1

    .line 19
    :cond_5
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    if-eqz p2, :cond_8

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_8

    .line 20
    :goto_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    if-ge v1, p2, :cond_8

    .line 21
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_7

    .line 22
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz v0, :cond_6

    .line 23
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->i:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/d0;->a(IZ)Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->JUDGE_AREA_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 25
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->r:Landroid/graphics/Paint;

    const-string v2, "\u70b91"

    invoke-virtual {p0, p1, v2, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_3

    .line 26
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u70b9"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->r:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 27
    :cond_8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

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
    .locals 10

    .line 1
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v7, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v6, v7, v8, v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v9, 0x0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v0, p1

    move-object v3, v6

    move-wide v4, p2

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
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;)V

    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->p:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->q:Landroid/graphics/Paint;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;->r:Landroid/graphics/Paint;

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
