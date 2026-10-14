.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

.field public d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public h:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(D)V
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    neg-double p1, p1

    .line 7
    invoke-static {p1, p2}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->cos(D)D

    move-result-wide p1

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 10
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v3, p1

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 12
    :cond_0
    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/k0/q/a;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    neg-double v7, v7

    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 14
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v3, p1

    move-wide v5, v7

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_1

    .line 16
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    const/4 p2, 0x0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-void
.end method

.method private g(Ljava/util/List;)Landroid/graphics/Path;
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

    .line 1
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    const/4 v1, 0x1

    .line 4
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method static synthetic i(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)I
    .locals 2

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-object p0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/k;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/k;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;)V

    return-object v0
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->j(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    move-result-object v0

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v0, v2, :cond_2

    :cond_0
    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_2

    goto/16 :goto_2

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    if-nez v0, :cond_7

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    .line 8
    iget-boolean v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->h:Z

    .line 9
    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->i:I

    int-to-double v4, v2

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v6

    if-eqz v3, :cond_6

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_5

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_5

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_5

    .line 11
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 13
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/16 v6, 0x0

    cmpg-double v0, v2, v6

    if-gez v0, :cond_3

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    goto :goto_0

    :cond_3
    cmpl-double v0, v2, v6

    if-ltz v0, :cond_4

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    goto :goto_0

    :cond_4
    move-object v0, v1

    :goto_0
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 18
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    const/4 v3, 0x1

    invoke-static {v1, v4, v5, v3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->d(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v1

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    const/4 v2, 0x0

    invoke-static {v0, v4, v5, v2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->d(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    .line 20
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->d:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    .line 21
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->e:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    .line 22
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/a;)V

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    goto :goto_1

    .line 23
    :cond_6
    invoke-direct {p0, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e(D)V

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    .line 26
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/a;)V

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 27
    :cond_7
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/i;

    return-object v0

    :cond_8
    :goto_2
    return-object v1
.end method

.method public h()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    if-nez v0, :cond_8

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    const/16 v2, 0x12c

    .line 4
    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashLength:I

    const/high16 v2, 0x43160000    # 150.0f

    .line 5
    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashInterval:F

    .line 6
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isDashed:Z

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    .line 7
    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineColor:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    .line 9
    iget-boolean v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    iput-boolean v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->r:Z

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 14
    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v4, v3

    invoke-static {v1, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v4, v3

    invoke-static {v1, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->p:Ljava/util/List;

    .line 21
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->d:Landroid/graphics/Path;

    goto :goto_0

    .line 22
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    .line 23
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 24
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 25
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->d:Landroid/graphics/Path;

    .line 27
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_4

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->q:Ljava/util/List;

    .line 29
    invoke-direct {p0, v2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->e:Landroid/graphics/Path;

    goto :goto_1

    .line 30
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_5

    .line 31
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 32
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 33
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 34
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->e:Landroid/graphics/Path;

    .line 35
    :cond_5
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 36
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_8

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_8

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_8

    .line 37
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 38
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 39
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/16 v4, 0x0

    const/4 v0, 0x0

    cmpg-double v6, v2, v4

    if-gez v6, :cond_6

    .line 40
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    .line 41
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    goto :goto_2

    :cond_6
    cmpl-double v6, v2, v4

    if-lez v6, :cond_7

    .line 42
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    .line 43
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    goto :goto_2

    :cond_7
    move-object v2, v0

    .line 44
    :goto_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->lineWidth:I

    int-to-double v3, v3

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    mul-double v3, v3, v5

    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 45
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    invoke-static {v0, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->d(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v0

    iput-object v0, v5, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->f:Landroid/graphics/Path;

    .line 46
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    const/4 v1, 0x0

    invoke-static {v2, v3, v4, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->d(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;->g:Landroid/graphics/Path;

    .line 47
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/j;

    return-object v0
.end method

.method public j(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 5

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v0

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)D

    move-result-wide v2

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->isCurve:Z

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 10
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_2

    .line 11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList1:Ljava/util/List;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->h:Ljava/util/List;

    .line 15
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v2, :cond_4

    .line 16
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_3

    .line 18
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->curveList2:Ljava/util/List;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->i:Ljava/util/List;

    .line 20
    :cond_4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line1End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2End:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/ShuangHuangSrcData;->line2Start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
