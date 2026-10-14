.class final Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->j()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.k3.K3DataManager$loadData$1"
    f = "K3DataManager.kt"
    l = {
        0x3a,
        0x4e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field J$0:J

.field private synthetic L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;",
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

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;-><init>(Lkotlin/coroutines/c;)V

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$0:Ljava/lang/Object;

    return-object v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->label:I

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-eq v1, v2, :cond_1

    if-ne v1, v3, :cond_0

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->J$0:J

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/i0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->J$0:J

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/i0;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$0:Ljava/lang/Object;

    move-object v7, p1

    check-cast v7, Lkotlinx/coroutines/i0;

    const-wide/16 v5, 0x0

    .line 4
    invoke-static {v5, v6}, Lcn/mucang/jiakaoyi/uilib/s/j;->h(J)J

    move-result-wide v5

    .line 5
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 6
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 7
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v8

    new-instance v9, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1$1;

    invoke-direct {v9, p1, v1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    iput-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$1:Ljava/lang/Object;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$2:Ljava/lang/Object;

    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->J$0:J

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->label:I

    invoke-static {v8, v9, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_3

    return-object v0

    :cond_3
    move-wide v10, v5

    move-object v6, p1

    move-object v5, v1

    move-wide v1, v10

    .line 8
    :goto_0
    iget-object p1, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 9
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d()Ljava/util/List;

    move-result-object p1

    iget-object v6, v6, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v6, Ljava/util/Collection;

    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 10
    :cond_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->d()Ljava/util/List;

    move-result-object p1

    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightDataCreator;->allTopics:Ljava/util/List;

    const-string v8, "allTopics"

    invoke-static {v6, v8}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 11
    :goto_1
    iget-object p1, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->c()Ljava/util/List;

    move-result-object p1

    iget-object v5, v5, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v5, Ljava/util/Collection;

    invoke-interface {p1, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_5
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 14
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v5

    new-instance v6, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1$2;

    invoke-direct {v6, p1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1$2;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    iput-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$1:Ljava/lang/Object;

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->L$2:Ljava/lang/Object;

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->J$0:J

    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager$loadData$1;->label:I

    invoke-static {v5, v6, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_6

    return-object v0

    :cond_6
    move-wide v0, v1

    move-object v2, p1

    .line 15
    :goto_2
    iget-object p1, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->b(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 16
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a()Ljava/util/List;

    move-result-object p1

    iget-object v2, v2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast v2, Ljava/util/Collection;

    invoke-interface {p1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3setting/b;->c()Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a()Ljava/util/List;

    move-result-object v2

    .line 19
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    .line 20
    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/BaseRoute;->getRouteId()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_3

    .line 21
    :cond_8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/k3/K3DataManager;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/s;->c0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/k3setting/b;->e(Lcn/mucang/jiakaoyi/uilib/model/LocalRoute;)V

    .line 22
    :cond_9
    :goto_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;->a:Lcn/mucang/android/jiakaoyi/k3setting/teach/w;

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0, v4, v3, v4}, Lcn/mucang/android/jiakaoyi/k3setting/teach/w;->d(Lcn/mucang/android/jiakaoyi/k3setting/teach/w;Ljava/lang/String;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    .line 23
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
