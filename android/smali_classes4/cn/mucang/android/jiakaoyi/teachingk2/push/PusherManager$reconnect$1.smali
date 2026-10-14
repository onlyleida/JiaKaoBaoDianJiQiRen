.class final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->j0()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$reconnect$1"
    f = "PusherManager.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->invokeSuspend$lambda-1(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic g(Lkotlinx/coroutines/i0;)Lkotlin/v;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->invokeSuspend$lambda-0(Lkotlinx/coroutines/i0;)Lkotlin/v;

    move-result-object p0

    return-object p0
.end method

.method private static final invokeSuspend$lambda-0(Lkotlinx/coroutines/i0;)Lkotlin/v;
    .locals 7

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->g()Lkotlinx/coroutines/t1;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->g()Lkotlinx/coroutines/t1;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "\u63a8\u6d41\u91cd\u8fde\u5f00\u59cb"

    .line 2
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;

    const/4 v0, 0x0

    invoke-direct {v4, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;-><init>(Lkotlin/coroutines/c;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->r(Lkotlinx/coroutines/t1;)V

    .line 4
    :cond_1
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    return-object p0
.end method

.method private static final invokeSuspend$lambda-1(Ljava/lang/Throwable;)V
    .locals 0

    const-string p0, "\u963f\u91cc\u4e91\u63a8\u6d41\u91cd\u8fde\u7ed3\u675f----end"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->label:I

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/z;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/z;-><init>(Lkotlinx/coroutines/i0;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/y;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/y;

    .line 3
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->f(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
