.class final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1;->invokeSuspend$lambda-0(Lkotlinx/coroutines/i0;)Lkotlin/v;
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$reconnect$1$1$1"
    f = "PusherManager.kt"
    l = {
        0x25c,
        0x25d,
        0x26d
    }
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
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Ljava/lang/String;)Lkotlin/v;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->invokeSuspend$lambda-2(Ljava/lang/String;)Lkotlin/v;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic g(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->invokeSuspend$lambda-3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic h()Lkotlin/v;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->invokeSuspend$lambda-0()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic i()Lkotlin/v;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->invokeSuspend$lambda-1()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method private static final invokeSuspend$lambda-0()Lkotlin/v;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c()Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/alivc/live/pusher/AlivcLivePusher;->stopPush()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    return-object v0
.end method

.method private static final invokeSuspend$lambda-1()Lkotlin/v;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c()Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->startPreview(Landroid/view/SurfaceView;)V

    sget-object v1, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    return-object v1
.end method

.method private static final invokeSuspend$lambda-2(Ljava/lang/String;)Lkotlin/v;
    .locals 1

    const-string v0, "\u5f00\u59cb\u91cd\u65b0\u63a8\u6d41:"

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c()Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->startPush(Ljava/lang/String;)V

    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    :goto_0
    return-object p0
.end method

.method private static final invokeSuspend$lambda-3(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "\u963f\u91cc\u4e91startPush Error:"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->o(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V

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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v5, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/i0;

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

    goto :goto_3

    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->L$0:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_2

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    move-object v1, p1

    :goto_0
    move-object p1, p0

    .line 4
    :cond_4
    invoke-static {v1}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 5
    invoke-static {v1}, Lkotlinx/coroutines/j0;->f(Lkotlinx/coroutines/i0;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/utils/x;->e()Z

    move-result v6

    const-wide/16 v7, 0x7d0

    if-eqz v6, :cond_9

    .line 7
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c()Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v1

    if-nez v1, :cond_5

    move-object v1, v2

    goto :goto_1

    :cond_5
    invoke-virtual {v1}, Lcom/alivc/live/pusher/AlivcLivePusher;->getPushUrl()Ljava/lang/String;

    move-result-object v1

    :goto_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/push/w;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/w;

    .line 8
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    .line 9
    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->L$0:Ljava/lang/Object;

    iput v5, p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->label:I

    invoke-static {v7, v8, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_6

    return-object v0

    :cond_6
    :goto_2
    if-nez v1, :cond_8

    .line 10
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    iput-object v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->L$0:Ljava/lang/Object;

    iput v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->label:I

    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    :cond_7
    :goto_3
    move-object v1, p1

    check-cast v1, Ljava/lang/String;

    .line 11
    :cond_8
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_a

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V

    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/x;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/x;

    .line 13
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    .line 14
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/u;

    invoke-direct {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/u;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/v;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/v;

    .line 15
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->f(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    goto :goto_4

    .line 16
    :cond_9
    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->L$0:Ljava/lang/Object;

    iput v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$reconnect$1$1$1;->label:I

    invoke-static {v7, v8, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6

    if-ne v6, v0, :cond_4

    return-object v0

    :cond_a
    :goto_4
    const-string p1, "\u963f\u91cc\u4e91\u63a8\u6d41\u91cd\u8fde\u7ed3\u675f----end"

    .line 17
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
