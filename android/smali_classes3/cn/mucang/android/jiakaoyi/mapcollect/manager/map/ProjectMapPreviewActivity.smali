.class public final Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/m/c<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000D\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00192\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0019B\u0005\u00a2\u0006\u0002\u0010\u0003J\u0008\u0010\u000f\u001a\u00020\u0006H\u0016J\u0008\u0010\u0010\u001a\u00020\u0011H\u0014J\u0008\u0010\u0012\u001a\u00020\u0011H\u0014J\u0008\u0010\u0013\u001a\u00020\u0011H\u0014J\u0008\u0010\u0014\u001a\u00020\u0011H\u0014J\u0010\u0010\u0015\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0018\u001a\u00020\u00112\u0006\u0010\u0016\u001a\u00020\u0017H\u0002R6\u0010\u0004\u001a*\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0005j\u0014\u0012\u0004\u0012\u00020\u0006\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u0007`\tX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000c\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseViewBindingActivity;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;",
        "()V",
        "layerMap",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;",
        "Lkotlin/collections/HashMap;",
        "renderModels",
        "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;",
        "startDegree",
        "",
        "targetDegree",
        "getStatName",
        "init",
        "",
        "onDestroy",
        "onPause",
        "onResume",
        "renderMap",
        "model",
        "Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/PreviewSimpleModel;",
        "rotateDegrees",
        "Companion",
        "mapcollect_release"
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
.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;>;"
        }
    .end annotation
.end field

.field private d:F

.field private e:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->b:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->c:Ljava/util/HashMap;

    return-void
.end method

.method private static final j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Landroid/view/View;)V
    .locals 0

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V

    return-void
.end method

.method private final m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->b:Ljava/util/List;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->e()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/hpmap/c/a;

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->c:Ljava/util/HashMap;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->getLayerKey()Ljava/lang/String;

    move-result-object v4

    const-string v5, "renderModel.layerKey"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-interface {v1, v5, v2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/a;->createMapLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;

    move-result-object v1

    const-string v2, "renderModel.createMapLay\u2026ng.mapView, false, false)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->c:Ljava/util/HashMap;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_4

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v1}, Landroid/view/TextureView;->getMeasuredWidth()I

    move-result v1

    mul-int v0, v0, v1

    if-gtz v0, :cond_3

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p0;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/p0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V

    const-wide/16 v1, 0xc8

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V

    :cond_4
    :goto_1
    const-string p1, "MapTag"

    const-string v0, "\u5730\u56fe\u52a0\u8f7d\u5b8c\u6210"

    .line 11
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V

    return-void
.end method

.method private static final o(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->c:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->c:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->l()D

    move-result-wide v1

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v3

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->f()D

    move-result-wide v3

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 8
    invoke-static {v1, v2, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    const v2, 0x3f59999a    # 0.85f

    mul-float v1, v1, v2

    .line 9
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->b()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v2, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v2

    .line 13
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 14
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V

    .line 15
    iget p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->d:F

    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->e:F

    sub-float/2addr v0, p1

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    add-float/2addr p1, v0

    .line 16
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    .line 17
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const/4 v0, 0x0

    const/high16 v1, -0x3e600000    # -20.0f

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->w(FF)V

    .line 18
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method private final p(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->c()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->c()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    iget-wide v4, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v4

    invoke-virtual {v2, v3, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b(FF)[F

    move-result-object v0

    const-string v2, "viewBinding.mapView.conv\u2026oat(), start.y.toFloat())"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v3, v3

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p1, v4

    invoke-virtual {v2, v3, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->b(FF)[F

    move-result-object p1

    const-string v2, "viewBinding.mapView.conv\u2026Float(), end.y.toFloat())"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v3, v0, v1

    float-to-double v3, v3

    const/4 v5, 0x1

    aget v0, v0, v5

    float-to-double v6, v0

    invoke-direct {v2, v3, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    aget v1, p1, v1

    float-to-double v3, v1

    aget p1, p1, v5

    float-to-double v5, p1

    invoke-direct {v0, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DD)V

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->getCurrentRotateDegrees()D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->d:F

    sub-float/2addr v0, p1

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->e:F

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u9879\u76ee\u6548\u679c\u9884\u89c8"

    return-object v0
.end method

.method protected init()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->init()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->titleTv:Landroid/widget/TextView;

    const-string v1, "\u9879\u76ee\u5730\u56fe\u9884\u89c8"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->titleLayout:Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;

    iget-object v0, v0, Lcom/mucang/android/jiakaoyi/uilib/databinding/CommonTitleBinding;->backIv:Landroid/widget/ImageView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/o0;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/o0;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;-><init>()V

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;->f()V

    .line 6
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/ProjectMapPreviewActivity;->m(Lcn/mucang/android/jiakaoyi/mapcollect/manager/map/z0;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onDestroy()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->c()V

    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onPause()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->m()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcn/mucang/android/core/config/n;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/c;->g()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/mapcollect/databinding/ActivityProjectMapPreviewBinding;->mapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->n()V

    return-void
.end method
