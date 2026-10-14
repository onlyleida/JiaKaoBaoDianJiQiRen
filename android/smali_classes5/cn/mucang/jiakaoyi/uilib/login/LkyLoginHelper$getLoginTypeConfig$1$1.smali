.class final Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Lkotlin/Result<",
        "+",
        "Lkotlin/v;",
        ">;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0018\u0002\u0010\u0000\u001a\u0008\u0012\u0004\u0012\u00020\u00020\u0001*\u00020\u0003H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "Lkotlin/Result;",
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
    c = "cn.mucang.jiakaoyi.uilib.login.LkyLoginHelper$getLoginTypeConfig$1$1"
    f = "LkyLoginHelper.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $list:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;",
            ">;>;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;",
            ">;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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
            "Lkotlin/Result<",
            "Lkotlin/v;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/login/LkyLoginHelper$getLoginTypeConfig$1$1;->$list:Lkotlin/jvm/internal/Ref$ObjectRef;

    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/login/o/c;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/c;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/login/o/c;->m()Ljava/util/List;

    move-result-object v0

    const-string v1, "\u670d\u52a1\u5668\u914d\u7f6e\u767b\u5f55\u65b9\u5f0f\uff1a"

    .line 4
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginItem;

    .line 7
    sget-object v3, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->Companion:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$a;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginItem;->getLoginMethod()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType$a;->a(Ljava/lang/String;)Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;

    invoke-direct {v4}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;-><init>()V

    .line 9
    invoke-virtual {v4, v3}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->setLoginMethod(Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;)V

    .line 10
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginItem;->getEnabled()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->setEnabled(Z)V

    .line 11
    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;

    .line 14
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->getLoginMethod()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    move-result-object v4

    sget-object v5, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->QR_CODE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eq v4, v5, :cond_4

    .line 15
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->getLoginMethod()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    move-result-object v4

    sget-object v5, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->MOBILE_OR_IDCARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eq v4, v5, :cond_4

    .line 16
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->getLoginMethod()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    move-result-object v4

    sget-object v5, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->ID_CARD:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-eq v4, v5, :cond_4

    .line 17
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/login/model/ConfigLoginType;->getLoginMethod()Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    move-result-object v3

    sget-object v4, Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;->FACE:Lcn/mucang/jiakaoyi/uilib/login/model/LoginType;

    if-ne v3, v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v3, 0x1

    :goto_3
    if-eqz v3, :cond_2

    .line 18
    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_5
    iput-object v0, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const-string p1, "\u914d\u7f6e\u767b\u5f55\u65b9\u5f0f\u8fc7\u6ee4\u652f\u6301\u7684\u65b9\u5f0f\u540e "

    .line 20
    invoke-static {v0}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 21
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 22
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 23
    :goto_4
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 24
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\u83b7\u53d6\u670d\u52a1\u5668\u914d\u7f6e\u767b\u5f55\u65b9\u5f0f\u5931\u8d25\uff1a"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 25
    :cond_6
    invoke-static {p1}, Lkotlin/Result;->box-impl(Ljava/lang/Object;)Lkotlin/Result;

    move-result-object p1

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
