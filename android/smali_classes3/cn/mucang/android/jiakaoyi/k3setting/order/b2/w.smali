.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\'\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0016\u0008\u0002\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007\u00a2\u0006\u0002\u0010\tJ\u001e\u0010\u000b\u001a\u00020\u00082\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u001c\u0010\u000f\u001a\u00020\u00082\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007R\u001c\u0010\u0006\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0008\u0018\u00010\u0007X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/item/LightOrderItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
        "mode",
        "",
        "clickAction",
        "Lkotlin/Function1;",
        "",
        "(ILkotlin/jvm/functions/Function1;)V",
        "delAction",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
        "setDeleteAction",
        "action",
        "k3setting_release"
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
.field private final b:I

.field private final c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->b:I

    .line 4
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->c:Lkotlin/jvm/b/l;

    return-void
.end method

.method public synthetic constructor <init>(ILkotlin/jvm/b/l;ILkotlin/jvm/internal/o;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;-><init>(ILkotlin/jvm/b/l;)V

    return-void
.end method

.method public static synthetic n(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->u(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic o(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->t(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->s(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->v(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 9

    const-string v0, "$item"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    const/16 v1, 0x14

    const v2, 0x7fffffff

    if-eq v0, v2, :cond_0

    if-le v0, v1, :cond_1

    .line 2
    :cond_0
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    .line 3
    :cond_1
    sget-object v3, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity;->d:Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$a;

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "it.context"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x0

    const/4 v7, 0x4

    const/4 v8, 0x0

    move-object v5, p0

    .line 5
    invoke-static/range {v3 .. v8}, Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$a;->b(Lcn/mucang/android/jiakaoyi/k3setting/order/OrderEditActivity$a;Landroid/content/Context;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;IILjava/lang/Object;)V

    return-void
.end method

.method private static final t(Landroid/view/View;)V
    .locals 0

    const-string p0, "\u957f\u6309\u56fe\u6807\u62d6\u52a8\u6392\u5e8f"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->c:Lkotlin/jvm/b/l;

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final v(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->d:Lkotlin/jvm/b/l;

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    return-void
.end method

.method public r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isPlaying:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->iconIv:Lcn/mucang/android/image/view/MucangImageView;

    sget v1, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->ic_light_playing:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->iconIv:Lcn/mucang/android/image/view/MucangImageView;

    .line 4
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->icon:Ljava/lang/String;

    .line 5
    sget v2, Lcn/mucang/android/jiakaoyi/k3setting/R$drawable;->step_icon_dengguang:I

    .line 6
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/image/view/MucangImageView;->d(Ljava/lang/String;I)V

    .line 7
    :goto_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->b:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isStart:Z

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->isLast()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    goto :goto_1

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 10
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcn/mucang/android/jiakaoyi/k3setting/R$dimen;->dp_112:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 11
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 12
    :goto_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->b:I

    if-nez v0, :cond_3

    .line 13
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->sortTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->deleteTv:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 15
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->editTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/o;

    invoke-direct {v1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/o;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 16
    :cond_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->editTv:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 17
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->deleteTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->sortTv:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 19
    :goto_2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->titleTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/s/p;->a:Lcn/mucang/jiakaoyi/uilib/s/p;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->desc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/s/p;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->descTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->standard:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    const v1, 0x7fffffff

    const/16 v2, 0x14

    if-eq v0, v1, :cond_4

    if-le v0, v2, :cond_5

    .line 22
    :cond_4
    iput v2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    .line 23
    :cond_5
    iget v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    if-nez v0, :cond_6

    .line 24
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->playOrderTv:Landroid/widget/TextView;

    const-string v1, "(\u968f\u673a\u64ad\u653e)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_6
    if-lt v0, v2, :cond_7

    .line 25
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->playOrderTv:Landroid/widget/TextView;

    const-string v1, "(\u6700\u540e\u4e00\u6761)"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 26
    :cond_7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->playOrderTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(\u7b2c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;->playOrder:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\u6761)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    :goto_3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->sortTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/n;->a:Lcn/mucang/android/jiakaoyi/k3setting/order/b2/n;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->c:Lkotlin/jvm/b/l;

    if-nez v0, :cond_8

    goto :goto_4

    .line 29
    :cond_8
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/m;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/m;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 30
    :goto_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->d:Lkotlin/jvm/b/l;

    if-nez v0, :cond_9

    goto :goto_5

    .line 31
    :cond_9
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->deleteTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/p;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/p;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_5
    return-void
.end method

.method public final w(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/w;->d:Lkotlin/jvm/b/l;

    return-void
.end method
