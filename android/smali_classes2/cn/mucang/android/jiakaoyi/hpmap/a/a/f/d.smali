.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;
.super Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;


# instance fields
.field public A:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public C:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public D:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public E:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public H:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public I:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public J:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

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

.field public m:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public z:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;


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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public D()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->D()F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public E()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->E:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 19

    move-object/from16 v6, p0

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->l:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->m:Ljava/util/List;

    .line 3
    new-instance v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;

    invoke-direct {v7}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;-><init>()V

    .line 4
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->key:Ljava/lang/String;

    .line 5
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 8
    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 9
    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 11
    iget-object v8, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 12
    iget-object v9, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 13
    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v11, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    iget-object v12, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 16
    iget-object v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-object v14, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v15, v14, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 18
    iget-object v14, v14, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    const-wide/high16 v11, 0x401e000000000000L    # 7.5

    move-object/from16 v18, v10

    .line 19
    invoke-static {v5, v0, v1, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 20
    invoke-static {v1, v4, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 21
    invoke-static {v15, v3, v2, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 22
    invoke-static {v14, v2, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 23
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    invoke-direct {v3, v10, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v3, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 24
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v0, v2, v1, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 25
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v1, 0x401e000000000000L    # 7.5

    invoke-static {v4, v0, v5, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 26
    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v5, v3, v4, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 27
    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v10, :cond_0

    .line 28
    invoke-static {v9, v13, v8, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    const-wide/high16 v11, -0x3fe2000000000000L    # -7.5

    move-object/from16 v6, v18

    move-object/from16 v18, v0

    .line 29
    invoke-static {v4, v6, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    move-object/from16 v11, v16

    .line 30
    invoke-static {v9, v11, v6, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    move-object/from16 v12, v17

    .line 31
    invoke-static {v6, v12, v11, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    const-wide/high16 v3, -0x3fe2000000000000L    # -7.5

    .line 32
    invoke-static {v11, v14, v12, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 33
    invoke-static {v8, v12, v13, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 34
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const-wide/high16 v11, 0x402e000000000000L    # 15.0

    invoke-direct {v1, v10, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 35
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v1, v0, v9, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 36
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v0, v9, v6, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 37
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v0, v6, v3, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line67:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 38
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v0, v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line78:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const-wide/high16 v0, 0x401e000000000000L    # 7.5

    goto :goto_0

    :cond_0
    move-object/from16 v18, v0

    move-object/from16 v17, v3

    move-object/from16 v16, v4

    move-wide v0, v1

    .line 39
    :goto_0
    invoke-static {v5, v14, v15, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    move-object/from16 v3, v16

    .line 40
    invoke-static {v3, v15, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 41
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v4, v17

    move-object/from16 v3, v18

    invoke-direct {v1, v3, v4, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->areaStartLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 42
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v1, v2, v0, v11, v12}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->areaEndLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v6, p0

    .line 43
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    const/4 v9, 0x1

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->hasUrgentRect:Z

    .line 44
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->z:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line0:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 45
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->A:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line50:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 46
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line100:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 47
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->C:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line150:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 48
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->D:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->line200:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 49
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->leftPoints:Ljava/util/List;

    .line 50
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->middlePoints:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->rightPoints:Ljava/util/List;

    .line 52
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    const-wide/high16 v10, 0x3ff8000000000000L    # 1.5

    if-eqz v0, :cond_4

    .line 53
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->d(Ljava/util/List;Ljava/lang/Double;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    .line 54
    :goto_2
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ge v13, v0, :cond_3

    .line 55
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v14, v13, 0x1

    invoke-interface {v12, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x1

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v13, :cond_2

    .line 56
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->leftPoints:Ljava/util/List;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    :cond_2
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->leftPoints:Ljava/util/List;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v14

    goto :goto_2

    .line 58
    :cond_3
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->leftPoints:Ljava/util/List;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    :cond_4
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 60
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->d(Ljava/util/List;Ljava/lang/Double;)Ljava/util/List;

    move-result-object v12

    const/4 v13, 0x0

    .line 61
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ge v13, v0, :cond_6

    .line 62
    new-instance v14, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v15, v13, 0x1

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 63
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x1

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v5

    .line 64
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v12, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object v8, v5

    move/from16 v5, v16

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v13, :cond_5

    .line 65
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->middlePoints:Ljava/util/List;

    iget-object v2, v14, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->l:Ljava/util/List;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->m:Ljava/util/List;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    :cond_5
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->middlePoints:Ljava/util/List;

    iget-object v2, v14, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 69
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->l:Ljava/util/List;

    iget-object v2, v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->m:Ljava/util/List;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v13, v15

    goto :goto_3

    .line 71
    :cond_6
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->middlePoints:Ljava/util/List;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->l:Ljava/util/List;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 73
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->m:Ljava/util/List;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_7
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 75
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/j/a;->d(Ljava/util/List;Ljava/lang/Double;)Ljava/util/List;

    move-result-object v8

    const/4 v10, 0x0

    .line 76
    :goto_4
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ge v10, v0, :cond_9

    .line 77
    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v11, v10, 0x1

    invoke-interface {v8, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v5, 0x1

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v10, :cond_8

    .line 78
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->rightPoints:Ljava/util/List;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_8
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->rightPoints:Ljava/util/List;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v11

    goto :goto_4

    .line 80
    :cond_9
    iget-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2GaoSuRenderModel;->rightPoints:Ljava/util/List;

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v9

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    :cond_a
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v0, :cond_b

    .line 82
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const-wide/high16 v3, 0x402e000000000000L    # 15.0

    invoke-direct {v1, v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->report:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 83
    :cond_b
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v0, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->mapName:Ljava/lang/String;

    return-object v7
.end method

.method public f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/utils/b;
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-direct {v2, v0, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v2
.end method

.method public j()Landroid/util/SparseArray;
    .locals 7
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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x2

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x4

    div-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x5

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v6

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x6

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v5, 0x7

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v5, 0x8

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    div-int/2addr v5, v4

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0x9

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xa

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v4, 0xb

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    div-int/2addr v4, v6

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xf

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/16 v2, 0x10

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/16 v2, 0x11

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 20
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x13

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 21
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x15

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 23
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 24
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x17

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x18

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 26
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x19

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 27
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x1a

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 28
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x1b

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 29
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    const/4 v6, 0x4

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->dot(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmpl-double v7, v1, v5

    if-lez v7, :cond_0

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->E:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {p1, v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-static {p1, v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-static {p1, v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 7
    :cond_5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_6

    return v2

    .line 8
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_7

    .line 9
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_7

    return v2

    .line 10
    :cond_7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_8

    .line 11
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_8

    return v2

    .line 12
    :cond_8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 13
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 14
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    if-eqz v3, :cond_a

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_9
    return v2

    :cond_a
    return v1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1

    .line 3
    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->a(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public x()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method

.method public y()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method
