.class public final Lcn/mucang/android/jiakaoyi/teachingk2/p0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000V\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u001a\u0006\u0010\u0000\u001a\u00020\u0001\u001a \u0010\u0002\u001a\u00020\u0001*\u00020\u00032\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\u0007\u001a\u00020\u0008\u001a4\u0010\t\u001a\u00020\u0001*\u0008\u0012\u0004\u0012\u00020\u000b0\n2\u0006\u0010\u000c\u001a\u00020\r2\u0012\u0010\u000e\u001a\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u0006\u001a\u001e\u0010\u0011\u001a\u00020\u0001*\u00020\u00122\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0014\u0012\u0004\u0012\u00020\u00010\u000f\u001a\u001e\u0010\u0011\u001a\u00020\u0001*\u00020\u00152\u0012\u0010\u0013\u001a\u000e\u0012\u0004\u0012\u00020\u0016\u0012\u0004\u0012\u00020\u00010\u000f\u001a\u0018\u0010\u0017\u001a\u00020\u0001*\u00020\u00182\u000c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00010\u001a\u00a8\u0006\u001b"
    }
    d2 = {
        "dataChanged",
        "",
        "filterList",
        "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;",
        "list",
        "",
        "",
        "step",
        "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
        "set",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;",
        "text",
        "",
        "delete",
        "Lkotlin/Function1;",
        "variable",
        "setOnChangeListener",
        "Landroid/widget/CheckBox;",
        "onChange",
        "",
        "Landroid/widget/RadioGroup;",
        "",
        "setOnDeleteListener",
        "Landroid/view/View;",
        "onClick",
        "Lkotlin/Function0;",
        "TeachingK2_release"
    }
    k = 0x2
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# direct methods
.method public static final a()V
    .locals 2

    const-class v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    .line 1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->d(Ljava/lang/Class;)Landroidx/lifecycle/c;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/f2$e;-><init>()V

    invoke-virtual {v0, v1}, Landroidx/lifecycle/z;->l(Ljava/lang/Object;)V

    return-void
.end method

.method public static final b(Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;Ljava/util/List;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/engine/model/Step;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "step"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->expand:Z

    if-eqz v0, :cond_9

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->stopVariables:Ljava/util/List;

    if-nez v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;

    .line 6
    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;

    invoke-direct {v3, p2, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/CarHeaderDistanceToLineVariable;)V

    invoke-interface {p1, v0, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const-string v3, "it"

    .line 8
    invoke-static {v2, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorVariables:Ljava/util/List;

    const-string v1, "errorVariables"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 10
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->errorType:I

    const/4 v1, -0x1

    packed-switch v0, :pswitch_data_0

    .line 11
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    goto :goto_2

    .line 12
    :pswitch_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 13
    :cond_3
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 15
    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/FootBrakeVariable;

    if-eqz v2, :cond_3

    .line 16
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_3

    .line 17
    :pswitch_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 18
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 19
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 20
    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/LightVariable;

    if-eqz v2, :cond_4

    .line 21
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_3

    .line 22
    :pswitch_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    .line 23
    :cond_5
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 24
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 25
    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/RepeatVariable;

    if-eqz v2, :cond_5

    .line 26
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    goto :goto_3

    :cond_6
    const/4 v0, -0x1

    goto :goto_3

    .line 27
    :cond_7
    :goto_2
    invoke-interface {v0}, Ljava/util/ListIterator;->hasPrevious()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 28
    invoke-interface {v0}, Ljava/util/ListIterator;->previous()Ljava/lang/Object;

    move-result-object v2

    .line 29
    instance-of v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TurnHeadVariable;

    if-eqz v2, :cond_7

    .line 30
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v0

    .line 31
    :goto_3
    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;-><init>()V

    .line 32
    iput-object p0, v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/a;->a:Ljava/lang/Object;

    if-le v0, v1, :cond_8

    add-int/lit8 v0, v0, 0x1

    .line 33
    invoke-interface {p1, v0, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_4

    .line 34
    :cond_8
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    :goto_4
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/data/ErrorModel;->hasSelect:Z

    if-eqz v0, :cond_9

    .line 36
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;)V

    .line 37
    iput-object p0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/e;->b:Ljava/lang/Object;

    .line 38
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static synthetic c(Lkotlin/jvm/b/l;Landroid/widget/RadioGroup;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->l(Lkotlin/jvm/b/l;Landroid/widget/RadioGroup;I)V

    return-void
.end method

.method public static synthetic d(Lkotlin/jvm/b/l;Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->k(Lkotlin/jvm/b/l;Landroid/widget/CompoundButton;Z)V

    return-void
.end method

.method public static synthetic e(Lkotlin/jvm/b/l;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->h(Lkotlin/jvm/b/l;Ljava/lang/Object;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic f(Lkotlin/jvm/b/a;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->n(Lkotlin/jvm/b/a;Landroid/view/View;)V

    return-void
.end method

.method public static final g(Lcn/mucang/android/jiakaoyi/framework/base/h;Ljava/lang/String;Lkotlin/jvm/b/l;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/b/l<",
            "Ljava/lang/Object;",
            "Lkotlin/v;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "variable"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;->name:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p0

    check-cast p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;

    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemSingleBinding;->deleteIv:Landroid/widget/ImageView;

    new-instance p1, Lcn/mucang/android/jiakaoyi/teachingk2/h0;

    invoke-direct {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/h0;-><init>(Lkotlin/jvm/b/l;Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final h(Lkotlin/jvm/b/l;Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    const-string p2, "$delete"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$variable"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V

    return-void
.end method

.method public static final i(Landroid/widget/CheckBox;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/CheckBox;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/g0;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/g0;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p0, v0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method public static final j(Landroid/widget/RadioGroup;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RadioGroup;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onChange"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/f0;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/f0;-><init>(Lkotlin/jvm/b/l;)V

    invoke-virtual {p0, v0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    return-void
.end method

.method private static final k(Lkotlin/jvm/b/l;Landroid/widget/CompoundButton;Z)V
    .locals 0

    const-string p1, "$onChange"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V

    return-void
.end method

.method private static final l(Lkotlin/jvm/b/l;Landroid/widget/RadioGroup;I)V
    .locals 0

    const-string p1, "$onChange"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V

    return-void
.end method

.method public static final m(Landroid/view/View;Lkotlin/jvm/b/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/i0;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/i0;-><init>(Lkotlin/jvm/b/a;)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private static final n(Lkotlin/jvm/b/a;Landroid/view/View;)V
    .locals 0

    const-string p1, "$onClick"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/b/a;->invoke()Ljava/lang/Object;

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->a()V

    return-void
.end method
