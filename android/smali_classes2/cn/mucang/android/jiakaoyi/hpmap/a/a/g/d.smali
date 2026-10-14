.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;
.super Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# instance fields
.field public A:Lcn/mucang/android/jiakaoyi/signal/pos/b;

.field public B:Lcn/mucang/android/jiakaoyi/signal/pos/b;

.field public C:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public D:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

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

.field public k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public m:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public r:D

.field public s:D

.field public t:D

.field public u:D

.field public v:D

.field public w:I

.field public x:I

.field public y:Lcn/mucang/android/jiakaoyi/signal/pos/b;

.field public z:Lcn/mucang/android/jiakaoyi/signal/pos/b;


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

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    add-double/2addr v2, v4

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v0
.end method

.method public D()F
    .locals 4

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    mul-double v0, v0, v2

    double-to-float v0, v0

    return v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->m:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;-><init>()V

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->key:Ljava/lang/String;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 4
    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->w:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->innerLineType:I

    .line 5
    iget v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->x:I

    iput v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->outLineType:I

    .line 6
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftInnerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightInnerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->v:D

    double-to-float v4, v4

    iput v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->defaultLineWidth:F

    .line 11
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->r:D

    double-to-float v4, v4

    iput v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftInnerRadius:F

    .line 12
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    double-to-float v4, v4

    iput v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftOutRadius:F

    .line 13
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->t:D

    double-to-float v4, v4

    iput v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightInnerRadius:F

    .line 14
    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->u:D

    double-to-float v4, v4

    iput v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightOutRadius:F

    .line 15
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 16
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 17
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->C:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 18
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->D:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/16 v6, 0x0

    cmpg-double v8, v2, v6

    if-gez v8, :cond_0

    move-object/from16 v17, v5

    move-object v5, v4

    move-object/from16 v4, v17

    :cond_0
    neg-double v6, v2

    .line 19
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    .line 20
    invoke-static {v6, v7}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 21
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide v12, v8

    move-wide v14, v6

    invoke-virtual/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 22
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v16, v1

    move-object v1, v14

    move-wide v14, v6

    invoke-virtual/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 23
    new-instance v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v10, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object v8, v14

    move-wide v14, v6

    invoke-virtual/range {v10 .. v15}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->rotate(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 24
    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v7

    .line 25
    invoke-virtual {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v1, v8

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v1

    .line 26
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v8

    double-to-float v4, v8

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v4

    .line 27
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v6, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v5

    double-to-float v5, v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v5

    float-to-double v8, v1

    add-double/2addr v8, v2

    double-to-float v2, v8

    move-object/from16 v3, v16

    .line 28
    iput v2, v3, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftStartAngle:F

    sub-float/2addr v7, v1

    .line 29
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v1

    iput v1, v3, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftSweepAngle:F

    .line 30
    iput v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightStartAngle:F

    const/high16 v1, 0x43b40000    # 360.0f

    sub-float/2addr v4, v5

    sub-float/2addr v1, v4

    .line 31
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->d(F)F

    move-result v1

    iput v1, v3, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightSweepAngle:F

    .line 32
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->C:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v3, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->cross1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 33
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->D:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iput-object v1, v3, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->cross2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 34
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v1, v3, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->mapName:Ljava/lang/String;

    return-object v3
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

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    const-wide/high16 v5, 0x4059000000000000L    # 100.0

    add-double/2addr v3, v5

    iget-wide v5, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x3

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
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

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
    .locals 0

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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DoubleYuanHuan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->m:Lcn/mucang/android/jiakaoyi/signal/pos/a;

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
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    return p1

    :cond_2
    return v1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceSquare(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 3
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->r:D

    mul-double v4, v4, v4

    cmpl-double p1, v0, v4

    if-ltz p1, :cond_0

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    mul-double v4, v4, v4

    cmpg-double p1, v0, v4

    if-lez p1, :cond_1

    :cond_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->t:D

    mul-double v0, v0, v0

    cmpl-double p1, v2, v0

    if-ltz p1, :cond_2

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->u:D

    mul-double v0, v0, v0

    cmpg-double p1, v2, v0

    if-gtz p1, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public x()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public y()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 6

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/d;->s:D

    sub-double/2addr v2, v4

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-direct {v0, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    return-object v0
.end method
