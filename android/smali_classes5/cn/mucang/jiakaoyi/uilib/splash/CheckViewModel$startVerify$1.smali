.class final Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->m(Ljava/lang/String;)V
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
    c = "cn.mucang.jiakaoyi.uilib.splash.CheckViewModel$startVerify$1"
    f = "CheckViewModel.kt"
    l = {
        0x51
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $hardwareNumber:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->$hardwareNumber:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->$hardwareNumber:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;-><init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception p1

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/s/g;->a:Lcn/mucang/jiakaoyi/uilib/s/g;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/s/g;->c()Lcn/mucang/jiakaoyi/uilib/model/DeviceSettingInfo;

    .line 5
    sget-object p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->a:Lcn/mucang/jiakaoyi/sundial/client/SundialClient;

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;-><init>()V

    .line 6
    invoke-virtual {v1, v3}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->c(Z)V

    .line 7
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$a;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$a;-><init>()V

    invoke-virtual {v1, v4}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;->e(Lcn/mucang/jiakaoyi/sundial/client/o;)V

    .line 8
    sget-object v4, Lkotlin/v;->a:Lkotlin/v;

    .line 9
    invoke-virtual {p1, v1}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->u(Lcn/mucang/jiakaoyi/sundial/client/SundialClient$a;)V

    const-wide/16 v4, 0x1f4

    .line 10
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V

    .line 11
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "\u68c0\u6d4b\u6fc0\u6d3b\u72b6\u6001\uff1a"

    .line 12
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->$hardwareNumber:Ljava/lang/String;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 13
    :cond_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->l()Landroidx/lifecycle/z;

    move-result-object p1

    const-string v1, "\u6b63\u5728\u67e5\u8be2\u8bbe\u5907\u72b6\u6001..."

    invoke-virtual {p1, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 14
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/a;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/i/a;-><init>()V

    invoke-virtual {p1, v3}, Lcn/mucang/jiakaoyi/uilib/i/a;->b(Z)Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    move-result-object p1

    const-string v1, "\u83b7\u53d6\u8bbe\u5907\u72b6\u6001\u7ed3\u679c\uff1a"

    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson/JSON;->toJSON(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v1, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 16
    sget-object v1, Lcn/mucang/jiakaoyi/uilib/s/h;->a:Lcn/mucang/jiakaoyi/uilib/s/h;

    invoke-virtual {v1, p1}, Lcn/mucang/jiakaoyi/uilib/s/h;->a(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;)V

    .line 17
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-direct {v4, p1, v5, v2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1$2;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_8

    return-object v0

    .line 18
    :goto_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$startVerify$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    const/4 v1, 0x0

    const-string v4, "\u67e5\u8be2\u8bbe\u5907\u72b6\u6001\u5931\u8d25"

    invoke-static {v0, v1, v4, v3, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 19
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcn/mucang/android/core/api/exception/HttpException;

    if-nez v0, :cond_3

    instance-of v0, p1, Lcn/mucang/android/core/api/exception/InternalException;

    if-eqz v0, :cond_7

    .line 20
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const v1, 0xff1a

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_4

    move-object v1, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-nez v1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 21
    :cond_7
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/q0;->d(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "\u67e5\u8be2\u8bbe\u5907\u72b6\u6001\uff1a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 22
    :cond_8
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
