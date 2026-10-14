.class final Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/flow/d<",
        "-",
        "Ljava/lang/String;",
        ">;",
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
        "\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\u0010\u0000\u001a\u00020\u0001*\n\u0012\u0006\u0012\u0004\u0018\u00010\u00030\u0002H\u008a@"
    }
    d2 = {
        "<anonymous>",
        "",
        "Lkotlinx/coroutines/flow/FlowCollector;",
        ""
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.push.WebRtcCamera$openWebRtc$1$1"
    f = "WebRtcCamera.kt"
    l = {
        0xc7,
        0xce
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $client:Lokhttp3/OkHttpClient;

.field final synthetic $request:Lokhttp3/Request;

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;


# direct methods
.method constructor <init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/OkHttpClient;",
            "Lokhttp3/Request;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->$client:Lokhttp3/OkHttpClient;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->$request:Lokhttp3/Request;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 4
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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->$client:Lokhttp3/OkHttpClient;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->$request:Lokhttp3/Request;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    invoke-direct {v0, v1, v2, v3, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;-><init>(Lokhttp3/OkHttpClient;Lokhttp3/Request;Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/flow/d;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->invoke(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/flow/d<",
            "-",
            "Ljava/lang/String;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v4, :cond_1

    if-ne v1, v3, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$1:Ljava/lang/Object;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/d;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/flow/d;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->$client:Lokhttp3/OkHttpClient;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->$request:Lokhttp3/Request;

    :try_start_0
    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 5
    invoke-virtual {v1, v5}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-nez v1, :cond_3

    move-object v1, v2

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    .line 6
    :goto_0
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 7
    :goto_1
    invoke-static {v1}, Lkotlin/Result;->isSuccess-impl(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    move-object v5, v1

    check-cast v5, Ljava/lang/String;

    .line 8
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$1:Ljava/lang/Object;

    iput v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->label:I

    invoke-interface {p1, v5, p0}, Lkotlinx/coroutines/flow/d;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v0, :cond_4

    return-object v0

    :cond_4
    move-object v4, p1

    :goto_2
    move-object p1, v4

    .line 9
    :cond_5
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;

    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 10
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v6

    const-string v7, "\u8bf7\u6c42\u64ad\u653e\u5730\u5740\u5931\u8d25\uff1a"

    invoke-static {v7, v6}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "WebRtcCamera"

    invoke-static {v7, v6}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->c(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;)J

    move-result-wide v8

    sub-long/2addr v6, v8

    const-wide/16 v8, 0x4e20

    cmp-long v10, v6, v8

    if-lez v10, :cond_6

    .line 12
    invoke-virtual {v5}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    const-string v6, "rtc\u8bf7\u6c42\u64ad\u653e\u5730\u5740\u5931\u8d25\uff1a"

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;->j(Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera;J)V

    .line 14
    :cond_6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$0:Ljava/lang/Object;

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/push/WebRtcCamera$openWebRtc$1$1;->label:I

    const-string v1, ""

    invoke-interface {p1, v1, p0}, Lkotlinx/coroutines/flow/d;->emit(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 15
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
