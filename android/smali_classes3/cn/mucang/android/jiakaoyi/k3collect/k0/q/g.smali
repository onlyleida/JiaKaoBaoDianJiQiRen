.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

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
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/f;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;)V

    return-object v0
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    .line 6
    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->g:I

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->f:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    int-to-double v2, v2

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->d:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;->e:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 12
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/f;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineWidth:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    .line 4
    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->lineColor:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    .line 6
    iget v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->enterType:I

    iput v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->d:I

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    sget v3, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v4, v3

    invoke-static {v1, v0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v3

    invoke-static {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/f;

    return-object v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CrossRoadMarkSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/g;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-void
.end method
