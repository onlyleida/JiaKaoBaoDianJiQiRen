.class final Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;->s(JLkotlin/jvm/b/a;)V
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
    c = "cn.mucang.android.jiakaoyi.k3setting.route.manager.RouteViewModel$reset$1"
    f = "RouteViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $examSiteId:J

.field final synthetic $resetSuccess:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;


# direct methods
.method constructor <init>(JLcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$examSiteId:J

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$resetSuccess:Lkotlin/jvm/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p5}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 6
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$examSiteId:J

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$resetSuccess:Lkotlin/jvm/b/a;

    move-object v0, p1

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;-><init>(JLcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;-><init>()V

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$examSiteId:J

    invoke-virtual {p1, v1, v2}, Lcn/mucang/android/jiakaoyi/k3setting/order/a2/a;->q(J)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    const-string v1, "\u91cd\u7f6e\u6210\u529f"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    const-string p1, "\u91cd\u7f6e\u8def\u7ebf\u6570\u636e examSiteId:"

    .line 5
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$examSiteId:J

    invoke-static {v1, v2}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 6
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/d/b;->a:Lcn/mucang/android/jiakaoyi/framework/d/b;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u91cd\u7f6e\u8def\u7ebf\u6307\u4ee4\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$examSiteId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", \u91cd\u7f6e\u4f1a\u53d8\u6210\u9ed8\u8ba4\u6570\u636e,\u5173\u8054\u5f97\u8def\u7ebf\u4e5f\u4f1a\u53d7\u5f71\u54cd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/d/b;->m(Ljava/lang/String;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->$resetSuccess:Lkotlin/jvm/b/a;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    const-string v1, "\u91cd\u7f6e\u5931\u8d25"

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel$reset$1;->this$0:Lcn/mucang/android/jiakaoyi/k3setting/route/manager/RouteViewModel;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {p1, v0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 10
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
