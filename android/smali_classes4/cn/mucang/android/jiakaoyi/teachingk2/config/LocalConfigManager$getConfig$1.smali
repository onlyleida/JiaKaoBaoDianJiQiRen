.class final Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->h(ZZLkotlin/jvm/b/a;)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.config.LocalConfigManager$getConfig$1"
    f = "LocalConfigManager.kt"
    l = {
        0x26
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $needRetry:Z

.field final synthetic $onLoaded:Lkotlin/jvm/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field L$0:Ljava/lang/Object;

.field label:I


# direct methods
.method constructor <init>(Lkotlin/jvm/b/a;ZLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;Z",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->$onLoaded:Lkotlin/jvm/b/a;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->$needRetry:Z

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->$onLoaded:Lkotlin/jvm/b/a;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->$needRetry:Z

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;-><init>(Lkotlin/jvm/b/a;ZLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->label:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->L$0:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

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
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v1

    new-instance v4, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1$1;

    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->$needRetry:Z

    invoke-direct {v4, v5, p1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1$1;-><init>(ZLjava/util/List;Lkotlin/coroutines/c;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->L$0:Ljava/lang/Object;

    iput v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->label:I

    invoke-static {v1, v4, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    .line 6
    :goto_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->values()[Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;

    move-result-object p1

    .line 7
    array-length v1, p1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v1, :cond_7

    aget-object v4, p1, v3

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;

    .line 9
    invoke-virtual {v7}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->getCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    goto :goto_2

    :cond_4
    move-object v6, v2

    :goto_2
    check-cast v6, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;

    if-nez v6, :cond_5

    move-object v5, v2

    goto :goto_3

    .line 10
    :cond_5
    invoke-virtual {v6}, Lcn/mucang/jiakaoyi/uilib/model/ConfigModel;->getValue()Ljava/lang/String;

    move-result-object v5

    :goto_3
    if-eqz v5, :cond_6

    .line 11
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 12
    :cond_6
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getValue()Ljava/lang/String;

    move-result-object v5

    .line 13
    :goto_4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager;->a()Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfig;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 14
    :cond_7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/config/LocalConfigManager$getConfig$1;->$onLoaded:Lkotlin/jvm/b/a;

    if-nez p1, :cond_8

    goto :goto_5

    :cond_8
    invoke-interface {p1}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 15
    :goto_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
