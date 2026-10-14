.class public final Lcn/mucang/sundial/library/binder/InputKeyBinder;
.super Lcn/mucang/sundial/library/widget/ViewBindingBinder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder<",
        "Lcn/mucang/sundial/library/entity/InputKeyItem;",
        "Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;",
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
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001:\u0001\u000fB\u0011\u0012\u0008\u0010\u000b\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0004\u0008\r\u0010\u000eJ%\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0014\u00a2\u0006\u0004\u0008\u0008\u0010\tR\u0018\u0010\u000b\u001a\u0004\u0018\u00010\n8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000c\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/sundial/library/binder/InputKeyBinder;",
        "Lcn/mucang/sundial/library/widget/ViewBindingBinder;",
        "Lcn/mucang/sundial/library/entity/InputKeyItem;",
        "Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;",
        "Lcn/mucang/sundial/library/widget/ViewBindingHolder;",
        "holder",
        "item",
        "Lkotlin/v;",
        "onBindViewHolder",
        "(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/InputKeyItem;)V",
        "Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;",
        "listener",
        "Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;",
        "<init>",
        "(Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;)V",
        "KeyListener",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field private final listener:Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/sundial/library/widget/ViewBindingBinder;-><init>()V

    iput-object p1, p0, Lcn/mucang/sundial/library/binder/InputKeyBinder;->listener:Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;

    return-void
.end method

.method public static final synthetic access$getListener$p(Lcn/mucang/sundial/library/binder/InputKeyBinder;)Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/sundial/library/binder/InputKeyBinder;->listener:Lcn/mucang/sundial/library/binder/InputKeyBinder$KeyListener;

    return-object p0
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/sundial/library/widget/ViewBindingHolder;

    check-cast p2, Lcn/mucang/sundial/library/entity/InputKeyItem;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/binder/InputKeyBinder;->onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/InputKeyItem;)V

    return-void
.end method

.method protected onBindViewHolder(Lcn/mucang/sundial/library/widget/ViewBindingHolder;Lcn/mucang/sundial/library/entity/InputKeyItem;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/sundial/library/widget/ViewBindingHolder<",
            "Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;",
            ">;",
            "Lcn/mucang/sundial/library/entity/InputKeyItem;",
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

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;

    .line 3
    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/InputKeyItem;->getKeyName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "delete"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;->number:Landroid/widget/TextView;

    const-string v4, ""

    .line 5
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;->delete:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;->number:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p2}, Lcn/mucang/sundial/library/entity/InputKeyItem;->getKeyName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    iget-object v0, p1, Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;->delete:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    :goto_0
    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtViewInputKeyBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    new-instance v0, Lcn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1;

    invoke-direct {v0, p0, p2}, Lcn/mucang/sundial/library/binder/InputKeyBinder$onBindViewHolder$$inlined$with$lambda$1;-><init>(Lcn/mucang/sundial/library/binder/InputKeyBinder;Lcn/mucang/sundial/library/entity/InputKeyItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
