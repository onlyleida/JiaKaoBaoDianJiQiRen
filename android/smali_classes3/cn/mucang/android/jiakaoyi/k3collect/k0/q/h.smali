.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
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

.method private h(Ljava/util/List;Z)Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    const/4 v2, 0x1

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v4, v2, -0x1

    .line 4
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    if-eqz p2, :cond_0

    .line 5
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    int-to-double v7, v7

    mul-double v7, v7, v5

    invoke-static {v4, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v3

    goto :goto_1

    .line 6
    :cond_0
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v7, v7, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    int-to-double v7, v7

    mul-double v7, v7, v5

    invoke-static {v4, v3, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v3

    :goto_1
    if-ne v2, v1, :cond_1

    .line 7
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 9
    :cond_1
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/g;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->i(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/g;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/g;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;)V

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->LEFT_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    sget-object v2, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->RIGHT_DASH_LINE:Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iput-wide v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    .line 8
    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->f:I

    .line 9
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/K3ShapeType;->getType()I

    move-result v0

    const/4 v1, 0x1

    const/4 v3, 0x0

    if-ne v2, v0, :cond_1

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->d:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->h(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->e:Ljava/util/List;

    invoke-direct {p0, v1, v3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->h(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    goto :goto_0

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->e:Ljava/util/List;

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->h(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->d:Ljava/util/List;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->d:Ljava/util/List;

    invoke-direct {p0, v2, v1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->h(Ljava/util/List;Z)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;->e:Ljava/util/List;

    .line 14
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 15
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/DashFullLineCollisionModel;

    return-object v0

    :cond_3
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    const/16 v2, 0x96

    .line 4
    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashLength:I

    const/high16 v2, 0x42c80000    # 100.0f

    .line 5
    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashInterval:F

    const/4 v2, 0x1

    .line 6
    iput-boolean v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    .line 7
    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 8
    new-instance v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v3, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    .line 9
    iget v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput v0, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->n:I

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->d:Ljava/util/List;

    iput-object v0, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->e:Ljava/util/List;

    iput-object v1, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    const/4 v1, 0x2

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_0

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->d:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v0, v1, :cond_1

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_2

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_2

    .line 21
    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v4, v3

    invoke-static {v2, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_3

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_3

    .line 24
    sget v3, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v4, v3

    invoke-static {v2, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/g;

    return-object v0
.end method

.method public i(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_0

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-static {p2, v0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->d:Ljava/util/List;

    .line 4
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_1

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points2:Ljava/util/List;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/h;->e:Ljava/util/List;

    :cond_1
    return-void
.end method
