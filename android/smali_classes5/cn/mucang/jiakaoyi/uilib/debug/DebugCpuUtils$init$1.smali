.class final Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->i()V
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
    c = "cn.mucang.jiakaoyi.uilib.debug.DebugCpuUtils$init$1"
    f = "DebugCpuUtils.kt"
    l = {
        0x36
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
            "Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

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

    new-instance v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;

    invoke-direct {v0, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->L$0:Ljava/lang/Object;

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

    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    move-object v1, p1

    :goto_0
    move-object p1, p0

    .line 4
    :cond_2
    invoke-static {v1}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 5
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1a

    if-ge v3, v4, :cond_3

    .line 6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->d()Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

    move-result-object v4

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->f()F

    move-result v5

    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;->a(F)V

    :cond_3
    const/16 v4, 0x17

    if-lt v3, v4, :cond_6

    .line 7
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->d()Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

    move-result-object v3

    sget-object v4, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->a:Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;

    invoke-static {v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->b(Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;)D

    move-result-wide v4

    double-to-int v4, v4

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;->c(I)V

    .line 8
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->d()Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

    move-result-object v3

    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->a()Landroid/app/ActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    if-nez v4, :cond_4

    const/4 v4, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {v4}, Landroid/app/ActivityManager;->getMemoryClass()I

    move-result v4

    :goto_1
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->a()Landroid/app/ActivityManager;

    move-result-object v6

    if-nez v6, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v6}, Landroid/app/ActivityManager;->getLargeMemoryClass()I

    move-result v5

    :goto_2
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {v3, v4}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;->b(I)V

    .line 9
    :cond_6
    invoke-static {}, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils;->d()Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$a;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    const-wide/16 v3, 0x1f4

    .line 10
    iput-object v1, p1, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->L$0:Ljava/lang/Object;

    iput v2, p1, Lcn/mucang/jiakaoyi/uilib/debug/DebugCpuUtils$init$1;->label:I

    invoke-static {v3, v4, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    .line 11
    :cond_7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
