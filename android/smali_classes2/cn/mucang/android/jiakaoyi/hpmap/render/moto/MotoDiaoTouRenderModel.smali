.class public Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;
.source "SourceFile"


# instance fields
.field public judgeArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

.field public turnAroundArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;-><init>()V

    return-void
.end method


# virtual methods
.method protected createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
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

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    sget v7, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v2, v7

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    mul-double v2, v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "1"

    const v4, -0x139001

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->startLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    mul-double v2, v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "2"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    mul-double v2, v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "3"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->endLine:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    mul-double v2, v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "4"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->turnAroundArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_0

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v4, -0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->turnAroundArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->turnAroundArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->turnAroundArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->judgeArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    if-eqz v0, :cond_1

    .line 11
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const v4, -0x139001

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    mul-double v2, v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "\u8bc4\u5224\u70b91"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->judgeArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    mul-double v2, v2, v8

    invoke-virtual {p0, v1, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "\u8bc4\u5224\u70b92"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 13
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->judgeArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    mul-double v2, v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "\u8bc4\u5224\u70b93"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 14
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->judgeArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    float-to-double v2, v7

    mul-double v2, v2, v8

    invoke-virtual {p0, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->createTxtPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "\u8bc4\u5224\u70b94"

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->judgeArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const v4, -0x99138a

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoDiaoTouRenderModel;->judgeArea:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const v4, -0xb5c0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addLine(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;IZ)V

    :cond_1
    return-void
.end method

.method protected getFenceList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
