.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001f\u0012\u0018\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\u000c\u001a\u00020\u00072\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u000e2\u0006\u0010\u000f\u001a\u00020\u0002H\u0017R#\u0010\u0004\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u000e\u0010\u000b\u001a\u00020\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;",
        "onFuncClick",
        "Lkotlin/Function2;",
        "",
        "",
        "(Lkotlin/jvm/functions/Function2;)V",
        "getOnFuncClick",
        "()Lkotlin/jvm/functions/Function2;",
        "selectIndex",
        "onBindViewHolder",
        "holder",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingHolder;",
        "item",
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
.field private final b:Lkotlin/jvm/b/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/p<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/p<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onFuncClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->b:Lkotlin/jvm/b/p;

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->c:I

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->q(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V
    .locals 0

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p3

    iput p3, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->c:I

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->n()Lkotlin/jvm/b/p;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/p<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Ljava/lang/Integer;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->b:Lkotlin/jvm/b/p;

    return-object v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            ")V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getStepId()I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;->indexTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;->iconIv:Landroid/widget/ImageView;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/g;->a:Lcn/mucang/jiakaoyi/uilib/g;

    invoke-virtual {v2, v0}, Lcn/mucang/jiakaoyi/uilib/g;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {p2}, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;->getAlias()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v1

    iget v2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;->c:I

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b0;

    invoke-direct {v1, p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/a1;Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
