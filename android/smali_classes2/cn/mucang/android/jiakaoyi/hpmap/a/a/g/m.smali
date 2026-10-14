.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;
.super Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# instance fields
.field public i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public k:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public n:D

.field public o:D

.field public p:D

.field public q:I

.field public r:I

.field public s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public u:Lcn/mucang/android/jiakaoyi/signal/pos/b;

.field public v:Lcn/mucang/android/jiakaoyi/signal/pos/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v0
.end method

.method public D()F
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->k:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->key:Ljava/lang/String;

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->q:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerLineType:I

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->r:I

    iput v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->outLineType:I

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->outCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->p:D

    double-to-float v1, v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->defaultLineWidth:F

    .line 8
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->n:D

    double-to-float v1, v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerRadius:F

    .line 9
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    double-to-float v1, v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->outRadius:F

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->mapName:Ljava/lang/String;

    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/utils/b;
    .locals 8

    .line 1
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    add-double/2addr v3, v5

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    return-object v7
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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public r()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->k:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carPoints:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->n:D

    mul-double v2, v2, v2

    cmpl-double p1, v0, v2

    if-ltz p1, :cond_0

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    mul-double v2, v2, v2

    cmpg-double p1, v0, v2

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public y()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    sub-double/2addr v2, v4

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v0
.end method
