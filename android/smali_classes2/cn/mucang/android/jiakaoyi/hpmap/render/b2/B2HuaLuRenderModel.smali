.class public Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;
.source "SourceFile"


# instance fields
.field public leftPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public middlePoints:Ljava/util/List;
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
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
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
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/high16 v1, 0x41700000    # 15.0f

    invoke-direct {p4, p2, v0, v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->middlePoints:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p4

    if-eqz p4, :cond_1

    .line 3
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->middlePoints:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p4, p2, v0, v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_1
    new-instance p4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v0, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {p4, p2, v0, v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {p1, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const v4, -0x139001

    const/4 v6, 0x0

    const-string v3, ""

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 6
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, ""

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 7
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, ""

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 8
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, p3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, ""

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method protected getFenceList()Ljava/util/List;
    .locals 16
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
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->type:I

    const-string v2, "keyFenceProjectBg"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    move-result-object v1

    if-eq v1, v0, :cond_4

    .line 2
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 3
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 4
    :goto_0
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    if-ge v10, v0, :cond_1

    .line 5
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    add-int/lit8 v13, v10, 0x1

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v14, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->fenceDistance:D

    add-double/2addr v3, v14

    mul-double v3, v3, v11

    const/4 v5, 0x1

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->getLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v10, :cond_0

    .line 6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v7, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v10, v13

    goto :goto_0

    .line 8
    :cond_1
    :goto_1
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ge v9, v0, :cond_3

    .line 9
    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    add-int/lit8 v10, v9, 0x1

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->fenceDistance:D

    add-double/2addr v3, v13

    mul-double v3, v3, v11

    const/4 v5, 0x0

    move-object/from16 v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->getLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    if-nez v9, :cond_2

    .line 10
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v9, v10

    goto :goto_1

    .line 12
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected getMapNamePos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 4

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    div-int/lit8 v1, v1, 0x3

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x3

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    mul-int/lit8 v1, v1, 0x2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    mul-int/lit8 v2, v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    return-object v0
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

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->leftPoints:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2HuaLuRenderModel;->rightPoints:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 3
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 4
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v0
.end method
