.class final Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.autoteach.dialog.TeachResumeDialog$init$1"
    f = "TeachResumeDialog.kt"
    l = {
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;",
            ">;)V"
        }
    .end annotation

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->label:I

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
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1$1;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;

    const/4 v3, 0x0

    invoke-direct {p1, v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;Lkotlin/coroutines/c;)V

    invoke-static {p1}, Lkotlinx/coroutines/flow/f;->t(Lkotlin/jvm/b/p;)Lkotlinx/coroutines/flow/c;

    move-result-object p1

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1$2;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;

    invoke-direct {v1, v4, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;Lkotlin/coroutines/c;)V

    invoke-static {p1, v1}, Lkotlinx/coroutines/flow/f;->x(Lkotlinx/coroutines/flow/c;Lkotlin/jvm/b/q;)Lkotlinx/coroutines/flow/c;

    move-result-object p1

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1$a;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1$a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/f;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/autoteach/dialog/TeachResumeDialog$init$1;->label:I

    invoke-interface {p1, v3, p0}, Lkotlinx/coroutines/flow/c;->d(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 8
    :cond_2
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
