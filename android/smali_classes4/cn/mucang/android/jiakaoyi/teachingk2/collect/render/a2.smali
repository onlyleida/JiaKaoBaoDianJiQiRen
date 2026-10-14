.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u000e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\u0010\u001a\u00020\r2\u000c\u0010\u0011\u001a\u0008\u0012\u0004\u0012\u00020\u00130\u00122\u0008\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u001e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001aJ\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015J\u001c\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001a2\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001aR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/CollectMapPreviewer;",
        "",
        "mapView",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
        "(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V",
        "collectCoordinate",
        "Lcn/mucang/android/jiakaoyi/signal/utils/Coordinate;",
        "currentLayer",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/CollectPathLayer;",
        "showCoordinate",
        "width",
        "",
        "addPoint",
        "",
        "pos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "renderMap",
        "siteLayers",
        "",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;",
        "boundary",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "showPreviewMap",
        "teachModel",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "list",
        "",
        "startCollect",
        "stopCollect",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
        "TeachingK2_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

.field private final b:F

.field private c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

.field private d:Lcn/mucang/android/jiakaoyi/signal/utils/b;

.field private e:Lcn/mucang/android/jiakaoyi/signal/utils/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 1

    const-string v0, "mapView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/high16 p1, 0x41700000    # 15.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b:F

    return-void
.end method

.method public static synthetic c(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    return-void
.end method

.method private final d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v1

    mul-int v0, v0, v1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    if-gtz v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d;

    invoke-direct {v0, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/d;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    const-wide/16 p1, 0xc8

    invoke-static {v0, p1, p2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->f(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$siteLayers"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->f(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    return-void
.end method

.method private static final f(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;",
            ")V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-wide/16 v0, 0x0

    if-nez p2, :cond_0

    :goto_0
    move-wide v2, v0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->l()D

    move-result-wide v2

    :goto_1
    if-nez p2, :cond_2

    goto :goto_2

    .line 4
    :cond_2
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_2

    :cond_3
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->f()D

    move-result-wide v0

    .line 5
    :goto_2
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 6
    invoke-static {v2, v3, v0, v1, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 v0, 0x0

    if-nez p2, :cond_4

    :goto_3
    const/4 v1, 0x0

    goto :goto_4

    .line 8
    :cond_4
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_3

    :cond_5
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_6
    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    :goto_4
    if-nez p2, :cond_7

    goto :goto_5

    .line 9
    :cond_7
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p2

    if-nez p2, :cond_8

    goto :goto_5

    :cond_8
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez p2, :cond_9

    goto :goto_5

    :cond_9
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v2

    .line 10
    :goto_5
    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 11
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method


# virtual methods
.method public final a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 4

    const-string v0, "pos"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->d:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->e:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v1, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    const/4 v3, 0x0

    if-nez v0, :cond_2

    goto :goto_1

    :cond_2
    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    :goto_1
    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 3
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_4
    :goto_3
    return-void
.end method

.method public final b()Lcn/mucang/android/jiakaoyi/signal/utils/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->e:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    return-object v0
.end method

.method public final g(Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "teachModel"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;

    const-wide/16 v2, 0x0

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/s/j;->e(J)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/x0$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    move-result-object v1

    const-string v2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.mapcollect.poshandle.K2Data"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;

    .line 5
    iget v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    .line 6
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-ne v2, v3, :cond_6

    .line 7
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->f:Ljava/util/List;

    const-string v3, "k2data.daoku"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    if-ltz v3, :cond_3

    check-cast v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    .line 9
    iget-boolean v9, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->u:Z

    iget v10, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne v10, v4, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    const/4 v10, 0x0

    :goto_1
    if-ne v9, v10, :cond_2

    goto :goto_2

    :cond_2
    move v3, v8

    goto :goto_0

    .line 10
    :cond_3
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v5

    :cond_4
    move-object v7, v5

    const/4 v3, 0x0

    .line 11
    :goto_2
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->t:Ljava/util/Map;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_5

    goto/16 :goto_c

    :cond_5
    invoke-static {v1, v3}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    :goto_3
    move-object v5, v1

    goto/16 :goto_c

    .line 12
    :cond_6
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v2, v3, :cond_c

    .line 13
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->i:Ljava/util/List;

    const-string v3, "k2data.zhijiao"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    if-ltz v3, :cond_9

    check-cast v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    .line 15
    iget-boolean v9, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;->q:Z

    iget v10, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne v10, v4, :cond_7

    const/4 v10, 0x1

    goto :goto_5

    :cond_7
    const/4 v10, 0x0

    :goto_5
    if-ne v9, v10, :cond_8

    goto :goto_6

    :cond_8
    move v3, v8

    goto :goto_4

    .line 16
    :cond_9
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v5

    :cond_a
    move-object v7, v5

    const/4 v3, 0x0

    .line 17
    :goto_6
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->t:Ljava/util/Map;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_b

    goto/16 :goto_c

    :cond_b
    invoke-static {v1, v3}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    goto :goto_3

    .line 18
    :cond_c
    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v2, v3, :cond_12

    .line 19
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->g:Ljava/util/List;

    const-string v3, "k2data.quxian"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    add-int/lit8 v8, v3, 0x1

    if-ltz v3, :cond_f

    check-cast v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    .line 21
    iget-boolean v9, v7, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->p:Z

    iget v10, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne v10, v4, :cond_d

    const/4 v10, 0x1

    goto :goto_8

    :cond_d
    const/4 v10, 0x0

    :goto_8
    if-ne v9, v10, :cond_e

    goto :goto_9

    :cond_e
    move v3, v8

    goto :goto_7

    .line 22
    :cond_f
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v5

    :cond_10
    move-object v7, v5

    const/4 v3, 0x0

    .line 23
    :goto_9
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->t:Ljava/util/Map;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_11

    goto :goto_c

    :cond_11
    invoke-static {v1, v3}, Lkotlin/collections/s;->f0(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    goto/16 :goto_3

    .line 24
    :cond_12
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    if-eqz v2, :cond_15

    .line 25
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->t:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_13

    move-object v3, v5

    goto :goto_a

    :cond_13
    invoke-static {v3}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    .line 26
    :goto_a
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/c/j;->d:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    if-nez v1, :cond_14

    goto :goto_b

    :cond_14
    invoke-static {v1}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-object v5, v1

    :goto_b
    move-object v7, v5

    move-object v5, v3

    goto :goto_c

    :cond_15
    move-object v7, v5

    :goto_c
    if-nez v5, :cond_16

    goto :goto_d

    .line 27
    :cond_16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-interface {v5, v1, v6, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->createMapLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;

    move-result-object v1

    const-string v2, "it.createMapLayers(mapView, false, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 28
    :goto_d
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v1

    const/high16 v2, -0x10000

    if-eqz v1, :cond_17

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b:F

    invoke-direct {v1, v3, v4, v5, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    .line 30
    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_17
    if-nez v7, :cond_18

    return-void

    .line 31
    :cond_18
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->d:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez p2, :cond_19

    goto/16 :goto_15

    .line 32
    :cond_19
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1a
    :goto_e
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 33
    iget v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    if-ne v3, v4, :cond_1a

    iget v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    iget v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->stepDirection:I

    if-ne v3, v4, :cond_1a

    .line 34
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 35
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->parkingSpaceGroup:Ljava/lang/String;

    .line 36
    invoke-static {v3, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 37
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v3

    if-eqz v3, :cond_20

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_20

    .line 38
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v1

    if-nez v1, :cond_1b

    goto :goto_11

    :cond_1b
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    if-nez v1, :cond_1c

    goto :goto_11

    .line 40
    :cond_1c
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 41
    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 42
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->d:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v5, :cond_1d

    goto :goto_10

    :cond_1d
    invoke-virtual {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    if-nez v5, :cond_1e

    goto :goto_10

    :cond_1e
    move-object v4, v5

    :goto_10
    invoke-interface {v3, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_f

    .line 43
    :cond_1f
    :goto_11
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b:F

    const v6, -0xff0100

    invoke-direct {v1, v4, v3, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_e

    .line 44
    :cond_20
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v3

    if-eqz v3, :cond_1a

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->teachModelId:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->getTraceVariable()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;

    move-result-object v3

    if-nez v3, :cond_21

    goto :goto_14

    :cond_21
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;->traces:Ljava/util/List;

    if-nez v3, :cond_22

    goto :goto_14

    .line 47
    :cond_22
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_25

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 48
    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 49
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->d:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v5, :cond_23

    goto :goto_13

    :cond_23
    invoke-virtual {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    if-nez v5, :cond_24

    goto :goto_13

    :cond_24
    move-object v4, v5

    :goto_13
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 50
    :cond_25
    :goto_14
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->b:F

    invoke-direct {v3, v4, v1, v5, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Ljava/util/List;FI)V

    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    .line 51
    invoke-static {v3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_e

    .line 52
    :cond_26
    :goto_15
    invoke-direct {p0, v0, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V

    return-void
.end method

.method public final h(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)V
    .locals 1

    const-string v0, "boundary"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/a;->a(Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;)Lcn/mucang/android/jiakaoyi/signal/utils/b;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->e:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->j()V

    .line 3
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method public final i(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;",
            ">;"
        }
    .end annotation

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->d:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->e:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    if-nez v0, :cond_0

    goto :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 5
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->e:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;->set(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;

    if-nez p1, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 9
    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;

    .line 10
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->d:Lcn/mucang/android/jiakaoyi/signal/utils/b;

    invoke-static {v4}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/utils/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_3
    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/d;->m(Ljava/util/List;)V

    .line 12
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/a2;->a:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-object v0

    :cond_4
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method
