.class public final Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B-\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u0012\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0017R\u001d\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\t\u0010\nR\u001a\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditOrderItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;",
        "onSwitch",
        "Lkotlin/Function1;",
        "",
        "onDelete",
        "(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)V",
        "getOnDelete",
        "()Lkotlin/jvm/functions/Function1;",
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
.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "onSwitch"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onDelete"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->b:Lkotlin/jvm/b/l;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->c:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->s(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V

    return-void
.end method

.method private static final r(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->b:Lkotlin/jvm/b/l;

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final s(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->n()Lkotlin/jvm/b/l;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;->c:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public q(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;",
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

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;->indexTv:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAdapterPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;->iconIv:Landroid/widget/ImageView;

    sget-object v2, Lcn/mucang/jiakaoyi/uilib/g;->a:Lcn/mucang/jiakaoyi/uilib/g;

    invoke-virtual {v2, v0}, Lcn/mucang/jiakaoyi/uilib/g;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;->nameTv:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;->switchTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e0;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/e0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditOrderItemBinding;->deleteTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d0;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/route/edit/d0;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/b1;Lcn/mucang/jiakaoyi/uilib/model/RouteSpotNode;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
