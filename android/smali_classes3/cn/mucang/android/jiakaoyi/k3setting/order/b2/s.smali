.class public final Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;
.super Lcn/mucang/android/jiakaoyi/framework/base/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/framework/base/f<",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\n\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u001d\u0012\u000e\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0002\u0010\u0008J\u001e\u0010\u0011\u001a\u00020\u00122\u000c\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u00142\u0006\u0010\u0015\u001a\u00020\u0002H\u0016R\"\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\r\u0010\u000e\"\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/k3setting/order/item/K3OrderStandardBinder;",
        "Lcn/mucang/android/jiakaoyi/framework/base/ViewBindingBinder;",
        "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
        "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;",
        "callback",
        "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "stepType",
        "",
        "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;I)V",
        "getCallback",
        "()Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;",
        "setCallback",
        "(Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V",
        "getStepType",
        "()I",
        "setStepType",
        "(I)V",
        "onBindViewHolder",
        "",
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
.field private b:Lcn/mucang/android/jiakaoyi/framework/h/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/framework/h/b;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/base/f;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;->c:I

    return-void
.end method

.method public static synthetic o(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;->q(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V

    return-void
.end method

.method private static final q(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;Landroid/view/View;)V
    .locals 0

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$item"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;->n()Lcn/mucang/android/jiakaoyi/framework/h/b;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p0, p1}, Lcn/mucang/android/jiakaoyi/framework/h/b;->callback(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public bridge synthetic c(Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/framework/base/h;

    check-cast p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;->p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    return-void
.end method

.method public final n()Lcn/mucang/android/jiakaoyi/framework/h/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/mucang/android/jiakaoyi/framework/h/b<",
            "Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;->b:Lcn/mucang/android/jiakaoyi/framework/h/b;

    return-object v0
.end method

.method public p(Lcn/mucang/android/jiakaoyi/framework/base/h;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/framework/base/h<",
            "Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;",
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

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;->iconIv:Lcn/mucang/android/image/view/MucangImageView;

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

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;->titleTv:Landroid/widget/TextView;

    iget-object v1, p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;->selectedIv:Landroid/widget/ImageView;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;->c:I

    iget v2, p2, Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;->stepId:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 4
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/framework/base/h;->getViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/k3setting/databinding/LightStandardItemBinding;->getRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object p1

    new-instance v0, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/b;

    invoke-direct {v0, p0, p2}, Lcn/mucang/android/jiakaoyi/k3setting/order/b2/b;-><init>(Lcn/mucang/android/jiakaoyi/k3setting/order/b2/s;Lcn/mucang/jiakaoyi/uilib/model/StepOrderItem;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
