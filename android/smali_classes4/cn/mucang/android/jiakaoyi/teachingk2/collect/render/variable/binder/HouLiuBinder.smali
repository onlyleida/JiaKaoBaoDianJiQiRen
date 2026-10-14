.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;",
        "()V",
        "watcher",
        "cn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$watcher$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$watcher$1;",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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
.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->select:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->radioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->houliuEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$a;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->select:Landroid/widget/CheckBox;

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/Variable;->enable:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 5
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->select:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    const-string v1, "holder.itemView.select"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$1;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->i(Landroid/widget/CheckBox;Lkotlin/jvm/b/l;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$a;

    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->houliuEt:Landroid/widget/EditText;

    iget v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;->distance:F

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->houliuEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$a;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 9
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;->mode:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;->BigThan:Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/Relation;

    if-ne v0, v1, :cond_0

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->bigRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->smallRb:I

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemHouliuBinding;->radioGroup:Landroid/widget/RadioGroup;

    const-string v0, "holder.viewBinding.radioGroup"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$2;

    invoke-direct {v0, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/variable/binder/HouLiuBinder$onBindViewHolder$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/specific/CarHouLiuVariable;)V

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->j(Landroid/widget/RadioGroup;Lkotlin/jvm/b/l;)V

    return-void
.end method
