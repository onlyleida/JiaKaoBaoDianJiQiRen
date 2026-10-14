.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field private i:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field private j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private k:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private e(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V
    .locals 5

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->m:Ljava/util/List;

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->k:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 4
    :goto_0
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->m:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->k:I

    int-to-double v2, v2

    invoke-static {v1, v0, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->k:I

    int-to-double v1, v1

    invoke-static {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    .line 8
    :goto_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->C(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->m:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->k:I

    int-to-double v1, v1

    invoke-static {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/e;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->i(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->h()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->g()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;

    move-result-object v0

    return-object v0
.end method

.method public f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/e;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->h()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;)V

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->d:I

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->g:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->k:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;->f:D

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->i:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 9
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/e;

    return-object v0
.end method

.method public h()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    if-nez v1, :cond_8

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    iput v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    const/4 v4, -0x1

    .line 4
    iput v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v5, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v4, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    .line 6
    iget v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    iput v1, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    .line 7
    iput v3, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    .line 8
    iget v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineWidth:I

    iput v1, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->j:I

    .line 9
    iget v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->inLineInterval:I

    iput v1, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->k:I

    .line 10
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    .line 11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v4, 0x1

    invoke-virtual {v1, v4, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x2

    invoke-virtual {v1, v5, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    const/4 v2, 0x0

    if-eq v1, v4, :cond_6

    sget-object v6, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v6

    if-ne v1, v6, :cond_0

    goto/16 :goto_2

    .line 15
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->h:I

    if-eq v1, v5, :cond_1

    sget-object v6, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v6

    if-ne v1, v6, :cond_7

    .line 16
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_2

    .line 17
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->d:Landroid/util/SparseArray;

    const/4 v7, 0x3

    invoke-virtual {v6, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_7

    .line 19
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->n:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 20
    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    int-to-double v1, v1

    .line 21
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 28
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    .line 29
    :goto_0
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_5

    .line 30
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v4

    if-ne v9, v10, :cond_3

    const/4 v10, 0x0

    goto :goto_1

    :cond_3
    add-int/lit8 v10, v9, 0x1

    .line 31
    :goto_1
    invoke-interface {v7, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 33
    invoke-static {v11, v10}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    if-eqz v8, :cond_4

    neg-double v12, v1

    .line 34
    invoke-static {v8, v10, v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 35
    invoke-interface {v6, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget v10, v10, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->i:I

    neg-int v10, v10

    int-to-double v12, v10

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v12, v12, v16

    invoke-static {v8, v11, v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 37
    invoke-interface {v15, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 38
    :cond_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iput-object v8, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 39
    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->f:Ljava/util/List;

    .line 40
    iput-object v15, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->g:Ljava/util/List;

    .line 41
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 42
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide v6, 0x4001740afa84ad89L    # 2.1816615649929116

    .line 43
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 44
    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v6

    move-object v9, v1

    move-object v10, v8

    move-wide v11, v6

    move-wide/from16 v13, v16

    .line 45
    invoke-virtual/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v9, v2

    .line 46
    invoke-virtual/range {v9 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 47
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v4, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 48
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v15, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v15, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object/from16 v18, v4

    move-object v4, v2

    move-object/from16 v2, v18

    goto :goto_3

    .line 49
    :cond_6
    :goto_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_7

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_7

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_7

    .line 50
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 51
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->k:D

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->l:D

    .line 52
    invoke-static {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 53
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 54
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 55
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide v4, 0x3fe921fb54442d18L    # 0.7853981633974483

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v11

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    .line 58
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v4, v10

    move-wide v6, v13

    move-wide v8, v11

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 59
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v4, v1

    invoke-virtual/range {v4 .. v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 60
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->l:D

    invoke-static {v1, v10, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 61
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;->l:D

    invoke-static {v10, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 62
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v4, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v2, v3

    goto :goto_3

    :cond_7
    move-object v4, v2

    .line 63
    :goto_3
    invoke-direct {v0, v2, v4}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V

    .line 64
    :cond_8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/e;

    return-object v1
.end method

.method public i(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 12

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_ROUND:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->shape:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->CENTRAL_CIRCLE_RHOMB:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 7
    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    .line 9
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v2, p2, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 10
    iget-object p1, v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->i:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    goto :goto_1

    .line 11
    :cond_2
    :goto_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz p2, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_3

    .line 12
    invoke-static {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->k:D

    .line 14
    iget p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CenterCircleSrcData;->outLineWidth:I

    int-to-double p1, p1

    add-double/2addr v0, p1

    .line 15
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double v4, v2, v0

    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v8, v6, v0

    add-double v10, v2, v0

    add-double/2addr v0, v6

    move-object v2, p1

    move-wide v3, v4

    move-wide v5, v8

    move-wide v7, v10

    move-wide v9, v0

    invoke-direct/range {v2 .. v10}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/f;->i:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    :cond_3
    :goto_1
    return-void
.end method
