.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;
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
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

.field private d:Ljava/util/List;
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


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/i;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/i;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/i;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;)V

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v2, 0x1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v3, 0x2

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v4, 0x3

    .line 5
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    .line 8
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v6, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v6, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    .line 10
    iget v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->f:I

    .line 11
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->d:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 14
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/h;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;
    .locals 10

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    const/16 v1, 0xf

    .line 3
    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v1}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->d:Ljava/util/List;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 7
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->d:Ljava/util/List;

    const/4 v4, 0x3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    sget v4, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v5, v4

    invoke-static {v1, v0, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    float-to-double v6, v4

    .line 13
    invoke-static {v0, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    float-to-double v7, v4

    .line 14
    invoke-static {v3, v2, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    float-to-double v8, v4

    .line 15
    invoke-static {v2, v3, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 16
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v9, v8, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    if-nez v9, :cond_0

    .line 17
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    iput-object v9, v8, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    .line 18
    :cond_0
    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v8, v8, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->e:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v5, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;->f:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 23
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/i;

    return-object v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/j;->d:Ljava/util/List;

    return-void
.end method
