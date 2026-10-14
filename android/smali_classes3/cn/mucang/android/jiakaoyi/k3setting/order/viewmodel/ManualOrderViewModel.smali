.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;
.super Landroidx/lifecycle/j0;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u000e\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\r\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cJ\u000e\u0010\u000e\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cR\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;",
        "Landroidx/lifecycle/ViewModel;",
        "()V",
        "itemList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;",
        "getItemList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "loadData",
        "",
        "siteId",
        "",
        "reset",
        "saveExamSiteConfig",
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
.field private final a:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/j0;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a:Landroidx/lifecycle/z;

    return-void
.end method


# virtual methods
.method public final a()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final b(J)V
    .locals 6

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v0

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel$loadData$1;

    const/4 v2, 0x0

    invoke-direct {v3, p1, p2, p0, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel$loadData$1;-><init>(JLcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;Lkotlin/coroutines/c;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final c(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a:Landroidx/lifecycle/z;

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/g;->f()Ljava/util/List;

    move-result-object v2

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    invoke-direct {v5, v4, v1}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V

    invoke-interface {v3, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v0, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_3

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_2

    goto :goto_2

    .line 8
    :cond_2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;

    .line 9
    invoke-virtual {v2, v1}, Lcn/mucang/jiakaoyi/uilib/model/K3OrderItem;->setShowInRoute(Z)V

    goto :goto_1

    .line 10
    :cond_3
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 11
    :goto_3
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->d(J)V

    return-void
.end method

.method public final d(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/ManualOrderViewModel;->a:Landroidx/lifecycle/z;

    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/g;->a:Lcn/mucang/jiakaoyi/uilib/g;

    invoke-virtual {v1, p1, p2, v0}, Lcn/mucang/jiakaoyi/uilib/g;->h(JLjava/util/List;)V

    goto :goto_0

    :cond_0
    const-string p1, "saveManualOrderConfig \u4e3anull"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
