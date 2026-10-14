.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00050\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t0\u000fJ\u0016\u0010\u0011\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0005J\u0018\u0010\u0013\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\tJ*\u0010\u0017\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u0018\u001a\u00020\u00052\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0010\u0012\u0004\u0012\u00020\t0\u000fR\u0017\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "itemList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "getItemList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "batchSave",
        "",
        "ruleExamSiteId",
        "",
        "items",
        "",
        "callback",
        "Lkotlin/Function1;",
        "",
        "delete",
        "item",
        "loadOrders",
        "displayStatus",
        "",
        "loadStandardData",
        "save",
        "orderItem",
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
.field private final c:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/model/f;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-void
.end method

.method public static synthetic m(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;JIILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->l(JI)V

    return-void
.end method


# virtual methods
.method public final i(JLjava/util/List;Lkotlin/jvm/b/l;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "items"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v6, p4

    invoke-static {v6, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v8, p0

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v9

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v10

    new-instance v12, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$batchSave$1;

    const/4 v7, 0x0

    move-object v1, v12

    move-wide/from16 v2, p1

    move-object v5, p0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$batchSave$1;-><init>(JLjava/util/List;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)V

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final j(JLcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 11

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

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

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$delete$1;

    const/4 v10, 0x0

    move-object v5, v0

    move-object v6, p3

    move-wide v7, p1

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$delete$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;JLcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final k()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;->c:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final l(JI)V
    .locals 11

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadOrders$1;

    const/4 v10, 0x0

    move-object v5, v0

    move-wide v6, p1

    move v8, p3

    move-object v9, p0

    invoke-direct/range {v5 .. v10}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadOrders$1;-><init>(JILcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v6, v0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n()V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;

    const/4 v2, 0x0

    invoke-direct {v3, p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$loadStandardData$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final o(JLcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Lkotlin/jvm/b/l;)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "orderItem"

    move-object/from16 v4, p3

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    move-object/from16 v5, p4

    invoke-static {v5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x2

    move-object v8, p0

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 2
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v9

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v10

    new-instance v12, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$save$1;

    const/4 v7, 0x0

    move-object v1, v12

    move-wide/from16 v2, p1

    move-object v6, p0

    invoke-direct/range {v1 .. v7}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel$save$1;-><init>(JLcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Lkotlin/jvm/b/l;Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/K3RouteStepViewModel;Lkotlin/coroutines/c;)V

    const/4 v11, 0x0

    const/4 v13, 0x2

    const/4 v14, 0x0

    invoke-static/range {v9 .. v14}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
