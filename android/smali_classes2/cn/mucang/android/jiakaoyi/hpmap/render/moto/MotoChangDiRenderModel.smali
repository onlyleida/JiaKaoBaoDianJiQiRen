.class public Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;
.super Lcn/mucang/android/jiakaoyi/hpmap/render/c2/K2RenderModel;
.source "SourceFile"


# instance fields
.field public dashLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
        }
    .end annotation
.end field

.field public solidLines:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;>;"
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
    .locals 4
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
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->solidLines:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    const/high16 v0, 0x41700000    # 15.0f

    if-nez p4, :cond_1

    .line 2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->solidLines:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 3
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p2, v3, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 4
    :cond_1
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->dashLines:Ljava/util/List;

    invoke-static {p4}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p4

    if-nez p4, :cond_2

    .line 5
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/hpmap/render/moto/MotoChangDiRenderModel;->dashLines:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p4

    :goto_2
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 6
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, p2, v3, v0, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    const/high16 v1, 0x42a00000    # 80.0f

    invoke-virtual {v2, v1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;->j(FF)Lcn/mucang/android/jiakaoyi/hpmap/view/p/l;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
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

.method protected getMapNamePos()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected getProjectBgList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method
