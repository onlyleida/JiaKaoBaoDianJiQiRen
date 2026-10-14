.class public final Lcn/mucang/sundial/library/binder/RegisterItemBinder;
.super Lcn/mucang/sundial/library/widget/ViewBindingBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder<",
        "Lcn/mucang/sundial/library/entity/RegisterInfoItem;",
        "Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/binder/RegisterItemBinder;",
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder;",
        "Lcn/mucang/sundial/library/entity/RegisterInfoItem;",
        "Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;",
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "holder",
        "item",
        "Lkotlin/v;",
        "onBindViewHolder",
        "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/RegisterInfoItem;)V",
        "<init>",
        "()V",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/widget/ViewBindingBinder;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/library/widget/ViewBindingHolder;

    check-cast p2, Lcn/mucang/sundial/library/entity/RegisterInfoItem;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/binder/RegisterItemBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/RegisterInfoItem;)V

    return-void
.end method

.method protected onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/RegisterInfoItem;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/library/widget/ViewBindingHolder<",
            "Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;",
            ">;",
            "Lcn/mucang/sundial/library/entity/RegisterInfoItem;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/ViewBindingHolder;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;

    .line 3
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;->content:Landroid/widget/EditText;

    const-string v1, "content"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/EditText;->getFilters()[Landroid/text/InputFilter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lkotlin/collections/k;->q0([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    :goto_0
    sget-object v2, Lcn/mucang/sundial/library/binder/RegisterItemBinder$onBindViewHolder$1$1;->INSTANCE:Lcn/mucang/sundial/library/binder/RegisterItemBinder$onBindViewHolder$1$1;

    invoke-static {v0, v2}, Lkotlin/collections/s;->F(Ljava/util/List;Lkotlin/jvm/b/l;)Z

    .line 5
    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;->getMaxLength()I

    move-result v2

    if-lez v2, :cond_1

    .line 6
    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;->getMaxLength()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    :cond_1
    iget-object v2, p1, Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;->content:Landroid/widget/EditText;

    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/text/InputFilter;

    .line 8
    invoke-interface {v0, v1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, [Landroid/text/InputFilter;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 9
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;->label:Landroid/widget/TextView;

    const-string v1, "label"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtViewRegisterItemBinding;->content:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/RegisterInfoItem;->getInput()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
