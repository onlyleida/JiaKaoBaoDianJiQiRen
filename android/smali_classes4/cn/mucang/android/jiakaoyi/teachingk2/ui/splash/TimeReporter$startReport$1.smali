.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->c()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.ui.splash.TimeReporter$startReport$1"
    f = "TimeReporter.kt"
    l = {
        0x16
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field J$0:J

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
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;",
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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->J$0:J

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/i0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, p0

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->L$0:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/i0;

    move-object v1, p1

    move-object p1, p0

    .line 4
    :goto_0
    invoke-static {v1}, Lkotlinx/coroutines/j0;->g(Lkotlinx/coroutines/i0;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->a()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_2

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    goto :goto_1

    .line 7
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->a()J

    move-result-wide v3

    :goto_1
    const-wide/32 v5, 0xea60

    .line 8
    iput-object v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->L$0:Ljava/lang/Object;

    iput-wide v3, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->J$0:J

    iput v2, p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter$startReport$1;->label:I

    invoke-static {v5, v6, p1}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_3

    return-object v0

    .line 9
    :cond_3
    :goto_2
    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->b(J)V

    .line 10
    :try_start_0
    sget-object v5, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 11
    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;

    invoke-direct {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;-><init>()V

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/splash/TimeReporter;->a()J

    move-result-wide v6

    invoke-virtual {v5, v3, v4, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/record/d;->r(JJ)V

    .line 12
    sget-object v3, Lkotlin/v;->a:Lkotlin/v;

    .line 13
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v3

    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 14
    :cond_4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
