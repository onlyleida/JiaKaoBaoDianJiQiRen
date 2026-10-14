.class public Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;
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

.field public k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public o:Lcn/mucang/android/jiakaoyi/signal/pos/a;

.field public p:Z

.field public q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private s:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public v:Ljava/util/List;
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
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public C()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-object v0
.end method

.method public b()Lcn/mucang/android/jiakaoyi/signal/pos/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->o:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public c(Ljava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->g:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/16 :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_1
    const/4 v0, -0x3

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->g:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_2
    const/16 v0, -0xb

    .line 7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->h:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    const/16 v0, -0xc

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-interface {p2, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_4
    const/16 v0, -0xd

    .line 11
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->h:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_5
    :goto_0
    return-void
.end method

.method public d()Lcn/mucang/android/jiakaoyi/hpmap/c/a;
    .locals 13

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->key:Ljava/lang/String;

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const-wide/high16 v2, 0x402e000000000000L    # 15.0

    .line 4
    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v1, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 6
    iput-wide v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->leftPoints:Ljava/util/List;

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->rightPoints:Ljava/util/List;

    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 9
    :goto_0
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 10
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v7, v5

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    add-int/lit8 v12, v4, 0x1

    invoke-interface {v5, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v8, v5

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v11, 0x1

    const-wide/high16 v9, 0x402e000000000000L    # 15.0

    move-object v6, p0

    invoke-virtual/range {v6 .. v11}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v5

    if-nez v4, :cond_0

    .line 11
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->leftPoints:Ljava/util/List;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->leftPoints:Ljava/util/List;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v4, v12

    goto :goto_0

    .line 13
    :cond_1
    :goto_1
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v6

    if-ge v1, v4, :cond_3

    .line 14
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v8, v4

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    add-int/lit8 v5, v1, 0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v9, v4

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v12, 0x0

    const-wide/high16 v10, 0x402e000000000000L    # 15.0

    move-object v7, p0

    invoke-virtual/range {v7 .. v12}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->A(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v4

    if-nez v1, :cond_2

    .line 15
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->rightPoints:Ljava/util/List;

    iget-object v7, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->rightPoints:Ljava/util/List;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v1, v5

    goto :goto_1

    .line 17
    :cond_3
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->leftPoints:Ljava/util/List;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->g:Ljava/util/List;

    .line 18
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2QuXianRenderModel;->rightPoints:Ljava/util/List;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->h:Ljava/util/List;

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v1, :cond_4

    .line 20
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v5, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v7, v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-direct {v4, v5, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->report:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 21
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->mapName:Ljava/lang/String;

    .line 22
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->p:Z

    if-eqz v1, :cond_5

    .line 23
    iput v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->stepDirection:I

    goto :goto_2

    :cond_5
    const/4 v1, 0x2

    .line 24
    iput v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->stepDirection:I

    :goto_2
    return-object v0
.end method

.method public f()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public g()Lcn/mucang/android/jiakaoyi/signal/utils/b;
    .locals 8

    .line 1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v2, :cond_0

    .line 2
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    const/4 v6, 0x1

    move-object v0, v7

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)V

    return-object v7

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-direct {v2, v0, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-object v2

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x4

    div-int/2addr v4, v5

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v5

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v6, 0x5

    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    div-int/2addr v6, v2

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x6

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/2addr v2, v5

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0x9

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    const/16 v2, 0xa

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public k()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public l()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public m(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public o()Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4059000000000000L    # 100.0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

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
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    invoke-static {v1, v0, v3, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->o(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 7
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-ne p1, v0, :cond_3

    const/4 p1, 0x4

    return p1

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public r()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->p:Z

    return v0
.end method

.method public s()Lcn/mucang/android/jiakaoyi/engine/model/Step;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-object v0
.end method

.method public v(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->o:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->bound:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    return v2

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->b(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Z

    move-result v0

    if-eqz v0, :cond_2

    return v2

    .line 4
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    const/4 v3, 0x2

    invoke-static {p1, v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_3

    return v2

    .line 5
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {p1, v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/a;->h(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;Ljava/util/List;I)Z

    move-result v0

    if-eqz v0, :cond_4

    return v2

    .line 6
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_5

    .line 7
    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->g(Lcn/mucang/android/jiakaoyi/signal/pos/c;Lcn/mucang/android/jiakaoyi/signal/pos/c;)Z

    move-result v0

    if-eqz v0, :cond_5

    return v2

    .line 8
    :cond_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 9
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->carRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v:Ljava/util/List;

    if-eqz v3, :cond_7

    invoke-static {v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    return v2

    :cond_7
    return v1
.end method

.method public w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->s:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->s:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->s:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 6
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->s:Ljava/util/List;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)Z

    move-result p1

    return p1
.end method

.method public x()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->middle()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
.end method
