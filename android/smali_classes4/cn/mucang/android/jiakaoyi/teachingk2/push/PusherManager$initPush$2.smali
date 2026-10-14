.class final Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->I()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager$initPush$2"
    f = "PusherManager.kt"
    l = {
        0xd8
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d()Lkotlin/v;
    .locals 1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->invokeSuspend$lambda-0()Lkotlin/v;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic g(Ljava/lang/String;)Lkotlin/v;
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->invokeSuspend$lambda-1(Ljava/lang/String;)Lkotlin/v;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic h(Ljava/lang/Throwable;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->invokeSuspend$lambda-2(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0()Lkotlin/v;
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

.method private static final invokeSuspend$lambda-1(Ljava/lang/String;)Lkotlin/v;
    .locals 2

    const-string v0, "\u5f00\u59cb\u63a8\u6d41:"

    .line 1
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->c()Lcom/alivc/live/pusher/AlivcLivePusher;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p0}, Lcom/alivc/live/pusher/AlivcLivePusher;->startPush(Ljava/lang/String;)V

    .line 3
    :goto_0
    sget-object p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->s(J)V

    .line 4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;

    return-object p0
.end method

.method private static final invokeSuspend$lambda-2(Ljava/lang/Throwable;)V
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
    .locals 0
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;-><init>(Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->label:I

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
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->f()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\u5148\u505c\u6b62\u89c6\u9891\u5f55\u5236"

    .line 5
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/u/e;->i(Z)V

    const-wide/16 v3, 0x3e8

    .line 7
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 8
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager$initPush$2;->label:I

    invoke-static {p1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->f(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_0
    check-cast p1, Ljava/lang/String;

    .line 10
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->L()Z

    move-result v1

    if-nez v1, :cond_4

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 13
    :cond_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->h()Lcn/mucang/android/jiakaoyi/framework/camera/b;

    move-result-object v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/framework/camera/b;->start()V

    .line 14
    :goto_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->v(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V

    .line 15
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->l(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V

    .line 16
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/push/PusherManager;)V

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/p;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/p;

    .line 17
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/q;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/q;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->h(Ljava/util/concurrent/Callable;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/push/r;

    .line 19
    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/e/m;->f(Lcn/mucang/android/jiakaoyi/framework/h/b;)Lcn/mucang/android/jiakaoyi/framework/e/m;

    .line 20
    :cond_6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
