.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->A(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.HelpTeachPage$errObserver$1$1"
    f = "HelpTeachPage.kt"
    l = {
        0xa2
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $it:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;-><init>(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->label:I

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

    const-wide/16 v3, 0xc8

    .line 4
    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    .line 5
    :cond_2
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->$it:Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;

    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->b:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq p1, v0, :cond_3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getTitle()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_3
    sget p1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_not_obstacle_stop:I

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/b;->a()Ljava/lang/String;

    move-result-object p1

    .line 8
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$errObserver$1$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;->m(Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;

    move-result-object v0

    const-string v1, "reason"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/HelpTeachPage$HelpTeachAssistant;->y(Ljava/lang/String;Z)V

    .line 9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
