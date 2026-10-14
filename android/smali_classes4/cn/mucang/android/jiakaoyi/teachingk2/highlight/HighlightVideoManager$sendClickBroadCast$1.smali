.class final Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->r()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager$sendClickBroadCast$1"
    f = "HighlightVideoManager.kt"
    l = {
        0xd8,
        0xda,
        0xdc,
        0xde
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $points:Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/Pair<",
            "Landroid/graphics/Point;",
            "Landroid/graphics/Point;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Lkotlin/Pair;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Pair<",
            "+",
            "Landroid/graphics/Point;",
            "+",
            "Landroid/graphics/Point;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;-><init>(Lkotlin/Pair;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->label:I

    const-wide/16 v2, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v1, :cond_4

    if-eq v1, v8, :cond_3

    if-eq v1, v7, :cond_2

    if-eq v1, v6, :cond_1

    if-ne v1, v5, :cond_0

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
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_4
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const-wide/16 v9, 0x1f4

    .line 4
    iput v8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->label:I

    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 5
    :cond_5
    :goto_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v9}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/graphics/Point;

    iget v9, v9, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    invoke-static {p1, v4, v1, v9}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;IFF)V

    .line 6
    iput v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->label:I

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    .line 7
    :cond_6
    :goto_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v7}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Point;

    iget v7, v7, Landroid/graphics/Point;->y:I

    int-to-float v7, v7

    invoke-static {p1, v8, v1, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;IFF)V

    const-wide/16 v9, 0x64

    .line 8
    iput v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->label:I

    invoke-static {v9, v10, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_7

    return-object v0

    .line 9
    :cond_7
    :goto_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    int-to-float v1, v1

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v6}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Point;

    iget v6, v6, Landroid/graphics/Point;->y:I

    int-to-float v6, v6

    invoke-static {p1, v4, v1, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;IFF)V

    .line 10
    iput v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->label:I

    invoke-static {v2, v3, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_8

    return-object v0

    .line 11
    :cond_8
    :goto_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager$sendClickBroadCast$1;->$points:Lkotlin/Pair;

    invoke-virtual {v1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-static {p1, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/highlight/HighlightVideoManager;IFF)V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
