.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;
.super Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# instance fields
.field public i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public t:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public x:Lcn/mucang/android/jiakaoyi/signal/pos/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->x:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 9

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->key:Ljava/lang/String;

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iput-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    const-wide/high16 v5, 0x401e000000000000L    # 7.5

    .line 8
    invoke-static {v4, v1, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 9
    invoke-static {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 10
    invoke-static {v4, v1, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 11
    invoke-static {v2, v3, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 12
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const-wide/high16 v5, 0x402e000000000000L    # 15.0

    invoke-direct {v2, v7, v8, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 13
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v2, v7, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->line112:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 14
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v2, v8, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->line211:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 15
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v2, v4, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos3:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos4:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos5:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos6:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos7:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 21
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos8:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos9:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 23
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->t:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDanBianRenderModel;->pos10:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 24
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v1, :cond_0

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v2, v3, v1, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->report:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 26
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->t:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 2

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->x:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1

    .line 3
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_1
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_DanBian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1
.end method

.method public y()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/d;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method
