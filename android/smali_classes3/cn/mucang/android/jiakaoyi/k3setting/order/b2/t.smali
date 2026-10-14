.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0019\u0012\u0012\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0002\u0010\u0007J\u001e\u0010\u000b\u001a\u00020\u00062\u000c\u0010\u000c\u001a\u0008\u0012\u0004\u0012\u00020\u00030\r2\u0006\u0010\u000e\u001a\u00020\u0002H\u0016J\u001c\u0010\u000f\u001a\u00020\u00062\u0014\u0010\u0010\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005R\u001d\u0010\u0004\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/item/K3RouteItemBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
        "callback",
        "Lkotlin/Function1;",
        "",
        "(Lkotlin/jvm/functions/Function1;)V",
        "getCallback",
        "()Lkotlin/jvm/functions/Function1;",
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
.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->b:Lkotlin/jvm/b/l;

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->u(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic p(Landroid/view/View;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->s(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic q(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->t(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V

    return-void
.end method

.method private static final s(Landroid/view/View;)V
    .locals 0

    const-string p0, "\u957f\u6309\u56fe\u6807\u62d6\u52a8\u6392\u5e8f"

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method

.method private static final t(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->n()Lkotlin/jvm/b/l;

    move-result-object p0

    invoke-interface {p0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final u(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->c:Lkotlin/jvm/b/l;

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

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    return-void
.end method

.method public final n()Lkotlin/jvm/b/l;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/b/l<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->b:Lkotlin/jvm/b/l;

    return-object v0
.end method

.method public r(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;",
            ">;",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->iconIv:Lcn/mucang/android/image/view/MucangImageView;

    sget-object v1, Lcn/mucang/jiakaoyi/uilib/g;->a:Lcn/mucang/jiakaoyi/uilib/g;

    iget v2, p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->findWithType(I)Lcn/mucang/android/jiakaoyi/engine/model/Step;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/jiakaoyi/uilib/g;->g(Lcn/mucang/android/jiakaoyi/engine/model/Step;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->titleTv:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepAliasName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " (\u8003\u8bd5\u9879\u76ee\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->descTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->content:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->sortTv:Landroid/widget/TextView;

    sget-object v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/d;->a:Lcn/mucang/android/jiakaoyi/k3setting/order/b2/d;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->editTv:Landroid/widget/TextView;

    new-instance v1, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/e;

    invoke-direct {v1, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/e;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->c:Lkotlin/jvm/b/l;

    if-nez v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightOrderItemBinding;->deleteTv:Landroid/widget/TextView;

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/c;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/c;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_0
    return-void
.end method

.method public final v(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/t;->c:Lkotlin/jvm/b/l;

    return-void
.end method
