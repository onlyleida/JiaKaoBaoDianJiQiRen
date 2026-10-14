.class public final Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;->start(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0004*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001JW\u0010\u000e\u001a\u00020\r2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u00042\u0006\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u00042\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u000c\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\u000e\u0010\u000f\u00a8\u0006\u0010\u00b8\u0006\u0011"
    }
    d2 = {
        "androidx/core/view/ViewKt$doOnNextLayout$1",
        "Landroid/view/View$OnLayoutChangeListener;",
        "Landroid/view/View;",
        "view",
        "",
        "left",
        "top",
        "right",
        "bottom",
        "oldLeft",
        "oldTop",
        "oldRight",
        "oldBottom",
        "Lkotlin/v;",
        "onLayoutChange",
        "(Landroid/view/View;IIIIIIII)V",
        "core-ktx_release",
        "androidx/core/view/ViewKt$doOnLayout$$inlined$doOnNextLayout$1"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    const-string p2, "binding.idEt"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->findFocus()Landroid/view/View;

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$start$$inlined$doOnLayout$1;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    return-void
.end method
