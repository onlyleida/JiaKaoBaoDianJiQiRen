.class final Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->E()V
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
    c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingViewModel$loadStep$1"
    f = "RuleSettingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-direct {p1, v0, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->label:I

    if-nez v0, :cond_5

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->z()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/g;->b(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->B()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 7
    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    sget-object v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-eq v5, v6, :cond_2

    :cond_1
    const/4 v3, 0x1

    :cond_2
    if-eqz v3, :cond_0

    .line 8
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_3
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    .line 10
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 11
    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->n(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/model/i;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v2

    invoke-direct/range {v5 .. v10}, Lcn/mucang/jiakaoyi/uilib/model/i;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZZILkotlin/jvm/internal/o;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_4
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->n(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-virtual {p1, v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->e(Z)V

    .line 13
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->A()Landroidx/lifecycle/z;

    move-result-object p1

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->n(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 14
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadStep$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {p1}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->n(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-virtual {v0}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    invoke-static {p1, v0}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->p(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 15
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
