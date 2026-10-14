.class final Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->s(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V
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
    c = "cn.mucang.jiakaoyi.uilib.diff.RuleDeductDiffViewModel$loadRuleByStep$1"
    f = "RuleDeductDiffViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field final synthetic $teaching:Z

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;ZLcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;",
            "Z",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    iput-boolean p2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->$teaching:Z

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    iget-boolean v1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->$teaching:Z

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p1, v0, v1, v2, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;ZLcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->label:I

    if-nez v0, :cond_8

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    goto :goto_2

    .line 3
    :cond_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/i;

    .line 5
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v5

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v6, v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/i;->e(Z)V

    goto :goto_0

    .line 6
    :cond_2
    :goto_2
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object v2

    if-nez p1, :cond_3

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    :cond_3
    invoke-virtual {v2, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 7
    iget-boolean p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->$teaching:Z

    if-eqz p1, :cond_4

    .line 8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;)Ljava/util/Map;

    move-result-object p1

    goto :goto_3

    .line 9
    :cond_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;)Ljava/util/Map;

    move-result-object p1

    :goto_3
    if-nez p1, :cond_5

    const/4 p1, 0x0

    goto :goto_4

    .line 10
    :cond_5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    :goto_4
    if-eqz p1, :cond_6

    .line 11
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v0, v2

    if-eqz v0, :cond_6

    .line 12
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->o()Landroidx/lifecycle/z;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 13
    :cond_6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v0

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/diff/l;

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v3

    if-nez p1, :cond_7

    goto :goto_5

    :cond_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    :goto_5
    invoke-direct {v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/diff/l;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 14
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
