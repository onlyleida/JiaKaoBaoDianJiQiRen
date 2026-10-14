.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;
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

.field public n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public u:Z

.field public v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

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
.method public C()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->x:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;-><init>()V

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->key:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    add-double/2addr v4, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    mul-double v4, v4, v2

    .line 5
    invoke-virtual {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->F(D)D

    move-result-wide v4

    .line 6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v11, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v10, v10, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v13, v13, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    mul-double v2, v2, v4

    .line 14
    invoke-static {v8, v13, v6, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 15
    invoke-static {v7, v6, v8, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    move-wide/from16 v16, v4

    neg-double v4, v2

    .line 16
    invoke-static {v9, v8, v7, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 17
    invoke-static {v11, v7, v9, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 18
    invoke-static {v9, v10, v11, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 19
    invoke-static {v11, v12, v10, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 20
    invoke-static {v10, v13, v12, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 21
    invoke-static {v6, v12, v13, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 22
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/4 v6, 0x1

    .line 23
    invoke-virtual {v3, v6, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/4 v10, 0x2

    invoke-virtual {v3, v10, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/4 v11, 0x3

    invoke-virtual {v3, v11, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/4 v11, 0x4

    invoke-virtual {v3, v11, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/4 v11, 0x5

    invoke-virtual {v3, v11, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/4 v11, 0x6

    invoke-virtual {v3, v11, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/4 v11, 0x7

    invoke-virtual {v3, v11, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 30
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->f:Landroid/util/SparseArray;

    const/16 v11, 0x8

    invoke-virtual {v3, v11, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 31
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-wide/from16 v11, v16

    invoke-direct {v3, v14, v15, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 32
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v15, v8, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 33
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v8, v7, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 34
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v7, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 35
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v9, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 36
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v4, v5, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->line67:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 37
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v5, v2, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 38
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v2, v14, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->line81:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 39
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v2, v8, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->line36:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 40
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v2, :cond_0

    .line 41
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v3, v4, v2, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->report:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 42
    :cond_0
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DaoKuRenderModel;->reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 43
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->mapName:Ljava/lang/String;

    .line 44
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-eqz v2, :cond_1

    .line 45
    iput v6, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->stepDirection:I

    goto :goto_0

    .line 46
    :cond_1
    iput v10, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->stepDirection:I

    :goto_0
    return-object v1
.end method

.method public f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/utils/b;
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j()Landroid/util/SparseArray;

    move-result-object v0

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x4

    .line 3
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v1, 0x6

    .line 4
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 5
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v5, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide/16 v6, 0x0

    cmpl-double v2, v0, v6

    if-lez v2, :cond_0

    const/4 v0, 0x1

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v8, 0x0

    .line 6
    :goto_0
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    move-object v2, v0

    move-object v4, v5

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    return-object v0
.end method

.method public j()Landroid/util/SparseArray;
    .locals 4
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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/16 v2, 0x9

    .line 11
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->x:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_3

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_4

    const/4 p1, 0x5

    return p1

    .line 6
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_5

    const/4 p1, 0x6

    return p1

    .line 7
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_6

    const/4 p1, 0x7

    return p1

    .line 8
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_7

    const/16 p1, 0x8

    return p1

    .line 9
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_8

    const/16 p1, 0x9

    return p1

    .line 10
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_9

    const/16 p1, 0xa

    return p1

    :cond_9
    const/4 p1, -0x1

    return p1
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    return v0
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public u()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->w:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->v:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public x()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public z()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    return-wide v0
.end method
