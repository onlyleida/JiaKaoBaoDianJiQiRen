.class public final Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u001c\u0010\n\u001a\u00020\u000b2\u0012\u0010\u000c\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u0005H\u0002J\u0016\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u0012J\u000e\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0011\u001a\u00020\u0012R#\u0010\u0003\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00070\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "ruleList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
        "",
        "getRuleList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "checkParamValid",
        "",
        "list",
        "load",
        "",
        "idStr",
        "",
        "keMu",
        "Lcn/mucang/android/jiakaoyi/engine/model/KeMu;",
        "save",
        "uilib_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private final c:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    .line 2
    new-instance v0, Landroidx/lifecycle/z;

    invoke-direct {v0}, Landroidx/lifecycle/z;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;->c:Landroidx/lifecycle/z;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;Ljava/util/List;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;->j(Ljava/util/List;)Z

    move-result p0

    return p0
.end method

.method private final j(Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;>;)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    .line 2
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    const-string v2, "\u8bbe\u7f6e\u4e0d\u5408\u6cd5 "

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 5
    iget p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_1
    return v3

    .line 6
    :cond_2
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    const/16 v4, 0x2710

    const-string v5, "it.value"

    if-eqz v1, :cond_6

    .line 7
    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-ltz v6, :cond_5

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-static {v6, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v6, Ljava/lang/Number;

    invoke-virtual {v6}, Ljava/lang/Number;->intValue()I

    move-result v6

    if-le v6, v4, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    iget v6, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    if-ltz v6, :cond_4

    if-gt v6, v4, :cond_4

    .line 9
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-gt v6, v1, :cond_0

    .line 10
    :cond_4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 11
    iget p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_5
    :goto_0
    return v3

    .line 12
    :cond_6
    instance-of v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    if-eqz v1, :cond_0

    .line 13
    iget v1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    const v6, 0x62e79

    if-eq v1, v6, :cond_8

    const v6, 0x62e77

    if-ne v1, v6, :cond_7

    goto :goto_1

    :cond_7
    const/4 v1, 0x0

    goto :goto_2

    :cond_8
    :goto_1
    const/16 v1, -0x1f4

    .line 14
    :goto_2
    move-object v6, v0

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-static {v7, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v7, Ljava/lang/Number;

    invoke-virtual {v7}, Ljava/lang/Number;->intValue()I

    move-result v7

    if-lt v7, v1, :cond_9

    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    if-le v1, v4, :cond_0

    .line 15
    :cond_9
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result p1

    if-eqz p1, :cond_a

    .line 16
    iget p1, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :cond_a
    return v3

    :cond_b
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public final k()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;->c:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final l(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 8

    const-string v0, "idStr"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "keMu"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 1
    invoke-static {p0, v0, v1, v2, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    const-string v0, "&"

    .line 2
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->p0(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v2

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel$load$1;

    invoke-direct {v5, p1, p2, p0, v1}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel$load$1;-><init>(Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final m(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
    .locals 7

    const-string v0, "keMu"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-string v1, "\u4fdd\u5b58\u4e2d..."

    .line 1
    invoke-virtual {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/framework/base/d;->e(ZLjava/lang/String;)V

    .line 2
    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/j0;->a(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/i0;

    move-result-object v1

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel$save$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel$save$1;-><init>(Lcn/mucang/jiakaoyi/uilib/deduct/dialog/DeductRelevancyRuleViewModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
