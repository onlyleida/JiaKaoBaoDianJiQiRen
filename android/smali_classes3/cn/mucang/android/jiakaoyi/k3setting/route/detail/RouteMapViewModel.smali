.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000p\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u000b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010 \n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u00a2\u0006\u0002\u0010\u0006J\u001e\u0010%\u001a\u00020&2\u0006\u0010\'\u001a\u00020\u001b2\u0006\u0010(\u001a\u00020)2\u0006\u0010\t\u001a\u00020\u0008J\u001e\u0010*\u001a\u00020&2\u000c\u0010+\u001a\u0008\u0012\u0004\u0012\u00020\u001b0,2\u0006\u0010\'\u001a\u00020\u001bH\u0002J\u0016\u0010-\u001a\u00020&2\u0006\u0010.\u001a\u00020/2\u0006\u0010(\u001a\u00020)J\u0018\u00100\u001a\u00020&2\u0008\u00101\u001a\u0004\u0018\u00010$2\u0006\u0010\u0013\u001a\u00020\u0014J\u000e\u00102\u001a\u00020&2\u0006\u00103\u001a\u000204J\u0018\u00102\u001a\u00020&2\u0006\u0010#\u001a\u00020$2\u0006\u00105\u001a\u00020\u0014H\u0002R\u000e\u0010\u0007\u001a\u00020\u0008X\u0082D\u00a2\u0006\u0002\n\u0000R\u001a\u0010\t\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u000e\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u000b\"\u0004\u0008\u0010\u0010\rR\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u000e\u0010\u0013\u001a\u00020\u0014X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\u00170\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0019R\u0017\u0010\u001a\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u0019R\u0017\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001e\u0010\u0019R\u001d\u0010\u001f\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001b0 0\u0016\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008!\u0010\u0019R\u000e\u0010\"\u001a\u00020\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010#\u001a\u0004\u0018\u00010$X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u00066"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "route",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V",
        "DEFAULT_DISTANCE",
        "",
        "distance",
        "getDistance",
        "()I",
        "setDistance",
        "(I)V",
        "dottingDistance",
        "getDottingDistance",
        "setDottingDistance",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "isPublic",
        "",
        "loadingState",
        "Landroidx/lifecycle/MutableLiveData;",
        "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
        "getLoadingState",
        "()Landroidx/lifecycle/MutableLiveData;",
        "newMarkNode",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
        "getNewMarkNode",
        "newNode",
        "getNewNode",
        "nodeList",
        "",
        "getNodeList",
        "nodeNum",
        "routeName",
        "",
        "addBrakePoint",
        "",
        "node",
        "location",
        "Landroid/location/Location;",
        "addNode",
        "list",
        "",
        "newRouteNode",
        "orderItem",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "saveParam",
        "name",
        "saveRoute",
        "fragmentManager",
        "Landroidx/fragment/app/FragmentManager;",
        "canPublic",
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
.field private final a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private final b:I

.field private c:I

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:I

.field private final g:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;"
        }
    .end annotation
.end field

.field private final j:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation
.end field

.field private k:I


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V
    .locals 1

    const-string v0, "examSite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    const/16 p1, 0x32

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->b:I

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->e:Z

    .line 5
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g:Landroidx/lifecycle/z;

    .line 6
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->h:Landroidx/lifecycle/z;

    .line 7
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->i:Landroidx/lifecycle/z;

    .line 8
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->j:Landroidx/lifecycle/z;

    .line 9
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->k:I

    if-nez p2, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->j()Landroidx/lifecycle/z;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    :goto_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/l;

    invoke-direct {p1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/l;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/n0;->a(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final a(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V
    .locals 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/l;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/l;-><init>()V

    const-string v1, "dadianjulimin"

    .line 2
    const-class v2, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    .line 3
    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/i/l;->d(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/RemoteValueModel;->getValue()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_2

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->b:I

    goto :goto_1

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_1
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->q(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public static final synthetic b(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->o(Ljava/lang/String;Z)V

    return-void
.end method

.method private final d(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->h:Landroidx/lifecycle/z;

    invoke-virtual {v0, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g:Landroidx/lifecycle/z;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->a(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    return-void
.end method

.method private final o(Ljava/lang/String;Z)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u4fdd\u5b58\u8def\u7ebf\u8bf7\u6dfb\u52a0\u81f3\u5c11\u4e00\u4e2a\u9879\u76ee"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 3
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->m(Ljava/lang/String;Z)V

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->j:Landroidx/lifecycle/z;

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Loading:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 5
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;

    const/4 v0, 0x0

    invoke-direct {v5, p1, p2, p0, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$2;-><init>(Ljava/lang/String;ZLcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;Lkotlin/coroutines/c;)V

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method


# virtual methods
.method public final c(Lcn/mucang/jiakaoyi/uilib/model/RouteNode;Landroid/location/Location;I)V
    .locals 5

    const-string v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpg-double v4, v0, v2

    if-lez v4, :cond_3

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v0

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeLat(D)V

    .line 3
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeLon(D)V

    .line 4
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result p2

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeBearing(F)V

    int-to-double p2, p3

    .line 5
    invoke-virtual {p1, p2, p3}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBrakeDistance(D)V

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g:Landroidx/lifecycle/z;

    invoke-virtual {p2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    if-nez p2, :cond_1

    const/4 p2, 0x0

    goto :goto_0

    :cond_1
    invoke-static {p2}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p2

    :goto_0
    if-nez p2, :cond_2

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    :cond_2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->i:Landroidx/lifecycle/z;

    invoke-virtual {p3, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g:Landroidx/lifecycle/z;

    invoke-virtual {p1, p2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final e()I
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->f:I

    return v0
.end method

.method public final f()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->a:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method public final g()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->j:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final h()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->i:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final i()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->h:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final j()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final l(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/location/Location;)V
    .locals 13

    const-string v0, "orderItem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "location"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;-><init>()V

    .line 2
    iget v1, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setStepId(I)V

    .line 3
    iget-wide v1, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->id:J

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setOrderId(J)V

    .line 4
    iget-object p1, p1, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setAlias(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setLat(D)V

    .line 6
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setLon(D)V

    .line 7
    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setBearing(F)V

    .line 8
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    const-string p1, "randomUUID().toString()"

    invoke-static {v1, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "-"

    const-string v3, ""

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlin/text/l;->x(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setUid(Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->g:Landroidx/lifecycle/z;

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lkotlin/collections/s;->O0(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 11
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->c:I

    add-int/2addr p2, v2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->c:I

    invoke-virtual {v0, p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setId(I)V

    .line 12
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->d(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    goto :goto_1

    .line 13
    :cond_2
    invoke-static {p1}, Lkotlin/collections/s;->o0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;

    new-array v12, v2, [F

    .line 14
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLat()D

    move-result-wide v3

    .line 15
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->getLon()D

    move-result-wide v5

    .line 16
    invoke-virtual {p2}, Landroid/location/Location;->getLatitude()D

    move-result-wide v7

    .line 17
    invoke-virtual {p2}, Landroid/location/Location;->getLongitude()D

    move-result-wide v9

    move-object v11, v12

    .line 18
    invoke-static/range {v3 .. v11}, Landroid/location/Location;->distanceBetween(DDDD[F)V

    .line 19
    invoke-static {v12}, Lkotlin/collections/k;->t([F)F

    move-result p2

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->k:I

    int-to-float v1, v1

    cmpg-float p2, p2, v1

    if-gez p2, :cond_3

    .line 20
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u4e24\u4e2a\u6253\u70b9\u7684\u8ddd\u79bb\u5fc5\u987b\u5927\u4e8e"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->k:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x7c73

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->k:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    goto :goto_1

    .line 22
    :cond_3
    iget p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->c:I

    add-int/2addr p2, v2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->c:I

    invoke-virtual {v0, p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteNode;->setId(I)V

    .line 23
    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->d(Ljava/util/List;Lcn/mucang/jiakaoyi/uilib/model/RouteNode;)V

    :goto_1
    return-void
.end method

.method public final m(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->d:Ljava/lang/String;

    .line 2
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->e:Z

    .line 3
    new-instance v0, Lkotlin/Pair;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Landroidx/fragment/app/FragmentManager;)V
    .locals 2

    const-string v0, "fragmentManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->d:Ljava/lang/String;

    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/t;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/t;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel$saveRoute$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;)V

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/t;->B(Lkotlin/jvm/b/p;)V

    const-string v1, ""

    .line 4
    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/c;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->d:Ljava/lang/String;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->e:Z

    invoke-direct {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->o(Ljava/lang/String;Z)V

    :goto_0
    return-void
.end method

.method public final p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->f:I

    return-void
.end method

.method public final q(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/detail/RouteMapViewModel;->k:I

    return-void
.end method
