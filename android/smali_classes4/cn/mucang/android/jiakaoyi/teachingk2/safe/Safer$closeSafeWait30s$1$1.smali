.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1;->invoke()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.safe.Safer$closeSafeWait30s$1$1"
    f = "Safer.kt"
    l = {
        0x3c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;",
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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlin/collections/i0;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/i0;

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

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    const/16 v1, 0x1e

    .line 4
    invoke-static {v1, v2}, Lkotlin/a0/d;->i(II)Lkotlin/a0/a;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/a0/a;->j()Lkotlin/collections/i0;

    move-result-object v1

    move-object v4, p1

    :goto_0
    move-object p1, p0

    .line 5
    :cond_2
    invoke-static {v4}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    const-class v5, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;

    .line 6
    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;

    invoke-virtual {v1}, Lkotlin/collections/i0;->e()I

    move-result v7

    invoke-direct {v6, v7, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/g;-><init>(IZ)V

    invoke-virtual {v5, v6}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    const-wide/16 v5, 0x3e8

    .line 7
    iput-object v4, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->L$0:Ljava/lang/Object;

    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->L$1:Ljava/lang/Object;

    iput v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer$closeSafeWait30s$1$1;->label:I

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_2

    return-object v0

    .line 8
    :cond_3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->a()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/socket/u;->t(Z)Z

    .line 10
    :cond_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;

    const/4 p1, 0x0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/Safer;->b(Lkotlinx/coroutines/t1;)V

    .line 11
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/floatwindow/f;->f()V

    .line 12
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
