.class final Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u00032\u000e\u0010\u0002\u001a\n \u0001*\u0004\u0018\u00010\u00000\u0000H\n\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "Landroid/view/View;",
        "kotlin.jvm.PlatformType",
        "it",
        "Lkotlin/v;",
        "onClick",
        "(Landroid/view/View;)V",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    const-string v0, "binding.eyeIv"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->isSelected()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 2
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->eyeIv:Landroid/widget/ImageView;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/ImageView;->isSelected()Z

    move-result p1

    const-string v0, "binding.idEt"

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x91

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x81

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setInputType(I)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 7
    :goto_0
    iget-object p1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object p1

    check-cast p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object p1, p1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic$init$2;->this$0:Lcn/mucang/sundial/library/sdk/coach/logic/CardLoginLogic;

    invoke-virtual {v1}, Lcn/mucang/sundial/library/sdk/coach/logic/BaseLogic;->getBinding()Landroidx/viewbinding/a;

    move-result-object v1

    check-cast v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;

    iget-object v1, v1, Lcn/mucang/sundial/library/databinding/TtLayoutLoginCardBinding;->idEt:Landroid/widget/EditText;

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    return-void
.end method
