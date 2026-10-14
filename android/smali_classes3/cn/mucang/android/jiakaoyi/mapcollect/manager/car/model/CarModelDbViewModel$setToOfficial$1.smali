.class final Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->r(II)V
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
    c = "cn.mucang.android.jiakaoyi.mapcollect.manager.car.model.CarModelDbViewModel$setToOfficial$1"
    f = "CarModelDbViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $id:I

.field final synthetic $status:I

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;


# direct methods
.method constructor <init>(IILcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;",
            ">;)V"
        }
    .end annotation

    iput p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->$id:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->$status:I

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
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

    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;

    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->$id:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->$status:I

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;-><init>(IILcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->label:I

    if-nez v0, :cond_3

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;-><init>()V

    iget v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->$id:I

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->$status:I

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/w0/a;->u(II)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "\u8bbe\u7f6e\u6210\u529f"

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u8bbe\u7f6e\u5931\u8d25"

    .line 4
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 5
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel$setToOfficial$1;->this$0:Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;

    const/4 v0, 0x1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->j(Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/manager/car/model/CarModelDbViewModel;->q(ZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p1

    .line 6
    instance-of v0, p1, Lcn/mucang/android/core/api/exception/ApiException;

    if-eqz v0, :cond_2

    .line 7
    check-cast p1, Lcn/mucang/android/core/api/exception/ApiException;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/exception/ApiException;->getApiResponse()Lcn/mucang/android/core/api/ApiResponse;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/core/api/ApiResponse;->getMessage()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 8
    :cond_2
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
