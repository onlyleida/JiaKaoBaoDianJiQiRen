.class final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->m(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.K3MapViewModel$deleteMap$1"
    f = "K3MapViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $mapModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->$mapModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->$mapModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;-><init>(Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    const-string v0, "\u5220\u9664\u5931\u8d25"

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->label:I

    if-nez v1, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {v1}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->$mapModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-virtual {v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/i/g;->o(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;->n()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->$mapModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/model/f;->t(Ljava/lang/Object;)V

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    const-string v2, "\u5220\u9664\u6210\u529f"

    invoke-virtual {v1, p1, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->c()Lcn/mucang/android/jiakaoyi/k3collect/db/a;

    move-result-object v1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->$mapModel:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/k3collect/db/a;->b(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    invoke-virtual {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel$deleteMap$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/K3MapViewModel;

    invoke-virtual {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 8
    :goto_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
