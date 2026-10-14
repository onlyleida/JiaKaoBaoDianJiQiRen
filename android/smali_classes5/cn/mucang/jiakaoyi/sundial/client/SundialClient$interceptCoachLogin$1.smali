.class final Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/sundial/client/SundialClient;->x(Landroid/app/Activity;Lkotlin/jvm/b/a;)V
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
    c = "cn.mucang.jiakaoyi.sundial.client.SundialClient$interceptCoachLogin$1"
    f = "SundialClient.kt"
    l = {
        0xf3
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $activity:Landroid/app/Activity;

.field final synthetic $next:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field label:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->$next:Lkotlin/jvm/b/a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/b/a;IILandroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->invokeSuspend$lambda-0(Lkotlin/jvm/b/a;IILandroid/content/Intent;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-0(Lkotlin/jvm/b/a;IILandroid/content/Intent;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

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

    new-instance p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->$next:Lkotlin/jvm/b/a;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;-><init>(Landroid/app/Activity;Lkotlin/jvm/b/a;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->label:I

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
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1$needCoachLogin$1;

    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1$needCoachLogin$1;-><init>(Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->$activity:Landroid/app/Activity;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->$next:Lkotlin/jvm/b/a;

    new-instance v1, Lcn/mucang/jiakaoyi/sundial/client/h;

    invoke-direct {v1, v0}, Lcn/mucang/jiakaoyi/sundial/client/h;-><init>(Lkotlin/jvm/b/a;)V

    invoke-static {p1, v1}, Lcn/mucang/sundial/library/Sundial;->startCoachLogin(Landroid/content/Context;Lf/a/a/a/j/c;)V

    goto :goto_1

    .line 6
    :cond_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/sundial/client/SundialClient$interceptCoachLogin$1;->$next:Lkotlin/jvm/b/a;

    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 7
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
