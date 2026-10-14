.class final Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->K(Ljava/lang/String;)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera$reconnect$1"
    f = "WebRtcCamera.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $reason:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->$reason:Ljava/lang/String;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->$reason:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/String;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    const/4 v0, 0x0

    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->k(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Ljava/lang/Boolean;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1;->$reason:Ljava/lang/String;

    :try_start_0
    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 4
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->d(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlinx/coroutines/t1;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->d(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlinx/coroutines/t1;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v2}, Lkotlinx/coroutines/t1;->isActive()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :cond_0
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->i(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Z)V

    const-string v0, "WebRtcCamera"

    .line 6
    invoke-static {v0, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->e(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)Lkotlinx/coroutines/i0;

    move-result-object v2

    const/4 v0, 0x0

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1$1$1;

    invoke-direct {v5, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$reconnect$1$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lkotlin/coroutines/c;)V

    const/4 v6, 0x3

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    move-result-object v0

    :goto_0
    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->l(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lkotlinx/coroutines/t1;)V

    .line 9
    :cond_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 10
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 11
    :goto_1
    invoke-static {p1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object p1

    if-eqz p1, :cond_3

    const-string p1, "PusherManager"

    const-string v0, "rtc\u64ad\u653e\u5668\u91cd\u8fde\u7ed3\u675f----end"

    .line 12
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 14
    :cond_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
