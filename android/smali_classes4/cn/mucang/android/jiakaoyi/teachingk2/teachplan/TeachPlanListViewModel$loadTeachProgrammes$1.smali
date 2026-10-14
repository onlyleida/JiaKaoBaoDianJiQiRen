.class final Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->c(J)V
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
    c = "cn.mucang.android.jiakaoyi.teachingk2.teachplan.TeachPlanListViewModel$loadTeachProgrammes$1"
    f = "TeachPlanListViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $examSite:J

.field label:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;


# direct methods
.method constructor <init>(JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;",
            ">;)V"
        }
    .end annotation

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->$examSite:J

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

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

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->$examSite:J

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;-><init>(JLcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->label:I

    if-nez v0, :cond_2

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    :try_start_0
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;-><init>()V

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->$examSite:J

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/b/b;->m(J)Ljava/util/List;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1$a;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 5
    :cond_1
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->a()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 6
    :catch_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel$loadTeachProgrammes$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;->b()Landroidx/lifecycle/z;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->Fail:Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    const-string v1, "\u7f51\u7edc\u5f02\u5e38"

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;->buildMsg(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/framework/base/model/LoadingState;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 7
    :goto_1
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
