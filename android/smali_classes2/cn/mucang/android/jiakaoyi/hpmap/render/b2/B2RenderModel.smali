.class public abstract Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcn/mucang/android/jiakaoyi/hpmap/c/a;


# instance fields
.field public defaultLineWidth:F

.field public endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public fenceDistance:D

.field public key:Ljava/lang/String;

.field public mapName:Ljava/lang/String;

.field public report:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

.field public stepDirection:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->fenceDistance:D

    const/high16 v0, 0x41700000    # 15.0f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->defaultLineWidth:F

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->stepDirection:I

    return-void
.end method

.method private addMapNameText(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    sget v1, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->b:F

    invoke-direct {v0, p3, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)V

    .line 2
    invoke-virtual {v0, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->a(I)Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    const/high16 p1, 0x41600000    # 14.0f

    .line 3
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;->b(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;

    invoke-direct {p1, p5, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/o;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/hpmap/view/p/o$a;)V

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method private addProjectFenceBg(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->type:I

    const-string v2, "keyFenceProjectBg"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->getFenceList()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-void

    .line 4
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 5
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;

    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->colors:Ljava/util/List;

    iget v6, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->defaultLineWidth:F

    invoke-direct {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;-><init>(Ljava/util/List;F)V

    invoke-direct {v3, p2, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/n;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/p/n$a;)V

    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method private addProjectInBg(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            ")V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->type:I

    const-string v2, "keyInProjectBg"

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;

    move-result-object v1

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->getProjectBgList()Ljava/util/List;

    move-result-object v2

    .line 3
    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    if-eq v1, v0, :cond_1

    .line 4
    invoke-virtual {p2}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/InProject;->color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->None:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->type:I

    const-string v4, "keyFenceProjectBg"

    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/FenceProject;

    move-result-object v1

    if-eq v1, v0, :cond_2

    .line 6
    invoke-virtual {p2}, Landroid/view/TextureView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->Black:Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->type:I

    const-string v4, "keyOutProjectBg"

    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->d(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->parse(I)Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/bg/OutProject;->color:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 7
    :goto_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;

    invoke-direct {v1, p2, v2, v0, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;IZ)V

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method protected addArea(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;

    const/4 v1, 0x1

    invoke-direct {v0, p3, p1, p4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;IZ)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected addCircle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g;

    invoke-virtual {p6, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    invoke-virtual {p6, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    invoke-direct {v0, p4, p1, p6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method protected addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "IZ)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-eqz p5, :cond_1

    .line 1
    new-instance p5, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    double-to-float p1, v3

    invoke-direct {v2, p1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;-><init>(FI)V

    invoke-direct {p5, p3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;)V

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 2
    :cond_1
    new-instance p5, Lcn/mucang/android/jiakaoyi/hpmap/view/p/i;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    double-to-float p1, v3

    invoke-direct {v2, p1, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;-><init>(FI)V

    invoke-direct {p5, p3, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/i;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;)V

    invoke-interface {p2, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method protected addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    sget v2, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->b:F

    invoke-direct {v1, v2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;-><init>(FI)V

    invoke-virtual {v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    invoke-virtual {v1, p6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    invoke-direct {v0, p5, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public createMapLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "ZZ)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-direct {p0, v6, p1}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addProjectInBg(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 3
    invoke-direct {p0, v6, p1}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addProjectFenceBg(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    .line 4
    invoke-virtual {p0, v6, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const v4, -0x99138a

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, v6

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const v4, -0xb5c0

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->report:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    const v4, -0xff0100

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    if-eqz p3, :cond_0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->getMapNamePos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->mapName:Ljava/lang/String;

    const/4 v4, -0x1

    move-object v0, p0

    move-object v2, v6

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->addMapNameText(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    :cond_0
    return-object v6
.end method

.method protected abstract createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
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
.end method

.method protected createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    const-wide v0, 0x3ff4cccccccccccdL    # 1.3

    mul-double p4, p4, v0

    .line 2
    invoke-static {p1, p2, p3, p4, p5}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method

.method protected abstract getFenceList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end method

.method public getLayerKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->key:Ljava/lang/String;

    return-object v0
.end method

.method protected getLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DZ)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 2

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-eqz p5, :cond_0

    mul-double v0, v0, p3

    .line 1
    invoke-static {p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    goto :goto_0

    :cond_0
    mul-double v0, v0, p3

    .line 2
    invoke-static {p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    .line 3
    :goto_0
    iput-wide p3, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->lineWidth:D

    return-object p1
.end method

.method protected getMapNamePos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 2

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->c(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

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
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/b2/B2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method
