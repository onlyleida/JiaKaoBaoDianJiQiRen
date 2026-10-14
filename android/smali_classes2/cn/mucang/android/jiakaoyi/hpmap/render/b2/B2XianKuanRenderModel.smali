.class public Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;
.source "SourceFile"


# instance fields
.field public line110:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line29:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public line78:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public poleRadius:F

.field public reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;-><init>()V

    return-void
.end method

.method private getConfig()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->poleRadius:F

    const/high16 v2, -0x10000

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;-><init>(FII)V

    return-object v0
.end method


# virtual methods
.method protected createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
    .locals 8
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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line110:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, v6

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line29:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const/4 v5, 0x1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line78:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const v4, -0x139001

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget v7, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "1"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "2"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "9"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "10"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->getConfig()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    const-string v3, "3"

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addCircle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line34:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->getConfig()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    const-string v3, "4"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addCircle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->getConfig()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    const-string v3, "5"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addCircle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line56:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->getConfig()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    const-string v3, "6"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addCircle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line78:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->getConfig()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    const-string v3, "7"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addCircle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 15
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->line78:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->getConfig()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    const-string v3, "8"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addCircle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 16
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/high16 v4, -0x10000

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 19
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 20
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2XianKuanRenderModel;->reportRect:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    :cond_1
    return-void
.end method

.method protected getFenceList()Ljava/util/List;
    .locals 10
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
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->fenceDistance:D

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->fenceDistance:D

    add-double/2addr v5, v7

    invoke-static {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->fenceDistance:D

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->fenceDistance:D

    add-double/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 9
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
