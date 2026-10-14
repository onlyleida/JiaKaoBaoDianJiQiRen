.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;",
        "()V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "onViewRecycled",
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


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;)V

    return-void
.end method

.method public bridge synthetic i(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$a;-><init>()V

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$b;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$b;-><init>()V

    .line 3
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 4
    iput-object p2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->angleEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->angleEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    move-object v3, v5

    :goto_0
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radiusEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radiusEt:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v3

    instance-of v4, v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    if-eqz v4, :cond_1

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_1

    :cond_1
    move-object v3, v5

    :goto_1
    invoke-virtual {v2, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->angleEt:Landroid/widget/EditText;

    iget v3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;->degree:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radiusEt:Landroid/widget/EditText;

    iget v3, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;->radius:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->angleEt:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->angleEt:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radiusEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radiusEt:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->steeringCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v5}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v5}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->steeringCb:Landroid/widget/CheckBox;

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->steeringCb:Landroid/widget/CheckBox;

    const-string v1, "holder.viewBinding.steeringCb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$onBindViewHolder$1;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$onBindViewHolder$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->i(Landroid/widget/CheckBox;Lkotlin/jvm/b/l;)V

    .line 17
    iget v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;->direction:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->middleR:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->rightRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_2

    .line 20
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->leftRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 21
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radioGroup:Landroid/widget/RadioGroup;

    const-string v0, "holder.viewBinding.radioGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$onBindViewHolder$2;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/WheelDegreeBinder$onBindViewHolder$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/WheelDegreeVariable;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->j(Landroid/widget/RadioGroup;Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Lcom/drakeet/multitype/c;->i(Landroidx/recyclerview/widget/RecyclerView$c0;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->angleEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->angleEt:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    move-object v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radiusEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorWheelBinding;->radiusEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    if-eqz v1, :cond_1

    move-object v3, p1

    check-cast v3, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
