.class final Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->q(Z)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.order.viewmodel.LightViewModel$loadAssembles$1"
    f = "LightViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $firstLoad:Z

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;ZLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;",
            "Z",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->$firstLoad:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 2
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->$firstLoad:Z

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;ZLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;-><init>()V

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->i(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/z1;->v(Ljava/lang/String;)Lcn/mucang/android/core/api/d/b;

    move-result-object v2

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v2}, Lcn/mucang/android/core/api/d/b;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "response.cursor"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->j(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v2}, Lcn/mucang/android/core/api/d/b;->c()Z

    move-result v4

    invoke-static {v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->k(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Z)V

    .line 6
    iget-boolean v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->$firstLoad:Z

    if-eqz v3, :cond_0

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v3

    invoke-virtual {v2}, Lcn/mucang/android/core/api/d/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/jiakaoyi/uilib/model/f;->u(Ljava/util/List;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->o()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v3

    invoke-virtual {v2}, Lcn/mucang/android/core/api/d/b;->b()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcn/mucang/jiakaoyi/uilib/model/f;->q(Ljava/util/List;)V

    .line 9
    :goto_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-static {v2, v1, v0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception v2

    .line 10
    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 11
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->$firstLoad:Z

    if-eqz v2, :cond_1

    .line 12
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-static {v2, v1, v0, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    :cond_1
    :goto_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->l(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Z)V

    .line 14
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 15
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel$loadAssembles$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;->l(Lcn/mucang/android/jiakaoyi/k3setting/order/viewmodel/LightViewModel;Z)V

    throw p1

    .line 16
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
