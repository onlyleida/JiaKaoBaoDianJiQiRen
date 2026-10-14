.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/c;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

.field private o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;)V

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
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->p:Landroid/graphics/Paint;

    const v0, -0xb350b0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->p:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float p2, p2

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result p2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashLength:I

    int-to-float v0, v0

    sget v1, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v0

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashInterval:F

    sget v2, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v2, v2, v3

    invoke-virtual {p0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result v1

    .line 10
    new-instance v2, Landroid/graphics/DashPathEffect;

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    aput v0, v3, v4

    const/4 v0, 0x1

    aput v1, v3, v0

    const/4 v0, 0x0

    invoke-direct {v2, v3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->p:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne p2, v0, :cond_3

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p2

    const v0, 0x3ca3d70a    # 0.02f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_3

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz p2, :cond_3

    .line 16
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 17
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 18
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 19
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->q:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 20
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_2

    .line 21
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

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->r:Landroid/graphics/Paint;

    const-string v1, "\u70b91"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 23
    :goto_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->r:Landroid/graphics/Paint;

    const-string v1, "\u70b94"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 24
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->r:Landroid/graphics/Paint;

    const-string v1, "\u70b92"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 25
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->r:Landroid/graphics/Paint;

    const-string v1, "\u70b93"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 26
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->n:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_4

    .line 3
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v1

    .line 6
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 7
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_4

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v1

    :cond_4
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->n:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v8, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v0, v8, v9, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 3
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->h:Ljava/util/List;

    move-object v2, p0

    move-object v3, p1

    move-wide v4, p2

    move-object v6, v0

    invoke-direct/range {v2 .. v7}, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)D

    move-result-wide v2

    const-wide v4, 0x42374876e8000000L    # 1.0E11

    cmpl-double v6, v2, v4

    if-nez v6, :cond_1

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->n:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v4, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-wide/16 v2, 0x0

    .line 5
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_1
    cmpl-double p1, v2, p2

    if-lez p1, :cond_2

    return-object v1

    .line 6
    :cond_2
    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, p1, v8

    if-nez p3, :cond_3

    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p3, p1, v8

    if-nez p3, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, v0

    .line 7
    :goto_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v2, v3, v1, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;)V

    return-void
.end method

.method public q(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->o:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->p:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->q:Landroid/graphics/Paint;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;->r:Landroid/graphics/Paint;

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
