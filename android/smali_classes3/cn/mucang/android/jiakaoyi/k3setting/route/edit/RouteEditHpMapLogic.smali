.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u00a2\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\"\u00103\u001a\u000c\u0012\u0006\u0012\u0004\u0018\u000105\u0018\u0001042\u0006\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u000208H\u0002J \u00109\u001a\u00020\'2\u0006\u0010:\u001a\u00020&2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00107\u001a\u000208H\u0002J\u0014\u0010;\u001a\u0004\u0018\u00010<2\u0008\u0010=\u001a\u0004\u0018\u00010>H\u0002J\u0006\u0010?\u001a\u00020@J\u0014\u0010A\u001a\u00020@2\u000c\u0010B\u001a\u0008\u0012\u0004\u0012\u00020&04R\u0014\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000c\u001a\u0004\u0018\u00010\rX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082D\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u00148BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001e0\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e\u00a2\u0006\u0002\n\u0000R*\u0010$\u001a\u001e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'0%j\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020\'`(X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010\'X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u001cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008-\u0010.R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008/\u00100\"\u0004\u00081\u00102\u00a8\u0006C"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;",
        "",
        "fragment",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;",
        "viewBinding",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;",
        "viewModel",
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
        "(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;)V",
        "carPosObserver",
        "Landroidx/lifecycle/Observer;",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
        "carRender",
        "Lcn/mucang/android/jiakaoyi/hpmap/render/car/CarRender;",
        "converter",
        "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;",
        "currentZoom",
        "",
        "defaultScale",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "examSite$delegate",
        "Lkotlin/Lazy;",
        "getFragment",
        "()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;",
        "hasAddCar",
        "",
        "iRenderDataObserver",
        "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;",
        "loadHpMap",
        "mapLayerHelper",
        "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;",
        "mapMode",
        "",
        "nodeLayerMap",
        "Ljava/util/HashMap;",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
        "Lcn/mucang/android/jiakaoyi/k3collect/render/mark/MarkRender;",
        "Lkotlin/collections/HashMap;",
        "selectLayer",
        "touch",
        "upTime",
        "",
        "getViewBinding",
        "()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;",
        "getViewModel",
        "()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;",
        "setViewModel",
        "(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;)V",
        "createLayers",
        "",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;",
        "iRenderData",
        "mapView",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
        "createMarkRender",
        "node",
        "findClickModel",
        "Lcn/mucang/android/jiakaoyi/hpmap/view/model/ClickModel;",
        "pos",
        "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
        "initHpMapView",
        "",
        "updateMarkRenders",
        "nodes",
        "k3setting_release"
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
.field private final a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

.field private final b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

.field private c:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

.field private final d:Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

.field private e:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

.field private f:Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

.field private g:Z

.field private h:Z

.field private i:J

.field private j:Z

.field private final k:F

.field private l:F

.field private m:I

.field private final n:Lkotlin/f;

.field private final o:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/mapcollect/render/f;",
            ">;"
        }
    .end annotation
.end field

.field private final p:Landroidx/lifecycle/a0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/a0<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;",
            ">;"
        }
    .end annotation
.end field

.field private q:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            "Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lcn/mucang/android/jiakaoyi/signal/i/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;)V
    .locals 1

    const-string v0, "fragment"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewBinding"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "viewModel"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->c:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->d:Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    const p1, 0x3ecccccc    # 0.39999998f

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->k:F

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->l:F

    .line 8
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic$examSite$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic$examSite$2;

    invoke-static {p1}, Lkotlin/h;->b(Lkotlin/jvm/b/a;)Lkotlin/f;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->n:Lkotlin/f;

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/n;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/n;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->o:Landroidx/lifecycle/a0;

    .line 10
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/k;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/k;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->p:Landroidx/lifecycle/a0;

    .line 11
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 6

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_4

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->f:Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-direct {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->f:Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

    .line 4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->g:Z

    if-nez p1, :cond_4

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->f:Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->g:Z

    goto :goto_2

    :cond_0
    if-nez v0, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/hpmap/c/c/a;->q(Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    :goto_0
    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_1

    .line 8
    :cond_2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    :goto_1
    if-eqz v0, :cond_4

    .line 9
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h:Z

    if-nez v1, :cond_3

    .line 10
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->i:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0xbb8

    cmp-long v5, v1, v3

    if-ltz v5, :cond_3

    .line 11
    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;->degree:D

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    double-to-float v1, v1

    neg-float v1, v1

    const/16 v2, 0x5a

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->d:Lcn/mucang/android/jiakaoyi/k3collect/k0/n;

    .line 14
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 15
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v3

    iget v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->l:F

    .line 16
    invoke-virtual {p1, v1, v2, v0, v3}, Lcn/mucang/android/jiakaoyi/k3collect/k0/n;->j(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;FFF)V

    .line 17
    :cond_3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_4
    :goto_2
    return-void
.end method

.method private final b(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/mapcollect/render/f;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;"
        }
    .end annotation

    .line 1
    const-class v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v1

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->r:Lcn/mucang/android/jiakaoyi/signal/i/a;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-virtual {p1, p2, v1, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->createLayers(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZZ)Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_5

    .line 3
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->c:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/OnlineRoute;->toLocalRoute()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v4

    :goto_0
    if-eqz v4, :cond_4

    .line 4
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v5

    instance-of v5, v5, Lcn/mucang/android/jiakaoyi/signal/i/b;

    if-eqz v5, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 6
    :cond_1
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 7
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v6

    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v8

    invoke-direct {v5, v6, v7, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    invoke-direct {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 10
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v0

    const-string v1, "route.nodes"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    const-string v4, "node"

    .line 12
    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object v4

    const-string v5, "iRenderData.converter"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v1, v4, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->c(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    move-result-object v4

    .line 13
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-interface {v5, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 14
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    const-string p2, "nodeLayerMap.values"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_2

    .line 16
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object p2

    instance-of p2, p2, Lcn/mucang/android/jiakaoyi/signal/i/b;

    if-eqz p2, :cond_5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result p2

    if-eqz p2, :cond_5

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p2

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getConverter()Lcn/mucang/android/jiakaoyi/signal/i/a;

    move-result-object p1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->getZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object p1

    const-string v1, "iRenderData.converter.zero"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/debug/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-virtual {p2, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    return-object v3
.end method

.method private final c(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;
    .locals 5

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v1

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v3

    invoke-direct {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    .line 2
    invoke-static {v0, p2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    .line 3
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getStepId()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getBearing()F

    move-result p1

    const/16 v2, 0x5a

    int-to-float v2, v2

    add-float/2addr p1, v2

    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->route_ic_mark_arrow:I

    invoke-direct {v1, p2, v0, p1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/lang/String;FI)V

    .line 6
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    invoke-direct {p1, p3, v1}, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a$a;)V

    const/16 p2, 0xa

    .line 7
    iput p2, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->a:I

    return-object p1
.end method

.method private final d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "nodeLayerMap.values"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_2

    const-wide v1, 0x4046800000000000L    # 45.0

    .line 3
    invoke-static {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->b(D)F

    move-result v1

    float-to-double v1, v1

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    .line 6
    invoke-virtual {v4, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 7
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 9
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/m;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/m;

    invoke-static {v3, p1}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 p1, 0x0

    .line 10
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    .line 11
    iget-wide v3, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->a:D

    cmpg-double v0, v3, v1

    if-gtz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method private static final e(Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;)I
    .locals 2

    const-string v0, "o1"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "o2"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->a:D

    iget-wide p0, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->a:D

    invoke-static {v0, v1, p0, p1}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method private final f()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->n:Lkotlin/f;

    invoke-interface {v0}, Lkotlin/f;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method private static final i(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 4

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->g()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->g()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-string v1, "viewBinding.hpMapView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b(Lcn/mucang/android/jiakaoyi/mapcollect/render/f;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v1

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 4
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;->getMapBound()Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p1

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->l:F

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    .line 7
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/a;->e:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    .line 8
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float p1, v2

    .line 9
    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_2
    :goto_0
    return-void
.end method

.method private static final k(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Ljava/lang/Boolean;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->j:Z

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapModeSwitch:Landroid/widget/TextView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method private static final l(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Ljava/lang/Boolean;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "it"

    .line 1
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->i:J

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h:Z

    :goto_0
    return-void
.end method

.method private static final m(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->e:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    const/4 v3, 0x0

    .line 3
    iput-boolean v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    instance-of v3, v3, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    if-nez v3, :cond_4

    .line 5
    :cond_1
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->i()Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    const-wide/high16 v5, 0x4069000000000000L    # 200.0

    cmpg-double v7, v3, v5

    if-gez v7, :cond_4

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 7
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    const-string v6, "entry.value"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    .line 8
    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 9
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->r:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-nez v5, :cond_3

    move-object v5, v2

    goto :goto_1

    :cond_3
    invoke-interface {v5, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v5

    :goto_1
    if-eqz v5, :cond_2

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    const-string v6, "entry.key"

    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 11
    iget-wide v6, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v4, v6, v7}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setLat(D)V

    .line 12
    iget-wide v5, v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setLon(D)V

    .line 13
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    goto :goto_0

    .line 14
    :cond_4
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->e:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    :goto_2
    if-nez v0, :cond_5

    goto :goto_3

    .line 15
    :cond_5
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    :goto_3
    if-eqz v2, :cond_7

    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;->c:Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;

    instance-of v0, p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    if-eqz v0, :cond_7

    const-string v0, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.render.mark.MarkRender"

    .line 16
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->e:Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;->d:Z

    .line 18
    :cond_7
    :goto_4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    return-void
.end method

.method private static final n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Landroid/view/View;)V
    .locals 3

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->m:I

    const/4 v0, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {p1, v1}, Lcom/amap/api/maps/MapView;->setVisibility(I)V

    const-string p1, "\u9ad8\u7cbe\u5ea6\u5730\u56fe"

    const/4 v2, 0x1

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapView:Lcom/amap/api/maps/MapView;

    invoke-virtual {p1, v2}, Lcom/amap/api/maps/MapView;->setVisibility(I)V

    const-string p1, "\u666e\u901a\u5730\u56fe"

    const/4 v0, 0x0

    .line 6
    :goto_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->m:I

    .line 7
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapModeSwitch:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    move-result-object p0

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapModeSwitch:Landroid/widget/TextView;

    invoke-virtual {p0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->k(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->m(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Ljava/lang/Boolean;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->l(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->a(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;)V

    return-void
.end method

.method public static synthetic s(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->n(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic t(Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;)I
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;Lcn/mucang/android/jiakaoyi/hpmap/view/q/a;)I

    move-result p0

    return p0
.end method

.method public static synthetic u(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->i(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;Lcn/mucang/android/jiakaoyi/mapcollect/render/f;)V

    return-void
.end method


# virtual methods
.method public final g()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    return-object v0
.end method

.method public final h()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    return-object v0
.end method

.method public final j()V
    .locals 4

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->a()Lcn/mucang/android/jiakaoyi/framework/utils/b0;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/b0;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/n;->a()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapModeSwitch:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 3
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/j;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/j;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setClickViewListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/i;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/i;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setOnClickListener(Lcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->mapModeSwitch:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/l;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->f()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v0

    if-nez v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;

    iget-wide v2, v0, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/h;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;)V

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3ExamDataManager;-><init>(JLcn/mucang/android/jiakaoyi/framework/h/b;)V

    .line 8
    :goto_1
    const-class v0, Lcn/mucang/android/jiakaoyi/mapcollect/render/f;

    .line 9
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    const-string v2, "fragment.viewLifecycleOwner"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->o:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1, v3}, Landroidx/lifecycle/c;->p(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;

    .line 11
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->a:Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object v1

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->p:Landroidx/lifecycle/a0;

    invoke-virtual {v0, v1, v2}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    :goto_2
    return-void
.end method

.method public final v(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nodes"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->r:Lcn/mucang/android/jiakaoyi/signal/i/a;

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 3
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    .line 4
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->Q(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 6
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->r:Lcn/mucang/android/jiakaoyi/signal/i/a;

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    const-string v3, "viewBinding.hpMapView"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->c(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)Lcn/mucang/android/jiakaoyi/k3collect/j0/c/a;

    move-result-object v1

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->q:Ljava/util/HashMap;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;->b:Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;->hpMapView:Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;)V

    goto :goto_1

    :cond_1
    return-void
.end method
