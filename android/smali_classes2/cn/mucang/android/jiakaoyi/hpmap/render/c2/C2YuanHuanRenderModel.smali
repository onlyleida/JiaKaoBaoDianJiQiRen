.class public Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;
.source "SourceFile"


# instance fields
.field public innerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public innerLineType:I

.field public innerRadius:F

.field public outCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public outLineType:I

.field public outRadius:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;-><init>()V

    return-void
.end method


# virtual methods
.method public createMapLayers(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)V
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

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->outRadius:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->defaultLineWidth:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v2, v3

    add-float/2addr v1, v4

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;-><init>(FI)V

    const/4 v1, -0x1

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->b(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 2
    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->outLineType:I

    const/4 v5, 0x1

    const/high16 v6, 0x41f00000    # 30.0f

    if-ne v2, v5, :cond_0

    .line 3
    invoke-virtual {v0, v6, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->a(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 4
    :cond_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->outCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, p2, v7, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;)V

    .line 5
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerRadius:F

    iget v7, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->defaultLineWidth:F

    div-float v3, v7, v3

    sub-float/2addr v2, v3

    invoke-direct {v0, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;-><init>(FI)V

    invoke-virtual {v0, v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->b(FI)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerLineType:I

    if-ne v1, v5, :cond_1

    .line 8
    invoke-virtual {v0, v6, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;->a(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;

    .line 9
    :cond_1
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, p2, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/c;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/c$a;)V

    .line 10
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const v4, -0x139001

    const/4 v6, 0x0

    const-string v3, "oi"

    move-object v0, p0

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;->addPoint(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/c2/C2YuanHuanRenderModel;->innerCenter:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-string v3, "oo"

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
