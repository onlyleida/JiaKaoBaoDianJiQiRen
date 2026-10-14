.class final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->l()V
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
    c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceViewModel$startVerify$1"
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
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->label:I

    if-nez v0, :cond_6

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    const-string v2, "\u67e5\u8be2\u6fc0\u6d3b\u72b6\u6001,\u786c\u4ef6\u7f16\u53f7="

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->e()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/a;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/a;-><init>()V

    invoke-static {v2, v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/i/a;->c(Lcn/mucang/jiakaoyi/uilib/i/a;ZILjava/lang/Object;)Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    move-result-object v2

    .line 4
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u6fc0\u6d3b\u4fe1\u606f: status="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getStatus()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", hp="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getHighPrecision()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", device="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDeviceNum()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getStatus()I

    move-result v3

    const/16 v4, 0xa

    if-ne v3, v4, :cond_3

    .line 6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDeviceNum()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 7
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDeviceNum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->v(Ljava/lang/String;)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 9
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/e;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/e;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/i/e;->m()Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;

    move-result-object v2

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u8bbe\u5907\u4fe1\u606f\uff1aagentId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->agentId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "; tenantId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v2, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->tenantId:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ; passEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, v2, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->passEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    sget-object v3, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->isPassEnabled()Z

    move-result v2

    invoke-virtual {v3, v2}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->b(Z)V

    .line 12
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->f()Ljava/lang/String;

    move-result-object v2

    .line 13
    invoke-static {v2}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 14
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->j()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-static {v1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    const-string v2, "\u6fc0\u6d3b\u9875\u9762\u83b7\u53d6\u8bbe\u5907\u72b6\u6001\u6b63\u5e38\uff0c\u6ca1\u6709\u8f66\u578b\uff0c\u9009\u62e9\u8f66\u578b"

    .line 15
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;->j()Landroidx/lifecycle/z;

    move-result-object v2

    const/4 v3, 0x2

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    const-string v2, "\u6fc0\u6d3b\u9875\u9762\u83b7\u53d6\u8bbe\u5907\u72b6\u6001\u6b63\u5e38\uff0c\u8fdb\u5165\u4e3b\u9875"

    .line 17
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    const-string v2, "\u6fc0\u6d3b\u9875\u9762\u83b7\u53d6\u8bbe\u5907\u72b6\u6001\u6b63\u5e38\uff0c\u4f46\u6ca1\u6709\u8bbe\u5907\u53f7\uff01"

    .line 18
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_1

    .line 19
    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*******************\u6fc0\u6d3b\u72b6\u6001\u4e0d\u6b63\u5e38:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getStatus()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "********************"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 20
    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u6fc0\u6d3b\u9875\u9762\u5931\u8d25:"

    invoke-static {v4, v3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    instance-of v3, v2, Ljava/net/SocketTimeoutException;

    if-eqz v3, :cond_4

    const-string v2, "\u7f51\u7edc\u8d85\u65f6\uff0c\u8bf7\u91cd\u8bd5"

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_5

    const-string v2, ""

    .line 23
    :cond_5
    :goto_0
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceViewModel;

    invoke-static {v3, v0, v2, v1, p1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 24
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
