.class final Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
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
    c = "cn.mucang.jiakaoyi.uilib.rule.dialog.RuleRelevancyDeductViewModel$save$1"
    f = "RuleRelevancyDeductViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;",
            "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->label:I

    if-nez v0, :cond_a

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->j(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;)Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    const-string v0, "\u4fdd\u5b58\u5931\u8d25"

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 4
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 5
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    .line 7
    :cond_1
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 8
    invoke-interface {p1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 10
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v4

    const/16 v5, 0xa

    if-eq v4, v5, :cond_3

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v3

    const/16 v4, 0x64

    if-eq v3, v4, :cond_3

    const-string p1, "\u5206\u503c\u53ea\u80fd\u8bbe\u7f6e\u4e3a5\uff0c10\uff0c100"

    .line 11
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 12
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->c(ZLjava/lang/String;)V

    .line 13
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 14
    :cond_4
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->j(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-static {v2, p1, v3}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->i(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 15
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    const-wide/16 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v2, v3, v4, v5, v6}, Lcn/mucang/jiakaoyi/uilib/s/j;->o(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;JILjava/lang/Object;)J

    move-result-wide v2

    if-nez p1, :cond_5

    goto :goto_3

    .line 16
    :cond_5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 17
    invoke-virtual {v5, v2, v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->setExamSiteId(J)V

    goto :goto_2

    .line 18
    :cond_6
    :goto_3
    sget-object v4, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->a:Lcn/mucang/jiakaoyi/uilib/deduct/b0;

    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->$keMu:Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    invoke-virtual {v4, p1, v5}, Lcn/mucang/jiakaoyi/uilib/deduct/b0;->d(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-nez p1, :cond_7

    goto :goto_5

    .line 19
    :cond_7
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 20
    invoke-static {v0, v2, v3}, Lcn/mucang/jiakaoyi/uilib/m/a;->u(Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;J)Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    goto :goto_4

    .line 21
    :cond_8
    :goto_5
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    const-string v0, "\u4fdd\u5b58\u6210\u529f"

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    goto :goto_6

    .line 22
    :cond_9
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;

    invoke-virtual {p1, v1, v0}, Lcn/mucang/android/jiakaoyi/framework/base/d;->g(ZLjava/lang/String;)V

    .line 23
    :goto_6
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
