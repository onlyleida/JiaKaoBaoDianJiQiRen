.class final Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1;->invoke()V
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
    c = "cn.mucang.jiakaoyi.uilib.activate.BindDeviceActivity$initViews$2$1$1"
    f = "BindDeviceActivity.kt"
    l = {
        0xa2,
        0xaa
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $loadingDialog:Lcn/mucang/android/account/ui/a;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/account/ui/a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/account/ui/a;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->$loadingDialog:Lcn/mucang/android/account/ui/a;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->$loadingDialog:Lcn/mucang/android/account/ui/a;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;-><init>(Lcn/mucang/android/account/ui/a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    nop

    goto :goto_1

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/activate/h;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/activate/h;-><init>()V

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/activate/h;->m()Z

    move-result p1

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1$1;

    if-eqz p1, :cond_3

    const/4 p1, 0x1

    goto :goto_0

    :cond_3
    const/4 p1, 0x0

    :goto_0
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->$loadingDialog:Lcn/mucang/android/account/ui/a;

    invoke-direct {v5, p1, v6, v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1$1;-><init>(ZLcn/mucang/android/account/ui/a;Lkotlin/coroutines/c;)V

    iput v4, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->label:I

    invoke-static {v1, v5, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p1, v0, :cond_5

    return-object v0

    .line 6
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1$2;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->$loadingDialog:Lcn/mucang/android/account/ui/a;

    invoke-direct {v1, v4, v2}, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1$2;-><init>(Lcn/mucang/android/account/ui/a;Lkotlin/coroutines/c;)V

    iput v3, p0, Lcn/mucang/jiakaoyi/uilib/activate/BindDeviceActivity$initViews$2$1$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_2
    const-string p1, "\u7ed1\u5b9a\u5931\u8d25,\u8bf7\u91cd\u8bd5"

    .line 7
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    :cond_5
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
