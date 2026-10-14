.class final Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->p(IZ)V
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
    c = "cn.mucang.jiakaoyi.uilib.ui.setting.car.CarSelectViewModel$loadCarList$1"
    f = "CarSelectViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $forReal:Z

.field final synthetic $selectCode:I

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;


# direct methods
.method constructor <init>(ZILcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->$forReal:Z

    iput p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->$selectCode:I

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;

    iget-boolean v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->$forReal:Z

    iget v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->$selectCode:I

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;-><init>(ZILcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->label:I

    if-nez v0, :cond_7

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-boolean v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->$forReal:Z

    if-eqz v2, :cond_0

    .line 3
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/i/g;->s()Ljava/util/List;

    move-result-object v2

    goto :goto_0

    .line 4
    :cond_0
    new-instance v2, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v2}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/i/g;->p()Ljava/util/List;

    move-result-object v2

    .line 5
    :goto_0
    invoke-static {v2}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    const/4 v4, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->setSelect(Z)V

    .line 6
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    .line 7
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object v6

    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto :goto_2

    .line 8
    :cond_3
    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;

    .line 9
    invoke-virtual {v6}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->getCode()I

    move-result v7

    iget v8, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->$selectCode:I

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    goto :goto_4

    :cond_4
    const/4 v7, 0x0

    :goto_4
    invoke-virtual {v6, v7}, Lcn/mucang/android/jiakaoyi/signal/car/CarItemModel;->setSelect(Z)V

    goto :goto_3

    :cond_5
    const-string v3, "\u914d\u7f6e\u53c2\u6570:"

    .line 10
    invoke-static {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 11
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->m()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 12
    invoke-static {v2}, Lkotlin/collections/s;->e0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;

    if-nez v2, :cond_6

    move-object v2, v1

    goto :goto_5

    :cond_6
    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/signal/car/CarSelectModel;->getConfigList()Ljava/util/List;

    move-result-object v2

    .line 13
    :goto_5
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-static {v3, v2}, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;->i(Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;Ljava/util/List;)V

    .line 14
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    .line 15
    :catch_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel$loadCarList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/ui/setting/car/CarSelectViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 16
    :goto_6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
