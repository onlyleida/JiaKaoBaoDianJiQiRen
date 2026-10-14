.class public Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;
.source "SourceFile"


# instance fields
.field public line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line36:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line67:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line81:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
    .locals 10
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

    const v0, -0xff0100

    const v6, -0xff0100

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const/4 v6, -0x1

    .line 1
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line67:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line81:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line36:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/16 v4, -0xc8c

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    const v7, -0x139001

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget v8, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const v4, -0x139001

    const-string v3, "1"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "2"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v4, v8

    move-object v0, p0

    move-object v2, v6

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    const v4, -0x139001

    const-string v3, "3"

    move-object v1, v6

    move-object v2, p1

    move-object v5, p2

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "4"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v8

    invoke-virtual {p0, v2, v0, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const v4, -0x139001

    const-string v3, "5"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line67:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v4, v8

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    const v4, -0x139001

    const-string v3, "6"

    move-object v1, v6

    move-object v2, p1

    move-object v5, p2

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line67:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v3, v8

    invoke-virtual {p0, v0, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const v4, -0x139001

    const-string v3, "7"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "8"

    move-object v0, p0

    move-object v2, p1

    move v4, v7

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method protected getFenceList()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v4, v6

    invoke-static {v3, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v2, v7

    neg-double v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v2, v7

    neg-double v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line45:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line67:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v7, v2

    move-object v3, p0

    invoke-virtual/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v4, v6

    invoke-static {v3, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v4, v6

    invoke-static {v3, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line23:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->fenceDistance:D

    add-double/2addr v4, v6

    invoke-static {v3, v2, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected getProjectBgList()Ljava/util/List;
    .locals 2
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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2CeFangRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
