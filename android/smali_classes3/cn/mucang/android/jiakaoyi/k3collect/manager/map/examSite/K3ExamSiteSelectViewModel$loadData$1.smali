.class final Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->f(Ljava/lang/String;Z)V
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
    c = "cn.mucang.android.jiakaoyi.k3collect.manager.map.examSite.K3ExamSiteSelectViewModel$loadData$1"
    f = "K3ExamSiteSelectViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cityCode:Ljava/lang/String;

.field final synthetic $firstLoad:Z

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;ZLkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;",
            "Z",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->$cityCode:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->$firstLoad:Z

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->$cityCode:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->$firstLoad:Z

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;-><init>(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;ZLkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->label:I

    if-nez v0, :cond_1

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance p1, Lcn/mucang/jiakaoyi/uilib/i/g;

    invoke-direct {p1}, Lcn/mucang/jiakaoyi/uilib/i/g;-><init>()V

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->$cityCode:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->a(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcn/mucang/jiakaoyi/uilib/i/g;->t(Ljava/lang/String;Ljava/lang/String;)Lcn/mucang/android/core/api/d/b;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/d/b;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "response.cursor"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->b(Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/core/api/d/b;->c()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->h(Z)V

    .line 5
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->$firstLoad:Z

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->e()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/api/d/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/f;->u(Ljava/util/List;)V

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->e()Lcn/mucang/jiakaoyi/uilib/model/f;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/android/core/api/d/b;->b()Ljava/util/List;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/model/f;->q(Ljava/util/List;)V

    .line 8
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->d()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Success:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 9
    :catch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel$loadData$1;->this$0:Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3collect/manager/map/examSite/K3ExamSiteSelectViewModel;->d()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 10
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
