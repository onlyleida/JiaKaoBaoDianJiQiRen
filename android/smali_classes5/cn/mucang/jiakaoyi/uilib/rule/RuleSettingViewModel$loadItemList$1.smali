.class final Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->D(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
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
    c = "cn.mucang.jiakaoyi.uilib.rule.RuleSettingViewModel$loadItemList$1"
    f = "RuleSettingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->label:I

    if-nez v0, :cond_12

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_4

    .line 3
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->x()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->z()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v4

    .line 4
    invoke-static {v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/m/b;->l(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    .line 6
    :cond_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 7
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 8
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eqz v5, :cond_1

    iget v5, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "9"

    const/4 v7, 0x2

    invoke-static {v5, v6, v0, v7, v1}, Lkotlin/text/l;->B(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9
    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v5, v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "it"

    if-nez v5, :cond_2

    .line 10
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_2
    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->q(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Ljava/util/Map;)V

    .line 15
    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 16
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->n(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_c

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/i;

    .line 17
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v6}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/Map;

    move-result-object v6

    if-nez v6, :cond_5

    move-object v6, v1

    goto :goto_2

    :cond_5
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v7

    iget v7, v7, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v7}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    :goto_2
    if-nez v6, :cond_6

    move-object v8, v1

    goto :goto_5

    .line 18
    :cond_6
    iget-object v7, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    .line 19
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 20
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    move-object v10, v9

    check-cast v10, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 21
    invoke-static {v7, v10}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->k(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;)Z

    move-result v11

    if-eqz v11, :cond_8

    invoke-static {v7, v10}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->j(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;)Z

    move-result v10

    if-eqz v10, :cond_8

    const/4 v10, 0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    if-eqz v10, :cond_7

    invoke-interface {v8, v9}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_9
    :goto_5
    if-nez v8, :cond_a

    .line 22
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 23
    :cond_a
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v2, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_b

    goto :goto_6

    :cond_b
    const/4 v5, 0x0

    :goto_6
    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/i;->d(Z)V

    goto :goto_1

    .line 25
    :cond_c
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_d

    move-object v4, v1

    goto :goto_9

    :cond_d
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    .line 26
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_e
    :goto_7
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 28
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->g()Z

    move-result v8

    if-eqz v8, :cond_f

    .line 29
    invoke-static {v3, v7}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->o(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;)Z

    move-result v7

    goto :goto_8

    :cond_f
    const/4 v7, 0x1

    :goto_8
    if-eqz v7, :cond_e

    .line 30
    invoke-interface {v4, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_10
    :goto_9
    if-nez v4, :cond_11

    .line 31
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 32
    :cond_11
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->y()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 33
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->A()Landroidx/lifecycle/z;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v3}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->n(Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 34
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_a

    :catch_0
    move-exception v2

    .line 35
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RuleSettingViewModel : \u52a0\u8f7d\u89c4\u5219\u8bbe\u7f6e\u8bbe\u7f6e\u51fa\u9519\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;->x()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    invoke-static {v4}, Lcom/alibaba/fastjson/JSON;->toJSONString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v4, 0x2c

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 37
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel$loadItemList$1;->this$0:Lcn/mucang/jiakaoyi/uilib/rule/RuleSettingViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 38
    :goto_a
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_12
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
