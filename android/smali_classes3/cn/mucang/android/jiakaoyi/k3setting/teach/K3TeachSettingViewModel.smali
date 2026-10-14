.class public final Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010 \n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u001c\u0010\u0015\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\n0\u0017H\u0002J\u001c\u0010\u0018\u001a\u00020\u00192\u0006\u0010\u001a\u001a\u00020\u001b2\u000c\u0010\u001c\u001a\u0008\u0012\u0004\u0012\u00020\u00190\u001dJ\u000e\u0010\u001e\u001a\u00020\u00192\u0006\u0010\u001f\u001a\u00020\nJ*\u0010 \u001a\u0008\u0012\u0004\u0012\u00020\u001b0\t2\u000c\u0010!\u001a\u0008\u0012\u0004\u0012\u00020\n0\t2\u000c\u0010\"\u001a\u0008\u0012\u0004\u0012\u00020\u001b0\tH\u0002J\u000e\u0010#\u001a\n\u0012\u0004\u0012\u00020\u001b\u0018\u00010\tJ\u0006\u0010$\u001a\u00020\u0019J\u0016\u0010%\u001a\u00020\u00192\u000e\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\'\u0018\u00010&R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006R\u001d\u0010\u0007\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u0008\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0014\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\n0\tX\u0082\u000e\u00a2\u0006\u0002\n\u0000R,\u0010\u000e\u001a\u0014\u0012\u0004\u0012\u00020\u0010\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\n0\t0\u000fX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "examSite",
        "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V",
        "getExamSite",
        "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
        "onlineTeachLiveData",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
        "getOnlineTeachLiveData",
        "()Landroidx/lifecycle/MutableLiveData;",
        "sourceTeachEntities",
        "teachMap",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "getTeachMap",
        "()Ljava/util/Map;",
        "setTeachMap",
        "(Ljava/util/Map;)V",
        "createSourceTeachData",
        "srcEntities",
        "",
        "deleteTeachItem",
        "",
        "data",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
        "callback",
        "Lkotlin/Function0;",
        "deleteTeachStep",
        "selectK3TeachEntity",
        "findModifyData",
        "sourceTeachData",
        "allItems",
        "getModifyData",
        "loadOnlineTeachData",
        "save",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "",
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
.field private final c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field private final d:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 1

    const-string v0, "examSite"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    .line 2
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->d:Landroidx/lifecycle/z;

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->e:Ljava/util/List;

    .line 4
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->f:Ljava/util/Map;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->k(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->e:Ljava/util/List;

    return-object p0
.end method

.method private final k(Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/K3TeachDataParser;->transformTeachData(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    const-string v1, "getInstance().transformTeachData(srcEntities)"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 4
    iget v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->stepId:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-nez v3, :cond_0

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->f:Ljava/util/Map;

    const-string v5, "step"

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v2, "teachEntity"

    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->d()Ljava/util/List;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 11
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->f:Ljava/util/Map;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v2, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    :cond_2
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->f:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->teachNum:I

    if-nez v5, :cond_5

    const/4 v5, 0x1

    goto :goto_2

    :cond_5
    const/4 v5, 0x0

    :goto_2
    if-eqz v5, :cond_4

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    if-nez v4, :cond_7

    .line 15
    new-instance v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iget v5, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->zhStepName:Ljava/lang/String;

    invoke-direct {v3, v4, v5, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;-><init>(Ljava/util/List;ILjava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_7
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    :cond_8
    return-object v0
.end method

.method private final n(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 3
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 4
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    const-string v2, "it.items"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_2
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 8
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    :goto_2
    if-eqz v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 9
    :cond_4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_5
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 10
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    invoke-static {v5, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    goto :goto_4

    :cond_7
    const/4 v3, 0x0

    :goto_4
    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 11
    invoke-static {v1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 12
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_8
    return-object p1
.end method


# virtual methods
.method public final l(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lkotlin/jvm/b/a;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;

    invoke-direct {v6, p1, p0, p2, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachItem$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final m(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;)V
    .locals 9

    const-string v0, "selectK3TeachEntity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;

    invoke-direct {v6, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$deleteTeachStep$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final o()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-object v0
.end method

.method public final p()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->d:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->e:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    if-nez v0, :cond_0

    goto/16 :goto_5

    .line 3
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;

    .line 5
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    if-eqz v5, :cond_1

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_1

    .line 6
    iget-object v5, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    const-string v6, "it.items"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    const/16 v8, 0xa

    invoke-static {v5, v8}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    add-int/lit8 v9, v4, 0x1

    if-ltz v4, :cond_2

    .line 9
    check-cast v8, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 10
    iput v4, v8, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->position:I

    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    invoke-interface {v7, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v9

    goto :goto_1

    .line 11
    :cond_2
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v2

    .line 12
    :cond_3
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;->items:Ljava/util/List;

    invoke-static {v3, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 13
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 15
    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->id:Ljava/lang/Long;

    if-nez v5, :cond_6

    const/4 v5, 0x1

    goto :goto_3

    :cond_6
    const/4 v5, 0x0

    :goto_3
    if-eqz v5, :cond_5

    invoke-interface {v0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_7
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->e:Ljava/util/List;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v2, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->n(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 17
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_8
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;

    .line 18
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->variables:Ljava/util/List;

    if-eqz v4, :cond_9

    .line 19
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->value:Ljava/lang/String;

    .line 20
    :cond_9
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorVariables:Ljava/util/List;

    if-eqz v4, :cond_8

    .line 21
    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;->errorValue:Ljava/lang/String;

    goto :goto_4

    .line 22
    :cond_a
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 24
    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object v2

    :cond_b
    :goto_5
    const-string v0, "\u6ca1\u6709\u6559\u5b66\u6570\u636e"

    .line 25
    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-object v2
.end method

.method public final q()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->d:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final r()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/K3TeachEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;->f:Ljava/util/Map;

    return-object v0
.end method

.method public final s()V
    .locals 8

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->i()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "getCurrentActivity()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;-><init>(Landroid/content/Context;)V

    const-string v1, "\u52a0\u8f7d\u8def\u7ebf\u6570\u636e"

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;->b(Ljava/lang/String;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v2

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v3

    new-instance v5, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;

    const/4 v1, 0x0

    invoke-direct {v5, p0, v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$loadOnlineTeachData$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/framework/base/dialog/t;Lkotlin/coroutines/c;)V

    const/4 v4, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final t(Lcn/mucang/android/jiakaoyi/framework/h/b;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;

    invoke-direct {v6, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel$save$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/teach/K3TeachSettingViewModel;Lcn/mucang/android/jiakaoyi/framework/h/b;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
