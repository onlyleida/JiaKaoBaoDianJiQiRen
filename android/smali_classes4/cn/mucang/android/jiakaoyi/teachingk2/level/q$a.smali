.class public final Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/level/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lkotlin/Pair<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Ljava/lang/Integer;",
        ">;",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0010\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0008\u0086\u0004\u0018\u00002\u001a\u0012\u0010\u0012\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002\u0012\u0004\u0012\u00020\u00050\u0001B\u0005\u00a2\u0006\u0002\u0010\u0006J*\u0010\u0007\u001a\u00020\u00082\u000c\u0010\t\u001a\u0008\u0012\u0004\u0012\u00020\u00050\n2\u0012\u0010\u000b\u001a\u000e\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u00040\u0002H\u0017\u00a8\u0006\u000c"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelGuideDialog$ItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lkotlin/Pair;",
        "",
        "",
        "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;",
        "(Lcn/mucang/android/jiakaoyi/teachingk2/level/LevelGuideDialog;)V",
        "onBindViewHolder",
        "",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "teachbase_release"
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
.field final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lkotlin/Pair;)V

    return-void
.end method

.method public n(Lcn/mucang/android/jiakaoyi/framework/base/h;Lkotlin/Pair;)V
    .locals 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;",
            ">;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->leftDivider:Landroid/view/View;

    const-string v1, "holder.viewBinding.leftDivider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const/16 v4, 0x8

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/16 v1, 0x8

    .line 3
    :goto_1
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->rightDivider:Landroid/view/View;

    const-string v1, "holder.viewBinding.rightDivider"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->b(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object v5

    invoke-static {v5}, Lkotlin/collections/s;->l(Ljava/util/List;)I

    move-result v5

    if-eq v1, v5, :cond_2

    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    const/4 v1, 0x0

    goto :goto_3

    :cond_3
    const/16 v1, 0x8

    .line 5
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v5, 0x3

    if-eq p2, v0, :cond_9

    if-eq p2, v5, :cond_6

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->bigIv:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_4

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_4
    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_6:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 9
    :goto_4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->leftDivider:Landroid/view/View;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->rightDivider:Landroid/view/View;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 11
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->smallIv:Landroid/widget/ImageView;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_level_guide_unchecked:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 12
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->titleTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 13
    :cond_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->bigIv:Landroid/widget/ImageView;

    invoke-virtual {p2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v4, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v4, :cond_7

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_7
    if-nez v1, :cond_8

    goto :goto_5

    :cond_8
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v4, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_46:I

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    :goto_5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->leftDivider:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 16
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->rightDivider:Landroid/view/View;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->titleTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_7

    .line 18
    :cond_9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->bigIv:Landroid/widget/ImageView;

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 19
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->titleTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    instance-of v0, p2, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_a

    move-object v1, p2

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    :cond_a
    if-nez v1, :cond_b

    goto :goto_6

    :cond_b
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-virtual {p2}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$dimen;->rpx_6:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    iput p2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 20
    :goto_6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->leftDivider:Landroid/view/View;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 21
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->rightDivider:Landroid/view/View;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 22
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->smallIv:Landroid/widget/ImageView;

    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->ic_level_guide_checked:I

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/teachbase/databinding/ItemLevelGuideBinding;->titleTv:Landroid/widget/TextView;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/level/q$a;->b:Lcn/mucang/android/jiakaoyi/teachingk2/level/q;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/teachingk2/level/q;->a(Lcn/mucang/android/jiakaoyi/teachingk2/level/q;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_7
    return-void
.end method
