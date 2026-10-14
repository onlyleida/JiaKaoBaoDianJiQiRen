.class public final Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;
.super Lcn/mucang/android/jiakaoyi/framework/base/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010%\n\u0002\u0018\u0002\n\u0002\u0010!\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\n\u0010\u001f\u001a\u0004\u0018\u00010\u0013H\u0002J\u000e\u0010 \u001a\u00020!2\u0006\u0010\"\u001a\u00020\rJ\u0006\u0010#\u001a\u00020!J\u0016\u0010$\u001a\u00020!2\u0006\u0010\"\u001a\u00020\r2\u0006\u0010%\u001a\u00020&J\u000e\u0010\'\u001a\u00020!2\u0006\u0010%\u001a\u00020&J*\u0010\'\u001a\u00020!2 \u0010\u001a\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u000e\u0018\u00010\u000cH\u0002R\u001d\u0010\u0005\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\"\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00080\u000e\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0017\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00100\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\nR\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0014\u0010\u0015R#\u0010\u0016\u001a\u0014\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0019\u0010\nR(\u0010\u001a\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u000e\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u001d\u0010\u001b\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u001c0\u00070\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001d\u0010\nR(\u0010\u001e\u001a\u001c\u0012\u0004\u0012\u00020\r\u0012\u0010\u0012\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020\u00180\u00170\u000e\u0018\u00010\u000cX\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006("
    }
    d2 = {
        "Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;",
        "Lcn/mucang/android/jiakaoyi/framework/base/LoadingViewModel;",
        "examSiteId",
        "",
        "(J)V",
        "deductList",
        "Landroidx/lifecycle/MutableLiveData;",
        "",
        "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
        "getDeductList",
        "()Landroidx/lifecycle/MutableLiveData;",
        "deductMapCache",
        "",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "",
        "diffCountLiveData",
        "Lcn/mucang/jiakaoyi/uilib/diff/TabCount;",
        "getDiffCountLiveData",
        "diffJsonCache",
        "",
        "getExamSiteId",
        "()J",
        "ruleConfigList",
        "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;",
        "",
        "getRuleConfigList",
        "ruleConfigMapCache",
        "stepList",
        "Lcn/mucang/jiakaoyi/uilib/model/StepItem;",
        "getStepList",
        "teachRuleConfigMapCache",
        "getDiffData",
        "loadDeductByStep",
        "",
        "step",
        "loadDeducts",
        "loadRuleByStep",
        "teaching",
        "",
        "loadRuleConfigs",
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
.field private final c:J

.field private final d:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/diff/l;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/i;",
            ">;>;"
        }
    .end annotation
.end field

.field private final f:Landroidx/lifecycle/z;
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

.field private final g:Landroidx/lifecycle/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private h:Ljava/lang/String;

.field private i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/d;-><init>()V

    iput-wide p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->c:J

    .line 2
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->d:Landroidx/lifecycle/z;

    .line 3
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->e:Landroidx/lifecycle/z;

    .line 4
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->f:Landroidx/lifecycle/z;

    .line 5
    new-instance p1, Landroidx/lifecycle/z;

    invoke-direct {p1}, Landroidx/lifecycle/z;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->g:Landroidx/lifecycle/z;

    return-void
.end method

.method public static final synthetic i(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->i:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic j(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j:Ljava/util/Map;

    return-object p0
.end method

.method public static final synthetic k(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k:Ljava/util/Map;

    return-object p0
.end method

.method private final n()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-wide v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->c:J

    invoke-static {v0, v1}, Lcn/mucang/jiakaoyi/uilib/diff/j;->a(J)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/i0;->g(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->h:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->h:Ljava/lang/String;

    return-object v0
.end method

.method private final t(Ljava/util/Map;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig<",
            "Ljava/lang/Object;",
            ">;>;>;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 5
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/model/i;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    move-object v4, v3

    invoke-direct/range {v4 .. v9}, Lcn/mucang/jiakaoyi/uilib/model/i;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZZILkotlin/jvm/internal/o;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_1
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/jiakaoyi/uilib/model/i;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcn/mucang/jiakaoyi/uilib/model/i;->e(Z)V

    .line 7
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->o()Landroidx/lifecycle/z;

    move-result-object v1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v1

    .line 10
    new-instance v3, Lcn/mucang/jiakaoyi/uilib/diff/l;

    .line 11
    sget-object v4, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v4

    .line 12
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-nez p1, :cond_2

    goto :goto_1

    :cond_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 13
    :goto_1
    invoke-direct {v3, v4, v0}, Lcn/mucang/jiakaoyi/uilib/diff/l;-><init>(II)V

    .line 14
    invoke-virtual {v1, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    goto :goto_3

    .line 15
    :cond_3
    :goto_2
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->e:Landroidx/lifecycle/z;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 16
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->d:Landroidx/lifecycle/z;

    new-instance v1, Lcn/mucang/jiakaoyi/uilib/diff/l;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->RULE:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v2}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v2

    invoke-direct {v1, v2, v0}, Lcn/mucang/jiakaoyi/uilib/diff/l;-><init>(II)V

    invoke-virtual {p1, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :goto_3
    return-void
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
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->g:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final m()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Lcn/mucang/jiakaoyi/uilib/diff/l;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->d:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final o()Landroidx/lifecycle/z;
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
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->f:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final p()Landroidx/lifecycle/z;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/z<",
            "Ljava/util/List<",
            "Lcn/mucang/jiakaoyi/uilib/model/i;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->e:Landroidx/lifecycle/z;

    return-object v0
.end method

.method public final q(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 7

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadDeductByStep$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadDeductByStep$1;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;Lcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final r()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->i:Ljava/util/Map;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, v1, v2, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->n()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "judgeRuleList"

    .line 5
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    const-class v4, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    if-nez v3, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;

    .line 9
    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/model/DeductEntity;->getStepId()I

    move-result v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v6

    .line 10
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_1

    const-string v7, "step"

    .line 11
    invoke-static {v6, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v4, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_1
    invoke-interface {v4, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    const-string v7, "it"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    :goto_1
    iput-object v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->i:Ljava/util/Map;

    .line 14
    invoke-static {p0, v1, v2, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 15
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 16
    invoke-static {p0, v1, v2, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 17
    :cond_4
    :goto_2
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->i:Ljava/util/Map;

    if-eqz v0, :cond_9

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    goto/16 :goto_6

    .line 18
    :cond_5
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->i:Ljava/util/Map;

    if-nez v0, :cond_6

    goto/16 :goto_5

    .line 19
    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-static {v2}, Lkotlin/collections/s;->F0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v2

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 21
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 22
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/model/i;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Lcn/mucang/jiakaoyi/uilib/model/i;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;ZZILkotlin/jvm/internal/o;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 23
    :cond_7
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/jiakaoyi/uilib/model/i;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->e(Z)V

    .line 24
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->p()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 25
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->l()Landroidx/lifecycle/z;

    move-result-object v2

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 26
    invoke-virtual {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->m()Landroidx/lifecycle/z;

    move-result-object v2

    .line 27
    new-instance v4, Lcn/mucang/jiakaoyi/uilib/diff/l;

    .line 28
    sget-object v5, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v5}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v5

    .line 29
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/jiakaoyi/uilib/model/i;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/model/i;->b()Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_8

    goto :goto_4

    :cond_8
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 30
    :goto_4
    invoke-direct {v4, v5, v1}, Lcn/mucang/jiakaoyi/uilib/diff/l;-><init>(II)V

    .line 31
    invoke-virtual {v2, v4}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    :goto_5
    return-void

    .line 32
    :cond_9
    :goto_6
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->e:Landroidx/lifecycle/z;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    .line 33
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->d:Landroidx/lifecycle/z;

    new-instance v2, Lcn/mucang/jiakaoyi/uilib/diff/l;

    sget-object v3, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->DEDUCT:Lcn/mucang/jiakaoyi/uilib/diff/DataType;

    invoke-virtual {v3}, Lcn/mucang/jiakaoyi/uilib/diff/DataType;->getType()I

    move-result v3

    invoke-direct {v2, v3, v1}, Lcn/mucang/jiakaoyi/uilib/diff/l;-><init>(II)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public final s(Lcn/mucang/android/jiakaoyi/engine/model/Step;Z)V
    .locals 7

    const-string v0, "step"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Landroidx/lifecycle/k0;->a(Landroidx/lifecycle/j0;)Lkotlinx/coroutines/i0;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/w0;->b()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p2, p1, v0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel$loadRuleByStep$1;-><init>(Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;ZLcn/mucang/android/jiakaoyi/engine/model/Step;Lkotlin/coroutines/c;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/f;->b(Lkotlinx/coroutines/i0;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/b/p;ILjava/lang/Object;)Lkotlinx/coroutines/t1;

    return-void
.end method

.method public final u(Z)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k:Ljava/util/Map;

    if-nez v0, :cond_7

    :cond_0
    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 2
    :try_start_0
    invoke-static {p0, v1, v2, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->f(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    .line 3
    invoke-direct {p0}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->n()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v3, "instructionConfigList"

    .line 5
    invoke-virtual {v4, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 6
    const-class v4, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    invoke-static {v3, v4}, Lcom/alibaba/fastjson/JSON;->parseArray(Ljava/lang/String;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v3

    .line 7
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j:Ljava/util/Map;

    .line 8
    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k:Ljava/util/Map;

    .line 9
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;

    .line 10
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getStepId()I

    move-result v5

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v5

    .line 11
    sget-object v6, Lcn/mucang/jiakaoyi/uilib/rule/d0;->a:Lcn/mucang/jiakaoyi/uilib/rule/d0;

    const-string v7, "step"

    invoke-static {v5, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->getRuleId()I

    move-result v7

    invoke-virtual {v6, v5, v7}, Lcn/mucang/jiakaoyi/uilib/rule/d0;->b(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v7, "ruleConfigEntity.transform()"

    if-eqz v6, :cond_3

    .line 12
    :try_start_1
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k:Ljava/util/Map;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_1

    .line 13
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k:Ljava/util/Map;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :cond_1
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k:Ljava/util/Map;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->transform()Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 15
    :cond_3
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j:Ljava/util/Map;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    if-nez v6, :cond_4

    .line 16
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j:Ljava/util/Map;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v6, v5, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :cond_4
    iget-object v6, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j:Ljava/util/Map;

    invoke-static {v6}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    if-nez v5, :cond_5

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcn/mucang/jiakaoyi/uilib/model/RuleConfigEntity;->transform()Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;

    move-result-object v4

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 18
    :cond_6
    invoke-static {p0, v1, v2, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->h(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 20
    invoke-static {p0, v1, v2, v0, v2}, Lcn/mucang/android/jiakaoyi/framework/base/d;->d(Lcn/mucang/android/jiakaoyi/framework/base/d;ZLjava/lang/String;ILjava/lang/Object;)V

    :cond_7
    :goto_1
    if-eqz p1, :cond_8

    .line 21
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->k:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->t(Ljava/util/Map;)V

    goto :goto_2

    .line 22
    :cond_8
    iget-object p1, p0, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->j:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcn/mucang/jiakaoyi/uilib/diff/RuleDeductDiffViewModel;->t(Ljava/util/Map;)V

    :goto_2
    return-void
.end method
