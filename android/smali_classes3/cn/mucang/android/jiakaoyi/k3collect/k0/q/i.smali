.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private b:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

.field private c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

.field private d:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

.field private e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private i:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->i:I

    return-void
.end method

.method private g()Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->i:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v2, :cond_0

    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/g0/j;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/h;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;)V

    return-object v0
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;
    .locals 3

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->d:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    if-nez v0, :cond_1

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->d:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->b:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->d:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->i:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;->e:I

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;->d:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->d:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;->e:I

    if-ge v0, v2, :cond_0

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->d:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;->d:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;->d:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->d:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/g;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    if-nez v0, :cond_3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->b:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    iget v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->lineWidth:I

    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    const/16 v2, -0x20bd

    .line 4
    iput v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->color:I

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    const/16 v0, 0xf

    .line 6
    iput v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->j:I

    const/16 v0, 0x64

    .line 7
    iget v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->gridLineInterval:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, v2, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->k:I

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    .line 9
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->h:Ljava/util/List;

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->e:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->l:I

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->a()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->f:Ljava/util/List;

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 14
    :goto_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    add-int/lit8 v3, v2, -0x1

    if-ltz v3, :cond_0

    goto :goto_1

    .line 15
    :cond_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->l:I

    add-int/lit8 v3, v3, -0x1

    :goto_1
    add-int/lit8 v4, v2, 0x1

    const/4 v5, 0x4

    if-lt v4, v5, :cond_1

    const/4 v5, 0x0

    goto :goto_2

    :cond_1
    move v5, v4

    .line 16
    :goto_2
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    sget v6, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    neg-float v6, v6

    float-to-double v6, v6

    invoke-static {v3, v2, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 20
    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->h:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->f:Ljava/util/List;

    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v6, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v4

    goto :goto_0

    .line 23
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->d:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 24
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    mul-double v1, v1, v3

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;->i:D

    .line 25
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->c:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/h;

    return-object v0
.end method

.method public h(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->b:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/GridLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    new-instance p1, Landroid/util/SparseArray;

    invoke-direct {p1}, Landroid/util/SparseArray;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x1

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->a:Landroid/util/SparseArray;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/i;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v0, 0x3

    invoke-virtual {p1, v0, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
