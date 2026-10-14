.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;
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
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;


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
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/d;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/d;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/d;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;)V

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    .line 6
    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;->g:I

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;->d:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/d;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    .line 4
    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    .line 6
    iget v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;->d:I

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    sget v3, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v4, v3

    invoke-static {v1, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/d;

    return-object v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    if-lez p2, :cond_0

    const/4 p2, 0x0

    .line 4
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_1

    .line 6
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/e;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_1
    return-void
.end method
