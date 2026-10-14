.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u000f\u001a\u00020\u000b2\u0006\u0010\u0003\u001a\u00020\u0004J\u000e\u0010\u0010\u001a\u00020\u000b2\u0006\u0010\u000e\u001a\u00020\u0007J\u000e\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u0013R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "assembleId",
        "",
        "orderList",
        "Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "getOrderList",
        "()Lcn/mucang/jiakaoyi/uilib/model/ListLiveData;",
        "addOrder",
        "",
        "position",
        "",
        "model",
        "loadOrders",
        "removeOrder",
        "save",
        "name",
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
.field private c:J

.field private final d:Lcn/mucang/jiakaoyi/uilib/model/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
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

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;)J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->c:J

    return-wide v0
.end method


# virtual methods
.method public final j(ILcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->getLog()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u6dfb\u52a0\u706f\u5149\u7ec4\u5408\u6307\u4ee4 "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/model/f;->p(ILjava/lang/Object;)V

    return-void
.end method

.method public final k()Lcn/mucang/jiakaoyi/uilib/model/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/jiakaoyi/uilib/model/f<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    return-object v0
.end method

.method public final l(J)V
    .locals 9

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->c:J

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 2
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v3

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel$loadOrders$1;

    invoke-direct {v6, p0, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel$loadOrders$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;JLkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final m(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 3

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->getLog()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\u5220\u9664\u706f\u5149\u7ec4\u5408\u6307\u4ee4 "

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;->d:Lcn/mucang/jiakaoyi/uilib/model/f;

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/f;->t(Ljava/lang/Object;)V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 9

    const-string v0, "name"

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

    new-instance v6, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel$save$1;

    invoke-direct {v6, p0, p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel$save$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightAddViewModel;Ljava/lang/String;Lkotlin/coroutines/c;)V

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
