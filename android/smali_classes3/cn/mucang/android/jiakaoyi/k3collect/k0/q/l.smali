.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

.field public d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public f:Ljava/util/List;
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

.method private f(Ljava/util/List;)Landroid/graphics/Path;
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

    if-nez v1, :cond_0

    return-object v0

    .line 3
    :cond_0
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

    if-ge v1, v2, :cond_2

    .line 5
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_1

    .line 6
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v3

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    invoke-virtual {v0, v3, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;)V

    return-object v0
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v2, 0x2

    if-ge v0, v2, :cond_2

    :cond_0
    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_2

    goto/16 :goto_1

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    if-nez v0, :cond_4

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    .line 8
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->j:Z

    .line 9
    iget-boolean v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isDashed:Z

    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    .line 10
    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->l:I

    if-eqz v2, :cond_3

    int-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    mul-double v1, v1, v3

    .line 11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f:Ljava/util/List;

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    const/4 v4, 0x0

    .line 12
    invoke-static {v3, v1, v2, v4}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->d(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v3

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->d:Ljava/util/List;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f:Ljava/util/List;

    const/4 v4, 0x1

    invoke-static {v3, v1, v2, v4}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->d(Ljava/util/List;DZ)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->f:Ljava/util/List;

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->e:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    goto :goto_0

    .line 15
    :cond_3
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->h:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->g:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 20
    :cond_4
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    return-object v0

    :cond_5
    :goto_1
    return-object v1
.end method

.method public g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineWidth:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    const/16 v2, 0x12c

    .line 4
    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashLength:I

    const/high16 v2, 0x43160000    # 150.0f

    .line 5
    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashInterval:F

    .line 6
    iget-boolean v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isDashed:Z

    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    .line 7
    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineColor:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 8
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    .line 9
    iget-boolean v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    iput-boolean v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->k:Z

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f:Ljava/util/List;

    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f(Ljava/util/List;)Landroid/graphics/Path;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->j:Landroid/graphics/Path;

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->i:Ljava/util/List;

    .line 15
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->h:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    goto :goto_0

    .line 16
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    .line 17
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 20
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->j:Landroid/graphics/Path;

    .line 21
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_2

    .line 22
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v4, v3

    invoke-static {v1, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/k;

    return-object v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 3

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 5
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->isCurve:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/SingleLineSrcData;->lineList:Ljava/util/List;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/l;->f:Ljava/util/List;

    :cond_1
    return-void
.end method
