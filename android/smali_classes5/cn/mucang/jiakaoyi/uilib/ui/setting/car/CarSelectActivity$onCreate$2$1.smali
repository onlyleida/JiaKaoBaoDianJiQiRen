.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->J(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/j;)V
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
    c = "cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectActivity$onCreate$2$1"
    f = "CarSelectActivity.kt"
    l = {
        0x82
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;-><init>(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

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
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->h()Lcn/mucang/android/jiakaoyi/signal/center/config/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/config/a;->k()Z

    move-result p1

    .line 5
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    const/4 v3, 0x0

    if-nez p1, :cond_3

    .line 6
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;->h(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;)Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    move-result-object p1

    if-eqz p1, :cond_2

    const/4 v4, 0x0

    const/4 v5, 0x2

    invoke-static {p1, v4, v3, v5, v3}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 7
    sget-object p1, Lcn/mucang/jiakaoyi/uilib/p/a;->a:Lcn/mucang/jiakaoyi/uilib/p/a;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/p/a;->b()Z

    move-result p1

    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    const-string p1, "viewModel"

    .line 8
    invoke-static {p1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v3

    .line 9
    :cond_3
    :goto_0
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object p1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1$1;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;

    invoke-direct {v4, v1, v5, v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectActivity$onCreate$2$1;->label:I

    invoke-static {p1, v4, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 10
    :cond_4
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
