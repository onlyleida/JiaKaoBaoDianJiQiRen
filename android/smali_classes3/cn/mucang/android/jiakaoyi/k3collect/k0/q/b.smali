.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;
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
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;

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
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/a;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;

    move-result-object v0

    return-object v0
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/a;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;)V

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    .line 6
    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;->e:I

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->d:Ljava/util/List;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;->d:Ljava/util/List;

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 9
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->c:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/a;

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    if-nez v0, :cond_2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->width:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    .line 4
    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->color:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    .line 6
    iget v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->shape:I

    .line 7
    iget v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->b:I

    const/16 v1, 0xe

    if-ne v0, v1, :cond_0

    const-string v0, "#64AEE1D5"

    .line 8
    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->f:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string v0, "#64FFFFFF"

    .line 9
    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->f:Ljava/lang/String;

    .line 10
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->d:Ljava/util/List;

    iput-object v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_2

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->e:Ljava/util/List;

    if-nez v1, :cond_1

    .line 14
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->e:Ljava/util/List;

    .line 15
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->h:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    sget v3, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v3, v3

    invoke-static {v0, v1, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->e:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    add-int/lit8 v1, v2, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->d:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;->e:Ljava/util/List;

    sget v4, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v4, v4

    invoke-static {v0, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 24
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->b:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/a;

    return-object v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->a:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/CommonSrcData;->points:Ljava/util/List;

    invoke-static {p2, p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/o;->f(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/b;->d:Ljava/util/List;

    return-void
.end method
