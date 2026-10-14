.class final Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
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
    c = "cn.mucang.jiakaoyi.uilib.ui.login.LoginPresenter$initView$2"
    f = "LoginPresenter.kt"
    l = {
        0x76
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $token:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/login/i;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/login/i;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/ui/login/i;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;",
            ">;)V"
        }
    .end annotation

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/login/i;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/login/i;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

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
    sget-object p1, Lcn/mucang/android/core/api/f/a;->c:Lcn/mucang/android/core/api/f/a$a;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/f/a$a;->c()Lcn/mucang/android/core/api/f/a;

    move-result-object p1

    .line 5
    sget-object v1, Lcn/mucang/android/core/api/f/b;->i:Lcn/mucang/android/core/api/f/b$a;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/f/b$a;->d()Lcn/mucang/android/core/api/f/b;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/core/api/f/a;->l(Lcn/mucang/android/core/api/f/b;)Lcn/mucang/android/core/api/f/a;

    .line 6
    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/login/i;

    invoke-static {v1}, Lcn/mucang/jiakaoyi/uilib/ui/login/i;->a(Lcn/mucang/jiakaoyi/uilib/ui/login/i;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/core/api/f/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v3, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2$1;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/login/i;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->$token:Lkotlin/jvm/internal/Ref$ObjectRef;

    const/4 v6, 0x0

    invoke-direct {v3, v4, p1, v5, v6}, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/login/i;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/login/LoginPresenter$initView$2;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
