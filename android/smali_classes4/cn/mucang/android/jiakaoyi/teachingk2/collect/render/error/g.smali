.class public final Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/g;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0005\u00a2\u0006\u0002\u0010\u0004J\u001e\u0010\u0005\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00082\u0006\u0010\t\u001a\u00020\u0002H\u0016J\u0016\u0010\n\u001a\u00020\u00062\u000c\u0010\u0007\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0008H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/DelayTimeBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;",
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

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/g;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;)V

    return-void
.end method

.method public bridge synthetic i(Landroidx/recyclerview/widget/RecyclerView$c0;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/g;->o(Lcn/mucang/android/jiakaoyi/framework/base/h;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/g$a;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/error/g$a;-><init>()V

    .line 2
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;->a:Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v2

    instance-of v3, v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    if-eqz v3, :cond_0

    check-cast v2, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->valueEt:Landroid/widget/EditText;

    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/DelayTimeVariable;->delayTime:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setTag(Ljava/lang/Object;)V

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->titleTv:Landroid/widget/TextView;

    const-string v0, "\u5ef6\u8fdf\u68c0\u6d4b\u65f6\u95f4"

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->divider:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public o(Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/lib/databinding/CollectErrorItemEditBinding;->valueEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object p1

    instance-of v1, p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    if-eqz v1, :cond_0

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/i2/b;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
