.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;->y()V
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
    c = "cn.mucang.android.jiakaoyi.mapcollect.manager.car.CarDataManagerActivity$loadCarData$2"
    f = "CarDataManagerActivity.kt"
    l = {
        0x73
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;

    invoke-direct {p1, v0, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

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

    const/4 p1, 0x0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;-><init>()V

    invoke-virtual {v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;->s()Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;

    move-result-object v3

    invoke-static {v1, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;->n(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/model/HpCarMapModel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 5
    instance-of v3, v1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v3, :cond_3

    .line 6
    check-cast v1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {v1}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object v1

    if-nez v1, :cond_2

    move-object v1, p1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 7
    :cond_3
    :goto_1
    invoke-static {}, Lkotlinx/coroutines/w0;->c()Lkotlinx/coroutines/d2;

    move-result-object v1

    new-instance v3, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2$1;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;

    invoke-direct {v3, v4, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2$1;-><init>(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity;Lkotlin/coroutines/c;)V

    iput v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/CarDataManagerActivity$loadCarData$2;->label:I

    invoke-static {v1, v3, p0}, Lkotlinx/coroutines/f;->c(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 8
    :cond_4
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
