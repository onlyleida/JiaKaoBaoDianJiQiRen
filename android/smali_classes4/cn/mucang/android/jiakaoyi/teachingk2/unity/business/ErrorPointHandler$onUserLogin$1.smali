.class final Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler;->d(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.unity.business.ErrorPointHandler$onUserLogin$1"
    f = "ErrorPointHandler.kt"
    l = {
        0x25
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;",
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;-><init>(Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlin/jvm/internal/Ref$ObjectRef;

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
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1$1;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1$1;-><init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/c;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;->L$0:Ljava/lang/Object;

    iput v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 6
    :goto_0
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    new-array v1, v1, [Lkotlin/jvm/b/l;

    const/4 v3, 0x0

    sget-object v4, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1$2;

    aput-object v4, v1, v3

    sget-object v3, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1$3;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler$onUserLogin$1$3;

    aput-object v3, v1, v2

    invoke-static {v1}, Lkotlin/x/a;->b([Lkotlin/jvm/b/l;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 7
    :goto_1
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/Collection;

    invoke-static {p1}, Lcom/blankj/utilcode/util/b;->a(Ljava/util/Collection;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 8
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 9
    :cond_4
    iget-object p1, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;

    .line 11
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointModel;->getStepNameDesc()Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler;->a()Ljava/util/LinkedHashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_6

    .line 13
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/business/ErrorPointHandler;->a()Ljava/util/LinkedHashMap;

    move-result-object v3

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    :cond_6
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_7
    :goto_3
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
