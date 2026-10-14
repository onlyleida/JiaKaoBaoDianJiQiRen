.class final Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity;->k()V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.ui.CheckActivity$ensureRealCar$1"
    f = "CheckActivity.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I


# direct methods
.method constructor <init>(Lkotlin/coroutines/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;->invokeSuspend$lambda-3$lambda-2$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    return-void
.end method

.method private static final invokeSuspend$lambda-3$lambda-2$lambda-1$lambda-0(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/signal/car/c;->c(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;-><init>(Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/CheckActivity$ensureRealCar$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/car/d;->g()Ljava/lang/String;

    move-result-object p1

    .line 4
    new-instance v0, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v0}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/i/g;->p()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    .line 6
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    .line 8
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 9
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;-><init>()V

    .line 10
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getModelName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setModelName(Ljava/lang/String;)V

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;-><init>()V

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->setConfig(Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setCode(I)V

    .line 13
    :goto_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelNum()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setUniversalModelNum(I)V

    .line 14
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_5

    goto :goto_3

    :cond_5
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getUniversalModelName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setUniversalModelName(Ljava/lang/String;)V

    .line 15
    :goto_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;->getConfig()Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    move-result-object v0

    if-nez v0, :cond_6

    goto :goto_4

    :cond_6
    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getModelType()I

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setModelType(I)V

    .line 16
    :goto_4
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/e;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/e;-><init>(Lcn/mucang/android/jiakaoyi/signal/car/LocalCarModel;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    .line 17
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 18
    :cond_7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 19
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    :goto_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
