.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;
.super Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# instance fields
.field public i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public n:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public o:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->n:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2QiDianRenderModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2QiDianRenderModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->key:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v5, 0x401e000000000000L    # 7.5

    .line 7
    invoke-static {v3, v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    invoke-static {v4, v2, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 9
    invoke-static {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 10
    invoke-static {v2, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 11
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    invoke-direct {v3, v7, v8, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2QiDianRenderModel;->line12:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 12
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v8, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2QiDianRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 13
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v1, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2QiDianRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v1, v2, v7, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2QiDianRenderModel;->line41:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v1, :cond_0

    .line 16
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v2, v3, v1, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->report:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 17
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/utils/b;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->j()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x4

    .line 2
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-direct {v2, v1, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v2
.end method

.method public j()Landroid/util/SparseArray;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v1, :cond_0

    const/4 v2, 0x7

    .line 7
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/16 v1, 0x8

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_QiDianQuYu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v2, v1, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->o:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public x()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public z()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/g;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    return-wide v0
.end method
