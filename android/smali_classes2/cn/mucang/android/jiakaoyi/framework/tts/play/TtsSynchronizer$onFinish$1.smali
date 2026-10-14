.class final Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->k(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V
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
    c = "cn.mucang.android.jiakaoyi.framework.tts.play.TtsSynchronizer$onFinish$1"
    f = "TtsSynchronizer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->$preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->$preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->$preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    const/4 p1, 0x0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->e(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->$preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->a()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->$preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->e(Z)V

    const-string p1, "TtsSynchronizer"

    const-string v0, "onFinish\u901a\u77e5\u51fa\u53bb"

    .line 6
    invoke-static {p1, v0}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->$preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$onFinish$1;->$preWrapper:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 8
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->c()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    if-nez p1, :cond_3

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 9
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;->i:Z

    if-eqz v0, :cond_4

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->f(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    goto :goto_1

    .line 11
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    invoke-static {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->g(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    .line 12
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
