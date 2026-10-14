.class public Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;
.source "SourceFile"


# instance fields
.field public center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public cross1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public cross2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public innerLineType:I

.field public leftInnerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftInnerRadius:F

.field public leftOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public leftOutRadius:F

.field public leftStartAngle:F

.field public leftSweepAngle:F

.field public outLineType:I

.field public rightInnerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightInnerRadius:F

.field public rightOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public rightOutRadius:F

.field public rightStartAngle:F

.field public rightSweepAngle:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
    .locals 21
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

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v6, p2

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;-><init>()V

    iget v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->defaultLineWidth:F

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->b(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    .line 2
    iget v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->outLineType:I

    const/4 v3, 0x1

    const/high16 v4, 0x41f00000    # 30.0f

    if-ne v1, v3, :cond_0

    .line 3
    invoke-virtual {v0, v4, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;->a(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;

    .line 4
    :cond_0
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;

    iget-object v11, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget v12, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftOutRadius:F

    iget v13, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightOutRadius:F

    iget v14, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftStartAngle:F

    iget v15, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftSweepAngle:F

    iget v5, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightStartAngle:F

    iget v10, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightSweepAngle:F

    iget-object v9, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v18, v9

    move-object v9, v1

    move/from16 v17, v10

    move-object/from16 v10, p2

    move/from16 v16, v5

    move-object/from16 v19, v4

    move-object/from16 v20, v0

    invoke-direct/range {v9 .. v20}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/f;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;FFFFFFLcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/f$a;)V

    .line 5
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftInnerRadius:F

    iget v4, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->defaultLineWidth:F

    const/high16 v5, 0x40000000    # 2.0f

    div-float v9, v4, v5

    sub-float/2addr v1, v9

    const/4 v9, 0x0

    invoke-direct {v0, v1, v9}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;-><init>(FI)V

    invoke-virtual {v0, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->b(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 7
    iget v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->innerLineType:I

    if-ne v1, v3, :cond_1

    const/high16 v1, 0x41f00000    # 30.0f

    .line 8
    invoke-virtual {v0, v1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->a(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 9
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;

    iget-object v4, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftInnerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v6, v4, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;)V

    .line 10
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightInnerRadius:F

    iget v4, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->defaultLineWidth:F

    div-float v5, v4, v5

    sub-float/2addr v1, v5

    invoke-direct {v0, v1, v9}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;-><init>(FI)V

    invoke-virtual {v0, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->b(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 12
    iget v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->innerLineType:I

    if-ne v1, v3, :cond_2

    const/high16 v1, 0x41f00000    # 30.0f

    .line 13
    invoke-virtual {v0, v1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->a(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 14
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;

    iget-object v2, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightInnerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v6, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;)V

    .line 15
    invoke-interface {v8, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->leftOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const v4, -0x139001

    const/4 v9, 0x0

    const-string v3, "ol"

    move-object/from16 v0, p0

    move-object/from16 v2, p1

    move-object/from16 v5, p2

    move-object v6, v9

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 17
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->rightOutCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v6, 0x0

    const-string v3, "or"

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 18
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->cross1:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, "c1"

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 19
    iget-object v1, v7, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2DoubleYuanHuanRenderModel;->cross2:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, "c2"

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

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
