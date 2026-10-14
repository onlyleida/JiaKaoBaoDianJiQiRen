.class public Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/k3collect/k0/p$b<",
        "Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;",
        "Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;",
        "Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private e:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;

.field private f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

.field private g:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;


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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    invoke-direct {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3collect/g0/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;)V

    return-object v0
.end method

.method public bridge synthetic b(Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->g(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V

    return-void
.end method

.method public bridge synthetic c()Lcn/mucang/android/jiakaoyi/k3collect/j0/a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic d()Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->g:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->g:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->e:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->b:J

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->g:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v5, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->g:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->c:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 10
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->g:Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/c;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    if-nez v0, :cond_4

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->e:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;

    iget v3, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->type:I

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3collect/src/K3SrcData;->id:Ljava/lang/Long;

    invoke-direct {v1, v0, v3, v2}, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;-><init>(Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;ILjava/lang/Long;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x0

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    .line 8
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v6, v8

    mul-double v6, v6, v3

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v8, v10

    mul-double v8, v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    goto :goto_0

    :cond_0
    move-object v5, v1

    .line 9
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_1

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v6, v8

    mul-double v6, v6, v3

    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v8, v10

    mul-double v8, v8, v3

    invoke-direct {v1, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 11
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_2

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget v4, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->j:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->g:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget v4, Lcn/mucang/android/jiakaoyi/k3collect/style/a;->e:F

    float-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->k:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->f:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v6, v4

    invoke-static {v2, v3, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :cond_3
    if-eqz v5, :cond_4

    if-eqz v1, :cond_4

    .line 17
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->n:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 18
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->e:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;->lineWidth:I

    .line 19
    iget v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;->interval:I

    int-to-double v3, v0

    .line 20
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    div-int/lit8 v6, v2, 0x2

    int-to-double v6, v6

    invoke-static {v1, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    invoke-static {v5, v1, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->h:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    int-to-double v5, v2

    sub-double/2addr v0, v5

    add-double/2addr v5, v3

    div-double v3, v0, v5

    .line 23
    invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J

    move-result-wide v3

    .line 24
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    iput v2, v5, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashLength:I

    int-to-long v6, v2

    mul-long v6, v6, v3

    long-to-double v6, v6

    sub-double/2addr v0, v6

    long-to-double v2, v3

    div-double/2addr v0, v2

    double-to-float v0, v0

    .line 25
    iput v0, v5, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->dashInterval:F

    .line 26
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, v5, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->lineWidth:I

    .line 27
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3collect/j0/a;->a:Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/k3collect/style/LineStyle;->isDashed:Z

    .line 28
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->f:Lcn/mucang/android/jiakaoyi/k3collect/j0/b/c;

    return-object v0
.end method

.method public g(Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;Lcn/mucang/android/jiakaoyi/signal/i/a;)V
    .locals 1

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;->p1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;->p2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;->p3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;->p4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/k0/q/d;->e:Lcn/mucang/android/jiakaoyi/k3collect/src/impl/BanMaLineSrcData;

    return-void
.end method
