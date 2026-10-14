.class final Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->j(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;)V
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
    c = "cn.mucang.jiakaoyi.uilib.splash.CheckViewModel$deviceCanUse$1"
    f = "CheckViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;",
            "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;-><init>(Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->$model:Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/ActivateModel;->getDeviceNum()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/r;->v(Ljava/lang/String;)V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 4
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/a;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/i/a;-><init>()V

    invoke-virtual {p1, v0}, Lcn/mucang/jiakaoyi/uilib/i/a;->d(Z)Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;

    move-result-object p1

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bbe\u5907\u4fe1\u606f\uff1aagentId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->agentId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "; tenantId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->tenantId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " ; passEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p1, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->passEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->a:Lcn/mucang/android/jiakaoyi/framework/utils/l0;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/model/DeviceAgent;->isPassEnabled()Z

    move-result p1

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/framework/utils/l0;->b(Z)V

    .line 7
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->f()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->k()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel$deviceCanUse$1;->this$0:Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/splash/CheckViewModel;->k()Landroidx/lifecycle/z;

    move-result-object p1

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 12
    invoke-static {p1}, Lcn/mucang/android/core/utils/t;->g(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "/api/open/device/get-paas-info.htm \u62a5\u9519\uff1a"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
