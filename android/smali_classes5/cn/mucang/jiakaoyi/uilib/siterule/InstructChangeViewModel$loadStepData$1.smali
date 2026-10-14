.class final Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->l()V
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
    c = "cn.mucang.jiakaoyi.uilib.siterule.InstructChangeViewModel$loadStepData$1"
    f = "InstructChangeViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;-><init>(Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->label:I

    if-nez v0, :cond_4

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/siterule/g0;

    invoke-direct {v3}, Lcn/mucang/jiakaoyi/uilib/siterule/g0;-><init>()V

    sget-object v5, Lcn/mucang/android/jiakaoyi/engine/model/KeMu;->K2:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v6, -0x1

    invoke-static {v5, v6, v7}, Lcn/mucang/jiakaoyi/uilib/s/j;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;J)J

    move-result-wide v5

    invoke-virtual {v3, v5, v6, v4}, Lcn/mucang/jiakaoyi/uilib/siterule/g0;->m(JI)Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;

    move-result-object v3

    goto :goto_1

    .line 5
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->l()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "B2"

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->i()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "MOTO"

    goto :goto_0

    :cond_2
    const-string v3, "C1"

    .line 7
    :goto_0
    new-instance v5, Lcn/mucang/jiakaoyi/uilib/siterule/i0;

    invoke-direct {v5}, Lcn/mucang/jiakaoyi/uilib/siterule/i0;-><init>()V

    invoke-virtual {v5, v4, v3}, Lcn/mucang/jiakaoyi/uilib/siterule/i0;->m(ILjava/lang/String;)Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;

    move-result-object v3

    :goto_1
    const-string v4, "\u52a0\u8f7d\u7684\u6307\u4ee4\u540d\u79f0\u5217\u8868\uff1a"

    .line 8
    invoke-static {v3}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    if-eqz v3, :cond_3

    .line 9
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructResult;->getContent()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcn/mucang/android/jiakaoyi/engine/model/StepAlias;

    .line 11
    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    const-string v4, "parseArray(\n            \u2026                        )"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    :cond_3
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;->j()Landroidx/lifecycle/z;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 14
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 15
    :catch_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel$loadStepData$1;->this$0:Lcn/mucang/jiakaoyi/uilib/siterule/InstructChangeViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 16
    :goto_2
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
