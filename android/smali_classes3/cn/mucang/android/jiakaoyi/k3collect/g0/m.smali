.class public Lcn/mucang/android/jiakaoyi/k3collect/g0/m;
.super Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/k3collect/g0/j<",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;",
        ">;"
    }
.end annotation


# instance fields
.field private n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

.field private o:Landroid/graphics/Paint;

.field private p:Landroid/graphics/Paint;

.field private q:Landroid/graphics/Paint;

.field private r:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;)V
    .locals 2

    .line 1
    iget v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->c:Ljava/lang/Long;

    invoke-direct {p0, p1, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILjava/lang/Long;)V

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->p(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;)V

    return-void
.end method


# virtual methods
.method public b(Landroid/graphics/Canvas;Landroid/graphics/Matrix;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->setMatrix(Landroid/graphics/Matrix;)V

    .line 3
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->o:Landroid/graphics/Paint;

    const v0, -0xb350b0

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->o:Landroid/graphics/Paint;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->r:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 6
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    int-to-float p2, p2

    sget v0, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c:F

    invoke-virtual {p0, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->n(FF)F

    move-result p2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->o:Landroid/graphics/Paint;

    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->o:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, v0, p2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 9
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getMapMode()Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;->Edit:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView$Mode;

    if-ne p2, v0, :cond_2

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentZoom()F

    move-result p2

    const v0, 0x3ca3d70a    # 0.02f

    cmpl-float p2, p2, v0

    if-lez p2, :cond_2

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->k:Z

    if-eqz p2, :cond_2

    .line 11
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    .line 12
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->q:Landroid/graphics/Paint;

    const-string v1, "\u8d77\u70b9"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 13
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->q:Landroid/graphics/Paint;

    const-string v1, "\u7ec8\u70b9"

    invoke-virtual {p0, p1, v1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->m(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 14
    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 15
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->p:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l(Landroid/graphics/Canvas;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 16
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    if-eqz p2, :cond_2

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j:Ljava/lang/Long;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "-"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->STOP_LINE:Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/LineLayoutType;->getLineName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->l:Landroid/graphics/Paint;

    invoke-virtual {p0, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/j;->j(Landroid/graphics/Canvas;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Landroid/graphics/Paint;)V

    .line 18
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->f(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide v9, -0x3dc8b78918000000L    # -1.0E11

    invoke-direct {v0, v9, v10, v9, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v3, p1

    move-object v6, v0

    move-wide v7, p2

    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)D

    move-result-wide v3

    cmpl-double p1, v3, p2

    if-lez p1, :cond_1

    return-object v2

    .line 4
    :cond_1
    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double p3, p1, v9

    if-nez p3, :cond_2

    iget-wide p1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double p3, p1, v9

    if-nez p3, :cond_2

    goto :goto_0

    :cond_2
    move-object v2, v0

    .line 5
    :goto_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    invoke-direct {p1, v3, v4, v2, p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;-><init>(DLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    return-object p1

    :cond_3
    :goto_1
    return-object v2
.end method

.method public bridge synthetic o(Lcn/mucang/android/jiakaoyi/k3collect/j0/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->p(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;)V

    return-void
.end method

.method public p(Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->n:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/l;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->r:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->a(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->o:Landroid/graphics/Paint;

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->b()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->p:Landroid/graphics/Paint;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->c()Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/g0/m;->q:Landroid/graphics/Paint;

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
