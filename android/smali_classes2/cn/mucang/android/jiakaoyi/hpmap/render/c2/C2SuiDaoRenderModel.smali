.class public Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;
.source "SourceFile"


# instance fields
.field public centerPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public leftPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public rightPoints:Ljava/util/List;
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
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "ZZ)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    const p3, -0xff0100

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    .line 1
    :goto_0
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->leftPoints:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    const/high16 v0, 0x41700000    # 15.0f

    if-nez p4, :cond_1

    .line 2
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->leftPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p4, p2, v1, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    :cond_1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->centerPoints:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 4
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->centerPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p4, p2, v1, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->rightPoints:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    if-nez p4, :cond_3

    .line 6
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->rightPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p4, p2, v1, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_3
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const v4, -0x139001

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget p4, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v2, p4

    invoke-virtual {p0, p3, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "1"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 8
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, p4

    invoke-virtual {p0, p3, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "2"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, p4

    invoke-virtual {p0, p3, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "3"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 10
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, p4

    invoke-virtual {p0, p3, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "4"

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method protected getFenceList()Ljava/util/List;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation

    move-object/from16 v6, p0

    .line 1
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    const/4 v11, 0x0

    .line 4
    :goto_0
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->leftPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    if-ge v11, v0, :cond_1

    .line 5
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->leftPoints:Ljava/util/List;

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->leftPoints:Ljava/util/List;

    add-int/lit8 v14, v11, 0x1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    move/from16 v16, v11

    iget-wide v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v3, v10

    mul-double v3, v3, v12

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->getLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v16, :cond_0

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v11, v14

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    .line 8
    :goto_1
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v10, v0, :cond_3

    .line 9
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->rightPoints:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->rightPoints:Ljava/util/List;

    add-int/lit8 v11, v10, 0x1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v14, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v3, v14

    mul-double v3, v3, v12

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->getLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v10, :cond_2

    .line 10
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v9, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v9, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v11

    goto :goto_1

    .line 12
    :cond_3
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v7
.end method

.method protected getProjectBgList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->leftPoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->rightPoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->leftPoints:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2SuiDaoRenderModel;->rightPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 8
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 11
    :cond_0
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->getProjectBgList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
