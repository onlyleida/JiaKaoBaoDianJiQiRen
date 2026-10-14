.class final Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->o()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.level.UserLevelManager$getUserData$1"
    f = "UserLevelManager.kt"
    l = {
        0x7d
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

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
            "Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 0
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;-><init>(Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->L$1:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->L$0:Ljava/lang/Object;

    check-cast v1, Lkotlin/jvm/internal/Ref$ObjectRef;

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
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->b()Landroid/util/SparseArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/util/SparseArray;->clear()V

    .line 6
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 7
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroidx/lifecycle/c;->m(Landroidx/lifecycle/a0;)V

    .line 9
    new-instance v1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 10
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 11
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v4

    new-instance v5, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1$1;

    invoke-direct {v5, v1, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->L$0:Ljava/lang/Object;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->L$1:Ljava/lang/Object;

    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 12
    :goto_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 13
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    .line 14
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    .line 15
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e()Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getCode()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    if-nez v3, :cond_3

    .line 16
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 17
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e()Landroid/util/SparseArray;

    move-result-object v4

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getCode()I

    move-result v5

    .line 18
    invoke-virtual {v4, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 19
    :cond_3
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getSubCode()I

    move-result v4

    .line 20
    invoke-virtual {v3, v4, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    .line 21
    :cond_4
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_c

    .line 22
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p1}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    check-cast p1, Ljava/lang/Iterable;

    const/4 v0, 0x0

    .line 23
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    add-int/lit8 v4, v0, 0x1

    if-ltz v0, :cond_7

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 24
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v5

    if-eqz v5, :cond_6

    .line 25
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a()Ljava/util/List;

    move-result-object v5

    new-instance v6, Lkotlin/Pair;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v7

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v8

    invoke-static {v8}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-virtual {v3, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->setPosition(I)V

    .line 27
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v5

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v6

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    .line 28
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->createPassHandler()V

    .line 29
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->b()Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v5

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_5

    .line 30
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 31
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->b()Landroid/util/SparseArray;

    move-result-object v5

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v6

    .line 32
    invoke-virtual {v5, v6, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 33
    :cond_5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v5

    .line 34
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 35
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v0

    sget-object v5, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->Video:Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/StepTrainSubtype;->getServerCode()I

    move-result v5

    if-ne v0, v5, :cond_6

    .line 36
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->f()Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getVideoSubType()I

    move-result v5

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v3

    .line 37
    invoke-virtual {v0, v5, v3}, Landroid/util/SparseIntArray;->put(II)V

    :cond_6
    move v0, v4

    goto/16 :goto_2

    .line 38
    :cond_7
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v2

    .line 39
    :cond_8
    iget-object p1, v1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_9

    goto :goto_4

    .line 40
    :cond_9
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager$getUserData$1$a;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/s;->G0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_a

    goto :goto_4

    .line 41
    :cond_a
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_b
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    .line 42
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getId()I

    move-result v3

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->m(IILjava/lang/String;)Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;

    move-result-object v1

    .line 43
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->getPass()Z

    move-result v2

    if-nez v2, :cond_b

    .line 44
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->e()Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->getCode()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "userDataArray[it.code]"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;->isPass(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;Landroid/util/SparseArray;)Z

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelData;->setPass(Z)V

    goto :goto_3

    .line 45
    :cond_c
    :goto_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->a:Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;)Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->g(Lcn/mucang/android/jiakaoyi/teachingk2/level/model/ConfigLevelModel;)V

    const-class v0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/TraceDetailInfo;

    .line 46
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->c()Landroidx/lifecycle/a0;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/lifecycle/c;->i(Landroidx/lifecycle/a0;)V

    .line 47
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;->h(Lcn/mucang/android/jiakaoyi/teachingk2/level/UserLevelManager;)V

    .line 48
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
