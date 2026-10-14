.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000)\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0008\u001a\u00020\t2\u000c\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000b2\u0006\u0010\u000c\u001a\u00020\u0002H\u0016R\u0010\u0010\u0005\u001a\u00020\u0006X\u0082\u0004\u00a2\u0006\u0004\n\u0002\u0010\u0007\u00a8\u0006\r"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;",
        "()V",
        "watcher",
        "cn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$watcher$1",
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$watcher$1;",
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
.field private final b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$a;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$a;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->radioGroup:Landroid/widget/RadioGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 2
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->isRange:Z

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->areaRb:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->radioGroup:Landroid/widget/RadioGroup;

    sget v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/R$id;->lineRb:I

    invoke-virtual {v0, v2}, Landroid/widget/RadioGroup;->check(I)V

    .line 5
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->radioGroup:Landroid/widget/RadioGroup;

    const-string v2, "holder.viewBinding.radioGroup"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$onBindViewHolder$1;

    invoke-direct {v2, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$onBindViewHolder$1;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    invoke-static {v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->j(Landroid/widget/RadioGroup;Lkotlin/jvm/b/l;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->selectCb:Landroid/widget/CheckBox;

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->selectCb:Landroid/widget/CheckBox;

    iget-boolean v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->noAdvance:Z

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->selectCb:Landroid/widget/CheckBox;

    const-string v1, "holder.viewBinding.selectCb"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$onBindViewHolder$2;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$onBindViewHolder$2;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/p0;->i(Landroid/widget/CheckBox;Lkotlin/jvm/b/l;)V

    .line 9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->rangeEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$a;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->rangeEt:Landroid/widget/EditText;

    iget v1, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/NormalVariable;->width:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$a;

    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/NewCollectItemNormalBinding;->rangeEt:Landroid/widget/EditText;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalBinder$a;

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
