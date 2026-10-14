.class public Lcn/mucang/sundial/library/widget/BlankDialog;
.super Landroidx/appcompat/app/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/sundial/library/widget/BlankDialog$Params;,
        Lcn/mucang/sundial/library/widget/BlankDialog$Builder;,
        Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0008\u0016\u0018\u00002\u00020\u0001:\u0003\u0013\u0014\u0015B\u000f\u0012\u0006\u0010\u000c\u001a\u00020\u000b\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0017\u0010\t\u001a\u00020\u00042\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\t\u0010\nR\u0016\u0010\u000c\u001a\u00020\u000b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0016\u0010\u000f\u001a\u00020\u000e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcn/mucang/sundial/library/widget/BlankDialog;",
        "Landroidx/appcompat/app/g;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Lkotlin/v;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "Landroidx/viewbinding/a;",
        "customViewBinding",
        "replaceCustomView",
        "(Landroidx/viewbinding/a;)V",
        "Lcn/mucang/sundial/library/widget/BlankDialog$Params;",
        "params",
        "Lcn/mucang/sundial/library/widget/BlankDialog$Params;",
        "Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;",
        "viewBinding",
        "Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;",
        "<init>",
        "(Lcn/mucang/sundial/library/widget/BlankDialog$Params;)V",
        "Builder",
        "Params",
        "ViewListener",
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
.field private final params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

.field private viewBinding:Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;


# direct methods
.method public constructor <init>(Lcn/mucang/sundial/library/widget/BlankDialog$Params;)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getTheme()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroidx/appcompat/app/g;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/g;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;->inflate(Landroid/view/LayoutInflater;)Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;

    move-result-object p1

    const-string v0, "TtBlankDialogBinding.inf\u2026utInflater.from(context))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->viewBinding:Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;

    const/4 v0, 0x0

    const-string v1, "viewBinding"

    if-eqz p1, :cond_3

    .line 3
    invoke-virtual {p1}, Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/g;->setContentView(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getBgResId()Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 5
    iget-object v2, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->viewBinding:Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getCustomViewBinding()Landroidx/viewbinding/a;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcn/mucang/sundial/library/widget/BlankDialog;->replaceCustomView(Landroidx/viewbinding/a;)V

    .line 7
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getCancellable()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getCancellableOnTouchOutside()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9
    iget-object p1, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getViewListener()Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;

    move-result-object p1

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->params:Lcn/mucang/sundial/library/widget/BlankDialog$Params;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/widget/BlankDialog$Params;->getCustomViewBinding()Landroidx/viewbinding/a;

    move-result-object v0

    invoke-interface {p1, p0, v0}, Lcn/mucang/sundial/library/widget/BlankDialog$ViewListener;->setViews(Lcn/mucang/sundial/library/widget/BlankDialog;Landroidx/viewbinding/a;)V

    :cond_2
    return-void

    .line 10
    :cond_3
    invoke-static {v1}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v0
.end method

.method public final replaceCustomView(Landroidx/viewbinding/a;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->viewBinding:Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;

    const/4 v1, 0x0

    const-string v2, "viewBinding"

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 2
    iget-object v0, p0, Lcn/mucang/sundial/library/widget/BlankDialog;->viewBinding:Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcn/mucang/sundial/library/databinding/TtBlankDialogBinding;->getRoot()Landroid/widget/FrameLayout;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Landroidx/viewbinding/a;->getRoot()Landroid/view/View;

    move-result-object p1

    const/4 v1, -0x1

    const/4 v2, -0x2

    .line 4
    invoke-virtual {v0, p1, v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->u(Ljava/lang/String;)V

    throw v1

    :cond_2
    :goto_0
    return-void
.end method
