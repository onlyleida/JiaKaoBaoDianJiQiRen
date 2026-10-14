.class final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->k()V
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
    c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceViewModel$loadBindInfo$1"
    f = "BindDeviceViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/activate/h;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/activate/h;-><init>()V

    .line 3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/activate/h;->n()Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceInfo;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->i()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 5
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    const/4 v2, 0x3

    invoke-static {v1, p1, v0, v2, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 6
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "\u83b7\u53d6\u4e8c\u7ef4\u7801\u5931\u8d25: "

    invoke-static {v3, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    instance-of v2, v1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v2, :cond_0

    .line 8
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v1, "\u670d\u52a1\u5668\u5f02\u5e38"

    goto :goto_0

    :cond_0
    const-string v1, "\u7f51\u7edc\u8bf7\u6c42\u5f02\u5e38"

    .line 9
    :cond_1
    :goto_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$loadBindInfo$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    const/4 v3, 0x1

    invoke-static {v2, p1, v1, v3, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
