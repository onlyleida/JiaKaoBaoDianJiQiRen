.class public final Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010$\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\r\u001a\u00020\u000eH\u0007J\u000e\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0007J\u000e\u0010\u0012\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u0010H\u0007J\u000e\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00140\u0010H\u0007J\u0014\u0010\u0015\u001a\u000e\u0012\u0004\u0012\u00020\u0017\u0012\u0004\u0012\u00020\u00170\u0016H\u0007J\u0008\u0010\u0018\u001a\u00020\u000eH\u0007J\u0018\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u001a\u001a\u00020\u00172\u0006\u0010\u001b\u001a\u00020\u001cH\u0007J \u0010\u001d\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\u00102\u0006\u0010\u001e\u001a\u00020\u001f2\u0006\u0010 \u001a\u00020!H\u0007R\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007R\u0017\u0010\u0008\u001a\u0008\u0012\u0004\u0012\u00020\t0\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u0007R\u0014\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\""
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;",
        "",
        "()V",
        "assembleList",
        "",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
        "getAssembleList",
        "()Ljava/util/List;",
        "lightList",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "getLightList",
        "routeList",
        "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
        "ensureSelectRoute",
        "",
        "getUnityLightAssembleList",
        "",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;",
        "getUnityLightOrderList",
        "getUnityRouteList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;",
        "getUnityRouteMap",
        "",
        "",
        "loadData",
        "unitySelectRoute",
        "routeId",
        "isExam",
        "",
        "unitySetPlayMode",
        "mode",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;",
        "config",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;

.field private static final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->b:Ljava/util/List;

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a()Ljava/util/List;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d:Ljava/util/List;

    return-object v0
.end method

.method public static final b()V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->b()Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v1

    :goto_1
    const-string v0, "ThisIsCommonRouteId"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 4
    invoke-static {v0}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/k3setting/b;->e(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    :cond_3
    return-void
.end method

.method public static final e()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;-><init>()V

    .line 6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getId()J

    move-result-wide v4

    long-to-int v2, v4

    iput v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;->id:I

    .line 8
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method public static final f()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->b:Ljava/util/List;

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    .line 5
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;-><init>()V

    .line 6
    iget v4, v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    if-nez v4, :cond_0

    .line 7
    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_random_play:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    :cond_0
    const/16 v5, 0x14

    if-lt v4, v5, :cond_1

    .line 8
    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_last_index:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 9
    :cond_1
    sget-object v4, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_x_index:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.teachbase_x_index)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget v8, v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v5

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "java.lang.String.format(format, *args)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    :goto_1
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    iput-object v5, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;->name:Ljava/lang/String;

    .line 11
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;->desc:Ljava/lang/String;

    .line 12
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->icon:Ljava/lang/String;

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;->icon:Ljava/lang/String;

    .line 13
    iget v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->examProgramId:I

    iput v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightDataModel$LightDataItemModel;->id:I

    .line 14
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public static final g()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;-><init>()V

    const-string v2, "ThisIsCommonRouteId"

    .line 3
    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->id:Ljava/lang/String;

    .line 4
    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_select_route:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->title:Ljava/lang/String;

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->id:Ljava/lang/String;

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->selected:Z

    .line 6
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 7
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    .line 10
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;-><init>()V

    .line 11
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->id:Ljava/lang/String;

    .line 12
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->title:Ljava/lang/String;

    .line 13
    sget-object v4, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_distance_order:I

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "getString(R.string.teachbase_distance_order)"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x2

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getDistance()I

    move-result v8

    invoke-static {v8}, Lcn/mucang/android/jiakaoyi/framework/utils/y;->b(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->getNodes()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    :goto_1
    aput-object v2, v6, v7

    invoke-static {v6, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    invoke-static {v4, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "java.lang.String.format(format, *args)"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->desc:Ljava/lang/String;

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->c()Ljava/lang/String;

    move-result-object v2

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->id:Ljava/lang/String;

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/RouteDataModel$RouteItemModel;->selected:Z

    .line 15
    sget-object v2, Lkotlin/v;->a:Lkotlin/v;

    .line 16
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static final h()Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_exam_route:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_no_exam_route)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "ThisIsCommonRouteId"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    .line 5
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v3

    const-string v4, "it.routeId"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "it.routeName"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static synthetic i(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->l(Ljava/lang/String;Z)V

    return-void
.end method

.method public static final j()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->OpenK3:Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/j0;->b()Lkotlinx/coroutines/i0;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public static final k(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "routeId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/a;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/a;-><init>(Ljava/lang/String;Z)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final l(Ljava/lang/String;Z)V
    .locals 3

    const-string v0, "$routeId"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ThisIsCommonRouteId"

    .line 1
    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;->createCommonRoute(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/b;->e(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    .line 4
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3setting/b;->e(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    :cond_2
    :goto_0
    if-eqz p1, :cond_3

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->e()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/K3ExamPage;->g()V

    goto :goto_1

    .line 7
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/b1/e/a0;->g()Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/k3/l;->g()V

    :goto_1
    return-void
.end method

.method public static final m(Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation

    const-string v0, "mode"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "config"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;->id:I

    const/4 v1, 0x0

    if-lez v0, :cond_1

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getId()J

    move-result-wide v2

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;->id:I

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 5
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getLights()Ljava/util/List;

    move-result-object p0

    return-object p0

    .line 6
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;->type:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 7
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->b:Ljava/util/List;

    return-object p0

    :cond_2
    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 8
    iget p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/LightPlayModel;->mode:I

    if-ne p0, v2, :cond_3

    .line 9
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->b:Ljava/util/List;

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightRandomCreator;->buildRandomLights(Ljava/util/List;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3DengGuangStepConfig;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 10
    :cond_3
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    xor-int/2addr p1, v2

    if-eqz p1, :cond_4

    .line 11
    sget-object p1, Lkotlin/random/Random;->Default:Lkotlin/random/Random$Default;

    invoke-static {p0, p1}, Lkotlin/collections/s;->z0(Ljava/util/Collection;Lkotlin/random/Random;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getLights()Ljava/util/List;

    :cond_4
    :goto_0
    return-object v1
.end method


# virtual methods
.method public final c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c:Ljava/util/List;

    return-object v0
.end method

.method public final d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->b:Ljava/util/List;

    return-object v0
.end method
