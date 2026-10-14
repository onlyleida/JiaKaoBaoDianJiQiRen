.class final Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->y(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
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
    c = "cn.mucang.jiakaoyi.uilib.deduct.DeductSettingViewModel$loadDeduct$1"
    f = "DeductSettingViewModel.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

.field label:I

.field final synthetic this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

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

    new-instance p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-direct {p1, v0, v1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lkotlinx/coroutines/i0;

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->invoke(Lkotlinx/coroutines/i0;Lkotlin/coroutines/c;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    .line 1
    iget v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->label:I

    if-nez v0, :cond_14

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :try_start_0
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->k(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_5

    .line 3
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v2

    iget-wide v2, v2, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->examSiteId:J

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->w()Lcn/mucang/android/jiakaoyi/engine/model/KeMu;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcn/mucang/jiakaoyi/uilib/m/a;->h(JLcn/mucang/android/jiakaoyi/engine/model/KeMu;)Ljava/util/List;

    move-result-object v2

    .line 4
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 5
    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 7
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v4

    div-int/lit8 v4, v4, 0x64

    rem-int/lit8 v4, v4, 0xa

    const/16 v5, 0x8

    if-lt v4, v5, :cond_0

    .line 8
    invoke-interface {v3}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 9
    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    if-nez v2, :cond_2

    goto :goto_2

    .line 10
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 11
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getStepId()I

    move-result v5

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v6, "it"

    if-nez v5, :cond_3

    .line 12
    :try_start_1
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 13
    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getStepId()I

    move-result v4

    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 15
    :cond_3
    invoke-static {v4, v6}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_4
    :goto_2
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2, v3}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->p(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Ljava/util/Map;)V

    .line 17
    :cond_5
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->n(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_d

    .line 18
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->l(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_c

    .line 19
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/i;

    .line 20
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->k(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v5

    if-nez v5, :cond_6

    move-object v5, v1

    goto :goto_4

    :cond_6
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    :goto_4
    if-nez v5, :cond_7

    move-object v7, v1

    goto :goto_6

    .line 21
    :cond_7
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    .line 22
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_8
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 24
    invoke-static {v6, v9}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->i(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;)Z

    move-result v9

    if-eqz v9, :cond_8

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    :cond_9
    :goto_6
    if-nez v7, :cond_a

    .line 25
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 26
    :cond_a
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->l(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v5

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v6

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_b

    const/4 v5, 0x1

    goto :goto_7

    :cond_b
    const/4 v5, 0x0

    :goto_7
    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/i;->d(Z)V

    goto :goto_3

    .line 28
    :cond_c
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->l(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v2

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    goto :goto_c

    .line 29
    :cond_d
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->m(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/i;

    .line 30
    iget-object v5, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v5}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->k(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v5

    invoke-static {v5}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v6, v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Collection;

    if-eqz v5, :cond_f

    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_e

    goto :goto_9

    :cond_e
    const/4 v5, 0x0

    goto :goto_a

    :cond_f
    :goto_9
    const/4 v5, 0x1

    :goto_a
    if-nez v5, :cond_10

    const/4 v5, 0x1

    goto :goto_b

    :cond_10
    const/4 v5, 0x0

    :goto_b
    invoke-virtual {v4, v5}, Lcn/mucang/jiakaoyi/uilib/model/i;->d(Z)V

    goto :goto_8

    .line 31
    :cond_11
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->k(Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->$step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 32
    :goto_c
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->u()Landroidx/lifecycle/z;

    move-result-object v3

    if-nez v2, :cond_12

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :cond_12
    invoke-virtual {v3, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 33
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->x()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/lifecycle/LiveData;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    if-nez v2, :cond_13

    goto :goto_d

    :cond_13
    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    .line 34
    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->x()Landroidx/lifecycle/z;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 35
    :goto_d
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_e

    :catch_0
    move-exception v2

    .line 36
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u52a0\u8f7d\u8003\u573a\u6263\u5206\u8bbe\u7f6e\u51fa\u9519\uff1a"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;->v()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    move-result-object v4

    iget-object v4, v4, Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;->cityName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " , "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 38
    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel$loadDeduct$1;->this$0:Lcn/mucang/jiakaoyi/uilib/deduct/DeductSettingViewModel;

    invoke-static {v2, v0, v1, p1, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 39
    :goto_e
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1

    :cond_14
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
