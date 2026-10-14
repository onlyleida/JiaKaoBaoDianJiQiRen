.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;
.super Lcn/mucang/android/jiakaoyi/framework/base/m/b;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NotifyDataSetChanged"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010!\n\u0000\u0008\u0007\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0002J\n\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0002J\u0008\u0010\u000f\u001a\u00020\u0010H\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00122\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u00162\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u001a\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u00122\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0018H\u0016J\u0010\u0010\u001b\u001a\u00020\n2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0016\u0010\u001e\u001a\u00020\n2\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u001fH\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ui/BaseFragment;",
        "()V",
        "adapter",
        "Lcom/drakeet/multitype/MultiTypeAdapter;",
        "data",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;",
        "rv",
        "Landroidx/recyclerview/widget/RecyclerView;",
        "addItem",
        "",
        "variable",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
        "getBoundary",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;",
        "getStatName",
        "",
        "onCreateView",
        "Landroid/view/View;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "container",
        "Landroid/view/ViewGroup;",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onViewCreated",
        "view",
        "removeItem",
        "any",
        "",
        "setData",
        "",
        "TeachingK2_release"
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
.field private b:Landroidx/recyclerview/widget/RecyclerView;

.field private final c:Lcom/drakeet/multitype/f;

.field private d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/m/b;-><init>()V

    .line 2
    new-instance v6, Lcom/drakeet/multitype/f;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x7

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/drakeet/multitype/f;-><init>(Ljava/util/List;ILcom/drakeet/multitype/h;ILkotlin/jvm/internal/o;)V

    iput-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    return-void
.end method

.method private static final A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->isTraceTeach()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;->a:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    const-string v0, "model.tm.variableList"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->D(Ljava/util/List;)V

    return-void
.end method

.method private static final B(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 1

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    :goto_0
    return-void
.end method

.method private final C(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/z;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {v0}, Lkotlin/jvm/internal/z;->a(Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 3
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method private final D(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$a;-><init>()V

    invoke-static {p1, v0}, Lkotlin/collections/s;->A(Ljava/util/List;Ljava/util/Comparator;)V

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/m3;->l()Z

    move-result v2

    if-nez v2, :cond_5

    .line 5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, -0x1

    if-eqz v4, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 6
    check-cast v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 7
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;

    if-nez v6, :cond_1

    .line 8
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    if-nez v6, :cond_1

    .line 9
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    if-nez v6, :cond_1

    .line 10
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;

    if-nez v6, :cond_1

    .line 11
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    if-nez v6, :cond_1

    .line 12
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;

    if-nez v6, :cond_1

    .line 13
    instance-of v6, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/HandBrakeVariable;

    if-nez v6, :cond_1

    .line 14
    instance-of v4, v4, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    if-nez v4, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_2
    if-le v3, v5, :cond_4

    .line 15
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;-><init>()V

    invoke-interface {v0, v3, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    :cond_4
    if-ne v3, v5, :cond_5

    .line 16
    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;-><init>()V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1, v0}, Lcom/drakeet/multitype/f;->i(Ljava/util/List;)V

    .line 18
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method

.method public static final synthetic r(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->v()V

    return-void
.end method

.method public static final synthetic s(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->w(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;)V

    return-void
.end method

.method public static final synthetic t(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->x()Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic u(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->C(Ljava/lang/Object;)V

    return-void
.end method

.method private final v()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/z;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$addItem$1;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$addItem$1;

    invoke-static {v0, v1}, Lkotlin/collections/s;->F(Ljava/util/List;Lkotlin/jvm/b/l;)Z

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v3, :cond_2

    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    iget v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    :goto_2
    if-nez v3, :cond_3

    sget-object v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    :goto_3
    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v3

    invoke-direct {v1, v3}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    invoke-interface {v0, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_4

    goto :goto_4

    :cond_4
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_4
    return-void
.end method

.method private final w(Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {v0}, Lcom/drakeet/multitype/f;->c()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/z;->c(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$addItem$2;->INSTANCE:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$addItem$2;

    invoke-static {v0, v1}, Lkotlin/collections/s;->F(Ljava/util/List;Lkotlin/jvm/b/l;)Z

    .line 3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 4
    instance-of v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, -0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 5
    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->variableList:Ljava/util/List;

    if-nez v0, :cond_3

    goto :goto_2

    :cond_3
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :goto_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 8
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {p1, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :goto_3
    return-void
.end method

.method private final x()Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->d:Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 2
    :cond_0
    iget v1, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->step:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v1

    .line 3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_DaoCheRuKu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_1

    .line 4
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/c;

    if-eqz v2, :cond_b

    return-object v0

    .line 5
    :cond_1
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_2

    .line 6
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    if-eqz v2, :cond_b

    return-object v0

    .line 7
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_3

    .line 8
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;

    if-eqz v2, :cond_b

    return-object v0

    .line 9
    :cond_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_4

    .line 10
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/k;

    if-eqz v2, :cond_b

    return-object v0

    .line 11
    :cond_4
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_CeFangTingChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_5

    .line 12
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/b;

    if-eqz v2, :cond_b

    return-object v0

    .line 13
    :cond_5
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_6

    .line 14
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;

    if-eqz v2, :cond_b

    return-object v0

    .line 15
    :cond_6
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_7

    .line 16
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    if-eqz v2, :cond_b

    return-object v0

    .line 17
    :cond_7
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_JinJiQingKuang:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_8

    .line 18
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/g;

    if-eqz v2, :cond_b

    return-object v0

    .line 19
    :cond_8
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ETC:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_9

    .line 20
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/e;

    if-eqz v2, :cond_b

    return-object v0

    .line 21
    :cond_9
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_a

    .line 22
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/n;

    if-eqz v2, :cond_b

    return-object v0

    .line 23
    :cond_a
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_QuKa:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_b

    .line 24
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;->boundary:Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;

    instance-of v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/i;

    if-eqz v2, :cond_b

    return-object v0

    .line 25
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u9a76\u5165"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\u9879\u76ee"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic y(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->B(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;)V

    return-void
.end method

.method public static synthetic z(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->A(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;)V

    return-void
.end method


# virtual methods
.method public getStatName()Ljava/lang/String;
    .locals 1

    const-string v0, "\u89e6\u53d1\u6761\u4ef6\u9875\u9762"

    return-object v0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget p3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$layout;->fragment_collect_variable:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1, p2}, Lcn/mucang/android/core/config/q;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 2
    sget p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->list_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;-><init>()V

    .line 4
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/DirectionBinder;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/DirectionBinder;-><init>()V

    .line 6
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DirectionVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HandBrakeBinder;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HandBrakeBinder;-><init>()V

    .line 8
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/HandBrakeVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/GearBinder;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/GearBinder;-><init>()V

    .line 10
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/GearVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/KuWeiBinder;-><init>(Lkotlin/jvm/b/a;)V

    .line 12
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/KuWeiPoseVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/SpeedBinder;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/SpeedBinder;-><init>()V

    .line 14
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/SpeedVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 15
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;-><init>()V

    .line 16
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$2;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder;-><init>(Lkotlin/jvm/b/a;)V

    .line 18
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/o;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$3;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$3;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/o;-><init>(Lkotlin/jvm/b/l;)V

    .line 20
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 21
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$4;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$4;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$5;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$5;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarAngleToLineBinder;-><init>(Lkotlin/jvm/b/l;Lkotlin/jvm/b/a;)V

    .line 22
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarAngleToLineVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 23
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$6;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$6;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarCrossLineBinder;-><init>(Lkotlin/jvm/b/l;)V

    .line 24
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossLineVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/p;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$7;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$7;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/p;-><init>(Lkotlin/jvm/b/l;)V

    .line 26
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarCrossRectVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarDistanceToLineBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$8;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$8;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$9;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$9;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarDistanceToLineBinder;-><init>(Lkotlin/jvm/b/l;Lkotlin/jvm/b/a;)V

    .line 28
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarDistanceToLineVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 29
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$10;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$10;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$11;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$11;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarHeaderDistanceToLineBinder;-><init>(Lkotlin/jvm/b/l;Lkotlin/jvm/b/a;)V

    .line 30
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 31
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarInRectBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$12;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$12;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/CarInRectBinder;-><init>(Lkotlin/jvm/b/l;)V

    .line 32
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarInRectVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 33
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$13;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$13;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/WheelCrossLineBinder;-><init>(Lkotlin/jvm/b/l;)V

    .line 34
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossLineVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 35
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/r;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$14;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$14;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/r;-><init>(Lkotlin/jvm/b/l;)V

    .line 36
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelCrossOverLineVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 37
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$15;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$15;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/QuXianPositionBinder;-><init>(Lkotlin/jvm/b/a;)V

    .line 38
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/quxian/QuXianPositionVariable;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 39
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    new-instance p2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$16;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$16;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$17;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$17;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$18;

    invoke-direct {v2, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment$onViewCreated$18;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-direct {p2, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/q;-><init>(Lkotlin/jvm/b/p;Lkotlin/jvm/b/l;Lkotlin/jvm/b/a;)V

    .line 40
    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;

    invoke-virtual {p1, v0, p2}, Lcom/drakeet/multitype/f;->g(Ljava/lang/Class;Lcom/drakeet/multitype/c;)V

    .line 41
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p2, v0, v1, v2}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 42
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->b:Landroidx/recyclerview/widget/RecyclerView;

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;->c:Lcom/drakeet/multitype/f;

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :goto_1
    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$f;

    .line 43
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object p2

    const-string v0, "viewLifecycleOwner"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/x1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/x1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-virtual {p1, p2, v1}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    const-class p1, Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;

    .line 44
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/r;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/w1;

    invoke-direct {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/w1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/VariableFragment;)V

    invoke-virtual {p1, p2, v0}, Landroidx/lifecycle/c;->h(Landroidx/lifecycle/r;Landroidx/lifecycle/a0;)V

    return-void
.end method
