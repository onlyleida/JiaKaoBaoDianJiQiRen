.class final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->t()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/i0;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\n\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u0001*\u00020\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/CoroutineScope;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel$saveAssembles$1"
    f = "LightViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/i0;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    const-string v0, "\u4fdd\u5b58\u706f\u5149\u7ec4\u5408\u6392\u5e8f "

    const-string v1, "\u4fdd\u5b58\u5931\u8d25"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->label:I

    if-nez v2, :cond_3

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;-><init>()V

    .line 3
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const-string v4, ""

    iput-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    if-nez v4, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;

    .line 6
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightAssembleModel;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v5, 0x2c

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    .line 7
    :cond_1
    :goto_1
    iget-object v4, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v2, v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->z(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    iget-object v2, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 9
    sget-object v2, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    iget-object v3, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    const-string v2, "\u4fdd\u5b58\u6210\u529f"

    invoke-virtual {v0, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    goto :goto_2

    .line 11
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 12
    :catch_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$saveAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 13
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
