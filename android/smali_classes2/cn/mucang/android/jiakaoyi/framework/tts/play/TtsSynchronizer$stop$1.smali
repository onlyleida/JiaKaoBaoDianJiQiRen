.class final Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->n(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
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
    c = "cn.mucang.android.jiakaoyi.framework.tts.play.TtsSynchronizer$stop$1"
    f = "TtsSynchronizer.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $voiceTask:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

.field label:I


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->$voiceTask:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->$voiceTask:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;-><init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object p1

    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->$voiceTask:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->a()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->e(Z)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v1

    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 6
    :cond_2
    :goto_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->e(Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;)V

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/framework/tts/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/tts/d;->g()V

    .line 8
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->c()Ljava/util/LinkedList;

    move-result-object p1

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$stop$1;->$voiceTask:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v3

    invoke-static {v3, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, v2

    :cond_5
    check-cast v0, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;

    if-eqz v0, :cond_7

    .line 9
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer;->c()Ljava/util/LinkedList;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->b()Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/TtsSynchronizer$a;->d()Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v0

    invoke-interface {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    .line 11
    :cond_7
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
