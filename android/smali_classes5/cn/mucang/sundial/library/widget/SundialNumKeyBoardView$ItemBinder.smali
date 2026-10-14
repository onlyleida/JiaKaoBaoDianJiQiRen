.class public final Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;
.super Lf/a/a/a/u/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ItemBinder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lf/a/a/a/u/a<",
        "Ljava/lang/String;",
        "Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;",
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
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0086\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007\u00a2\u0006\u0004\u0008\n\u0010\u000bJ%\u0010\u0008\u001a\u00020\u00072\u000c\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00042\u0006\u0010\u0006\u001a\u00020\u0002H\u0015\u00a2\u0006\u0004\u0008\u0008\u0010\t\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;",
        "Lf/a/a/a/u/a;",
        "",
        "Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;",
        "Lf/a/a/a/u/c;",
        "holder",
        "key",
        "Lkotlin/v;",
        "onBindViewHolder",
        "(Lf/a/a/a/u/c;Ljava/lang/String;)V",
        "<init>",
        "(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)V",
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
.field final synthetic this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-direct {p0}, Lf/a/a/a/u/a;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lf/a/a/a/u/c;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->onBindViewHolder(Lf/a/a/a/u/c;Ljava/lang/String;)V

    return-void
.end method

.method protected onBindViewHolder(Lf/a/a/a/u/c;Ljava/lang/String;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lf/a/a/a/u/c<",
            "Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "key"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "\u5220\u9664"

    .line 2
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const-string v2, "holder.viewBinding.tvKeyDel"

    const-string v3, "holder.viewBinding.tvKey"

    const/4 v4, 0x0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKeyDel:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    const-string v1, "#40464D"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 7
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    sget v1, Lcn/mucang/sundial/library/R$drawable;->tt__selector_num_key:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 8
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    .line 9
    iget-object v1, p0, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;->this$0:Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcn/mucang/sundial/library/R$dimen;->rpx_45:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    .line 10
    invoke-virtual {v0, v4, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKeyDel:Landroid/widget/ImageView;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 12
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 13
    :goto_0
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object v0, v0, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKey:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;

    invoke-direct {v1, p0, p2}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$1;-><init>(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    invoke-virtual {p1}, Lf/a/a/a/u/c;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtItemNumKeyboardBinding;->tvKeyDel:Landroid/widget/ImageView;

    new-instance p2, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;

    invoke-direct {p2, p0}, Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder$onBindViewHolder$2;-><init>(Lcn/mucang/sundial/library/widget/SundialNumKeyBoardView$ItemBinder;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method
