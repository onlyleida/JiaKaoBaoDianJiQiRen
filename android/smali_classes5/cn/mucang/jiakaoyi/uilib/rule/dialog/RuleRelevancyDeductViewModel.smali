.class public final Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J0\u0010\u000c\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00052\u000e\u0010\t\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005H\u0002J\u0016\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0010\u001a\u00020\u00112\u0006\u0010\u0012\u001a\u00020\u0013J\u000e\u0010\u0014\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0013R\u001d\u0010\u0003\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00060\u00050\u0004\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u001e\u0010\t\u001a\u0012\u0012\u0004\u0012\u00020\u00060\nj\u0008\u0012\u0004\u0012\u00020\u0006`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "()V",
        "deductList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
        "getDeductList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "sourceList",
        "Ljava/util/ArrayList;",
        "Lkotlin/collections/ArrayList;",
        "createChangeList",
        "currentList",
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
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
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

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->c:Landroidx/lifecycle/z;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->d:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final k(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;",
            "Ljava/util/List<",
            "+",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;)",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_7

    if-nez p2, :cond_0

    goto/16 :goto_3

    .line 1
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 3
    invoke-virtual {v1}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_1
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 6
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    const/4 v4, 0x1

    if-nez v3, :cond_3

    goto :goto_2

    .line 7
    :cond_3
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v5

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDeductScore()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 8
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getJudgeType()I

    move-result v5

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getJudgeType()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 9
    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDesc()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getDesc()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    const/4 v4, 0x0

    :cond_5
    :goto_2
    if-eqz v4, :cond_2

    .line 10
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    return-object p2

    :cond_7
    :goto_3
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public final l()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;->c:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final m(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
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

    new-instance v5, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;

    invoke-direct {v5, p0, p1, p2, v1}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$load$1$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x3

    invoke-static/range {v2 .. v7}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final n(Lcn/mucang/android/jiakaoyi/engine/model/KeMu;)V
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

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel$save$1;-><init>(Lcn/mucang/jiakaoyi/uilib/rule/dialog/RuleRelevancyDeductViewModel;Lcn/mucang/android/jiakaoyi/engine/model/KeMu;Lkotlin/coroutines/c;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method
